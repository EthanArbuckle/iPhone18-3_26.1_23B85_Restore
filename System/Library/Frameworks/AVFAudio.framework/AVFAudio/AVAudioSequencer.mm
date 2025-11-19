@interface AVAudioSequencer
- (AVAudioSequencer)initWithAudioEngine:(AVAudioEngine *)engine;
- (AVAudioSequencer)initWithImpl:(void *)a3;
- (AVMusicTimeStamp)beatsForHostTime:(UInt64)inHostTime error:(NSError *)outError;
- (AVMusicTrack)createAndAppendTrack;
- (BOOL)isPlaying;
- (BOOL)loadFromData:(NSData *)data options:(AVMusicSequenceLoadOptions)options error:(NSError *)outError;
- (BOOL)loadFromURL:(NSURL *)fileURL options:(AVMusicSequenceLoadOptions)options error:(NSError *)outError;
- (BOOL)removeTrack:(AVMusicTrack *)track;
- (BOOL)startAndReturnError:(NSError *)outError;
- (BOOL)writeToURL:(NSURL *)fileURL SMPTEResolution:(NSInteger)resolution replaceExisting:(BOOL)replace error:(NSError *)outError;
- (NSData)dataWithSMPTEResolution:(NSInteger)SMPTEResolution error:(NSError *)outError;
- (NSTimeInterval)currentPositionInSeconds;
- (UInt64)hostTimeForBeats:(AVMusicTimeStamp)inBeats error:(NSError *)outError;
- (float)rate;
- (unint64_t)numberOfTracks;
- (void)cleanTracks;
- (void)dealloc;
- (void)prepareToPlay;
- (void)reverseEvents;
- (void)setCurrentPositionInBeats:(NSTimeInterval)currentPositionInBeats;
- (void)setCurrentPositionInSeconds:(NSTimeInterval)currentPositionInSeconds;
- (void)setRate:(float)rate;
- (void)setUserCallback:(AVAudioSequencerUserCallback)userCallback;
- (void)setupTrackArray;
- (void)setupTracks;
- (void)stop;
@end

@implementation AVAudioSequencer

- (void)setUserCallback:(AVAudioSequencerUserCallback)userCallback
{
  impl = self->_impl;
  v10 = self;
  v6 = _Block_copy(userCallback);
  v7 = *(impl + 4);
  *(impl + 4) = v6;

  objc_storeStrong(impl + 7, self);
  if (*(impl + 4))
  {
    v8 = AVAudioSequencerImpl::UserCallback;
  }

  else
  {
    v8 = 0;
  }

  v9 = MusicSequenceSetUserCallback(*(impl + 1), v8, impl);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 310, "InstallUserCallback", "MusicSequenceSetUserCallback(mSequence, (mUserCallbackBlock) ? UserCallback : nullptr, this)", v9, 0);
}

- (void)reverseEvents
{
  v2 = MusicSequenceReverse(*(self->_impl + 1));

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 274, "Reverse", "MusicSequenceReverse(mSequence)", v2, 0);
}

- (BOOL)removeTrack:(AVMusicTrack *)track
{
  v4 = track;
  v5 = [(AVMusicTrack *)v4 index];
  v6 = [(AVAudioSequencer *)self trackArray];
  [v6 removeObjectAtIndex:v5];

  return 1;
}

- (AVMusicTrack)createAndAppendTrack
{
  [(AVAudioSequencer *)self setupTrackArray];
  v2 = [AVMusicTrack alloc];
  operator new();
}

- (NSData)dataWithSMPTEResolution:(NSInteger)SMPTEResolution error:(NSError *)outError
{
  outData = 0;
  v5 = MusicSequenceFileCreateData(*(self->_impl + 1), kMusicSequenceFile_AnyType, 0, SMPTEResolution, &outData);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 231, "[AVAudioSequencer dataWithSMPTEResolution:error:]", "impl->WriteToData(&outData, (SInt32)SMPTEResolution)", v5, outError);
  v6 = outData;

  return v6;
}

- (BOOL)writeToURL:(NSURL *)fileURL SMPTEResolution:(NSInteger)resolution replaceExisting:(BOOL)replace error:(NSError *)outError
{
  v7 = replace;
  v8 = resolution;
  v10 = fileURL;
  v11 = MusicSequenceFileCreate(*(self->_impl + 1), v10, kMusicSequenceFile_AnyType, v7, v8);
  LOBYTE(outError) = _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 225, "[AVAudioSequencer writeToURL:SMPTEResolution:replaceExisting:error:]", "impl->WriteToFile((__bridge CFURLRef)fileURL, (SInt32)resolution, replace)", v11, outError);

  return outError;
}

- (BOOL)loadFromData:(NSData *)data options:(AVMusicSequenceLoadOptions)options error:(NSError *)outError
{
  v6 = options;
  v8 = data;
  [(AVAudioSequencer *)self cleanTracks];
  v9 = MusicSequenceFileLoadData(*(self->_impl + 1), v8, kMusicSequenceFile_AnyType, v6);
  v10 = _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 216, "[AVAudioSequencer loadFromData:options:error:]", "impl->LoadFromData((__bridge CFDataRef)data, (UInt32)options)", v9, outError);
  if (v10)
  {
    [(AVAudioSequencer *)self setupTracks];
  }

  return v10;
}

- (BOOL)loadFromURL:(NSURL *)fileURL options:(AVMusicSequenceLoadOptions)options error:(NSError *)outError
{
  v6 = options;
  v8 = fileURL;
  [(AVAudioSequencer *)self cleanTracks];
  v9 = MusicSequenceFileLoad(*(self->_impl + 1), v8, kMusicSequenceFile_AnyType, v6);
  v10 = _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 206, "[AVAudioSequencer loadFromURL:options:error:]", "impl->LoadFromFile((__bridge CFURLRef)fileURL, (UInt32)options)", v9, outError);
  if (v10)
  {
    [(AVAudioSequencer *)self setupTracks];
  }

  return v10;
}

- (void)setupTracks
{
  [(AVAudioSequencer *)self setupTrackArray];
  if ([(AVAudioSequencer *)self numberOfTracks])
  {
    v3 = [AVMusicTrack alloc];
    operator new();
  }

  v4 = [AVMusicTrack alloc];
  operator new();
}

- (void)setupTrackArray
{
  v3 = [(AVAudioSequencer *)self trackArray];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(AVAudioSequencer *)self setTrackArray:?];
  }
}

- (void)cleanTracks
{
  [(AVAudioSequencer *)self setTempoTrack:0];

  [(AVAudioSequencer *)self setTrackArray:0];
}

- (unint64_t)numberOfTracks
{
  impl = self->_impl;
  outNumberOfTracks = 0;
  TrackCount = MusicSequenceGetTrackCount(impl[1], &outNumberOfTracks);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 173, "NumberOfTracks", "MusicSequenceGetTrackCount(mSequence, &trackCount)", TrackCount, 0);
  return outNumberOfTracks;
}

- (void)dealloc
{
  [(AVAudioSequencer *)self cleanTracks];
  impl = self->_impl;
  if (impl)
  {
    AVAudioSequencerImpl::~AVAudioSequencerImpl(impl);
  }

  v4.receiver = self;
  v4.super_class = AVAudioSequencer;
  [(AVAudioSequencer *)&v4 dealloc];
}

- (AVAudioSequencer)initWithImpl:(void *)a3
{
  v7.receiver = self;
  v7.super_class = AVAudioSequencer;
  v4 = [(AVAudioSequencer *)&v7 init];
  if (v4)
  {
    v4->_impl = a3;
    v5 = [AVMusicTrack alloc];
    operator new();
  }

  if (a3)
  {
    AVAudioSequencerImpl::~AVAudioSequencerImpl(a3);
  }

  return 0;
}

- (AVAudioSequencer)initWithAudioEngine:(AVAudioEngine *)engine
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = engine;
  operator new();
}

- (void)stop
{
  impl = self->_impl;
  v3 = dispatch_get_global_queue(0, 0);
  v4 = impl[5];
  v5 = impl[6];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

- (BOOL)startAndReturnError:(NSError *)outError
{
  v4 = MusicPlayerStart(*self->_impl);

  return _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 121, "[AVAudioSequencer(AVAudioSequencer_Player) startAndReturnError:]", "impl->Start()", v4, outError);
}

- (void)prepareToPlay
{
  v2 = MusicPlayerPreroll(*self->_impl);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 116, "[AVAudioSequencer(AVAudioSequencer_Player) prepareToPlay]", "impl->PrepareToPlay()", v2, 0);
}

- (AVMusicTimeStamp)beatsForHostTime:(UInt64)inHostTime error:(NSError *)outError
{
  outBeats = 0.0;
  BeatsForHostTime = MusicPlayerGetBeatsForHostTime(*self->_impl, inHostTime, &outBeats);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 144, "BeatsForHostTime", "MusicPlayerGetBeatsForHostTime(mPlayer, inHostTime, pOutBeats)", BeatsForHostTime, 0);
  return outBeats;
}

- (UInt64)hostTimeForBeats:(AVMusicTimeStamp)inBeats error:(NSError *)outError
{
  outHostTime = 0;
  HostTimeForBeats = MusicPlayerGetHostTimeForBeats(*self->_impl, inBeats, &outHostTime);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 139, "HostTimeForBeats", "MusicPlayerGetHostTimeForBeats(mPlayer, inBeats, pOutHostTime)", HostTimeForBeats, 0);
  return outHostTime;
}

- (void)setRate:(float)rate
{
  v3 = MusicPlayerSetPlayRateScalar(*self->_impl, rate);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 134, "SetRate", "MusicPlayerSetPlayRateScalar(mPlayer, inRate)", v3, 0);
}

- (float)rate
{
  impl = self->_impl;
  outScaleRate = 0.0;
  PlayRateScalar = MusicPlayerGetPlayRateScalar(*impl, &outScaleRate);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 128, "GetRate", "MusicPlayerGetPlayRateScalar(mPlayer, &theRate)", PlayRateScalar, 0);
  return outScaleRate;
}

- (BOOL)isPlaying
{
  impl = self->_impl;
  outIsPlaying = 0;
  IsPlaying = MusicPlayerIsPlaying(*impl, &outIsPlaying);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 121, "IsPlaying", "MusicPlayerIsPlaying(mPlayer, &isPlaying)", IsPlaying, 0);
  return outIsPlaying != 0;
}

- (void)setCurrentPositionInBeats:(NSTimeInterval)currentPositionInBeats
{
  v3 = MusicPlayerSetTime(*self->_impl, currentPositionInBeats);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 115, "SetCurrentPosition", "MusicPlayerSetTime(mPlayer, currentPosition)", v3, 0);
}

- (void)setCurrentPositionInSeconds:(NSTimeInterval)currentPositionInSeconds
{
  BeatsForSeconds = AVAudioSequencerImpl::GetBeatsForSeconds(*(self->_impl + 1), currentPositionInSeconds);
  v5 = MusicPlayerSetTime(*self->_impl, BeatsForSeconds);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 115, "SetCurrentPosition", "MusicPlayerSetTime(mPlayer, currentPosition)", v5, 0);
}

- (NSTimeInterval)currentPositionInSeconds
{
  v3 = AVAudioSequencerImpl::CurrentPosition(*self->_impl);
  v4 = *(self->_impl + 1);

  return AVAudioSequencerImpl::GetSecondsForBeats(v4, v3);
}

@end