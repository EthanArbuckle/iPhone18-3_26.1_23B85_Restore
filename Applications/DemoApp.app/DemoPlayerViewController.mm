@interface DemoPlayerViewController
- (void)_playerItemDidPlayToEndTime:(id)a3;
- (void)_prepareMovie;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DemoPlayerViewController

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = DemoPlayerViewController;
  [(DemoPlayerViewController *)&v8 loadView];
  v3 = [(DemoPlayerViewController *)self view];
  v4 = +[UIColor blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [DemoPlayerView alloc];
  [v3 bounds];
  v6 = [(DemoPlayerView *)v5 initWithFrame:?];
  playerView = self->_playerView;
  self->_playerView = v6;

  [v3 addSubview:self->_playerView];
  self->_duration = NAN;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_100008B60)
  {
    v7 = [(AVPlayer *)self->_player currentItem:a3];
    if (v7)
    {
      v8 = v7;
      v9 = [(AVPlayer *)self->_player currentItem];
      v10 = [v9 status];

      if (v10 == 1)
      {
        if (self->_sync)
        {
          v12 = +[NSDate date];
          [v12 timeIntervalSince1970];
          v14 = v13;

          v15 = fmod(v14, self->_duration + 1.0);
          memset(&v23, 0, sizeof(v23));
          CMTimeMakeWithSeconds(&v23, v15, 1);
          player = self->_player;
          v22 = v23;
          v20 = *&kCMTimeZero.value;
          epoch = kCMTimeZero.epoch;
          v18 = v20;
          v19 = epoch;
          [(AVPlayer *)player seekToTime:&v22 toleranceBefore:&v20 toleranceAfter:&v18];
        }

        LODWORD(v11) = 1.0;
        [(AVPlayer *)self->_player setRate:v11];
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = DemoPlayerViewController;
    [(DemoPlayerViewController *)&v17 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_playerItemDidPlayToEndTime:(id)a3
{
  duration = self->_duration;
  v5 = 1.0;
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  if (self->_sync && (v9 = duration + 1.0, v5 = fmod(v9 * ceil(v8 / v9) - v8, v9), v5 >= 2.0))
  {
    v11 = fmod(v8, v9);
    memset(&v18, 0, sizeof(v18));
    CMTimeMakeWithSeconds(&v18, v11, 1);
    player = self->_player;
    v17 = v18;
    v15 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    v13 = v15;
    v14 = epoch;
    [(AVPlayer *)player seekToTime:&v17 toleranceBefore:&v15 toleranceAfter:&v13];
  }

  else
  {
    v10 = dispatch_time(0, (v5 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000012A0;
    block[3] = &unk_100004168;
    block[4] = self;
    dispatch_after(v10, &_dispatch_main_q, block);
  }
}

- (void)_prepareMovie
{
  self->_sync = 1;
  v3 = NSHomeDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"DemoSync.mov"];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:0];

  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v6 = NSHomeDirectory();
    v7 = [v6 stringByAppendingPathComponent:@"Demo.mov"];
    v8 = [NSURL fileURLWithPath:v7 isDirectory:0];

    self->_sync = 0;
    v5 = v8;
  }

  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    NSLog(@"movie %@ not found", v5);
    abort();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001488;
  v10[3] = &unk_100004190;
  v11 = [[AVURLAsset alloc] initWithURL:v5 options:0];
  v12 = self;
  v9 = v11;
  [v9 loadValuesAsynchronouslyForKeys:&off_100004320 completionHandler:v10];
}

@end