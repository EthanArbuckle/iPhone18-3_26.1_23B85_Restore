@interface AFUISiriView
+ (void)_animateView:(id)a3 fromYPosition:(double)a4 toYPosition:(double)a5 fade:(int64_t)a6 completion:(id)a7;
- (AFUISiriView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (AFUISiriViewDataSource)dataSource;
- (AFUISiriViewDelegate)delegate;
- (BOOL)_helpButtonIsVisible;
- (BOOL)_isTextInputEnabled;
- (BOOL)_shouldIndicateHoldToTalkMode;
- (BOOL)_showsReportBugButton;
- (BOOL)_wantsBackdropView:(int64_t)a3;
- (BOOL)passcodeView:(id)a3 attemptUnlockWithPassword:(id)a4;
- (CGRect)_lockViewFrame;
- (CGRect)_remoteContentViewFrame;
- (CGRect)_statusViewContainerFrame;
- (UIEdgeInsets)safeAreaInsets;
- (double)_buttonInset;
- (float)audioLevelForSiriStatusView:(id)a3;
- (id)dimBackdropSettings;
- (void)_animateButtonsHidden:(BOOL)a3;
- (void)_animateLockViewIsAnimatingIn:(BOOL)a3 completion:(id)a4;
- (void)_audioRouteButtonTapped:(id)a3;
- (void)_configureEyesFreeLogo;
- (void)_configureHelpButton;
- (void)_configureReportBugButtonWithHoldToTalkState:(BOOL)a3;
- (void)_createAssistantVersionLabelIfNecessary;
- (void)_createReportBugButtonWithTemplateImage:(id)a3 andConfigureWithHoldToTalkState:(BOOL)a4;
- (void)_destroyAssistantVersionLabelIfNecessary;
- (void)_helpButtonTapped:(id)a3;
- (void)_layoutReportBugButton;
- (void)_loadReportBugButtonTemplateImageInBackgroundWithCompletion:(id)a3;
- (void)_placeRemoteContentView;
- (void)_preferencesDidChange:(id)a3;
- (void)_reportBugButtonLongPressed;
- (void)_reportBugButtonTapped;
- (void)_setSafeAreaInsetsSuspended:(BOOL)a3;
- (void)_setupContentViews;
- (void)_setupVoiceActivationMaskView;
- (void)_updateControlsAppearance;
- (void)_updateSiriStatusViewForMode:(int64_t)a3;
- (void)configureReportBugButtonToShowHoldToTalkState:(BOOL)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)passcodeView:(id)a3 animateShowPasscodeWithCompletionHandler:(id)a4;
- (void)passcodeView:(id)a3 hideLockViewWithResult:(int64_t)a4 unlockCompletionHandler:(id)a5;
- (void)pulseHelpButton;
- (void)reloadData;
- (void)setBackdropVisible:(BOOL)a3;
- (void)setContentViewsAlpha:(double)a3;
- (void)setDataSource:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setFlamesViewDeferred:(BOOL)a3;
- (void)setHelpButtonDeferred:(BOOL)a3;
- (void)setHelpButtonEmphasized:(BOOL)a3;
- (void)setMode:(int64_t)a3;
- (void)setRemoteContentView:(id)a3;
- (void)setShowAudioRoutePicker:(BOOL)a3;
- (void)setSiriSessionState:(int64_t)a3;
- (void)setStatusViewHidden:(BOOL)a3;
- (void)setVoiceActivationMaskViewVisible:(BOOL)a3;
- (void)siriDidActivateFromSource:(int64_t)a3;
- (void)siriStatusViewHoldDidBegin:(id)a3;
- (void)siriStatusViewHoldDidEnd:(id)a3;
- (void)siriStatusViewWasTapped:(id)a3;
- (void)teardownStatusView;
- (void)updateForPercentageRevealed:(double)a3;
@end

@implementation AFUISiriView

- (AFUISiriView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AFUISiriView;
  v11 = [(AFUISiriView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
    v12->_mode = [v10 siriViewMode];
    v12->_remoteContentViewHidden = 0;
    v12->_lockViewHidden = 1;
    v12->_helpButtonDeferred = 1;
    [(AFUISiriView *)v12 _setupContentViews];
    [(AFUISiriView *)v12 _updateSiriStatusViewForMode:v12->_mode];
  }

  return v12;
}

- (void)_setupContentViews
{
  if ([(AFUISiriView *)self _wantsBackdropView:self->_mode])
  {
    v3 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:-2];
    backdropView = self->_backdropView;
    self->_backdropView = v3;

    if (![(AFUISiriView *)self _reducesMotionEffects])
    {
      [(_UIBackdropView *)self->_backdropView setUsesZoom];
    }

    [(AFUISiriView *)self addSubview:self->_backdropView];
  }

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(AFUISiriView *)self frame];
  v7 = v6;
  [(AFUISiriView *)self frame];
  v8 = [v5 initWithFrame:{0.0, 0.0, v7}];
  foregroundContainerView = self->_foregroundContainerView;
  self->_foregroundContainerView = v8;

  v10 = [(UIView *)self->_foregroundContainerView layer];
  [v10 setAllowsGroupOpacity:0];

  [(AFUISiriView *)self addSubview:self->_foregroundContainerView];
  v11 = objc_alloc(MEMORY[0x277D75D18]);
  [(AFUISiriView *)self frame];
  v12 = [v11 initWithFrame:{0.0, 0.0}];
  foregroundView = self->_foregroundView;
  self->_foregroundView = v12;

  v14 = [(UIView *)self->_foregroundView layer];
  [v14 setAllowsGroupOpacity:0];

  [(UIView *)self->_foregroundContainerView addSubview:self->_foregroundView];
  v15 = objc_alloc(MEMORY[0x277D75D18]);
  v16 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
  dimmingAndLockContainer = self->_dimmingAndLockContainer;
  self->_dimmingAndLockContainer = v20;

  [(UIView *)self->_foregroundView addSubview:self->_dimmingAndLockContainer];
  v22 = [[AFUIPasscodeContainerView alloc] initWithFrame:self->_backdropView backdropView:self->_mode mode:objc_opt_class() passcodeViewFactoryClass:v16, v17, v18, v19];
  lockContainerView = self->_lockContainerView;
  self->_lockContainerView = v22;

  [(AFUIPasscodeContainerView *)self->_lockContainerView setDelegate:self];
  [(UIView *)self->_dimmingAndLockContainer addSubview:self->_lockContainerView];
  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v16, v17, v18, v19}];
  statusViewContainer = self->_statusViewContainer;
  self->_statusViewContainer = v24;

  v26 = self->_foregroundView;
  v27 = self->_statusViewContainer;

  [(UIView *)v26 addSubview:v27];
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(SiriUIHelpButton *)self->_helpButton removeFromSuperview];
    helpButton = self->_helpButton;
    self->_helpButton = 0;

    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView removeFromSuperview];
    siriStatusView = self->_siriStatusView;
    self->_siriStatusView = 0;

    [(UIView *)self->_voiceActivationMaskView removeFromSuperview];
    voiceActivationMaskView = self->_voiceActivationMaskView;
    self->_voiceActivationMaskView = 0;

    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton removeFromSuperview];
    audioRoutePickerButton = self->_audioRoutePickerButton;
    self->_audioRoutePickerButton = 0;

    [(SiriUIContentButton *)self->_reportBugButton removeFromSuperview];
    reportBugButton = self->_reportBugButton;
    self->_reportBugButton = 0;

    [(AFUISiriView *)self _destroyAssistantVersionLabelIfNecessary];
    [(AFUISiriView *)self _updateSiriStatusViewForMode:a3];

    [(AFUISiriView *)self setNeedsLayout];
  }
}

- (void)_updateSiriStatusViewForMode:(int64_t)a3
{
  if ((a3 - 7) < 2 || a3 == 4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUISiriView _updateSiriStatusViewForMode:v5];
    }
  }

  else if (a3 == 5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUISiriView _updateSiriStatusViewForMode:v6];
    }
  }

  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setFlamesViewDeferred:self->_flamesViewDeferred];
  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView sizeToFit];
  siriStatusView = self->_siriStatusView;
  if (siriStatusView)
  {
    [(SiriUISiriStatusViewProtocol *)siriStatusView setDisabledMicOpacity:0.25];
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setDelegate:self];
    [(UIView *)self->_statusViewContainer addSubview:self->_siriStatusView];
  }

  [(AFUISiriView *)self _updateControlsAppearance];
  mode = self->_mode;
  v9 = mode == 8 || mode == 4;
  if (v9 && +[AFUISiriSession availabilityState](AFUISiriSession, "availabilityState") != 1 && +[AFUISiriSession availabilityState]!= 3)
  {
    [(AFUISiriView *)self _configureEyesFreeLogo];
  }
}

- (void)_createAssistantVersionLabelIfNecessary
{
  if (!self->_assistantVersionLabel && AFUIShowServerVersionOnUI())
  {
    v3 = objc_alloc(MEMORY[0x277D756B8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    assistantVersionLabel = self->_assistantVersionLabel;
    self->_assistantVersionLabel = v4;

    v6 = objc_alloc(MEMORY[0x277D619E0]);
    v7 = MEMORY[0x277D75D00];
    v8 = [MEMORY[0x277D75210] effectWithStyle:2];
    v9 = [v7 effectForBlurEffect:v8];
    v10 = [v6 initWithEffect:v9];
    assistantVersionVisualEffectView = self->_assistantVersionVisualEffectView;
    self->_assistantVersionVisualEffectView = v10;

    v12 = self->_assistantVersionLabel;
    v13 = [MEMORY[0x277D74300] siriui_lightWeightFontWithSize:12.0];
    [(UILabel *)v12 setFont:v13];

    [(SiriUIVisualEffectView *)self->_assistantVersionVisualEffectView setCustomView:self->_assistantVersionLabel];
    statusViewContainer = self->_statusViewContainer;
    v15 = self->_assistantVersionVisualEffectView;

    [(UIView *)statusViewContainer addSubview:v15];
  }
}

- (void)_destroyAssistantVersionLabelIfNecessary
{
  assistantVersionLabel = self->_assistantVersionLabel;
  if (assistantVersionLabel)
  {
    [(UILabel *)assistantVersionLabel removeFromSuperview];
    v4 = self->_assistantVersionLabel;
    self->_assistantVersionLabel = 0;

    [(SiriUIVisualEffectView *)self->_assistantVersionVisualEffectView removeFromSuperview];
    assistantVersionVisualEffectView = self->_assistantVersionVisualEffectView;
    self->_assistantVersionVisualEffectView = 0;
  }
}

- (BOOL)_wantsBackdropView:(int64_t)a3
{
  if (a3)
  {
    v3 = (a3 - 8) >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CEF060] object:0];

  v4.receiver = self;
  v4.super_class = AFUISiriView;
  [(AFUISiriView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = AFUISiriView;
  [(CGSize *)&rect.size layoutSubviews];
  [(AFUISiriView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  if (self->_eyesFreeEffectView)
  {
    [(UIImageView *)self->_eyesFreeLogoView setFrame:0.0, 0.0, 133.0, 133.0];
    [(SiriUIVisualEffectView *)self->_eyesFreeEffectView setFrame:v8 * 0.5 + -66.5, v10 * 0.42 + -133.0, 133.0, 133.0];
  }

  [(UIView *)self->_foregroundView setFrame:v4, v6, v8, v10];
  remoteContentView = self->_remoteContentView;
  [(AFUISiriView *)self _remoteContentViewFrame];
  [(UIView *)remoteContentView setFrame:?];
  if (!self->_inFluidDismissal)
  {
    [(UIView *)self->_foregroundContainerView setFrame:v4, v6, v8, v10];
  }

  [(UIView *)self->_dimmingAndLockContainer setFrame:v4, v6, v8, v10];
  lockContainerView = self->_lockContainerView;
  [(AFUISiriView *)self _lockViewFrame];
  [(AFUIPasscodeContainerView *)lockContainerView setFrame:?];
  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setFlamesViewWidth:v8];
  statusViewContainer = self->_statusViewContainer;
  [(AFUISiriView *)self _statusViewContainerFrame];
  [(UIView *)statusViewContainer setFrame:?];
  [(UIView *)self->_statusViewContainer bounds];
  rect.origin.x = v14;
  rect.origin.y = v15;
  v17 = v16;
  v19 = v18;
  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setFrame:v4, v6, v8, v10];
  v68 = v6;
  v69 = v4;
  [(UIView *)self->_voiceActivationMaskView setFrame:v4, v6, v8, v10];
  [(AFUISiriView *)self _buttonInset];
  v21 = v20;
  audioRoutePickerButton = self->_audioRoutePickerButton;
  v23 = MEMORY[0x277CBF3A0];
  v24 = -v20;
  if (audioRoutePickerButton)
  {
    v62 = *(MEMORY[0x277CBF3A0] + 8);
    [(SiriUIAudioRoutePickerButton *)audioRoutePickerButton sizeThatFits:v8, v10];
    v64 = v8;
    v25 = v19;
    v27 = v26;
    v61 = v28;
    v71.origin.x = rect.origin.x;
    v71.origin.y = v17;
    v71.size.width = v25;
    v71.size.height = rect.origin.y;
    v63 = v21;
    v29 = CGRectGetMaxX(v71) - v21 - v27;
    [(AFUISiriView *)self safeAreaInsets];
    v31 = v29 - v30;
    v72.origin.x = rect.origin.x;
    v72.origin.y = v17;
    v72.size.width = v25;
    v72.size.height = rect.origin.y;
    v66 = v17;
    MaxY = CGRectGetMaxY(v72);
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView statusViewHeight];
    v33 = v10;
    v35 = v34;
    v73.origin.x = v31;
    v73.origin.y = v62;
    v73.size.width = v27;
    v73.size.height = v61;
    v36 = v35 + CGRectGetHeight(v73);
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView safeAreaInsets];
    v38 = v36 + v37;
    v10 = v33;
    v39 = MaxY + v38 * -0.5;
    v40 = v31;
    v21 = v63;
    v41 = v27;
    v19 = v25;
    v8 = v64;
    v17 = v66;
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setFrame:v40, v39, v41, v61];
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setHitTestEdgeInsets:v24, v24, v24, v24];
  }

  helpButton = self->_helpButton;
  if (helpButton)
  {
    v65 = *(v23 + 8);
    [(SiriUIHelpButton *)helpButton sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v44 = v43;
    v67 = v10;
    v46 = v45;
    [(AFUISiriView *)self safeAreaInsets];
    v47 = v17;
    v49 = v21 + v48;
    v74.origin.x = rect.origin.x;
    v74.origin.y = v47;
    v74.size.width = v19;
    v74.size.height = rect.origin.y;
    rect.origin.y = CGRectGetMaxY(v74);
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView statusViewHeight];
    v51 = v50;
    v75.origin.x = v49;
    v75.origin.y = v65;
    v75.size.width = v44;
    v75.size.height = v46;
    v52 = v51 + CGRectGetHeight(v75);
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView safeAreaInsets];
    v54 = v46;
    v10 = v67;
    [(SiriUIHelpButton *)self->_helpButton setFrame:v49, rect.origin.y + (v52 + v53) * -0.5, v44, v54];
    [(SiriUIHelpButton *)self->_helpButton setHitTestEdgeInsets:v24, v24, v24, v24];
  }

  [(AFUISiriView *)self _layoutReportBugButton];
  if (self->_assistantVersionVisualEffectView)
  {
    [(AFUISiriView *)self safeAreaInsets];
    rect.origin.y = v55;
    [(SiriUIVisualEffectView *)self->_assistantVersionVisualEffectView sizeThatFits:v8, v10];
    v57 = v56;
    v59 = v58;
    v76.origin.x = v69;
    v76.origin.y = v68;
    v76.size.width = v8;
    v76.size.height = v10;
    v60 = CGRectGetMaxX(v76) - v57 + -6.0;
    v77.origin.x = v69;
    v77.origin.y = v68;
    v77.size.width = v8;
    v77.size.height = v10;
    [(SiriUIVisualEffectView *)self->_assistantVersionVisualEffectView setFrame:v60, CGRectGetMaxY(v77) - v59 + -6.0 - rect.origin.y, v57, v59];
  }
}

- (void)_layoutReportBugButton
{
  [(AFUISiriView *)self _buttonInset];
  v4 = v3;
  v5 = [(SiriUIContentButton *)self->_reportBugButton superview];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  reportBugButton = self->_reportBugButton;
  if (reportBugButton)
  {
    rect_8 = v9;
    rect_16 = v7;
    rect_24 = v4;
    v16 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    [(SiriUIContentButton *)reportBugButton sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v18 = v17;
    v20 = v19;
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView frame];
    MaxY = CGRectGetMaxY(v38);
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView statusViewHeight];
    v23 = v22;
    v39.origin.x = v16;
    v39.origin.y = v15;
    v39.size.width = v18;
    v39.size.height = v20;
    v24 = v23 + CGRectGetHeight(v39);
    [(SiriUISiriStatusViewProtocol *)self->_siriStatusView safeAreaInsets];
    v26 = MaxY + (v24 + v25) * -0.5;
    audioRoutePickerButton = self->_audioRoutePickerButton;
    if (audioRoutePickerButton && ([(SiriUIAudioRoutePickerButton *)audioRoutePickerButton isHidden]& 1) == 0)
    {
      [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton frame];
      v28 = rect_24;
      v32 = CGRectGetMinX(v41) - rect_24;
      v42.origin.x = v16;
      v42.origin.y = v26;
      v42.size.width = v18;
      v42.size.height = v20;
      v31 = v32 - CGRectGetWidth(v42);
    }

    else
    {
      v40.origin.y = rect_8;
      v40.origin.x = rect_16;
      v40.size.width = v11;
      v40.size.height = v13;
      v28 = rect_24;
      v29 = CGRectGetMaxX(v40) - rect_24 - v18;
      [(AFUISiriView *)self safeAreaInsets];
      v31 = v29 - v30;
    }

    [(SiriUIContentButton *)self->_reportBugButton setFrame:v31, v26, v18, v20, *&v16];
    v33 = self->_reportBugButton;

    [(SiriUIContentButton *)v33 setHitTestEdgeInsets:-v28, -v28, -v28, -v28];
  }
}

- (UIEdgeInsets)safeAreaInsets
{
  if (self->_safeAreaInsetsSuspended)
  {
    top = self->_suspendedSafeAreaInsets.top;
    left = self->_suspendedSafeAreaInsets.left;
    bottom = self->_suspendedSafeAreaInsets.bottom;
    right = self->_suspendedSafeAreaInsets.right;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v8.receiver = self;
    v8.super_class = AFUISiriView;
    [(AFUISiriView *)&v8 safeAreaInsets];
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setSafeAreaInsetsSuspended:(BOOL)a3
{
  if (self->_safeAreaInsetsSuspended != a3)
  {
    if (a3)
    {
      p_suspendedSafeAreaInsets = &self->_suspendedSafeAreaInsets;
      v10.receiver = self;
      v10.super_class = AFUISiriView;
      [(AFUISiriView *)&v10 safeAreaInsets];
      p_suspendedSafeAreaInsets->top = v6;
      self->_suspendedSafeAreaInsets.left = v7;
      self->_suspendedSafeAreaInsets.bottom = v8;
      self->_suspendedSafeAreaInsets.right = v9;
      self->_safeAreaInsetsSuspended = a3;
    }

    else
    {
      self->_safeAreaInsetsSuspended = 0;

      [(AFUISiriView *)self safeAreaInsetsDidChange];
    }
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(AFUISiriView *)self _updateControlsAppearance];
  }
}

- (void)setStatusViewHidden:(BOOL)a3
{
  v3 = a3;
  if ((a3 || !self->_inShowUnlockViewAnimation && (self->_inHideUnlockViewAnimation || self->_lockViewHidden)) && self->_statusViewHidden != a3 && (!self->_keepStatusViewHidden || a3))
  {
    [(AFUISiriView *)self _statusViewContainerFrame];
    MinY = CGRectGetMinY(v12);
    self->_statusViewHidden = v3;
    v7 = objc_opt_class();
    statusViewContainer = self->_statusViewContainer;
    [(AFUISiriView *)self _statusViewContainerFrame];
    v9 = CGRectGetMinY(v13);
    if (v3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [v7 _animateView:statusViewContainer fromYPosition:v10 toYPosition:0 fade:MinY completion:v9];

    [(AFUISiriView *)self _updateControlsAppearance];
  }
}

- (void)_updateControlsAppearance
{
  if (self->_disabled)
  {
    v3 = 4;
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  siriSessionState = self->_siriSessionState;
  v3 = 4;
  if (siriSessionState <= 1)
  {
    if (!siriSessionState)
    {
      goto LABEL_13;
    }

    if (siriSessionState != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  switch(siriSessionState)
  {
    case 2:
LABEL_10:
      v5 = 1;
LABEL_12:
      v4 = self->_siriSessionState;
      goto LABEL_13;
    case 3:
      v5 = 0;
      goto LABEL_12;
    case 4:
LABEL_13:
      [(AFUISiriView *)self _animateButtonsHidden:v5];
      v3 = v4;
      break;
  }

LABEL_14:
  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setMode:v3];
  v7 = 1.0;
  if (self->_statusViewHidden)
  {
    v7 = 0.0;
  }

  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setAlpha:v7];
  v8 = self->_disabled || [(AFUISiriView *)self _isTextInputEnabled];
  [(SiriUIHelpButton *)self->_helpButton setHidden:v8];
  [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setHidden:v8];
  reportBugButton = self->_reportBugButton;

  [(SiriUIContentButton *)reportBugButton setHidden:v8];
}

- (void)_animateButtonsHidden:(BOOL)a3
{
  if (self->_helpButtonDeferred || a3)
  {
    if (self->_helpButtonDeferred)
    {
      return;
    }
  }

  else
  {
    [(AFUISiriView *)self _setupButtonsIfNecessary];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__AFUISiriView__animateButtonsHidden___block_invoke;
  v5[3] = &unk_278CD5578;
  v6 = a3;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.25 options:0.0 animations:1.0 completion:0.0];
}

uint64_t __38__AFUISiriView__animateButtonsHidden___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 488);
  if (v2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [v3 setAlpha:v4];
  [*(*(a1 + 32) + 480) setAlpha:v4];
  v5 = *(*(a1 + 32) + 496);

  return [v5 setAlpha:v4];
}

- (void)setFlamesViewDeferred:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 136315394;
    v8 = "[AFUISiriView setFlamesViewDeferred:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  self->_flamesViewDeferred = v3;
  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView setFlamesViewDeferred:v3];
}

- (void)teardownStatusView
{
  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView removeFromSuperview];
  siriStatusView = self->_siriStatusView;
  self->_siriStatusView = 0;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(AFUISiriView *)self reloadData];
    v5 = obj;
  }
}

- (void)reloadData
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained userAccountCountForSiriView:self];

  if (v4 < 2)
  {
    [(AFUISiriView *)self _destroyAssistantVersionLabelIfNecessary];
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_dataSource);
    v6 = [v5 assistantVersionForSiriView:self];
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 activeAccountForSiriView:self];
    v9 = AFUIDisplayStringForVersionAndAccount(v6, v8);

    if (v9 && [v9 length])
    {
      [(AFUISiriView *)self _createAssistantVersionLabelIfNecessary];
      [(UILabel *)self->_assistantVersionLabel setText:v9];
    }
  }

  [(AFUISiriView *)self setNeedsLayout];
}

- (void)setBackdropVisible:(BOOL)a3
{
  self->_backdropViewVisible = a3;
  if (a3)
  {
    v5 = [(AFUISiriView *)self dimBackdropSettings];
    [(_UIBackdropView *)self->_backdropView transitionToSettings:v5];
  }

  else
  {
    backdropView = self->_backdropView;

    [(_UIBackdropView *)backdropView transitionToPrivateStyle:-2];
  }
}

- (id)dimBackdropSettings
{
  v2 = MEMORY[0x277D75DF0];
  if ([(AFUISiriView *)self _reducesMotionEffects])
  {
    v3 = 2050;
  }

  else
  {
    v3 = 2032;
  }

  v4 = [v2 settingsForPrivateStyle:v3];
  [v4 setBlurRadius:24.0];
  [v4 setScale:0.5];

  return v4;
}

- (void)setRemoteContentView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_remoteContentView removeFromSuperview];
  remoteContentView = self->_remoteContentView;
  self->_remoteContentView = v4;

  [(AFUISiriView *)self _placeRemoteContentView];
}

- (void)_placeRemoteContentView
{
  remoteContentView = self->_remoteContentView;
  if (remoteContentView)
  {
    [(AFUISiriView *)self _remoteContentViewFrame];
    [(UIView *)remoteContentView setFrame:?];
    [(UIView *)self->_foregroundView insertSubview:self->_remoteContentView aboveSubview:self->_dimmingAndLockContainer];
    foregroundView = self->_foregroundView;
    v5 = [(SiriUISiriStatusViewProtocol *)self->_siriStatusView flamesContainerView];
    [(UIView *)foregroundView insertSubview:v5 belowSubview:self->_remoteContentView];
  }

  voiceActivationMaskView = self->_voiceActivationMaskView;
  if (voiceActivationMaskView)
  {
    v7 = self->_foregroundView;
    v8 = [(SiriUISiriStatusViewProtocol *)self->_siriStatusView flamesContainerView];
    [(UIView *)v7 insertSubview:voiceActivationMaskView below:v8];
  }
}

- (void)setVoiceActivationMaskViewVisible:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  mode = self->_mode;
  if (mode == 4 || mode == 8)
  {
    if (a3)
    {

      [(AFUISiriView *)self _setupVoiceActivationMaskView];
    }

    else if (self->_voiceActivationMaskView)
    {
      self->_remoteContentViewHidden = 0;
      [(AFUISiriView *)self _placeRemoteContentView];
      objc_initWeak(location, self);
      v6 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__AFUISiriView_setVoiceActivationMaskViewVisible___block_invoke;
      v13[3] = &unk_278CD55A0;
      objc_copyWeak(&v14, location);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __50__AFUISiriView_setVoiceActivationMaskViewVisible___block_invoke_2;
      v11[3] = &unk_278CD55C8;
      objc_copyWeak(&v12, location);
      [v6 animateWithDuration:v13 animations:v11 completion:0.4];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
      v10 = SiriUINSStringFromSiriUIViewMode();
      *location = 136315394;
      *&location[4] = "[AFUISiriView setVoiceActivationMaskViewVisible:]";
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s Not showing voiceActivationMaskView for mode - %@", location, 0x16u);
    }
  }
}

void __50__AFUISiriView_setVoiceActivationMaskViewVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[63] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __50__AFUISiriView_setVoiceActivationMaskViewVisible___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setStatusViewHidden:0];
    [v3[63] removeFromSuperview];
    v2 = v3[63];
    v3[63] = 0;

    WeakRetained = v3;
  }
}

- (void)_setupVoiceActivationMaskView
{
  self->_remoteContentViewHidden = 1;
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  voiceActivationMaskView = self->_voiceActivationMaskView;
  self->_voiceActivationMaskView = v4;

  v6 = self->_voiceActivationMaskView;
  v7 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v6 setBackgroundColor:v7];

  foregroundView = self->_foregroundView;
  v9 = self->_voiceActivationMaskView;
  remoteContentView = self->_remoteContentView;

  [(UIView *)foregroundView insertSubview:v9 below:remoteContentView];
}

- (CGRect)_remoteContentViewFrame
{
  [(AFUISiriView *)self bounds];
  v6 = v3;
  v8 = v7;
  v9 = v5;
  v10 = 0.0;
  if (self->_remoteContentViewHidden)
  {
    v11 = v8;
    v10 = -CGRectGetHeight(*&v3);
  }

  v12 = v6;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)updateForPercentageRevealed:(double)a3
{
  if (!self->_backdropViewVisible)
  {
    [(AFUISiriView *)self setBackdropVisible:1];
  }

  [(SiriUISiriStatusViewProtocol *)self->_siriStatusView forceMicVisible:1];
  siriStatusView = self->_siriStatusView;
  if (a3 <= 0.2)
  {
    v6 = a3 * 5.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(SiriUISiriStatusViewProtocol *)siriStatusView setAlpha:v6];
}

- (CGRect)_lockViewFrame
{
  [(AFUISiriView *)self bounds];
  v6 = v3;
  v8 = v7;
  v9 = v5;
  Height = 0.0;
  if (self->_lockViewHidden)
  {
    v11 = v8;
    Height = CGRectGetHeight(*&v3);
  }

  v12 = v6;
  v13 = Height;
  v14 = v8;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_statusViewContainerFrame
{
  [(AFUISiriView *)self bounds];
  v6 = v3;
  v8 = v7;
  v9 = v5;
  Height = 0.0;
  if (self->_statusViewHidden)
  {
    v11 = v8;
    Height = CGRectGetHeight(*&v3);
  }

  v12 = v6;
  v13 = Height;
  v14 = v8;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)_buttonInset
{
  v2 = SiriUIIsCompactWidth();
  result = 26.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (void)setShowAudioRoutePicker:(BOOL)a3
{
  if (a3 && !self->_audioRoutePickerButton)
  {
    v5 = objc_alloc(MEMORY[0x277D61970]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    audioRoutePickerButton = self->_audioRoutePickerButton;
    self->_audioRoutePickerButton = v6;

    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton addTarget:self action:sel__audioRouteButtonTapped_ forControlEvents:64];
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setAlpha:0.0];
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton _setTouchInsets:-0.5, -0.5, -0.5, -0.5];
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setHidden:[(AFUISiriView *)self _isTextInputEnabled]];
    [(UIView *)self->_statusViewContainer insertSubview:self->_audioRoutePickerButton above:self->_siriStatusView];
    [(AFUISiriView *)self setNeedsLayout];
  }

  v8 = self->_audioRoutePickerButton;
  if (v8 && self->_siriSessionState != 1)
  {
    v9 = v8;
    v10 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__AFUISiriView_setShowAudioRoutePicker___block_invoke;
    v17[3] = &unk_278CD5578;
    v18 = v9;
    v19 = a3;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__AFUISiriView_setShowAudioRoutePicker___block_invoke_2;
    v13[3] = &unk_278CD55F0;
    v16 = a3;
    v11 = v18;
    v14 = v11;
    v15 = self;
    [v10 animateWithDuration:v17 animations:v13 completion:0.2];
    if ([(AFUISiriView *)self _showsReportBugButton])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__AFUISiriView_setShowAudioRoutePicker___block_invoke_3;
      v12[3] = &unk_278CD5618;
      v12[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v12 animations:0.2];
    }
  }
}

void __40__AFUISiriView_setShowAudioRoutePicker___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) removeFromSuperview];
    v2 = *(a1 + 40);
    v3 = *(v2 + 480);
    if (v3 == *(a1 + 32))
    {
      *(v2 + 480) = 0;
    }
  }
}

- (void)_audioRouteButtonTapped:(id)a3
{
  v4 = [(AFUISiriView *)self delegate];
  [v4 siriViewDidReceiveAudioRouteAction:self];
}

- (void)_preferencesDidChange:(id)a3
{
  v4 = [(AFUISiriView *)self _showsReportBugButton];
  [(SiriUIContentButton *)self->_reportBugButton setHidden:!v4];
  assistantVersionVisualEffectView = self->_assistantVersionVisualEffectView;

  [(SiriUIVisualEffectView *)assistantVersionVisualEffectView setHidden:!v4];
}

- (BOOL)_showsReportBugButton
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v3 debugButtonIsEnabled])
  {
    v4 = self->_mode != 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldIndicateHoldToTalkMode
{
  v2 = AFIsInternalInstall();
  if (v2)
  {
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v3 showsHoldToTalkIndicator];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)configureReportBugButtonToShowHoldToTalkState:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriView *)self _showsReportBugButton];
  reportBugButton = self->_reportBugButton;
  if (v5)
  {
    if (reportBugButton)
    {

      [(AFUISiriView *)self _configureReportBugButtonWithHoldToTalkState:v3];
    }

    else
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__AFUISiriView_configureReportBugButtonToShowHoldToTalkState___block_invoke;
      v7[3] = &unk_278CD5668;
      objc_copyWeak(&v8, &location);
      v9 = v3;
      [(AFUISiriView *)self _loadReportBugButtonTemplateImageInBackgroundWithCompletion:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [(SiriUIContentButton *)reportBugButton setHidden:1];
  }
}

void __62__AFUISiriView_configureReportBugButtonToShowHoldToTalkState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__AFUISiriView_configureReportBugButtonToShowHoldToTalkState___block_invoke_2;
  block[3] = &unk_278CD5640;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
}

void __62__AFUISiriView_configureReportBugButtonToShowHoldToTalkState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createReportBugButtonWithTemplateImage:*(a1 + 32) andConfigureWithHoldToTalkState:*(a1 + 48)];
}

- (void)_createReportBugButtonWithTemplateImage:(id)a3 andConfigureWithHoldToTalkState:(BOOL)a4
{
  v4 = a4;
  if (!self->_reportBugButton)
  {
    v6 = [MEMORY[0x277D619A0] buttonWithImageTemplate:a3 style:0];
    reportBugButton = self->_reportBugButton;
    self->_reportBugButton = v6;

    [(SiriUIContentButton *)self->_reportBugButton _setTouchInsets:-0.5, -0.5, -0.5, -0.5];
    [(SiriUIContentButton *)self->_reportBugButton setAlpha:0.0];
    [(SiriUIContentButton *)self->_reportBugButton addTarget:self action:sel__reportBugButtonTapped forControlEvents:64];
    v8 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__reportBugButtonLongPressed];
    [(SiriUIContentButton *)self->_reportBugButton addGestureRecognizer:v8];
    [(SiriUIContentButton *)self->_reportBugButton setHidden:0];
    [(UIView *)self->_statusViewContainer insertSubview:self->_reportBugButton above:self->_siriStatusView];
    [(AFUISiriView *)self setNeedsLayout];
  }

  [(AFUISiriView *)self _configureReportBugButtonWithHoldToTalkState:v4];

  [(AFUISiriView *)self _updateControlsAppearance];
}

- (void)_configureReportBugButtonWithHoldToTalkState:(BOOL)a3
{
  if ([(AFUISiriView *)self _shouldIndicateHoldToTalkMode])
  {
    v5 = [MEMORY[0x277D75348] colorWithRed:0.7 green:1.0 blue:0.4 alpha:1.0];
    v8 = v5;
    if (a3)
    {
      v6 = [v5 colorWithAlphaComponent:0.6];
      [v8 colorWithAlphaComponent:0.2];
    }

    else
    {
      v6 = [MEMORY[0x277D75348] siriui_transparantButtonColor];
      [MEMORY[0x277D75348] siriui_transparantHighlightedButtonColor];
    }
    v7 = ;
    [(SiriUIContentButton *)self->_reportBugButton setDefaultColorForTemplate:v6];
    [(SiriUIContentButton *)self->_reportBugButton setHighlightColorForTemplate:v7];
  }
}

- (void)_loadReportBugButtonTemplateImageInBackgroundWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__AFUISiriView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke;
  block[3] = &unk_278CD5690;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __76__AFUISiriView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
  if (objc_claimAutoreleasedReturnValue())
  {
    v2 = [MEMORY[0x277D755B8] imageNamed:@"radarBug" inBundle:?];
    v3 = [v2 imageWithRenderingMode:2];

    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  return MEMORY[0x2821F97C8]();
}

- (void)_reportBugButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriViewDidReceiveReportBugAction:self];
}

- (void)_reportBugButtonLongPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriViewDidReceiveBugButtonLongPress:self];
}

- (void)setSiriSessionState:(int64_t)a3
{
  if (self->_siriSessionState != a3)
  {
    self->_siriSessionState = a3;
    [(AFUISiriView *)self _updateControlsAppearance];
  }
}

- (void)_configureHelpButton
{
  if (!self->_helpButton)
  {
    v3 = [MEMORY[0x277D619A8] buttonWithHelpImageMask];
    helpButton = self->_helpButton;
    self->_helpButton = v3;

    [(SiriUIHelpButton *)self->_helpButton setAlpha:0.0];
    [(SiriUIHelpButton *)self->_helpButton _setTouchInsets:-0.5, -0.5, -0.5, -0.5];
    [(SiriUIHelpButton *)self->_helpButton addTarget:self action:sel__helpButtonTapped_ forControlEvents:64];
    statusViewContainer = self->_statusViewContainer;
    v6 = self->_helpButton;
    siriStatusView = self->_siriStatusView;

    [(UIView *)statusViewContainer insertSubview:v6 above:siriStatusView];
  }
}

- (void)_helpButtonTapped:(id)a3
{
  v4 = [(AFUISiriView *)self delegate];
  [v4 siriViewDidReceiveHelpAction:self];
}

- (void)setHelpButtonEmphasized:(BOOL)a3
{
  v3 = a3;
  if ([(AFUISiriView *)self _helpButtonIsVisible])
  {
    helpButton = self->_helpButton;

    [(SiriUIHelpButton *)helpButton setEmphasized:v3];
  }
}

- (void)setHelpButtonDeferred:(BOOL)a3
{
  if (self->_helpButtonDeferred != a3)
  {
    self->_helpButtonDeferred = a3;
  }
}

- (void)pulseHelpButton
{
  if ([(AFUISiriView *)self _helpButtonIsVisible])
  {
    helpButton = self->_helpButton;

    [(SiriUIHelpButton *)helpButton pulse];
  }
}

- (BOOL)_helpButtonIsVisible
{
  if (([(SiriUIHelpButton *)self->_helpButton isHidden]& 1) != 0)
  {
    return 0;
  }

  [(SiriUIHelpButton *)self->_helpButton alpha];
  return v4 > 2.22044605e-16;
}

- (void)_configureEyesFreeLogo
{
  v3 = objc_alloc(MEMORY[0x277D619E0]);
  v4 = [MEMORY[0x277D75D00] siriui_platterVibrancyEffect];
  v5 = [v3 initWithEffect:v4];
  eyesFreeEffectView = self->_eyesFreeEffectView;
  self->_eyesFreeEffectView = v5;

  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  v10 = [v9 traitCollection];
  v11 = [v7 imageNamed:@"DnDwDSiri" inBundle:v8 compatibleWithTraitCollection:v10];
  v12 = [MEMORY[0x277D75348] whiteColor];
  v15 = [v11 _flatImageWithColor:v12];

  v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v15];
  eyesFreeLogoView = self->_eyesFreeLogoView;
  self->_eyesFreeLogoView = v13;

  [(SiriUIVisualEffectView *)self->_eyesFreeEffectView setCustomView:self->_eyesFreeLogoView];
  [(UIView *)self->_statusViewContainer insertSubview:self->_eyesFreeEffectView above:self->_backdropView];
}

- (void)_animateLockViewIsAnimatingIn:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v16 = a4;
  [MEMORY[0x277CD9FF0] begin];
  if (v16)
  {
    [MEMORY[0x277CD9FF0] setCompletionBlock:v16];
  }

  [(AFUISiriView *)self _remoteContentViewFrame];
  MinY = CGRectGetMinY(v18);
  self->_remoteContentViewHidden = v4;
  v7 = objc_opt_class();
  remoteContentView = self->_remoteContentView;
  [(AFUISiriView *)self _remoteContentViewFrame];
  v9 = CGRectGetMinY(v19);
  if (self->_remoteContentViewHidden)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v7 _animateView:remoteContentView fromYPosition:v10 toYPosition:0 fade:MinY completion:v9];
  [(AFUISiriView *)self _lockViewFrame];
  v11 = CGRectGetMinY(v20);
  self->_lockViewHidden = !v4;
  v12 = objc_opt_class();
  lockContainerView = self->_lockContainerView;
  [(AFUISiriView *)self _lockViewFrame];
  v14 = CGRectGetMinY(v21);
  if (self->_lockViewHidden)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v12 _animateView:lockContainerView fromYPosition:v15 toYPosition:0 fade:v11 completion:v14];
  [(AFUISiriView *)self setStatusViewHidden:v4];
  [MEMORY[0x277CD9FF0] commit];
}

+ (void)_animateView:(id)a3 fromYPosition:(double)a4 toYPosition:(double)a5 fade:(int64_t)a6 completion:(id)a7
{
  v28 = a3;
  v11 = a7;
  [MEMORY[0x277CD9FF0] begin];
  if (v11)
  {
    [MEMORY[0x277CD9FF0] setCompletionBlock:v11];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v13 setKeyPath:@"position.y"];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v13 setFromValue:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v13 setToValue:v15];

  [v13 setMass:4.0];
  [v13 setStiffness:600.0];
  [v13 setDamping:800.0];
  [v12 addObject:v13];
  if (a6)
  {
    v16 = a6 == 2;
    v17 = a6 != 2;
    v18 = v16;
    if (v16)
    {
      v19 = 0.1;
    }

    else
    {
      v19 = 32.0;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    a6 = [MEMORY[0x277CCABB0] numberWithInt:v17];
    v21 = objc_alloc_init(MEMORY[0x277CD9FA0]);
    [v21 setKeyPath:@"opacity"];
    [v21 setFromValue:v20];
    [v21 setToValue:a6];
    [v21 setMass:v19];
    [v21 setStiffness:600.0];
    [v21 setDamping:800.0];
    [v12 addObject:v21];
  }

  v22 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v22 setRemovedOnCompletion:1];
  v23 = [MEMORY[0x277D60100] defaultTimingFunction];
  [v22 setTimingFunction:v23];

  [MEMORY[0x277D60100] defaultAnimationDuration];
  [v22 setDuration:?];
  [v22 setBeginTime:CACurrentMediaTime()];
  [v22 setFillMode:*MEMORY[0x277CDA228]];
  [v22 setAnimations:v12];
  v24 = [v28 layer];
  [v24 addAnimation:v22 forKey:@"Animation Group"];

  [MEMORY[0x277CD9FF0] commit];
  if (a6)
  {
    v25 = [v28 layer];
    [a6 floatValue];
    [v25 setOpacity:?];
  }

  v26 = [v28 layer];
  [v26 setAnchorPoint:{0.0, 0.0}];

  v27 = [v28 layer];
  [v27 setPosition:{0.0, a5}];
}

- (float)audioLevelForSiriStatusView:(id)a3
{
  v4 = [(AFUISiriView *)self delegate];
  [v4 audioRecordingPowerLevelForSiriView:self];
  v6 = v5;

  return v6;
}

- (void)siriStatusViewWasTapped:(id)a3
{
  v4 = [(AFUISiriView *)self delegate];
  [v4 siriViewDidRecieveStatusViewTappedAction:self];
}

- (void)siriStatusViewHoldDidBegin:(id)a3
{
  v4 = [(AFUISiriView *)self delegate];
  [v4 siriViewDidRecieveStatusViewHoldDidBeginAction:self];
}

- (void)siriStatusViewHoldDidEnd:(id)a3
{
  v4 = [(AFUISiriView *)self delegate];
  [v4 siriViewDidRecieveStatusViewHoldDidEndAction:self];
}

- (BOOL)_isTextInputEnabled
{
  v2 = self;
  v3 = [(AFUISiriView *)self delegate];
  LOBYTE(v2) = [v3 siriViewShouldSupportTextInput:v2];

  return v2;
}

- (void)siriDidActivateFromSource:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (+[AFUISiriSession availabilityState]== 2)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[AFUISiriView siriDidActivateFromSource:]";
      _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Not dismissing lock view since we're at first unlock stage", buf, 0xCu);
    }
  }

  else
  {
    if (a3 <= 0x18 && ((1 << a3) & 0x1180000) != 0)
    {
      [(SiriUISiriStatusViewProtocol *)self->_siriStatusView forceMicVisible:1];
    }

    v6 = [(AFUISiriView *)self delegate];
    [v6 siriView:self didReceiveSiriActivationMessageWithSource:a3];
  }
}

- (void)passcodeView:(id)a3 hideLockViewWithResult:(int64_t)a4 unlockCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    [MEMORY[0x277D60100] defaultAnimationDuration];
    v9 = dispatch_time(0, (v8 * 0.15 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__AFUISiriView_passcodeView_hideLockViewWithResult_unlockCompletionHandler___block_invoke;
    block[3] = &unk_278CD56B8;
    v12 = v7;
    v13 = a4;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }

  self->_inHideUnlockViewAnimation = 1;
  self->_inShowUnlockViewAnimation = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__AFUISiriView_passcodeView_hideLockViewWithResult_unlockCompletionHandler___block_invoke_2;
  v10[3] = &unk_278CD5618;
  v10[4] = self;
  [(AFUISiriView *)self _animateLockViewIsAnimatingIn:0 completion:v10];
}

- (BOOL)passcodeView:(id)a3 attemptUnlockWithPassword:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained siriView:self attemptUnlockWithPassword:v5];

  return self;
}

- (void)passcodeView:(id)a3 animateShowPasscodeWithCompletionHandler:(id)a4
{
  v5 = a4;
  self->_inShowUnlockViewAnimation = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__AFUISiriView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke;
  v11[3] = &unk_278CD5618;
  v11[4] = self;
  [(AFUISiriView *)self _animateLockViewIsAnimatingIn:1 completion:v11];
  [MEMORY[0x277D60100] defaultAnimationDuration];
  v7 = dispatch_time(0, (v6 * 0.15 * 1000000000.0));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__AFUISiriView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278CD5690;
  v10 = v5;
  v8 = v5;
  dispatch_after(v7, MEMORY[0x277D85CD0], v9);
}

void __70__AFUISiriView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 528) = 0;
  [*(a1 + 32) setNeedsLayout];
  v1 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v1 logEventWithType:1433 context:0];
}

uint64_t __70__AFUISiriView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)setContentViewsAlpha:(double)a3
{
  v4 = [(AFUISiriView *)self foregroundContainerView];
  [v4 setAlpha:a3];
}

- (AFUISiriViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (AFUISiriViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end