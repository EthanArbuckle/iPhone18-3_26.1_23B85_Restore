@interface AFUISiriEyesFreeView
- (AFUISiriEyesFreeView)initWithFrame:(CGRect)frame eyesFreeMode:(int64_t)mode;
- (id)backdropView;
- (void)_configureEyesFreePresentation:(int64_t)presentation;
- (void)checkForAndReportEyesFreeLogoBug;
@end

@implementation AFUISiriEyesFreeView

- (AFUISiriEyesFreeView)initWithFrame:(CGRect)frame eyesFreeMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = AFUISiriEyesFreeView;
  v5 = [(AFUISiriEyesFreeView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(AFUISiriEyesFreeView *)v5 _configureEyesFreePresentation:mode];
  }

  return v6;
}

- (void)_configureEyesFreePresentation:(int64_t)presentation
{
  v31 = *MEMORY[0x277D85DE8];
  self->_eyesFreeMode = presentation;
  if (presentation == 1)
  {
    backdropView = [(AFUISiriEyesFreeView *)self backdropView];
    backdropView = self->_backdropView;
    self->_backdropView = backdropView;

    v6 = self->_backdropView;
    [(AFUISiriEyesFreeView *)self bounds];
    [(UIView *)v6 setFrame:?];
    [(AFUISiriEyesFreeView *)self addSubview:self->_backdropView];
    v7 = objc_alloc(MEMORY[0x277D619E0]);
    siriui_platterVibrancyEffect = [MEMORY[0x277D75D00] siriui_platterVibrancyEffect];
    v9 = [v7 initWithEffect:siriui_platterVibrancyEffect];
    eyesFreeEffectView = self->_eyesFreeEffectView;
    self->_eyesFreeEffectView = v9;

    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"car.fill"];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    eyesFreeLogoView = self->_eyesFreeLogoView;
    self->_eyesFreeLogoView = v12;

    [(UIImageView *)self->_eyesFreeLogoView setContentMode:1];
    [(SiriUIVisualEffectView *)self->_eyesFreeEffectView setCustomView:self->_eyesFreeLogoView];
    [(AFUISiriEyesFreeView *)self bounds];
    Width = CGRectGetWidth(v32);
    [(AFUISiriEyesFreeView *)self bounds];
    Height = CGRectGetHeight(v33);
    if (Width <= Height)
    {
      v16 = Height;
    }

    else
    {
      v16 = Width;
    }

    if (Width <= Height)
    {
      v17 = Width;
    }

    else
    {
      v17 = Height;
    }

    [(UIImageView *)self->_eyesFreeLogoView setFrame:0.0, 0.0, 160.0, 160.0];
    [(SiriUIVisualEffectView *)self->_eyesFreeEffectView setFrame:v17 * 0.5 + -80.0, v16 * 0.44 + -160.0, 160.0, 160.0];
    [(AFUISiriEyesFreeView *)self checkForAndReportEyesFreeLogoBug];
    v18 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      [(AFUISiriEyesFreeView *)self bounds];
      v20 = NSStringFromCGRect(v34);
      [(SiriUIVisualEffectView *)self->_eyesFreeEffectView frame];
      v21 = NSStringFromCGRect(v35);
      [(UIImageView *)self->_eyesFreeLogoView frame];
      v22 = NSStringFromCGRect(v36);
      v23 = 136315906;
      v24 = "[AFUISiriEyesFreeView _configureEyesFreePresentation:]";
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, "%s 🚗📱 Logging for rdar://108858965 AFUISiriEyesFreeView bounds: %@. _eyesFreeEffectView frame: %@. _eyesFreeLogoView—frame: %@", &v23, 0x2Au);
    }

    [(AFUISiriEyesFreeView *)self insertSubview:self->_eyesFreeEffectView aboveSubview:self->_backdropView];
  }
}

- (void)checkForAndReportEyesFreeLogoBug
{
  [(AFUISiriEyesFreeView *)self bounds];
  v4 = v3;
  [(AFUISiriEyesFreeView *)self bounds];
  if (v4 > v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6AFC8]) initWithQueue:0];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v9 = [v6 signatureWithDomain:@"SiriAssistant" type:@"eyesfree_icon_offscreen" subType:&stru_285322A30 subtypeContext:&stru_285322A30 detectedProcess:processName triggerThresholdValues:0];

    [v6 snapshotWithSignature:v9 delay:0 events:0 payload:0 actions:0 reply:0.0];
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFUISiriEyesFreeView *)v10 checkForAndReportEyesFreeLogoBug];
    }
  }
}

- (id)backdropView
{
  backdropView = self->_backdropView;
  if (!backdropView)
  {
    if ([MEMORY[0x277D60120] isEnhancedMaterialEnabled])
    {
      v4 = objc_alloc(MEMORY[0x277D75D18]);
      [(AFUISiriEyesFreeView *)self bounds];
      v5 = [v4 initWithFrame:?];
      [(UIView *)v5 siriSharedUI_setGlassBackground];
      layer = [(UIView *)v5 layer];
      [layer setMasksToBounds:1];

      [(UIView *)v5 setAutoresizingMask:18];
      layer2 = [(UIView *)v5 layer];
      [layer2 setAllowsHitTesting:0];
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277D61980]);
      [(AFUISiriEyesFreeView *)self bounds];
      v5 = [v8 initWithFrame:?];
      [(UIView *)v5 setVisible:1];
    }

    v9 = self->_backdropView;
    self->_backdropView = v5;

    backdropView = self->_backdropView;
  }

  v10 = backdropView;

  return v10;
}

@end