@interface AVPlayerViewControllerConfiguration
+ (id)defaultConfiguration;
- (AVPlayerViewControllerConfiguration)init;
- (BOOL)_isMediaPresentationSettingsAudioGroupTitleSupported;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setExcludedControls:(unint64_t)controls;
- (void)setMediaPresentationSettingsAudioGroupTitle:(id)title;
@end

@implementation AVPlayerViewControllerConfiguration

- (BOOL)_isMediaPresentationSettingsAudioGroupTitleSupported
{
  v2 = +[AVKitGlobalSettings shared];
  if ([v2 isTVApp] & 1) != 0 || (objc_msgSend(v2, "isFitnessApp"))
  {
    isAVKitTester = 1;
  }

  else
  {
    isAVKitTester = [v2 isAVKitTester];
  }

  return isAVKitTester;
}

- (void)setMediaPresentationSettingsAudioGroupTitle:(id)title
{
  v10 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if ([(AVPlayerViewControllerConfiguration *)self _isMediaPresentationSettingsAudioGroupTitleSupported])
  {
    if (self->_mediaPresentationSettingsAudioGroupTitle != titleCopy)
    {
      v5 = [(NSString *)titleCopy copy];
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

- (void)setExcludedControls:(unint64_t)controls
{
  if (self->_excludedControls != controls)
  {
    self->_excludedControls = controls;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AVPlayerViewControllerConfiguration allocWithZone:?]];
  [(AVPlayerViewControllerConfiguration *)v4 setExcludedControls:[(AVPlayerViewControllerConfiguration *)self excludedControls]];
  [(AVPlayerViewControllerConfiguration *)v4 setPrefersFullScreenStyleForEmbeddedMode:[(AVPlayerViewControllerConfiguration *)self prefersFullScreenStyleForEmbeddedMode]];
  tips = [(AVPlayerViewControllerConfiguration *)self tips];
  [(AVPlayerViewControllerConfiguration *)v4 setTips:tips];

  mediaPresentationSettingsAudioGroupTitle = [(AVPlayerViewControllerConfiguration *)self mediaPresentationSettingsAudioGroupTitle];
  [(AVPlayerViewControllerConfiguration *)v4 setMediaPresentationSettingsAudioGroupTitle:mediaPresentationSettingsAudioGroupTitle];

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