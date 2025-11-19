@interface COSAnimatedInsigniaWatchView
- (BOOL)_verboseMALogging;
- (COSAnimatedInsigniaWatchView)init;
- (void)_maybePresentInsignia;
- (void)addItemWithURL:(id)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)loadInsigniaAsset;
- (void)moveOutroToInsignia;
- (void)playerItemDidReachEnd:(id)a3;
- (void)setupInsigniaLayer;
@end

@implementation COSAnimatedInsigniaWatchView

- (COSAnimatedInsigniaWatchView)init
{
  v5.receiver = self;
  v5.super_class = COSAnimatedInsigniaWatchView;
  v2 = [(COSAnimatedInsigniaWatchView *)&v5 initWithStyle:1];
  v3 = v2;
  if (v2)
  {
    [(COSAnimatedInsigniaWatchView *)v2 setupInsigniaLayer];
  }

  return v3;
}

- (void)setupInsigniaLayer
{
  v3 = [AVQueuePlayer queuePlayerWithItems:&__NSArray0__struct];
  player = self->_player;
  self->_player = v3;

  [(AVQueuePlayer *)self->_player setAllowsExternalPlayback:0];
  [(AVQueuePlayer *)self->_player setMuted:1];
  v5 = self->_player;
  v36 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [(AVQueuePlayer *)v5 seekToTime:&v36];
  [(AVQueuePlayer *)self->_player setActionAtItemEnd:2];
  v6 = sub_100032DD0();
  v8 = v7;
  v10 = v9;
  v12 = [[UIView alloc] initWithFrame:{v6, v11, v7, v9}];
  deviceInsignia = self->_deviceInsignia;
  self->_deviceInsignia = v12;

  v14 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
  [v14 setFrame:{CGPointZero.x, CGPointZero.y, v8, v10}];
  v15 = [(UIView *)self->_deviceInsignia layer];
  [v15 addSublayer:v14];

  [(COSAnimatedInsigniaWatchView *)self addSubview:self->_deviceInsignia];
  v16 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v17 = [v16 hardwareBehavior];

  if (v17)
  {
    v18 = +[UIScreen mainScreen];
    [v18 scale];
    v19 = @"@2x";
    if (v20 > 2.0)
    {
      v19 = @"@3x";
    }

    v21 = v19;

    v22 = +[PBBridgeWatchAttributeController sharedDeviceController];
    v23 = [v22 material];

    v24 = +[PBBridgeWatchAttributeController sharedDeviceController];
    v25 = [v24 size];

    v26 = [UIImageView alloc];
    v27 = sub_10002E594(@"overlay", v17);
    v28 = [PBBridgeWatchAttributeController resourceString:v27 material:v23 size:v25 forAttributes:4];
    v29 = [v28 stringByAppendingString:v21];

    v30 = sub_10002D528(v29);
    v31 = [UIImage imageNamed:v30];
    v32 = [v26 initWithImage:v31];
    overlay = self->_overlay;
    self->_overlay = v32;

    v34 = [(UIImageView *)self->_overlay layer];
    v35 = [CAFilter filterWithType:kCAFilterMultiplyBlendMode];
    [v34 setCompositingFilter:v35];

    [(UIImageView *)self->_overlay setAlpha:0.0];
    [(UIView *)self->_deviceInsignia addSubview:self->_overlay];
  }

  [(COSAnimatedInsigniaWatchView *)self loadInsigniaAsset];
}

- (BOOL)_verboseMALogging
{
  if (qword_1002BD430 != -1)
  {
    sub_100187BA0();
  }

  return byte_1002BD428;
}

- (void)loadInsigniaAsset
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = sub_100032EF8();
  v5 = sub_100032F90();
  v6 = sub_100033050();
  if ([(COSAnimatedInsigniaWatchView *)self _verboseMALogging])
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[PBBridgeWatchAttributeController sharedDeviceController];
      v9 = [v8 attributesDescription];
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HW Details: %@", buf, 0xCu);
    }

    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "outro1Resource: %@", buf, 0xCu);
    }

    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "outro2Resource: %@", buf, 0xCu);
    }

    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "outro2FallbackResource: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v13 = sub_10002D51C();
  v14 = [v3 URLForResource:v4 withExtension:@"mov" subdirectory:v13];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100064858;
  v19[3] = &unk_1002698B0;
  objc_copyWeak(&v24, buf);
  v15 = v5;
  v20 = v15;
  v16 = v3;
  v21 = v16;
  v17 = v6;
  v22 = v17;
  v23 = self;
  [(COSAnimatedInsigniaWatchView *)self addItemWithURL:v14 completion:v19];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"playerItemDidReachEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = COSAnimatedInsigniaWatchView;
  [(COSAnimatedInsigniaWatchView *)&v4 layoutSubviews];
  overlay = self->_overlay;
  [(UIView *)self->_deviceInsignia bounds];
  [(UIImageView *)overlay setFrame:?];
}

- (void)addItemWithURL:(id)a3 completion:(id)a4
{
  v5 = a4;
  [AVURLAsset assetWithURL:a3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100064FB0;
  v9 = v8[3] = &unk_100268C18;
  v10 = v5;
  v6 = v5;
  v7 = v9;
  [v7 loadValuesAsynchronouslyForKeys:&off_100281798 completionHandler:v8];
}

- (void)_maybePresentInsignia
{
  if (self->_assetsLoaded)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      magicCodeOutroPerMaterial = self->_magicCodeOutroPerMaterial;
      v6 = 136315394;
      v7 = "[COSAnimatedInsigniaWatchView _maybePresentInsignia]";
      v8 = 2112;
      v9 = magicCodeOutroPerMaterial;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- magicCodeOutroPerMaterial: %@", &v6, 0x16u);
    }

    if (PBLogPerformanceMetrics())
    {
      v5 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v5 beginMacroActivity:@"COSPreWristUIWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
    }

    [(AVQueuePlayer *)self->_player insertItem:self->_magicCodeOutro afterItem:0];
    [(AVQueuePlayer *)self->_player insertItem:self->_magicCodeOutroPerMaterial afterItem:self->_magicCodeOutro];
    [(AVQueuePlayer *)self->_player play];
  }
}

- (void)playerItemDidReachEnd:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000652F8;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)moveOutroToInsignia
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"com.apple.PreferencesApp.willBecomeActive" object:0];

  [(AVQueuePlayer *)self->_player pause];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    magicCodeOutroPerMaterial = self->_magicCodeOutroPerMaterial;
    LODWORD(buf.value) = 136315394;
    *(&buf.value + 4) = "[COSAnimatedInsigniaWatchView moveOutroToInsignia]";
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = magicCodeOutroPerMaterial;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- magicCodeOutroPerMaterial: %@", &buf, 0x16u);
  }

  memset(&buf, 0, sizeof(buf));
  v7 = self->_magicCodeOutroPerMaterial;
  if (v7)
  {
    [(AVPlayerItem *)v7 duration];
  }

  memset(&v14, 0, sizeof(v14));
  CMTimeMake(&v14, 1, 60);
  lhs = buf;
  v11 = v14;
  CMTimeSubtract(&v13, &lhs, &v11);
  buf = v13;
  if (v13.flags)
  {
    player = self->_player;
    v13 = buf;
    [(AVQueuePlayer *)player seekToTime:&v13];
  }

  overlay = self->_overlay;
  if (overlay)
  {
    [(UIImageView *)overlay setAlpha:1.0];
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"COSOutroAnimationFinishedNotification" object:0];
}

@end