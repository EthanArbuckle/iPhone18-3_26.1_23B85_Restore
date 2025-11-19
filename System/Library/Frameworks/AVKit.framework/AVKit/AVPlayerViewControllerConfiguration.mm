@interface AVPlayerViewControllerConfiguration
+ (id)defaultConfiguration;
- (AVPlayerViewControllerConfiguration)init;
- (BOOL)_isMediaPresentationSettingsAudioGroupTitleSupported;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setExcludedControls:(unint64_t)a3;
- (void)setMediaPresentationSettingsAudioGroupTitle:(id)a3;
@end

@implementation AVPlayerViewControllerConfiguration

- (BOOL)_isMediaPresentationSettingsAudioGroupTitleSupported
{
  v2 = +[AVKitGlobalSettings shared];
  if ([v2 isTVApp] & 1) != 0 || (objc_msgSend(v2, "isFitnessApp"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isAVKitTester];
  }

  return v3;
}

- (void)setMediaPresentationSettingsAudioGroupTitle:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(AVPlayerViewControllerConfiguration *)self _isMediaPresentationSettingsAudioGroupTitleSupported])
  {
    if (self->_mediaPresentationSettingsAudioGroupTitle != v4)
    {
      v5 = [(NSString *)v4 copy];
      mediaPresentationSettingsAudioGroupTitle = self->_mediaPresentationSettingsAudioGroupTitle;
      self->_mediaPresentationSettingsAudioGroupTitle = v5;
    }
  }

  else
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[AVPlayerViewControllerConfiguration setMediaPresentationSettingsAudioGroupTitle:]";
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s mediaPresentationSettingsAudioGroupTitle is not supported in your app.", &v8, 0xCu);
    }
  }
}

- (void)setExcludedControls:(unint64_t)a3
{
  if (self->_excludedControls != a3)
  {
    self->_excludedControls = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVPlayerViewControllerConfiguration allocWithZone:?]];
  [(AVPlayerViewControllerConfiguration *)v4 setExcludedControls:[(AVPlayerViewControllerConfiguration *)self excludedControls]];
  [(AVPlayerViewControllerConfiguration *)v4 setPrefersFullScreenStyleForEmbeddedMode:[(AVPlayerViewControllerConfiguration *)self prefersFullScreenStyleForEmbeddedMode]];
  v5 = [(AVPlayerViewControllerConfiguration *)self tips];
  [(AVPlayerViewControllerConfiguration *)v4 setTips:v5];

  v6 = [(AVPlayerViewControllerConfiguration *)self mediaPresentationSettingsAudioGroupTitle];
  [(AVPlayerViewControllerConfiguration *)v4 setMediaPresentationSettingsAudioGroupTitle:v6];

  return v4;
}

- (AVPlayerViewControllerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerViewControllerConfiguration;
  result = [(AVPlayerViewControllerConfiguration *)&v3 init];
  if (result)
  {
    result->_excludedControls = 0;
  }

  return result;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(AVPlayerViewControllerConfiguration);

  return v2;
}

@end