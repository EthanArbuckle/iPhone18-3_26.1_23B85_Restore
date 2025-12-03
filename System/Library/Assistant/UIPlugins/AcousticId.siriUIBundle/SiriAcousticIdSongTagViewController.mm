@interface SiriAcousticIdSongTagViewController
- (BOOL)_displaysFooterView;
- (BOOL)_isNowPlayingCurrentStoreID;
- (Class)footerViewClass;
- (SiriAcousticIdSongTagViewController)initWithSongTagSnippet:(id)snippet;
- (id)_playbackStoreID;
- (void)_handleMusicPlayerControllerNowPlayingItemDidChange:(id)change;
- (void)_updatePlaybackPosition;
- (void)_updatePlaybackState;
- (void)attributionFooterViewButtonWasTapped:(id)tapped;
- (void)configureReusableFooterView:(id)view;
- (void)configureReusableHeaderView:(id)view;
- (void)dealloc;
- (void)headerViewOpenButtonWasTapped:(id)tapped;
- (void)headerViewPlayButtonWasTapped:(id)tapped;
- (void)setSnippet:(id)snippet;
@end

@implementation SiriAcousticIdSongTagViewController

- (SiriAcousticIdSongTagViewController)initWithSongTagSnippet:(id)snippet
{
  snippetCopy = snippet;
  v10.receiver = self;
  v10.super_class = SiriAcousticIdSongTagViewController;
  v5 = [(SiriAcousticIdSongTagViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriAcousticIdSongTagViewController *)v5 setSnippet:snippetCopy];
    [(SiriAcousticIdSongTagViewController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v7 = +[MPMusicPlayerController systemMusicPlayer];
    [v7 beginGeneratingPlaybackNotifications];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"_handleMusicPlayerControllerNowPlayingItemDidChange:" name:MPMusicPlayerControllerNowPlayingItemDidChangeNotification object:v7];
    [v8 addObserver:v6 selector:"_handleMusicPlayerControllerPlaybackStateDidChange:" name:MPMusicPlayerControllerPlaybackStateDidChangeNotification object:v7];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[MPMusicPlayerController systemMusicPlayer];
  [v3 endGeneratingPlaybackNotifications];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MPMusicPlayerControllerNowPlayingItemDidChangeNotification object:v3];
  [v4 removeObserver:self name:MPMusicPlayerControllerPlaybackStateDidChangeNotification object:v3];
  [(NSTimer *)self->_playbackTimer invalidate];

  v5.receiver = self;
  v5.super_class = SiriAcousticIdSongTagViewController;
  [(SiriAcousticIdSongTagViewController *)&v5 dealloc];
}

- (void)configureReusableHeaderView:(id)view
{
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = SiriAcousticIdSongTagViewController;
  [(SiriAcousticIdSongTagViewController *)&v19 configureReusableHeaderView:viewCopy];
  v5 = viewCopy;
  v6 = 1;
  [(SiriAcousticIdHeaderView *)v5 setPlayButtonState:1];
  [(SiriAcousticIdHeaderView *)v5 setDelegate:self];
  songTag = [(SAAISongTagSnippet *)self->_songTagSnippet songTag];
  previewImage = [songTag previewImage];
  resourceUrl = [previewImage resourceUrl];
  [(SiriAcousticIdHeaderView *)v5 setAlbumArt:resourceUrl];

  title = [songTag title];
  [(SiriAcousticIdHeaderView *)v5 setSongTitle:title];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 siriUILocalizedStringForKey:@"ARTIST_FORMAT %@"];
  artist = [songTag artist];
  v14 = [NSString stringWithFormat:v12, artist];

  [(SiriAcousticIdHeaderView *)v5 setArtistString:v14];
  purchaseSongPunchOut = [(SAAISongTagSnippet *)self->_songTagSnippet purchaseSongPunchOut];

  if (!purchaseSongPunchOut)
  {
    playbackButton = [(SAAISongTagSnippet *)self->_songTagSnippet playbackButton];
    v17 = playbackButton != 0;

    v6 = 2 * v17;
  }

  [(SiriAcousticIdHeaderView *)v5 setButtonLayout:v6];
  [(SiriAcousticIdHeaderView *)v5 setKeylineHidden:1];
  acousticIdHeaderView = self->_acousticIdHeaderView;
  self->_acousticIdHeaderView = v5;
}

- (BOOL)_displaysFooterView
{
  attributionPunchOut = [(SAAISongTagSnippet *)self->_songTagSnippet attributionPunchOut];
  v3 = attributionPunchOut != 0;

  return v3;
}

- (id)_playbackStoreID
{
  songTag = [(SAAISongTagSnippet *)self->_songTagSnippet songTag];
  adamId = [songTag adamId];

  return adamId;
}

- (BOOL)_isNowPlayingCurrentStoreID
{
  v3 = +[MPMusicPlayerController systemMusicPlayer];
  nowPlayingItem = [v3 nowPlayingItem];
  playbackStoreID = [nowPlayingItem playbackStoreID];

  if (playbackStoreID)
  {
    _playbackStoreID = [(SiriAcousticIdSongTagViewController *)self _playbackStoreID];
    v7 = [playbackStoreID isEqualToString:_playbackStoreID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (Class)footerViewClass
{
  if ([(SiriAcousticIdSongTagViewController *)self _displaysFooterView])
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)configureReusableFooterView:(id)view
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = SiriAcousticIdSongTagViewController;
  [(SiriAcousticIdSongTagViewController *)&v7 configureReusableHeaderView:viewCopy];
  v5 = viewCopy;
  [v5 setDelegate:self];
  attributionPunchOut = [(SAAISongTagSnippet *)self->_songTagSnippet attributionPunchOut];
  [v5 setAttributionPunchOut:attributionPunchOut];
}

- (void)setSnippet:(id)snippet
{
  snippetCopy = snippet;
  objc_storeStrong(&self->_songTagSnippet, snippet);
  songDetailsPunchOut = [(SAAISongTagSnippet *)self->_songTagSnippet songDetailsPunchOut];
  if (songDetailsPunchOut)
  {
    [(SiriAcousticIdSongTagViewController *)self setHeaderPunchOut:songDetailsPunchOut];
  }

  [(SiriAcousticIdSongTagViewController *)self setShowHeaderChevron:0];
  v6 = [[NSMutableArray alloc] initWithCapacity:3];
  buttons = self->_buttons;
  self->_buttons = v6;
}

- (void)attributionFooterViewButtonWasTapped:(id)tapped
{
  attributionPunchOut = [(SAAISongTagSnippet *)self->_songTagSnippet attributionPunchOut];
  if (attributionPunchOut)
  {
    delegate = [(SiriAcousticIdSongTagViewController *)self delegate];
    v7 = attributionPunchOut;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [delegate siriViewController:self performAceCommands:v6];
  }
}

- (void)headerViewOpenButtonWasTapped:(id)tapped
{
  purchaseSongPunchOut = [(SAAISongTagSnippet *)self->_songTagSnippet purchaseSongPunchOut];
  if (purchaseSongPunchOut)
  {
    delegate = [(SiriAcousticIdSongTagViewController *)self delegate];
    v7 = purchaseSongPunchOut;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [delegate siriViewController:self performAceCommands:v6];
  }
}

- (void)headerViewPlayButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  _playbackStoreID = [(SiriAcousticIdSongTagViewController *)self _playbackStoreID];
  if (_playbackStoreID)
  {
    v6 = +[MPMusicPlayerController systemMusicPlayer];
    _isNowPlayingCurrentStoreID = [(SiriAcousticIdSongTagViewController *)self _isNowPlayingCurrentStoreID];
    if ([v6 playbackState] != &dword_0 + 1 || _isNowPlayingCurrentStoreID == 0)
    {
      if ((([v6 playbackState] == &dword_0 + 2) & _isNowPlayingCurrentStoreID) == 1)
      {
        [v6 play];
      }

      else if ([(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView playButtonState])
      {
        v13 = _playbackStoreID;
        v10 = [NSArray arrayWithObjects:&v13 count:1];
        [v6 setQueueWithStoreIDs:v10];

        [tappedCopy setPlayButtonState:0];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_35B8;
        v11[3] = &unk_82E8;
        v11[4] = v6;
        v12 = tappedCopy;
        [v6 prepareToPlayWithCompletionHandler:v11];
      }

      else
      {
        [v6 setQueueWithStoreIDs:&__NSArray0__struct];
        [v6 stop];
        [(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView setPlayButtonState:1];
      }
    }

    else
    {
      [v6 pause];
    }
  }

  else
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[SiriAcousticIdSongTagViewController headerViewPlayButtonWasTapped:]";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s playbackStoreID is not provided in the payload", buf, 0xCu);
    }
  }
}

- (void)_handleMusicPlayerControllerNowPlayingItemDidChange:(id)change
{
  if ([(SiriAcousticIdSongTagViewController *)self _isNowPlayingCurrentStoreID]|| [(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView playButtonState]!= &dword_0 + 2)
  {

    [(SiriAcousticIdSongTagViewController *)self _updatePlaybackState];
  }

  else
  {
    [(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView setPlayButtonState:1];
    playbackTimer = self->_playbackTimer;

    [(NSTimer *)playbackTimer invalidate];
  }
}

- (void)_updatePlaybackState
{
  v3 = +[MPMusicPlayerController systemMusicPlayer];
  _playbackStoreID = [(SiriAcousticIdSongTagViewController *)self _playbackStoreID];
  if (_playbackStoreID)
  {
    if ([v3 playbackState] == &dword_0 + 1 && -[SiriAcousticIdSongTagViewController _isNowPlayingCurrentStoreID](self, "_isNowPlayingCurrentStoreID"))
    {
      [(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView setPlayButtonState:2];
      v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updatePlaybackPosition" selector:0 userInfo:1 repeats:0.5];
      playbackTimer = self->_playbackTimer;
      self->_playbackTimer = v5;

      [(SiriAcousticIdSongTagViewController *)self _updatePlaybackPosition];
    }

    else if ([v3 playbackState] == &dword_0 + 2)
    {
      [(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView setPlayButtonState:1];
      [(NSTimer *)self->_playbackTimer invalidate];
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SiriAcousticIdSongTagViewController _updatePlaybackState]";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s playbackStoreID is not provided in the payload", &v8, 0xCu);
    }
  }
}

- (void)_updatePlaybackPosition
{
  v3 = +[MPMusicPlayerController systemMusicPlayer];
  _playbackStoreID = [(SiriAcousticIdSongTagViewController *)self _playbackStoreID];
  nowPlayingItem = [v3 nowPlayingItem];
  if (_playbackStoreID)
  {
    if ([v3 playbackState] == &dword_0 + 1)
    {
      if ([(SiriAcousticIdSongTagViewController *)self _isNowPlayingCurrentStoreID])
      {
        [v3 currentPlaybackTime];
        v7 = v6;
        v8 = [nowPlayingItem valueForProperty:MPMediaItemPropertyPlaybackDuration];
        [v8 doubleValue];
        v10 = v9;

        if (v10 > 0.0)
        {
          v11 = v7 / v10;
          if (v7 / v10 > 1.0)
          {
            v11 = 1.0;
          }

          [(SiriAcousticIdHeaderView *)self->_acousticIdHeaderView setPlayButtonProgress:1 animated:fmax(v11, 0.0)];
        }
      }
    }
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SiriAcousticIdSongTagViewController _updatePlaybackPosition]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%s playbackStoreID is not provided in the payload", &v13, 0xCu);
    }
  }
}

@end