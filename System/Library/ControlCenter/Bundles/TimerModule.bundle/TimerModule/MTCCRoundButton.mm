@interface MTCCRoundButton
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTCCRoundButton)init;
- (NSString)title;
- (UIImage)image;
- (void)_updateCornerRadius;
- (void)_updateForStateChange;
- (void)dealloc;
- (void)handleContentSizeChange:(id)change;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setBackgroundMaterialView:(id)view forState:(unint64_t)state;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
@end

@implementation MTCCRoundButton

- (MTCCRoundButton)init
{
  v119 = *MEMORY[0x29EDCA608];
  v115.receiver = self;
  v115.super_class = MTCCRoundButton;
  v2 = *MEMORY[0x29EDB90E0];
  v3 = *(MEMORY[0x29EDB90E0] + 8);
  v4 = *(MEMORY[0x29EDB90E0] + 16);
  v5 = *(MEMORY[0x29EDB90E0] + 24);
  v6 = [(MTCCRoundButton *)&v115 initWithFrame:*MEMORY[0x29EDB90E0], v3, v4, v5];
  if (v6)
  {
    v7 = MTLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v118 = v6;
      _os_log_impl(&dword_29C9FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }

    v8 = objc_alloc(MEMORY[0x29EDC7DA0]);
    objc_msgSend_bounds(v6, v9, v10);
    v13 = objc_msgSend_initWithFrame_(v8, v11, v12);
    v14 = *(v6 + 57);
    *(v6 + 57) = v13;

    objc_msgSend_setAutoresizingMask_(*(v6 + 57), v15, 18);
    v18 = objc_msgSend_clearColor(MEMORY[0x29EDC7A00], v16, v17);
    objc_msgSend_setBackgroundColor_(*(v6 + 57), v19, v18);

    objc_msgSend_setUserInteractionEnabled_(*(v6 + 57), v20, 0);
    objc_msgSend_addSubview_(v6, v21, *(v6 + 57));
    v22 = objc_alloc(MEMORY[0x29EDC7DC0]);
    objc_msgSend_bounds(v6, v23, v24);
    v27 = objc_msgSend_initWithFrame_(v22, v25, v26);
    v29 = objc_msgSend_effectWithStyle_(MEMORY[0x29EDC7950], v28, 1);
    v116 = v29;
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v30, &v116, 1);
    objc_msgSend_setBackgroundEffects_(v27, v32, v31);

    objc_msgSend_setAutoresizingMask_(v27, v33, 18);
    objc_msgSend_setUserInteractionEnabled_(v27, v34, 0);
    v35 = *(v6 + 58);
    *(v6 + 58) = v27;
    v36 = v27;

    objc_msgSend_addSubview_(*(v6 + 57), v37, *(v6 + 58));
    v38 = objc_alloc(MEMORY[0x29EDC7DA0]);
    objc_msgSend_bounds(v6, v39, v40);
    v43 = objc_msgSend_initWithFrame_(v38, v41, v42);
    v44 = *(v6 + 59);
    *(v6 + 59) = v43;

    objc_msgSend_setAutoresizingMask_(*(v6 + 59), v45, 18);
    objc_msgSend_setUserInteractionEnabled_(*(v6 + 59), v46, 0);
    objc_msgSend_addSubview_(*(v6 + 57), v47, *(v6 + 59));
    v48 = objc_alloc(MEMORY[0x29EDC7DA0]);
    objc_msgSend_bounds(v6, v49, v50);
    v53 = objc_msgSend_initWithFrame_(v48, v51, v52);
    v54 = *(v6 + 60);
    *(v6 + 60) = v53;

    objc_msgSend_setAutoresizingMask_(*(v6 + 60), v55, 18);
    objc_msgSend_setUserInteractionEnabled_(*(v6 + 60), v56, 0);
    objc_msgSend_setAlpha_(*(v6 + 60), v57, v58, 0.0);
    objc_msgSend_addSubview_(*(v6 + 57), v59, *(v6 + 60));
    v60 = objc_alloc(MEMORY[0x29EDC7DA0]);
    objc_msgSend_bounds(v6, v61, v62);
    v65 = objc_msgSend_initWithFrame_(v60, v63, v64);
    v66 = *(v6 + 61);
    *(v6 + 61) = v65;

    objc_msgSend_setAutoresizingMask_(*(v6 + 61), v67, 18);
    objc_msgSend_setUserInteractionEnabled_(*(v6 + 61), v68, 0);
    objc_msgSend_setAlpha_(*(v6 + 61), v69, v70, 0.0);
    objc_msgSend_addSubview_(*(v6 + 57), v71, *(v6 + 61));
    v72 = objc_alloc(MEMORY[0x29EDC7B38]);
    v75 = objc_msgSend_initWithFrame_(v72, v73, v74, v2, v3, v4, v5);
    v76 = *(v6 + 62);
    *(v6 + 62) = v75;

    v78 = objc_msgSend_preferredFontDescriptorWithTextStyle_addingSymbolicTraits_options_(MEMORY[0x29EDC76B8], v77, *MEMORY[0x29EDC8110], 2, 0);
    v79 = MEMORY[0x29EDC76B0];
    objc_msgSend_pointSize(v78, v80, v81);
    v83 = objc_msgSend_fontWithDescriptor_size_(v79, v82, v78);
    objc_msgSend_setFont_(*(v6 + 62), v84, v83);

    v87 = objc_msgSend_whiteColor(MEMORY[0x29EDC7A00], v85, v86);
    objc_msgSend_setTextColor_(*(v6 + 62), v88, v87);

    objc_msgSend_setTextAlignment_(*(v6 + 62), v89, 1);
    objc_msgSend_setClipsToBounds_(*(v6 + 62), v90, 0);
    objc_msgSend_setAdjustsFontSizeToFitWidth_(*(v6 + 62), v91, 1);
    objc_msgSend_setBaselineAdjustment_(*(v6 + 62), v92, 1);
    objc_msgSend_addSubview_(*(v6 + 57), v93, *(v6 + 62));
    v94 = objc_alloc(MEMORY[0x29EDC7AD8]);
    v97 = objc_msgSend_initWithFrame_(v94, v95, v96, v2, v3, v4, v5);
    v98 = *(v6 + 63);
    *(v6 + 63) = v97;

    objc_msgSend_setUserInteractionEnabled_(*(v6 + 63), v99, 0);
    objc_msgSend_addSubview_(*(v6 + 57), v100, *(v6 + 63));
    objc_msgSend_addTarget_action_forControlEvents_(v6, v101, v6, sel__touchDown_, 1);
    objc_msgSend_addTarget_action_forControlEvents_(v6, v102, v6, sel__touchUpInside_, 64);
    objc_msgSend_addTarget_action_forControlEvents_(v6, v103, v6, sel__touchUpOutside_, 128);
    objc_msgSend_addTarget_action_forControlEvents_(v6, v104, v6, sel__dragEnter_, 16);
    objc_msgSend_addTarget_action_forControlEvents_(v6, v105, v6, sel__dragExit_, 32);
    objc_msgSend_addObserver_forKeyPath_options_context_(v6, v106, v6, @"enabled", 0, 0);
    objc_msgSend_addObserver_forKeyPath_options_context_(v6, v107, v6, @"highlighted", 0, 0);
    objc_msgSend_addObserver_forKeyPath_options_context_(v6, v108, v6, @"selected", 0, 0);
    v111 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v109, v110);
    objc_msgSend_addObserver_selector_name_object_(v111, v112, v6, sel_handleContentSizeChange_, *MEMORY[0x29EDC8078], 0);
  }

  v113 = *MEMORY[0x29EDCA608];
  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing", buf, 0xCu);
  }

  objc_msgSend_removeObserver_forKeyPath_(self, v4, self, @"enabled");
  objc_msgSend_removeObserver_forKeyPath_(self, v5, self, @"highlighted");
  objc_msgSend_removeObserver_forKeyPath_(self, v6, self, @"selected");
  v8.receiver = self;
  v8.super_class = MTCCRoundButton;
  [(MTCCRoundButton *)&v8 dealloc];
  v7 = *MEMORY[0x29EDCA608];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v7 = objc_msgSend_titleLabel(self, v5, v6);
  objc_msgSend_setText_(v7, v8, titleCopy);

  objc_msgSend_setNeedsLayout(self, v9, v10);
}

- (NSString)title
{
  v3 = objc_msgSend_titleLabel(self, a2, v2);
  v6 = objc_msgSend_text(v3, v4, v5);

  return v6;
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  v7 = colorCopy;
  if (state)
  {
    if (state == 4)
    {
      v8 = &OBJC_IVAR___MTCCRoundButton__selectedStateBackgroundView;
    }

    else
    {
      if (state != 1)
      {
        goto LABEL_8;
      }

      v8 = &OBJC_IVAR___MTCCRoundButton__highlightView;
    }
  }

  else
  {
    v8 = &OBJC_IVAR___MTCCRoundButton__normalStateBackgroundView;
  }

  v9 = colorCopy;
  colorCopy = objc_msgSend_setBackgroundColor_(*(&self->super.super.super.super.isa + *v8), colorCopy, colorCopy);
  v7 = v9;
LABEL_8:

  MEMORY[0x2A1C71028](colorCopy, v7);
}

- (void)setBackgroundMaterialView:(id)view forState:(unint64_t)state
{
  viewCopy = view;
  if (viewCopy)
  {
    if (state == 4)
    {
      v22 = viewCopy;
      objc_msgSend_removeFromSuperview(self->_selectedStateBackgroundView, v8, v9);
      objc_storeStrong(&self->_selectedStateBackgroundView, view);
      objc_msgSend_setAutoresizingMask_(self->_selectedStateBackgroundView, v17, 18);
      objc_msgSend_setUserInteractionEnabled_(self->_selectedStateBackgroundView, v18, 0);
      objc_msgSend_setAlpha_(self->_selectedStateBackgroundView, v19, v20, 0.0);
      objc_msgSend_insertSubview_aboveSubview_(self->_containerView, v21, self->_selectedStateBackgroundView, self->_normalStateBackgroundView);
    }

    else if (state == 1)
    {
      v22 = viewCopy;
      objc_msgSend_removeFromSuperview(self->_normalStateBackgroundView, v8, v9);
      objc_storeStrong(&self->_normalStateBackgroundView, view);
      objc_msgSend_setAutoresizingMask_(self->_normalStateBackgroundView, v14, 18);
      objc_msgSend_setUserInteractionEnabled_(self->_normalStateBackgroundView, v15, 0);
      objc_msgSend_insertSubview_aboveSubview_(self->_containerView, v16, self->_normalStateBackgroundView, self->_backgroundView);
    }

    else
    {
      if (state)
      {
        goto LABEL_9;
      }

      v22 = viewCopy;
      objc_msgSend_removeFromSuperview(self->_backgroundView, v8, v9);
      objc_storeStrong(&self->_backgroundView, view);
      objc_msgSend_setAutoresizingMask_(self->_backgroundView, v10, 18);
      objc_msgSend_setUserInteractionEnabled_(self->_backgroundView, v11, 0);
      objc_msgSend_addSubview_(self->_containerView, v12, self->_backgroundView);
      objc_msgSend_sendSubviewToBack_(self->_containerView, v13, self->_backgroundView);
    }

    viewCopy = v22;
  }

LABEL_9:
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v8 = objc_msgSend_imageView(self, v5, v6);
  objc_msgSend_setImage_(v8, v7, imageCopy);
}

- (UIImage)image
{
  v3 = objc_msgSend_imageView(self, a2, v2);
  v6 = objc_msgSend_image(v3, v4, v5);

  return v6;
}

- (void)layoutSubviews
{
  v68.receiver = self;
  v68.super_class = MTCCRoundButton;
  [(MTCCRoundButton *)&v68 layoutSubviews];
  objc_msgSend__updateCornerRadius(self, v3, v4);
  objc_msgSend_bounds(self, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17 = objc_msgSend_titleLabel(self, v15, v16);
  objc_msgSend_sizeToFit(v17, v18, v19);

  v22 = objc_msgSend_titleLabel(self, v20, v21);
  objc_msgSend_frame(v22, v23, v24);
  v66 = v26;
  v67 = v25;
  v28 = v27;
  v30 = v29;

  v33 = objc_msgSend_traitCollection(self, v31, v32);
  v36 = objc_msgSend_preferredContentSizeCategory(v33, v34, v35);
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v36);

  if (IsAccessibilityCategory)
  {
    objc_msgSend_frame(self, v38, v39);
    v41 = v40 + -48.0;
  }

  else
  {
    v69.size.height = v66;
    v69.origin.x = v67;
    v69.origin.y = v28;
    v69.size.width = v30;
    Width = CGRectGetWidth(v69);
    v70.origin.x = v8;
    v70.origin.y = v10;
    v70.size.width = v12;
    v70.size.height = v14;
    v41 = fmin(Width, CGRectGetWidth(v70));
  }

  v71.origin.x = v8;
  v71.origin.y = v10;
  v71.size.width = v12;
  v71.size.height = v14;
  CGRectGetMidX(v71);
  v65 = v8;
  v72.origin.x = v67;
  v72.origin.y = v28;
  v72.size.width = v41;
  v72.size.height = v66;
  CGRectGetWidth(v72);
  v73.size.width = v12;
  v73.origin.x = v8;
  v73.origin.y = v10;
  v73.size.height = v14;
  CGRectGetMidY(v73);
  v43 = v10;
  v74.origin.x = v67;
  v74.origin.y = v28;
  v74.size.width = v41;
  v74.size.height = v66;
  CGRectGetHeight(v74);
  UIPointIntegral();
  v45 = v44;
  v47 = v46;
  v50 = objc_msgSend_titleLabel(self, v48, v49);
  objc_msgSend_setFrame_(v50, v51, v52, v45, v47, v41, v66);

  v55 = objc_msgSend_imageView(self, v53, v54);
  objc_msgSend_sizeToFit(v55, v56, v57);

  v75.origin.x = v65;
  v75.origin.y = v43;
  v75.size.width = v12;
  v75.size.height = v14;
  MidX = CGRectGetMidX(v75);
  v76.origin.x = v65;
  v76.origin.y = v43;
  v76.size.width = v12;
  v76.size.height = v14;
  MidY = CGRectGetMidY(v76);
  v62 = objc_msgSend_imageView(self, v60, v61);
  objc_msgSend_setCenter_(v62, v63, v64, MidX, MidY);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 80.0;
  v4 = 80.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x29EDB90E8];
  v3 = *(MEMORY[0x29EDB90E8] + 8);
  (MEMORY[0x2A1C70FE8])(self, sel_sizeThatFits_);
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v9 = objc_msgSend_view(beginCopy, v5, v6);
  if (v9 == self)
  {
    isDescendantOfView = 1;
  }

  else
  {
    v10 = objc_msgSend_view(beginCopy, v7, v8);
    isDescendantOfView = objc_msgSend_isDescendantOfView_(v10, v11, self);
  }

  return isDescendantOfView;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9 = pathCopy;
  if (object == self)
  {
    v13 = pathCopy;
    isEqualToString = objc_msgSend_isEqualToString_(pathCopy, pathCopy, @"selected");
    v9 = v13;
    if (isEqualToString & 1) != 0 || (v12 = objc_msgSend_isEqualToString_(v13, v13, @"enabled"), v9 = v13, (v12) || (pathCopy = objc_msgSend_isEqualToString_(v13, v13, @"highlighted"), v9 = v13, pathCopy))
    {
      pathCopy = objc_msgSend__updateForStateChange(self, v9, v11);
      v9 = v13;
    }
  }

  MEMORY[0x2A1C71028](pathCopy, v9);
}

- (void)handleContentSizeChange:(id)change
{
  v15 = objc_msgSend_preferredFontDescriptorWithTextStyle_addingSymbolicTraits_options_(MEMORY[0x29EDC76B8], a2, *MEMORY[0x29EDC8110], 2, 0);
  v4 = MEMORY[0x29EDC76B0];
  objc_msgSend_pointSize(v15, v5, v6);
  v8 = objc_msgSend_fontWithDescriptor_size_(v4, v7, v15);
  v11 = objc_msgSend_titleLabel(self, v9, v10);
  objc_msgSend_setFont_(v11, v12, v8);

  objc_msgSend_setNeedsLayout(self, v13, v14);
}

- (void)_updateCornerRadius
{
  objc_msgSend_bounds(self, a2, v2);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  v8 = CGRectGetWidth(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v9 = CGRectGetHeight(v58);
  v10 = fmin(v8, v9) * 0.5;
  v13 = objc_msgSend_containerView(self, v11, v12);
  v16 = v13;
  if (v8 == v9)
  {
    objc_msgSend__setCornerRadius_(v13, v14, v15, v10);

    v19 = objc_msgSend_backgroundView(self, v17, v18);
    objc_msgSend__setCornerRadius_(v19, v20, v21, v10);

    v24 = objc_msgSend_normalStateBackgroundView(self, v22, v23);
    objc_msgSend__setCornerRadius_(v24, v25, v26, v10);

    v29 = objc_msgSend_selectedStateBackgroundView(self, v27, v28);
    objc_msgSend__setCornerRadius_(v29, v30, v31, v10);

    v55 = objc_msgSend_highlightView(self, v32, v33);
    objc_msgSend__setCornerRadius_(v55, v34, v35, v10);
  }

  else
  {
    objc_msgSend__setContinuousCornerRadius_(v13, v14, v15, v10);

    v38 = objc_msgSend_backgroundView(self, v36, v37);
    objc_msgSend__setContinuousCornerRadius_(v38, v39, v40, v10);

    v43 = objc_msgSend_normalStateBackgroundView(self, v41, v42);
    objc_msgSend__setContinuousCornerRadius_(v43, v44, v45, v10);

    v48 = objc_msgSend_selectedStateBackgroundView(self, v46, v47);
    objc_msgSend__setContinuousCornerRadius_(v48, v49, v50, v10);

    v55 = objc_msgSend_highlightView(self, v51, v52);
    objc_msgSend__setContinuousCornerRadius_(v55, v53, v54, v10);
  }
}

- (void)_updateForStateChange
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C9FD98C;
  v2[3] = &unk_29F33F8B8;
  v2[4] = self;
  objc_msgSend_animateWithDuration_animations_(MEMORY[0x29EDC7DA0], a2, v2, 0.25);
}

@end