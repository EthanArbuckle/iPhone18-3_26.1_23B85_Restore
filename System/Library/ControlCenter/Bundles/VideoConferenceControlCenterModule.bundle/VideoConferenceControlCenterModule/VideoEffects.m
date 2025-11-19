@interface VideoEffects
- (VideoEffects)initWithVideoEffectsModule:(id)a3;
- (void)postNotificationWithBundleID:(id)a3;
- (void)setIntensity:(float)a3 withBundleID:(id)a4;
- (void)setState:(BOOL)a3 withBundleID:(id)a4;
- (void)updateAvailabilityWithBundleID:(id)a3;
- (void)updateControlModeWithBundleID:(id)a3;
- (void)updateEnabledWithBundleID:(id)a3;
- (void)updateIntensityWithBundleID:(id)a3;
- (void)updateVideoEffectStatesWithBundleID:(id)a3;
@end

@implementation VideoEffects

- (VideoEffects)initWithVideoEffectsModule:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VideoEffects;
  v6 = [(VideoEffects *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_isAvailable = 0;
    v6->_intensity = 0.0;
    v6->_controlMode = 0;
    objc_storeStrong(&v6->_videoEffect, a3);
  }

  return v7;
}

- (void)updateVideoEffectStatesWithBundleID:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[VideoEffects updateVideoEffectStatesWithBundleID:]";
    v7 = 1024;
    v8 = 27;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(VideoEffects *)self updateControlModeWithBundleID:v4];
  [(VideoEffects *)self updateEnabledWithBundleID:v4];
  [(VideoEffects *)self updateAvailabilityWithBundleID:v4];
  [(VideoEffects *)self updateIntensityWithBundleID:v4];
}

- (void)updateControlModeWithBundleID:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[VideoEffects updateControlModeWithBundleID:]";
    v8 = 1024;
    v9 = 35;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  videoEffect = self->_videoEffect;
  self->_controlMode = AVControlCenterVideoEffectsModuleGetEffectControlModeForBundleID();
}

- (void)updateEnabledWithBundleID:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[VideoEffects updateEnabledWithBundleID:]";
    v8 = 1024;
    v9 = 40;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  videoEffect = self->_videoEffect;
  self->_enabled = AVControlCenterVideoEffectsModuleIsEffectEnabledForBundleID();
}

- (void)updateAvailabilityWithBundleID:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[VideoEffects updateAvailabilityWithBundleID:]";
    v8 = 1024;
    v9 = 45;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  videoEffect = self->_videoEffect;
  self->_isAvailable = AVControlCenterVideoEffectsModuleIsEffectSupportedForBundleID();
}

- (void)updateIntensityWithBundleID:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    videoEffect = self->_videoEffect;
    v19 = 136446722;
    v20 = "[VideoEffects updateIntensityWithBundleID:]";
    v21 = 1024;
    v22 = 50;
    v23 = 2112;
    v24 = videoEffect;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@", &v19, 0x1Cu);
  }

  if ([(NSString *)self->_videoEffect isEqualToString:AVControlCenterVideoEffectBackgroundBlur])
  {
    AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID();
    v7 = v6;
    v9 = v8;
    v10 = self->_videoEffect;
    AVControlCenterVideoEffectsModuleGetEffectIntensityForBundleID();
    if (v9 != v7)
    {
      v12 = v9 - v11;
LABEL_10:
      v18 = v12 / (v9 - v7);
      self->_intensity = v18;
    }
  }

  else if ([(NSString *)self->_videoEffect isEqualToString:AVControlCenterVideoEffectStudioLighting])
  {
    v13 = self->_videoEffect;
    AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID();
    v7 = v14;
    v9 = v15;
    v16 = self->_videoEffect;
    AVControlCenterVideoEffectsModuleGetEffectIntensityForBundleID();
    if (v9 != v7)
    {
      v12 = v17 - v7;
      goto LABEL_10;
    }
  }
}

- (void)setIntensity:(float)a3 withBundleID:(id)a4
{
  v6 = a4;
  videoEffect = self->_videoEffect;
  AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID();
  v9 = v8;
  v11 = v10;
  v12 = v10 - v8;
  v13 = v8 + (v10 - v8) * a3;
  v14 = [(NSString *)self->_videoEffect isEqualToString:AVControlCenterVideoEffectBackgroundBlur];
  v15 = v11 - v12 * a3;
  if (!v14)
  {
    v15 = v13;
  }

  v16 = v15;
  v17 = self->_videoEffect;
  AVControlCenterVideoEffectsModuleGetEffectIntensityDefaultValueForBundleID();
  if (__RPLogLevel <= 1u)
  {
    v19 = v18;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_videoEffect;
      v22 = 136447746;
      v23 = "[VideoEffects setIntensity:withBundleID:]";
      v24 = 1024;
      v25 = 75;
      v26 = 2048;
      v27 = v16;
      v28 = 2112;
      v29 = v20;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v19;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting intensity %f for effect %@. range min %f max %f. default %f", &v22, 0x44u);
    }
  }

  v21 = self->_videoEffect;
  AVControlCenterVideoEffectsModuleSetEffectIntensityForBundleID();
  self->_intensity = a3;
  [(VideoEffects *)self postNotificationWithBundleID:v6];
}

- (void)setState:(BOOL)a3 withBundleID:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446978;
    v9 = "[VideoEffects setState:withBundleID:]";
    v10 = 1024;
    v11 = 82;
    v12 = 1024;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d state=%d bundleID=%@", &v8, 0x22u);
  }

  videoEffect = self->_videoEffect;
  AVControlCenterVideoEffectsModuleSetEffectEnabledForBundleID();
  [(VideoEffects *)self postNotificationWithBundleID:v6];
}

- (void)postNotificationWithBundleID:(id)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[VideoEffects postNotificationWithBundleID:]";
    v12 = 1024;
    v13 = 88;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = AVControlCenterModulesNotificationBundleIdentifierKey;
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [NSNotification alloc];
  v6 = [v5 initWithName:AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification object:0 userInfo:v4];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotification:v6];
}

@end