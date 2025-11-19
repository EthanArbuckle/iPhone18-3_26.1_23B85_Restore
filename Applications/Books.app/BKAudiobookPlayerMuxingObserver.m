@interface BKAudiobookPlayerMuxingObserver
+ (id)sharedInstance;
- (BKAudiobookPlayerMuxingObserver)init;
- (void)audioPlaybackWillStart:(id)a3;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
@end

@implementation BKAudiobookPlayerMuxingObserver

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001880E0;
  block[3] = &unk_100A03560;
  block[4] = a1;
  if (qword_100AF77A8 != -1)
  {
    dispatch_once(&qword_100AF77A8, block);
  }

  v2 = qword_100AF77B0;

  return v2;
}

- (BKAudiobookPlayerMuxingObserver)init
{
  v6.receiver = self;
  v6.super_class = BKAudiobookPlayerMuxingObserver;
  v2 = [(BKAudiobookPlayerMuxingObserver *)&v6 init];
  if (v2)
  {
    v3 = +[BKAudiobookPlayer sharedInstance];
    [v3 addObserver:v2];

    v4 = +[BCAudioMuxingCoordinator sharedInstance];
    [v4 addAudioMuxingObserver:v2];
  }

  return v2;
}

- (void)audioPlaybackWillStart:(id)a3
{
  v4 = a3;
  v5 = +[BKAudiobookNowPlayingAdaptor sharedInstance];
  [v5 setAudiobookPlayerActiveOutput:v4 == self];

  if (v4 != self)
  {
    v6 = BCAudiobooksAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pausing audiobook playback because another object is going to start playing: %{public}@", &v8, 0xCu);
    }

    v7 = +[BKAudiobookPlayer sharedInstance];
    [v7 pause];
  }
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  if (a5 == 2)
  {
    v7 = [BCAudioMuxingCoordinator sharedInstance:a3];
    [v7 notifyPlaybackWillStart:self];
  }
}

@end