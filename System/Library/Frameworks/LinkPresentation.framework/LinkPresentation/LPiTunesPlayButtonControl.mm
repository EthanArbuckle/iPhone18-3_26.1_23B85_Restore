@interface LPiTunesPlayButtonControl
- (BOOL)isPlaying;
- (BOOL)matchesNowPlayingItem;
- (LPiTunesPlayButtonControl)initWithPlaybackInformation:(id)information style:(id)style theme:(id)theme;
- (_MRSystemAppPlaybackQueue)createPlaybackQueue;
- (double)desiredUpdateIntervalForMediaRemotePlaybackObserver:(id)observer;
- (id)mediaPlaybackApplicationID;
- (void)buttonPressed:(id)pressed;
- (void)createPlaybackQueue;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setPlaying:(BOOL)playing;
- (void)startPlaybackForLyricExcerpt;
- (void)startPlaying;
- (void)updatePlayState;
@end

@implementation LPiTunesPlayButtonControl

- (LPiTunesPlayButtonControl)initWithPlaybackInformation:(id)information style:(id)style theme:(id)theme
{
  informationCopy = information;
  v14.receiver = self;
  v14.super_class = LPiTunesPlayButtonControl;
  v10 = [(LPPlayButtonControl *)&v14 initWithStyle:style theme:theme];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_playbackInformation, information);
    v12 = v11;
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_playbackDidEndNotificationToken];

  v4.receiver = self;
  v4.super_class = LPiTunesPlayButtonControl;
  [(LPiTunesPlayButtonControl *)&v4 dealloc];
}

- (void)updatePlayState
{
  window = [(LPiTunesPlayButtonControl *)self window];

  if (!window)
  {
    return;
  }

  matchesNowPlayingItem = [(LPiTunesPlayButtonControl *)self matchesNowPlayingItem];
  if ([(LPPlayButtonControl *)self isIndeterminate])
  {
    if (matchesNowPlayingItem)
    {
      v7 = +[LPMediaRemotePlaybackObserver shared];
      isPlaying = [v7 isPlaying];

      if (isPlaying)
      {
        [(LPPlayButtonControl *)self endIndeterminateAnimation];
      }
    }
  }

  if (matchesNowPlayingItem || [(LPPlayButtonControl *)self isIndeterminate])
  {
    [(LPPlayButtonControl *)self setPlayButtonState:1];
    if ([(LPPlayButtonControl *)self isIndeterminate])
    {
      return;
    }

    if (matchesNowPlayingItem)
    {
      v8 = +[LPMediaRemotePlaybackObserver shared];
      [v8 elapsedFractionForPlaybackInformation:self->_playbackInformation];
      *&v6 = v6;
      [(LPPlayButtonControl *)self setProgress:1 animated:v6];

      v9 = +[LPMediaRemotePlaybackObserver shared];
      -[LPPlayButtonControl showPlayIndicator:](self, "showPlayIndicator:", [v9 isPlaying] ^ 1);

      return;
    }
  }

  else
  {
    [(LPPlayButtonControl *)self setPlayButtonState:0];
    if ([(LPPlayButtonControl *)self isIndeterminate])
    {
      return;
    }
  }

  [(LPPlayButtonControl *)self hideProgressAnimated:0];

  [(LPPlayButtonControl *)self showPlayIndicator:1];
}

- (double)desiredUpdateIntervalForMediaRemotePlaybackObserver:(id)observer
{
  lyricExcerpt = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation lyricExcerpt];
  if (lyricExcerpt)
  {
    v4 = 0.1;
  }

  else
  {
    v4 = 0.5;
  }

  return v4;
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = LPiTunesPlayButtonControl;
  [(LPiTunesPlayButtonControl *)&v6 didMoveToWindow];
  window = [(LPiTunesPlayButtonControl *)self window];

  v4 = +[LPMediaRemotePlaybackObserver shared];
  v5 = v4;
  if (window)
  {
    [v4 addClient:self];

    [(LPiTunesPlayButtonControl *)self updatePlayState];
  }

  else
  {
    [v4 removeClient:self];
  }
}

- (void)startPlaybackForLyricExcerpt
{
  v44[1] = *MEMORY[0x1E69E9840];
  systemMusicPlayer = [getMPMusicPlayerControllerClass() systemMusicPlayer];
  applicationMusicPlayer = [getMPMusicPlayerControllerClass() applicationMusicPlayer];
  self->_wasPlayingMusicWhenLyricExcerptPlaybackStarted = [systemMusicPlayer playbackState] == 1;
  if (!self->_playbackDidEndNotificationToken)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v6 = getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_ptr;
    v43 = getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_ptr;
    if (!getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_ptr)
    {
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_block_invoke;
      v38 = &unk_1E7A35518;
      v39 = &v40;
      v7 = MediaPlayerLibrary_0();
      v41[3] = dlsym(v7, "MPMusicPlayerControllerItemPlaybackDidEndNotification");
      getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_ptr = *(v39[1] + 24);
      v6 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMusicPlayerControllerItemPlaybackDidEndNotification(void)"];
      [currentHandler handleFailureInFunction:v30 file:@"LPiTunesPlayButtonControl.m" lineNumber:29 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v8 = *v6;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __57__LPiTunesPlayButtonControl_startPlaybackForLyricExcerpt__block_invoke;
    v33[3] = &unk_1E7A36690;
    v33[4] = self;
    v34 = systemMusicPlayer;
    v9 = v8;
    v10 = [defaultCenter addObserverForName:v9 object:0 queue:0 usingBlock:v33];
    playbackDidEndNotificationToken = self->_playbackDidEndNotificationToken;
    self->_playbackDidEndNotificationToken = v10;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v12 = getMPMusicPlayerStoreQueueDescriptorClass_softClass;
  v43 = getMPMusicPlayerStoreQueueDescriptorClass_softClass;
  if (!getMPMusicPlayerStoreQueueDescriptorClass_softClass)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __getMPMusicPlayerStoreQueueDescriptorClass_block_invoke;
    v38 = &unk_1E7A35518;
    v39 = &v40;
    __getMPMusicPlayerStoreQueueDescriptorClass_block_invoke(&v35);
    v12 = v41[3];
  }

  v13 = v12;
  _Block_object_dispose(&v40, 8);
  v14 = [v12 alloc];
  storeIdentifier = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
  v44[0] = storeIdentifier;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v17 = [v14 initWithStoreIDs:v16];

  lyricExcerpt = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation lyricExcerpt];
  startTime = [lyricExcerpt startTime];
  [startTime doubleValue];
  v21 = v20;
  storeIdentifier2 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
  [v17 setStartTime:storeIdentifier2 forItemWithStoreID:v21 + -1.0];

  lyricExcerpt2 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation lyricExcerpt];
  endTime = [lyricExcerpt2 endTime];
  [endTime doubleValue];
  v26 = v25;
  storeIdentifier3 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
  [v17 setEndTime:storeIdentifier3 forItemWithStoreID:v26 + 1.0];

  [v17 setPlayActivityFeatureName:@"iMessage_LyricsShare"];
  [applicationMusicPlayer setQueueWithDescriptor:v17];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __57__LPiTunesPlayButtonControl_startPlaybackForLyricExcerpt__block_invoke_2;
  v31[3] = &unk_1E7A366B8;
  v28 = applicationMusicPlayer;
  v32 = v28;
  [v28 prepareToPlayWithCompletionHandler:v31];
}

void __57__LPiTunesPlayButtonControl_startPlaybackForLyricExcerpt__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(*(a1 + 32) + 560) == 1)
  {
    [*(a1 + 40) play];
    *(*(a1 + 32) + 560) = 0;
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:*(*(a1 + 32) + 552)];

  v4 = *(a1 + 32);
  v5 = *(v4 + 552);
  *(v4 + 552) = 0;
}

- (_MRSystemAppPlaybackQueue)createPlaybackQueue
{
  v18[1] = *MEMORY[0x1E69E9840];
  storeIdentifier = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];

  if (!storeIdentifier)
  {
    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(LPiTunesPlayButtonControl *)&self->_playbackInformation createPlaybackQueue];
    }

    abort();
  }

  type = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation type];
  v5 = 0;
  if (type > 3)
  {
    if (type == 4)
    {
      v10 = MEMORY[0x1E696AEC0];
      storeIdentifier2 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
      v12 = [v10 stringWithFormat:@"podcasts://playPodcast?storeTrackId=%@", storeIdentifier2];

      v5 = MRSystemAppPlaybackQueueCreate();
      v17 = v12;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

      return v5;
    }

    if (type == 6)
    {
      v5 = MRSystemAppPlaybackQueueCreate();
      persistentIdentifier = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation persistentIdentifier];
      [persistentIdentifier longLongValue];
      MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
      goto LABEL_14;
    }

    if (type != 5)
    {
      return v5;
    }

LABEL_10:
    v5 = MRSystemAppPlaybackQueueCreate();
    storeIdentifier3 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
    v18[0] = storeIdentifier3;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

    MRSystemAppPlaybackQueueSetFeatureName();
    return v5;
  }

  if (type < 2)
  {
    goto LABEL_10;
  }

  if (type == 2)
  {
    v5 = MRSystemAppPlaybackQueueCreate();
    MRSystemAppPlaybackQueueSetRadioStationIDType();
    persistentIdentifier = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
    MRSystemAppPlaybackQueueSetRadioStationStringIdentifier();
LABEL_14:

    return v5;
  }

  if (type == 3)
  {
    v6 = MEMORY[0x1E696AEC0];
    storeIdentifier4 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storeIdentifier];
    v8 = [v6 stringWithFormat:@"podcasts://playPodcast?storeCollectionId=%@", storeIdentifier4];

    v5 = MRSystemAppPlaybackQueueCreate();
    v16 = v8;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();
  }

  return v5;
}

- (id)mediaPlaybackApplicationID
{
  type = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation type];
  if (type > 6)
  {
    v3 = 0;
  }

  else if (((1 << type) & 0x27) != 0)
  {
    v3 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  }

  else if (((1 << type) & 0x18) != 0)
  {
    v3 = @"com.apple.podcasts";
  }

  else
  {
    v3 = @"com.apple.iBooks";
  }

  return v3;
}

- (void)startPlaying
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__LPiTunesPlayButtonControl_startPlaying__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  lyricExcerpt = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation lyricExcerpt];

  if (lyricExcerpt)
  {
    [(LPiTunesPlayButtonControl *)self startPlaybackForLyricExcerpt];
  }

  else
  {
    [(LPiTunesPlayButtonControl *)self createPlaybackQueue];
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue();
    mediaPlaybackApplicationID = [(LPiTunesPlayButtonControl *)self mediaPlaybackApplicationID];
    MRMediaRemoteSetAppPlaybackQueue();
  }
}

uint64_t __41__LPiTunesPlayButtonControl_startPlaying__block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginIndeterminateAnimation];
  v2 = *(a1 + 32);

  return [v2 updatePlayState];
}

uint64_t __41__LPiTunesPlayButtonControl_startPlaying__block_invoke_2(uint64_t result, int a2)
{
  if (!a2)
  {
    v2 = result;
    result = [*(*(result + 32) + 544) startTime];
    if (v3 > 0.0)
    {
      v4 = [*(*(v2 + 32) + 544) startTime];

      return MEMORY[0x1EEE1D2E0](v4);
    }
  }

  return result;
}

- (void)buttonPressed:(id)pressed
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([(LPiTunesPlayButtonControl *)self matchesNowPlayingItem])
  {
    v4 = *MEMORY[0x1E69B1200];
    v5[0] = @"com.apple.LinkPresentation";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    MRMediaRemoteSendCommand();
  }

  else
  {

    [(LPiTunesPlayButtonControl *)self startPlaying];
  }
}

- (BOOL)matchesNowPlayingItem
{
  v3 = +[LPMediaRemotePlaybackObserver shared];
  LOBYTE(self) = [v3 playbackInformationMatchesPlayingItem:self->_playbackInformation];

  return self;
}

- (BOOL)isPlaying
{
  if (![(LPiTunesPlayButtonControl *)self matchesNowPlayingItem])
  {
    return 0;
  }

  v2 = +[LPMediaRemotePlaybackObserver shared];
  isPlaying = [v2 isPlaying];

  return isPlaying;
}

- (void)setPlaying:(BOOL)playing
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([(LPiTunesPlayButtonControl *)self matchesNowPlayingItem])
  {
    v4 = *MEMORY[0x1E69B1200];
    v5[0] = @"com.apple.LinkPresentation";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    MRMediaRemoteSendCommand();
  }

  else
  {

    [(LPiTunesPlayButtonControl *)self startPlaying];
  }
}

- (void)createPlaybackQueue
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "store identifier for playback information %@ is nil", &v3, 0xCu);
}

@end