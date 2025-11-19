@interface HUCCSmartContainerView
- (CGRect)compressedAnimationStartFrame;
- (HUCCSmartContainerView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)hideLockSecurity;
- (void)layoutSubviews;
- (void)resetToInitialState;
- (void)setCompressedView:(id)a3;
- (void)setExpandedView:(id)a3;
- (void)showLockSecurityWithFrameDelegate:(id)a3;
- (void)willMoveToExpandedStateWithAnimationStartFrame:(CGRect)a3;
@end

@implementation HUCCSmartContainerView

- (HUCCSmartContainerView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = HUCCSmartContainerView;
  v5 = [(HUCCSmartContainerView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_msgSend_clearColor(MEMORY[0x29EDC7A00], v3, v4);
    objc_msgSend_setBackgroundColor_(v5, v7, v6);

    objc_msgSend_setClipsToBounds_(v5, v8, 0);
    v11 = objc_msgSend_controlCenterModuleBackgroundMaterial(MEMORY[0x29EDC0CC8], v9, v10);
    objc_msgSend_setAnimationView_(v5, v12, v11);

    CCUICompactModuleContinuousCornerRadius();
    v14 = v13;
    v17 = objc_msgSend_animationView(v5, v15, v16);
    objc_msgSend__setContinuousCornerRadius_(v17, v18, v19, v14);

    objc_msgSend_setIsShowingLockSecurity_(v5, v20, 0);
  }

  return v5;
}

- (void)didMoveToSuperview
{
  v18 = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = HUCCSmartContainerView;
  [(HUCCSmartContainerView *)&v11 didMoveToSuperview];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = objc_msgSend_window(self, v6, v7);
    v9 = @"yes";
    if (!v8)
    {
      v9 = @"no";
    }

    *buf = 138412802;
    v13 = v5;
    v14 = 2080;
    v15 = "[HUCCSmartContainerView didMoveToSuperview]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s — has window: %@", buf, 0x20u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)didMoveToWindow
{
  v18 = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = HUCCSmartContainerView;
  [(HUCCSmartContainerView *)&v11 didMoveToWindow];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = objc_msgSend_window(self, v6, v7);
    v9 = @"yes";
    if (!v8)
    {
      v9 = @"no";
    }

    *buf = 138412802;
    v13 = v5;
    v14 = 2080;
    v15 = "[HUCCSmartContainerView didMoveToWindow]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s — has window: %@", buf, 0x20u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)setCompressedView:(id)a3
{
  v48 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    compressedView = self->_compressedView;
    v40 = 138413058;
    v41 = v7;
    v42 = 2080;
    v43 = "[HUCCSmartContainerView setCompressedView:]";
    v44 = 2112;
    v45 = compressedView;
    v46 = 2112;
    v47 = v4;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s, was %@ is %@", &v40, 0x2Au);
  }

  v11 = self->_compressedView;
  if (v11)
  {
    objc_msgSend_removeFromSuperview(v11, v9, v10);
    v14 = objc_msgSend_animationView(self, v12, v13);
    objc_msgSend_removeFromSuperview(v14, v15, v16);
  }

  v17 = self->_compressedView;
  self->_compressedView = v4;
  v18 = v4;

  objc_msgSend_addSubview_(self, v19, self->_compressedView);
  objc_msgSend_bounds(self, v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v32 = objc_msgSend_compressedView(self, v30, v31);
  objc_msgSend_setFrame_(v32, v33, v34, v23, v25, v27, v29);

  v37 = objc_msgSend_animationView(self, v35, v36);
  objc_msgSend_insertSubview_aboveSubview_(self, v38, v37, self->_compressedView);

  v39 = *MEMORY[0x29EDCA608];
}

- (void)setExpandedView:(id)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    expandedView = self->_expandedView;
    v23 = 138413058;
    v24 = v8;
    v25 = 2080;
    v26 = "[HUCCSmartContainerView setExpandedView:]";
    v27 = 2112;
    v28 = expandedView;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s, was %@ is %@", &v23, 0x2Au);
  }

  v12 = self->_expandedView;
  if (v12)
  {
    objc_msgSend_removeFromSuperview(v12, v10, v11);
  }

  objc_storeStrong(&self->_expandedView, a3);
  if (self->_expandedView)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      objc_msgSend_alpha(self->_expandedView, v16, v17);
      v23 = 138413058;
      v24 = v15;
      v25 = 2080;
      v26 = "[HUCCSmartContainerView setExpandedView:]";
      v27 = 2048;
      v28 = v18;
      v29 = 2048;
      v30 = 0;
      _os_log_impl(&dword_29C992000, v13, OS_LOG_TYPE_DEFAULT, "%@:%s, expandedView.alpha was %f is %f", &v23, 0x2Au);
    }

    objc_msgSend_setAlpha_(self->_expandedView, v19, v20, 0.0);
    objc_msgSend_addSubview_(self, v21, self->_expandedView);
  }

  v22 = *MEMORY[0x29EDCA608];
}

- (void)willMoveToExpandedStateWithAnimationStartFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7 = objc_msgSend_expandedView(self, a2, v3);
  objc_msgSend_setFrame_(v7, v8, v9, 0.0, 0.0, width, height);

  v12 = objc_msgSend_animationView(self, v10, v11);
  objc_msgSend_setFrame_(v12, v13, v14, 0.0, 0.0, width, height);

  MEMORY[0x2A1C70FE8](self, sel_setCompressedAnimationStartFrame_, v15);
}

- (void)resetToInitialState
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_animationView(self, a2, v2);
  objc_msgSend_setHidden_(v4, v5, 1);

  isShowingLockSecurity = objc_msgSend_isShowingLockSecurity(self, v6, v7);
  v9 = HFLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isShowingLockSecurity)
  {
    v11 = 0.0;
    if (v10)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_compressedView(self, v14, v15);
      objc_msgSend_alpha(v16, v17, v18);
      v38 = 138413058;
      v39 = v13;
      v40 = 2080;
      v41 = "[HUCCSmartContainerView resetToInitialState]";
      v42 = 2048;
      v43 = v19;
      v44 = 2048;
      v45 = 0;
LABEL_6:
      _os_log_impl(&dword_29C992000, v9, OS_LOG_TYPE_DEFAULT, "%@:%s, compressedView.alpha was %f is %f", &v38, 0x2Au);
    }
  }

  else
  {
    v11 = 1.0;
    if (v10)
    {
      v20 = objc_opt_class();
      v13 = NSStringFromClass(v20);
      v16 = objc_msgSend_compressedView(self, v21, v22);
      objc_msgSend_alpha(v16, v23, v24);
      v38 = 138413058;
      v39 = v13;
      v40 = 2080;
      v41 = "[HUCCSmartContainerView resetToInitialState]";
      v42 = 2048;
      v43 = v25;
      v44 = 2048;
      v45 = 0x3FF0000000000000;
      goto LABEL_6;
    }
  }

  v28 = objc_msgSend_compressedView(self, v26, v27);
  objc_msgSend_setAlpha_(v28, v29, v30, v11);

  v33 = objc_msgSend_expandedView(self, v31, v32);
  objc_msgSend_setAlpha_(v33, v34, v35, 0.0);

  objc_msgSend_setExpandedView_(self, v36, 0);
  v37 = *MEMORY[0x29EDCA608];
}

- (void)showLockSecurityWithFrameDelegate:(id)a3
{
  v66 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if ((objc_msgSend_isShowingLockSecurity(self, v5, v6) & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x29EDC5480]);
    v10 = objc_msgSend_initWithFrame_(v7, v8, v9, *MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24));
    objc_msgSend_setLockSecurityView_(self, v11, v10);

    v14 = objc_msgSend_lockSecurityView(self, v12, v13);
    objc_msgSend_setFrameDelegate_(v14, v15, v4);

    v18 = objc_msgSend_lockSecurityView(self, v16, v17);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v18, v19, 1);

    v20 = HULocalizedModelString();
    v23 = objc_msgSend_lockSecurityView(self, v21, v22);
    objc_msgSend_updateUIWithInfoText_andActionText_(v23, v24, v20, &stru_2A23EB000);

    objc_initWeak(&location, self);
    v25 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C99CCF4;
    block[3] = &unk_29F33A8A8;
    objc_copyWeak(&v56, &location);
    v26 = v20;
    v55 = v26;
    dispatch_async(v25, block);

    v29 = objc_msgSend_layoutGeometry(HUCCSmartGridLayout, v27, v28);
    v32 = objc_msgSend_lockSecurityView(self, v30, v31);
    objc_msgSend_setMosaicLayoutGeometry_(v32, v33, v29);

    v36 = objc_msgSend_lockSecurityView(self, v34, v35);
    objc_msgSend_addSubview_(self, v37, v36);

    v38 = HFLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v43 = objc_msgSend_compressedView(self, v41, v42);
      objc_msgSend_alpha(v43, v44, v45);
      *buf = 138413058;
      v59 = v40;
      v60 = 2080;
      v61 = "[HUCCSmartContainerView showLockSecurityWithFrameDelegate:]";
      v62 = 2048;
      v63 = v46;
      v64 = 2048;
      v65 = 0;
      _os_log_impl(&dword_29C992000, v38, OS_LOG_TYPE_DEFAULT, "%@:%s, compressedView.alpha was %f is %f", buf, 0x2Au);
    }

    v49 = objc_msgSend_compressedView(self, v47, v48);
    objc_msgSend_setAlpha_(v49, v50, v51, 0.0);

    objc_msgSend_setIsShowingLockSecurity_(self, v52, 1);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  v53 = *MEMORY[0x29EDCA608];
}

- (void)hideLockSecurity
{
  v34 = *MEMORY[0x29EDCA608];
  if (objc_msgSend_isShowingLockSecurity(self, a2, v2))
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = objc_msgSend_compressedView(self, v7, v8);
      objc_msgSend_alpha(v9, v10, v11);
      v26 = 138413058;
      v27 = v6;
      v28 = 2080;
      v29 = "[HUCCSmartContainerView hideLockSecurity]";
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = 0x3FF0000000000000;
      _os_log_impl(&dword_29C992000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s, compressedView.alpha was %f is %f", &v26, 0x2Au);
    }

    v15 = objc_msgSend_compressedView(self, v13, v14);
    objc_msgSend_setAlpha_(v15, v16, v17, 1.0);

    v20 = objc_msgSend_lockSecurityView(self, v18, v19);
    objc_msgSend_removeFromSuperview(v20, v21, v22);

    objc_msgSend_setLockSecurityView_(self, v23, 0);
    objc_msgSend_setIsShowingLockSecurity_(self, v24, 0);
  }

  v25 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUCCSmartContainerView;
  [(HUCCSmartContainerView *)&v18 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_lockSecurityView(self, v13, v14);
  objc_msgSend_setFrame_(v15, v16, v17, v6, v8, v10, v12);
}

- (CGRect)compressedAnimationStartFrame
{
  x = self->_compressedAnimationStartFrame.origin.x;
  y = self->_compressedAnimationStartFrame.origin.y;
  width = self->_compressedAnimationStartFrame.size.width;
  height = self->_compressedAnimationStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end