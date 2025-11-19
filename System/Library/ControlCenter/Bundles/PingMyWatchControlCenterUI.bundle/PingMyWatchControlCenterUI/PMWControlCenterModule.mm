@interface PMWControlCenterModule
+ (BOOL)isPingMyWatchSupported;
- (id)iconGlyph;
- (void)_pingDevice;
- (void)_playGliphAnimationWithCompletion:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PMWControlCenterModule

- (void)setSelected:(BOOL)a3
{
  if (a3)
  {
    self->_pingInProgress = 1;
    [(PMWControlCenterModule *)self _pingDevice];
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_DDC;
    v4[3] = &unk_41A0;
    objc_copyWeak(&v5, &location);
    [(PMWControlCenterModule *)self _playGliphAnimationWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (id)iconGlyph
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:22.0];
  v3 = [UIImage systemImageNamed:@"applewatch.radiowaves.left.and.right" withConfiguration:v2];

  return v3;
}

- (void)_pingDevice
{
  v3 = pmw_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "PMWControlCenterModule: Sending ping to device", buf, 2u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F84;
  block[3] = &unk_4208;
  block[4] = self;
  dispatch_async(v4, block);
}

+ (BOOL)isPingMyWatchSupported
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = qword_8210;
  v13 = qword_8210;
  if (!qword_8210)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_15A4;
    v9[3] = &unk_4258;
    v9[4] = &v10;
    sub_15A4(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 sharedInstance];
  v5 = [v4 getActivePairedDevice];

  v6 = [[NSUUID alloc] initWithUUIDString:@"C5BAD2E8-BB79-4E9E-8A0D-757C60D31053"];
  v7 = [v5 supportsCapability:v6];

  return v7;
}

- (void)_playGliphAnimationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSSymbolVariableColorEffect effect];
  v6 = [v5 effectWithCumulative];

  v7 = [(PMWControlCenterModule *)self glyphImageView];
  v8 = [NSSymbolEffectOptions optionsWithRepeatCount:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13B4;
  v10[3] = &unk_4230;
  v11 = v4;
  v9 = v4;
  [v7 addSymbolEffect:v6 options:v8 animated:1 completion:v10];
}

@end