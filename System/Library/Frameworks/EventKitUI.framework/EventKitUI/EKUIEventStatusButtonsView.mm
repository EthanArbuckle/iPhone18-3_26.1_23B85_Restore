@interface EKUIEventStatusButtonsView
+ (BOOL)isActionDestructive:(int64_t)a3;
+ (double)_estimatedTotalButtonWidthForTitles:(id)a3 attributes:(id)a4;
+ (id)_appliesToAllTitleForAction:(int64_t)a3;
+ (id)buttonAccessibilityIdentifierStringForAction:(int64_t)a3;
+ (id)buttonTitleForAction:(int64_t)a3;
+ (id)imageForAction:(int64_t)a3 selected:(BOOL)a4;
+ (id)labelColorForAction:(int64_t)a3 selected:(BOOL)a4;
- (BOOL)_shouldUseLowSpaceContentInsetsForTotalButtonWidth:(double)a3;
- (BOOL)noButtonSelected;
- (EKUIEventStatusButtonsView)initWithFrame:(CGRect)a3 actions:(id)a4 delegate:(id)a5 options:(unint64_t)a6 textSizeMode:(int64_t)a7;
- (EKUIEventStatusButtonsViewDelegate)delegate;
- (UIButton)centerButton;
- (UIButton)leadingButton;
- (UIButton)trailingButton;
- (UIEdgeInsets)buttonsTouchInsets;
- (double)_buttonFontSizeFromDelegate;
- (double)_defaultFontSizeForButtons;
- (double)_updateFontFromDelegate;
- (id)_fontWithSize:(double)a3 selected:(BOOL)a4;
- (id)_horizontalConstraintStringForMiddleButtonsStartingAt:(unint64_t)a3 endingAt:(unint64_t)a4 resultingViews:(id)a5;
- (id)backgroundColorForAction:(int64_t)a3 selected:(BOOL)a4 inboxStyle:(BOOL)a5 inPadSidebar:(BOOL)a6;
- (id)buttonForAction:(int64_t)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)_buttonIndexForAction:(int64_t)a3;
- (void)_buttonTappedInternal:(id)a3 appliesToAll:(BOOL)a4;
- (void)_configureButton:(id)a3 forAction:(int64_t)a4 isLargeSize:(BOOL)a5 totalButtonWidth:(double)a6;
- (void)_setupButtons;
- (void)_setupConstraints;
- (void)_updateButtonFonts:(id)a3;
- (void)_updateButtonFontsWithOverrideSize:(double)a3;
- (void)_updateButtonFontsWithSize:(double)a3;
- (void)_updateSelectionToButton:(id)a3;
- (void)findPointerInteractionWithButton:(id)a3 actions:(id)a4;
- (void)layoutSubviews;
- (void)setActions:(id)a3;
- (void)setButtonsTouchInsets:(UIEdgeInsets)a3;
- (void)setDisableButtonHighlights:(BOOL)a3;
- (void)setSelectedAction:(int64_t)a3;
- (void)setShouldUseVerticalLayout:(BOOL)a3;
- (void)setTextSizeMode:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation EKUIEventStatusButtonsView

- (EKUIEventStatusButtonsView)initWithFrame:(CGRect)a3 actions:(id)a4 delegate:(id)a5 options:(unint64_t)a6 textSizeMode:(int64_t)a7
{
  v8 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = EKUIEventStatusButtonsView;
  v18 = [(EKUIEventStatusButtonsView *)&v23 initWithFrame:x, y, width, height];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v17);
    v19->_textSizeMode = a7;
    objc_storeStrong(&v19->_actions, a4);
    v19->_allowAppliesToAll = (v8 & 4) != 0;
    v19->_inboxStyle = (v8 & 2) != 0;
    if ((v8 & 2) != 0)
    {
      v19->_layoutButtons = 1;
    }

    else
    {
      v21 = MEMORY[0x1D38B98D0]();
      v19->_layoutButtons = v21 ^ 1;
      if (v21)
      {
        goto LABEL_7;
      }
    }

    v19->_outsideMargin = 0.0;
    v19->_forcesSingleButtonToCenter = v8 & 1;
    LODWORD(v20) = 1144750080;
    [(EKUIEventStatusButtonsView *)v19 setContentCompressionResistancePriority:0 forAxis:v20];
LABEL_7:
    [(EKUIEventStatusButtonsView *)v19 _setupButtons];
  }

  return v19;
}

- (BOOL)noButtonSelected
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_buttons;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) isSelected])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)_configureButton:(id)a3 forAction:(int64_t)a4 isLargeSize:(BOOL)a5 totalButtonWidth:(double)a6
{
  v7 = a5;
  v47[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(EKUIEventStatusButtonsView *)self selectedAction];
  v12 = [EKUIEventStatusButtonsView buttonTitleForAction:a4];
  v13 = [EKUIEventStatusButtonsView buttonAccessibilityIdentifierStringForAction:a4];
  [v10 setAccessibilityIdentifier:v13];

  if (MEMORY[0x1D38B98D0]([v10 addTarget:self action:sel__buttonTapped_ forControlEvents:64]))
  {
    if (self->_inboxStyle && self->_inPadSidebar && MEMORY[0x1D38B98D0]())
    {
      v14 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    }

    else
    {
      v14 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
      v19 = [(EKUIEventStatusButtonsView *)self backgroundColorForAction:a4 selected:v11 == a4 inboxStyle:self->_inboxStyle inPadSidebar:self->_inPadSidebar];
      v20 = [v14 background];
      [v20 setBackgroundColor:v19];
    }

    [v14 setCornerStyle:4];
    [v14 setTitleLineBreakMode:4];
    v21 = [objc_opt_class() labelColorForAction:a4 selected:v11 == a4];
    [v14 setBaseForegroundColor:v21];

    if (self->_inboxStyle)
    {
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v46 = *MEMORY[0x1E69DB648];
      [(EKUIEventStatusButtonsView *)self _buttonFontSizeFromDelegate];
      v24 = -[EKUIEventStatusButtonsView _fontWithSize:selected:](self, "_fontWithSize:selected:", [v10 isSelected], v23);
      v47[0] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v26 = [v22 initWithString:v12 attributes:v25];
      [v14 setAttributedTitle:v26];

      [v14 contentInsets];
      [v14 setContentInsets:?];
    }

    else
    {
      if (self->_textSizeMode)
      {
        v27 = [MEMORY[0x1E6966A98] shared];
        v28 = [v27 calPreferences];
        v29 = [v28 getBooleanPreference:@"UseLargeStatusButtonSize" defaultValue:0] | v7;

        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 1;
      }

      [v14 setButtonSize:v30];
      v31 = objc_alloc(MEMORY[0x1E696AAB0]);
      v44 = *MEMORY[0x1E69DB648];
      [(EKUIEventStatusButtonsView *)self _buttonFontSizeFromDelegate];
      v32 = [(EKUIEventStatusButtonsView *)self _fontWithSize:0 selected:?];
      v45 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v34 = [v31 initWithString:v12 attributes:v33];
      [v14 setAttributedTitle:v34];
    }

    [v10 setConfiguration:v14];
    objc_initWeak(&location, self);
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __86__EKUIEventStatusButtonsView__configureButton_forAction_isLargeSize_totalButtonWidth___block_invoke;
    v40 = &unk_1E843F368;
    objc_copyWeak(v42, &location);
    v42[1] = a4;
    v42[2] = *&a6;
    v41 = v12;
    [v10 setConfigurationUpdateHandler:&v37];
    v35 = [v10 titleLabel];
    [v35 setAdjustsFontSizeToFitWidth:1];

    v36 = [v10 titleLabel];
    [v36 setMinimumScaleFactor:0.5];

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [v10 titleLabel];
    [(EKUIEventStatusButtonsView *)self _buttonFontSizeFromDelegate];
    v17 = -[EKUIEventStatusButtonsView _fontWithSize:selected:](self, "_fontWithSize:selected:", [v10 isSelected], v16);
    [v15 setFont:v17];

    v18 = [v10 titleLabel];
    [v18 setLineBreakMode:4];
  }
}

void __86__EKUIEventStatusButtonsView__configureButton_forAction_isLargeSize_totalButtonWidth___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 configuration];
    v6 = [WeakRetained backgroundColorForAction:*(a1 + 48) selected:objc_msgSend(v3 inboxStyle:"isSelected") inPadSidebar:{WeakRetained[449], objc_msgSend(WeakRetained, "inPadSidebar")}];
    v7 = [v5 background];
    [v7 setBackgroundColor:v6];

    v8 = [objc_opt_class() labelColorForAction:*(a1 + 48) selected:{objc_msgSend(v3, "isSelected")}];
    [v5 setBaseForegroundColor:v8];

    if ([WeakRetained _shouldUseLowSpaceContentInsetsForTotalButtonWidth:*(a1 + 56)])
    {
      [v5 contentInsets];
      [v5 setContentInsets:?];
    }

    if (WeakRetained[449] == 1)
    {
      v9 = objc_alloc(MEMORY[0x1E696AAB0]);
      v10 = *(a1 + 32);
      v15 = *MEMORY[0x1E69DB648];
      [WeakRetained _buttonFontSizeFromDelegate];
      v12 = [WeakRetained _fontWithSize:objc_msgSend(v3 selected:{"isSelected"), v11}];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v14 = [v9 initWithString:v10 attributes:v13];
      [v5 setAttributedTitle:v14];
    }

    [v3 setConfiguration:v5];
  }
}

+ (double)_estimatedTotalButtonWidthForTitles:(id)a3 attributes:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) sizeWithAttributes:v6];
        v10 = v10 + v12 + 60.0;
      }

      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (BOOL)_shouldUseLowSpaceContentInsetsForTotalButtonWidth:(double)a3
{
  v5 = [(EKUIEventStatusButtonsView *)self _shouldCheckForLowSpaceInsets];
  if (v5)
  {
    EKUIApplicationFrame(self);
    LOBYTE(v5) = v6 + -56.0 < a3;
  }

  return v5;
}

- (void)findPointerInteractionWithButton:(id)a3 actions:(id)a4
{
  v6 = a4;
  v7 = [a3 interactions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__EKUIEventStatusButtonsView_findPointerInteractionWithButton_actions___block_invoke;
  v9[3] = &unk_1E843F390;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __71__EKUIEventStatusButtonsView_findPointerInteractionWithButton_actions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v11;
  if (isKindOfClass)
  {
    v8 = v11;
    v9 = [v8 delegate];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      (*(*(a1 + 40) + 16))();
      *a4 = 1;
    }

    v7 = v11;
  }
}

- (void)_setupButtons
{
  v2 = self;
  v80[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_actions count];
  buttons = v2->_buttons;
  v58 = v3;
  val = v2;
  if (buttons)
  {
    v5 = [(NSArray *)buttons mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  }

  obj = v5;
  v56 = [v5 count];
  v6 = 0.0;
  if ([(EKUIEventStatusButtonsView *)v2 _shouldCheckForLowSpaceInsets])
  {
    v79 = *MEMORY[0x1E69DB648];
    [(EKUIEventStatusButtonsView *)v2 _buttonFontSizeFromDelegate];
    v8 = [(EKUIEventStatusButtonsView *)v2 _fontWithSize:1 selected:v7 * 0.75];
    v80[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];

    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v11 = v2->_actions;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v12)
    {
      v13 = *v74;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v74 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = +[EKUIEventStatusButtonsView buttonTitleForAction:](EKUIEventStatusButtonsView, "buttonTitleForAction:", [*(*(&v73 + 1) + 8 * i) integerValue]);
          [v10 addObject:v15];
        }

        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v12);
    }

    [objc_opt_class() _estimatedTotalButtonWidthForTitles:v10 attributes:v9];
    v6 = v16;

    v3 = v58;
  }

  if (v3)
  {
    v17 = 0;
    do
    {
      v18 = [(NSArray *)v2->_actions objectAtIndexedSubscript:v17];
      v19 = [v18 integerValue];

      if (v17 >= v56)
      {
        v21 = MEMORY[0x1D38B98D0]();
        v22 = 0x1E69DC738;
        if (!v21)
        {
          v22 = off_1E843D210;
        }

        v23 = [*v22 buttonWithType:v21 ^ 1u];
        [(EKUIEventStatusButtonsView *)val _configureButton:v23 forAction:v19 isLargeSize:([(EKUIEventStatusButtonsView *)val textSizeMode]== 1) & (v58 == 3) totalButtonWidth:v6];
        v20 = v23;
        if (val->_layoutButtons)
        {
          [(EKUIEventStatusButtonsView *)val addSubview:v20];
        }

        [obj addObject:v20];
      }

      else
      {
        v20 = [obj objectAtIndexedSubscript:v17];
        [(EKUIEventStatusButtonsView *)val _configureButton:v20 forAction:v19 isLargeSize:([(EKUIEventStatusButtonsView *)val textSizeMode]== 1) & (v58 == 3) totalButtonWidth:v6];
      }

      [v20 setSelected:0];
      v24 = [objc_opt_class() buttonTitleForAction:v19];
      [v20 setTag:v19];
      if (val->_layoutButtons)
      {
        [v20 setTitle:v24 forState:0];
      }

      v25 = [objc_opt_class() _appliesToAllTitleForAction:v19];
      v26 = v25;
      if (val->_allowAppliesToAll && v25)
      {
        objc_initWeak(&location, val);
        objc_initWeak(&from, v20);
        v27 = MEMORY[0x1E69DCC60];
        v28 = MEMORY[0x1E69DC628];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __43__EKUIEventStatusButtonsView__setupButtons__block_invoke;
        v69[3] = &unk_1E843F3B8;
        objc_copyWeak(&v70, &location);
        objc_copyWeak(&v71, &from);
        v29 = [v28 actionWithTitle:v24 image:0 identifier:0 handler:v69];
        v77[0] = v29;
        v30 = MEMORY[0x1E69DC628];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __43__EKUIEventStatusButtonsView__setupButtons__block_invoke_2;
        v66[3] = &unk_1E843F3B8;
        objc_copyWeak(&v67, &location);
        objc_copyWeak(&v68, &from);
        v31 = [v30 actionWithTitle:v26 image:0 identifier:0 handler:v66];
        v77[1] = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
        v33 = [v27 menuWithChildren:v32];
        [v20 setMenu:v33];

        objc_destroyWeak(&v68);
        objc_destroyWeak(&v67);
        objc_destroyWeak(&v71);
        objc_destroyWeak(&v70);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (val->_layoutButtons)
      {
        v34 = [MEMORY[0x1E69DC888] whiteColor];
        [v20 setTitleColor:v34 forState:4];

        if ([(EKUIEventStatusButtonsView *)val shouldUseVerticalLayout])
        {
          v35 = 4;
        }

        else
        {
          v35 = 0;
        }

        [v20 setContentHorizontalAlignment:v35];
        v36 = [v20 titleLabel];
        LODWORD(v37) = 1148846080;
        [v36 setContentHuggingPriority:1 forAxis:v37];

        v38 = [v20 titleLabel];
        v39 = MEMORY[0x1D38B98D0]();
        LODWORD(v40) = 1148846080;
        if (v39)
        {
          *&v40 = 250.0;
        }

        [v38 setContentHuggingPriority:0 forAxis:v40];

        v41 = MEMORY[0x1D38B98D0]();
        LODWORD(v42) = 1148846080;
        if (v41)
        {
          *&v42 = 250.0;
        }

        [v20 setContentHuggingPriority:0 forAxis:v42];
        LODWORD(v43) = 1148829696;
        [v20 setContentCompressionResistancePriority:0 forAxis:v43];
        LODWORD(v44) = 1148846080;
        [v20 setContentCompressionResistancePriority:1 forAxis:v44];
        LODWORD(v45) = 1144750080;
        [v20 setContentHuggingPriority:1 forAxis:v45];
      }

      ++v17;
      v2 = val;
    }

    while (v58 != v17);
  }

  v46 = [obj copy];
  if (v58 < v56)
  {
    v47 = v58;
    do
    {
      v48 = [v46 objectAtIndexedSubscript:v47];
      v49 = v48;
      if (val->_layoutButtons)
      {
        [v48 removeFromSuperview];
      }

      [obj removeObject:v49];

      ++v47;
    }

    while (v56 != v47);
  }

  objc_storeStrong((&val->super.super.super.isa + v55), obj);
  v50 = val;
  if (val->_layoutButtons)
  {
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&val->_buttonsTouchInsets.top, *MEMORY[0x1E69DDCE0]), vceqq_f64(*&val->_buttonsTouchInsets.bottom, *(MEMORY[0x1E69DDCE0] + 16))))))
    {
      [(EKUIEventStatusButtonsView *)val setButtonsTouchInsets:-10.0, -10.0, -10.0, -10.0];
      v50 = val;
    }

    if (v58 != v56)
    {
      [(EKUIEventStatusButtonsView *)v50 _setupConstraints];
      v50 = val;
    }

    v51 = [(EKUIEventStatusButtonsView *)v50 _shouldCenterButton];
    v52 = *(&val->super.super.super.isa + v55);
    if (v51)
    {
      v53 = [v52 firstObject];
      location = 0;
      p_location = &location;
      v64 = 0x2020000000;
      v65 = 0;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __43__EKUIEventStatusButtonsView__setupButtons__block_invoke_3;
      v61[3] = &unk_1E843F3E0;
      v61[4] = &location;
      [(EKUIEventStatusButtonsView *)val findPointerInteractionWithButton:v53 actions:v61];
      if ((p_location[3] & 1) == 0)
      {
        v54 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:val];
        [v53 addInteraction:v54];
      }

      _Block_object_dispose(&location, 8);
    }

    else
    {
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __43__EKUIEventStatusButtonsView__setupButtons__block_invoke_4;
      v60[3] = &unk_1E843F430;
      v60[4] = val;
      [v52 enumerateObjectsUsingBlock:v60];
    }

    [(EKUIEventStatusButtonsView *)val setNeedsLayout];
  }
}

void __43__EKUIEventStatusButtonsView__setupButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _buttonTapped:v2];
}

void __43__EKUIEventStatusButtonsView__setupButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _appliesToAllButtonTapped:v2];
}

void __43__EKUIEventStatusButtonsView__setupButtons__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKUIEventStatusButtonsView__setupButtons__block_invoke_5;
  v6[3] = &unk_1E843F408;
  v7 = v3;
  v5 = v3;
  [v4 findPointerInteractionWithButton:v5 actions:v6];
}

- (void)_setupConstraints
{
  v2 = self;
  v122 = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  if ([(NSArray *)self->_currentConstraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v2->_currentConstraints];
    currentConstraints = v2->_currentConstraints;
    v2->_currentConstraints = 0;
  }

  v5 = [(NSArray *)v2->_buttons count];
  if (v2->_buttons)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v7 == 1)
    {
      v8 = [(NSArray *)v2->_buttons firstObject];
      if (MEMORY[0x1D38B98D0]())
      {
        v9 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:5 relatedBy:0 toItem:v2 attribute:5 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v9];

        v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:7 relatedBy:1 toItem:v2 attribute:7 multiplier:0.333 constant:-8.0];
        [(NSArray *)v110 addObject:v10];

        v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:6 relatedBy:-1 toItem:v2 attribute:6 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v11];

        v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v2 attribute:3 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v12];

        v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v2 attribute:4 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v13];
      }

      else
      {
        if ([(EKUIEventStatusButtonsView *)v2 _shouldCenterButton])
        {
          v13 = [(NSArray *)v2->_buttons firstObject];
          v43 = MEMORY[0x1E696ACD8];
          v44 = _NSDictionaryOfVariableBindings(&cfstr_Button.isa, v13, 0);
          v45 = [v43 constraintsWithVisualFormat:@"H:|[button]" options:0 metrics:0 views:v44];
          v46 = [v45 firstObject];
          leadingMarginConstraint = v2->_leadingMarginConstraint;
          v2->_leadingMarginConstraint = v46;

          [(NSArray *)v110 addObject:v2->_leadingMarginConstraint];
          v48 = MEMORY[0x1E696ACD8];
          v49 = _NSDictionaryOfVariableBindings(&cfstr_Button.isa, v13, 0);
          v50 = [v48 constraintsWithVisualFormat:@"H:[button]|" options:0 metrics:0 views:v49];
          v51 = [v50 firstObject];
          trailingMarginConstraint = v2->_trailingMarginConstraint;
          v2->_trailingMarginConstraint = v51;

          [(NSArray *)v110 addObject:v2->_trailingMarginConstraint];
          v53 = MEMORY[0x1E696ACD8];
          v54 = _NSDictionaryOfVariableBindings(&cfstr_Button.isa, v13, 0);
          v55 = [v53 constraintsWithVisualFormat:@"V:|[button]|" options:0 metrics:0 views:v54];
          [(NSArray *)v110 addObjectsFromArray:v55];
        }

        else
        {
          v79 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:5 relatedBy:0 toItem:v2 attribute:5 multiplier:1.0 constant:0.0];
          v80 = v2->_leadingMarginConstraint;
          v2->_leadingMarginConstraint = v79;

          [(NSArray *)v110 addObject:v2->_leadingMarginConstraint];
          v81 = v2->_trailingMarginConstraint;
          v2->_trailingMarginConstraint = 0;

          v82 = [(EKUIEventStatusButtonsView *)v2 trailingAnchor];
          v83 = [v8 trailingAnchor];
          v84 = [v82 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v83 multiplier:1.0];
          [(NSArray *)v110 addObject:v84];

          v85 = MEMORY[0x1E696ACD8];
          v13 = _NSDictionaryOfVariableBindings(&cfstr_Theonlybutton.isa, v8, 0);
          v54 = [v85 constraintsWithVisualFormat:@"V:|[theOnlyButton]|" options:0 metrics:0 views:v13];
          [(NSArray *)v110 addObjectsFromArray:v54];
        }
      }

      v3 = 0x1E696A000;
      goto LABEL_42;
    }

    v14 = [(EKUIEventStatusButtonsView *)v2 shouldUseVerticalLayout];
    v15 = [(NSArray *)v2->_buttons firstObject];
    v16 = [(NSArray *)v2->_buttons lastObject];
    v17 = MEMORY[0x1E696ACD8];
    v108 = v16;
    v109 = v2;
    if (v14)
    {
      v18 = v16;
      firstValue = v15;
      v19 = _NSDictionaryOfVariableBindings(&cfstr_Topbutton.isa, v15, 0);
      v20 = [v17 constraintsWithVisualFormat:@"V:|[topButton]" options:0 metrics:0 views:v19];
      [(NSArray *)v110 addObjectsFromArray:v20];

      v21 = MEMORY[0x1E696ACD8];
      v22 = v18;
      v23 = v110;
      v24 = _NSDictionaryOfVariableBindings(&cfstr_Bottombutton.isa, v22, 0);
      v25 = [v21 constraintsWithVisualFormat:@"V:[bottomButton]|" options:0 metrics:0 views:v24];
      [(NSArray *)v110 addObjectsFromArray:v25];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v26 = v2->_buttons;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v111 objects:v121 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *v112;
        do
        {
          v31 = 0;
          v32 = v29;
          do
          {
            if (*v112 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v111 + 1) + 8 * v31);
            v34 = [*(v3 + 3288) constraintWithItem:v33 attribute:5 relatedBy:0 toItem:v2 attribute:5 multiplier:1.0 constant:0.0];
            [(NSArray *)v23 addObject:v34];

            v35 = [*(v3 + 3288) constraintWithItem:v2 attribute:6 relatedBy:1 toItem:v33 attribute:6 multiplier:1.0 constant:0.0];
            [(NSArray *)v23 addObject:v35];

            if (v32)
            {
              v36 = [v33 firstBaselineAnchor];
              v37 = [v32 lastBaselineAnchor];
              v38 = [v36 constraintEqualToSystemSpacingBelowAnchor:v37 multiplier:1.0];

              LODWORD(v39) = 1144750080;
              [v38 setPriority:v39];
              [(NSArray *)v23 addObject:v38];
              v40 = [v33 firstBaselineAnchor];
              v41 = [v32 lastBaselineAnchor];
              v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:40.0];
              [(NSArray *)v110 addObject:v42];

              v23 = v110;
              v2 = v109;

              v3 = 0x1E696A000;
            }

            v29 = v33;

            ++v31;
            v32 = v29;
          }

          while (v28 != v31);
          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v111 objects:v121 count:16];
        }

        while (v28);
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_42;
    }

    v56 = _NSDictionaryOfVariableBindings(&cfstr_Leadingbutton.isa, v15, 0);
    v57 = [v17 constraintsWithVisualFormat:@"V:|[leadingButton]|" options:0 metrics:0 views:v56];
    [(NSArray *)v110 addObjectsFromArray:v57];

    if (v7 >= 3)
    {
      v58 = [MEMORY[0x1E696ACD8] constraintWithItem:v15 attribute:5 relatedBy:0 toItem:v2 attribute:5 multiplier:1.0 constant:0.0];
      v59 = v2->_leadingMarginConstraint;
      v2->_leadingMarginConstraint = v58;

      [(NSArray *)v110 addObject:v2->_leadingMarginConstraint];
      v60 = [MEMORY[0x1E696ACD8] constraintWithItem:v108 attribute:6 relatedBy:0 toItem:v2 attribute:6 multiplier:1.0 constant:0.0];
      v61 = v2->_trailingMarginConstraint;
      v2->_trailingMarginConstraint = v60;

      [(NSArray *)v110 addObject:v2->_trailingMarginConstraint];
      v62 = v7 - 2;
      v63 = [(NSArray *)v2->_buttons objectAtIndexedSubscript:1];
      v64 = [(NSArray *)v2->_buttons objectAtIndexedSubscript:v62];
      v65 = MEMORY[0x1E696ACD8];
      v66 = _NSDictionaryOfVariableBindings(&cfstr_Firstmiddlebut.isa, v63, 0);
      v67 = [v65 constraintsWithVisualFormat:@"V:|[firstMiddleButton]|" options:0 metrics:&unk_1F4F32900 views:v66];
      [(NSArray *)v110 addObjectsFromArray:v67];

      if (v2->_inboxStyle)
      {
        v3 = 0x1E696A000uLL;
        v68 = [MEMORY[0x1E696ACD8] constraintWithItem:v63 attribute:9 relatedBy:0 toItem:v2 attribute:9 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v68];

        LODWORD(v68) = MEMORY[0x1D38B98D0]();
        v69 = MEMORY[0x1E696ACD8];
        v70 = _NSDictionaryOfVariableBindings(&cfstr_LeadingbuttonT.isa, v15, v108, v63, 0);
        if (v68)
        {
          v71 = [v69 constraintsWithVisualFormat:@"H:|[leadingButton(==firstMiddleButton)]-(minInboxStylePadding)-[firstMiddleButton(==trailingButton)]-(minInboxStylePadding)-[trailingButton]|" options:2048 metrics:? views:?];
          [(NSArray *)v110 addObjectsFromArray:v71];

          v72 = MEMORY[0x1E696ACD8];
          v73 = _NSDictionaryOfVariableBindings(&cfstr_Leadingbutton.isa, v15, 0);
          v74 = [v72 constraintsWithVisualFormat:@"V:|[leadingButton]|" options:0 metrics:&unk_1F4F32900 views:v73];
          [(NSArray *)v110 addObjectsFromArray:v74];

          v3 = 0x1E696A000uLL;
          v75 = MEMORY[0x1E696ACD8];
          v70 = _NSDictionaryOfVariableBindings(&cfstr_Trailingbutton.isa, v108, 0);
          v76 = @"V:|[trailingButton]|";
          v77 = v75;
          v78 = 0;
        }

        else
        {
          v76 = @"H:|[leadingButton]-(>=minInboxStylePadding)-[firstMiddleButton]-(>=minInboxStylePadding)-[trailingButton]|";
          v77 = v69;
          v78 = 2048;
        }

        v94 = [v77 constraintsWithVisualFormat:v76 options:v78 metrics:&unk_1F4F32900 views:v70];
        [(NSArray *)v110 addObjectsFromArray:v94];
      }

      else
      {
        v70 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [(EKUIEventStatusButtonsView *)v2 addLayoutGuide:v70];
        v90 = [MEMORY[0x1E696ACD8] constraintWithItem:v70 attribute:9 relatedBy:0 toItem:v2 attribute:9 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v90];

        v91 = MEMORY[0x1E696ACD8];
        v92 = _NSDictionaryOfVariableBindings(&cfstr_LeadingbuttonT_0.isa, v15, v108, v70, 0);
        v93 = [v91 constraintsWithVisualFormat:@"H:[leadingButton]-(>=minPadding)-[centerGuide]-(>=minPadding)-[trailingButton]" options:24 metrics:&unk_1F4F32900 views:v92];
        [(NSArray *)v110 addObjectsFromArray:v93];

        v94 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v95 = [(EKUIEventStatusButtonsView *)v2 _horizontalConstraintStringForMiddleButtonsStartingAt:1 endingAt:v62 resultingViews:v94];
        v3 = 0x1E696A000uLL;
        v96 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v95 options:24 metrics:&unk_1F4F32900 views:v94];
        [(NSArray *)v110 addObjectsFromArray:v96];

        v97 = [MEMORY[0x1E696ACD8] constraintWithItem:v63 attribute:5 relatedBy:0 toItem:v70 attribute:5 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v97];

        v98 = [MEMORY[0x1E696ACD8] constraintWithItem:v64 attribute:6 relatedBy:0 toItem:v70 attribute:6 multiplier:1.0 constant:0.0];
        [(NSArray *)v110 addObject:v98];
      }

      v86 = v108;
      goto LABEL_41;
    }

    v3 = 0x1E696A000uLL;
    v86 = v108;
    if (v2->_inboxStyle)
    {
      v87 = MEMORY[0x1D38B98D0]();
      v88 = MEMORY[0x1E696ACD8];
      if (!v87)
      {
        v63 = [MEMORY[0x1E696ACD8] constraintWithItem:v108 attribute:9 relatedBy:0 toItem:v2 attribute:9 multiplier:1.0 constant:0.0];
        LODWORD(v104) = 1144750080;
        [v63 setPriority:v104];
        [(NSArray *)v110 addObject:v63];
        v105 = MEMORY[0x1E696ACD8];
        v64 = _NSDictionaryOfVariableBindings(&cfstr_LeadingbuttonT_1.isa, v15, v108, 0);
        v106 = [v105 constraintsWithVisualFormat:@"H:|[leadingButton]-(>=minInboxStylePadding)-[trailingButton]" options:24 metrics:&unk_1F4F32900 views:v64];
        [(NSArray *)v110 addObjectsFromArray:v106];

        goto LABEL_41;
      }

      v63 = _NSDictionaryOfVariableBindings(&cfstr_LeadingbuttonT_1.isa, v15, v108, 0);
      v64 = [v88 constraintsWithVisualFormat:@"H:|[leadingButton(==trailingButton)]-(minInboxStylePadding)-[trailingButton]|" options:24 metrics:&unk_1F4F32900 views:v63];
      v89 = v110;
    }

    else
    {
      v99 = MEMORY[0x1E696ACD8];
      v63 = _NSDictionaryOfVariableBindings(&cfstr_LeadingbuttonT_1.isa, v15, v108, 0);
      v64 = [v99 constraintsWithVisualFormat:@"H:|-(==minPadding)-[leadingButton]-(>=minPadding)-[trailingButton]-(==minPadding)-|" options:24 metrics:&unk_1F4F32900 views:v63];
      v89 = v110;
    }

    [(NSArray *)v89 addObjectsFromArray:v64];
LABEL_41:

LABEL_42:
    v100 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v101 = v100;
      v102 = [(EKUIEventStatusButtonsView *)v2 delegate];
      *buf = 136315650;
      v116 = "[EKUIEventStatusButtonsView _setupConstraints]";
      v117 = 2112;
      v118 = v110;
      v119 = 2112;
      v120 = v102;
      _os_log_impl(&dword_1D3400000, v101, OS_LOG_TYPE_DEBUG, "%s: Activating constraints [%@] for status button view with delegate [%@]", buf, 0x20u);

      v3 = 0x1E696A000uLL;
    }

    [*(v3 + 3288) activateConstraints:v110];
    v103 = v2->_currentConstraints;
    v2->_currentConstraints = v110;
  }
}

- (id)_horizontalConstraintStringForMiddleButtonsStartingAt:(unint64_t)a3 endingAt:(unint64_t)a4 resultingViews:(id)a5
{
  v8 = a5;
  if (a3 > a4)
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = 0;
      v10 = "endIndex was greater than startIndex when trying to generate the constraint string for the event status buttons";
      v11 = &v17;
LABEL_12:
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ([(NSArray *)self->_buttons count]<= a4)
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "endIndex was greater than the number of buttons when trying to generate the constraint string for the event status buttons";
      v11 = buf;
      goto LABEL_12;
    }

LABEL_13:
    v12 = &stru_1F4EF6790;
    goto LABEL_14;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"H:"];
  do
  {
    v13 = [(NSArray *)self->_buttons objectAtIndexedSubscript:a3];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"button%lu", a3];
    [v8 setObject:v13 forKey:v14];
    [(__CFString *)v12 appendFormat:@"[%@]", v14];
    if (a4 != a3)
    {
      [(__CFString *)v12 appendString:@"-(>=minPadding)-"];
    }

    ++a3;
  }

  while (a3 <= a4);
LABEL_14:

  return v12;
}

- (void)_buttonTappedInternal:(id)a3 appliesToAll:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NSArray *)self->_buttons indexOfObject:v6]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EKUIEventStatusButtonsView *)self setSelectedAction:[(EKUIEventStatusButtonsView *)self _actionForButton:v6]];
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = v7;
      v10 = [v8 numberWithInteger:{-[EKUIEventStatusButtonsView selectedAction](self, "selectedAction")}];
      v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEFAULT, "Selected action: [%{public}@], appliesToAll: %{public}@.", buf, 0x16u);
    }

    v12 = [(EKUIEventStatusButtonsView *)self delegate];
    v13 = [(EKUIEventStatusButtonsView *)self selectedAction];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__EKUIEventStatusButtonsView__buttonTappedInternal_appliesToAll___block_invoke;
    v14[3] = &unk_1E843EC60;
    v14[4] = self;
    [v12 eventStatusButtonsView:self didSelectAction:v13 sourceView:v6 sourceRect:v4 appliesToAll:v14 ifCancelled:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  }
}

- (void)_updateSelectionToButton:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(EKUIEventStatusButtonsView *)self disableButtonHighlights])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_buttons;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v19 + 1) + 8 * v9) setSelected:*(*(&v19 + 1) + 8 * v9) == v4];
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    if (MEMORY[0x1D38B98D0]())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = self->_buttons;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * v14++) setNeedsUpdateConfiguration];
          }

          while (v12 != v14);
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }
}

- (int64_t)_buttonIndexForAction:(int64_t)a3
{
  if (![(NSArray *)self->_buttons count])
  {
    return -1;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(NSArray *)self->_buttons objectAtIndexedSubscript:v5];
    v7 = [v6 tag];

    if (v7 == a3)
    {
      break;
    }

    if (++v5 >= [(NSArray *)self->_buttons count])
    {
      return -1;
    }
  }

  return v5;
}

- (id)buttonForAction:(int64_t)a3
{
  v4 = [(EKUIEventStatusButtonsView *)self _buttonIndexForAction:a3];
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_buttons objectAtIndexedSubscript:v4];
  }

  return v5;
}

+ (id)buttonTitleForAction:(int64_t)a3
{
  v4 = 0;
  v16 = *MEMORY[0x1E69E9840];
  if (a3 <= 1023)
  {
    if (a3 > 15)
    {
      if (a3 > 127)
      {
        switch(a3)
        {
          case 128:
            v5 = EventKitUIBundle();
            v6 = v5;
            v7 = @"Ignore";
            goto LABEL_52;
          case 256:
            v5 = EventKitUIBundle();
            v6 = v5;
            v7 = @"View Comment";
            goto LABEL_52;
          case 512:
            v5 = EventKitUIBundle();
            v6 = v5;
            v7 = @"View Comments";
            goto LABEL_52;
        }
      }

      else
      {
        switch(a3)
        {
          case 16:
            v5 = EventKitUIBundle();
            v6 = v5;
            v7 = @"Delete Event";
            goto LABEL_52;
          case 32:
            v5 = EventKitUIBundle();
            v6 = v5;
            v7 = @"OK";
            goto LABEL_52;
          case 64:
            v5 = EventKitUIBundle();
            v6 = v5;
            v7 = @"Join Calendar";
            goto LABEL_52;
        }
      }

      goto LABEL_57;
    }

    if (a3 <= 3)
    {
      if (!a3)
      {
        goto LABEL_54;
      }

      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v5 = EventKitUIBundle();
          v6 = v5;
          v7 = @"Maybe";
LABEL_52:
          v8 = &stru_1F4EF6790;
          goto LABEL_53;
        }

        goto LABEL_57;
      }

LABEL_40:
      v5 = EventKitUIBundle();
      v6 = v5;
      v7 = @"Accept";
      goto LABEL_52;
    }

    if (a3 != 4)
    {
      if (a3 == 7)
      {
        goto LABEL_54;
      }

      if (a3 == 8)
      {
        v5 = EventKitUIBundle();
        v6 = v5;
        v7 = @"Add To Calendar";
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    v5 = EventKitUIBundle();
    v6 = v5;
    v7 = @"Decline";
    v8 = @"Decline";
LABEL_53:
    v4 = [v5 localizedStringForKey:v7 value:v8 table:0];

    goto LABEL_54;
  }

  if (a3 >= 0x8000)
  {
    if (a3 >= 0x40000)
    {
      switch(a3)
      {
        case 0x40000:
          v5 = EventKitUIBundle();
          v6 = v5;
          v7 = @"Unsubscribe from This Calendar";
          goto LABEL_52;
        case 0x80000:
          v5 = EventKitUIBundle();
          v6 = v5;
          v7 = @"Delete Reminder";
          goto LABEL_52;
        case 0x100000:
          v5 = EventKitUIBundle();
          v6 = v5;
          v7 = @"Remove Event";
          goto LABEL_52;
      }

      goto LABEL_57;
    }

    if (a3 == 0x8000)
    {
      v5 = EventKitUIBundle();
      v6 = v5;
      v7 = @"Cancel Proposed Time";
      goto LABEL_52;
    }

    if (a3 == 0x10000)
    {
      v5 = EventKitUIBundle();
      v6 = v5;
      v7 = @"Report Junk";
      goto LABEL_52;
    }

    if (a3 != 0x20000)
    {
      goto LABEL_57;
    }

    v5 = EventKitUIBundle();
    v6 = v5;
    v7 = @"DeclineSharedCalendar";
    v8 = @"Decline";
    goto LABEL_53;
  }

  if (a3 > 4095)
  {
    if (a3 == 4096)
    {
      goto LABEL_40;
    }

    if (a3 != 0x2000)
    {
      if (a3 == 0x4000)
      {
        v5 = EventKitUIBundle();
        v6 = v5;
        v7 = @"Reply";
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    v5 = EventKitUIBundle();
    v6 = v5;
    v7 = @"Ignore Proposed Time";
    v8 = @"Ignore";
    goto LABEL_53;
  }

  switch(a3)
  {
    case 1024:
      v5 = EventKitUIBundle();
      v6 = v5;
      v7 = @"View Event";
      goto LABEL_52;
    case 1792:
      goto LABEL_54;
    case 2048:
      v5 = EventKitUIBundle();
      v6 = v5;
      v7 = @"Update Event";
      goto LABEL_52;
  }

LABEL_57:
  v10 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = v10;
    v13 = [v11 numberWithInteger:a3];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_ERROR, "invalid action passed to buttonTitleForAction: %@", &v14, 0xCu);
  }

  v4 = 0;
LABEL_54:

  return v4;
}

+ (id)buttonAccessibilityIdentifierStringForAction:(int64_t)a3
{
  result = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (a3 <= 1023)
  {
    if (a3 <= 15)
    {
      if (a3 > 3)
      {
        switch(a3)
        {
          case 4:
            return @"decline-button";
          case 7:
            return result;
          case 8:
            return @"add-to-calendar-button";
        }

        goto LABEL_50;
      }

      if (!a3)
      {
        return result;
      }

      if (a3 != 1)
      {
        if (a3 == 2)
        {
          return @"maybe-button";
        }

        goto LABEL_50;
      }

      return @"accept-button";
    }

    if (a3 <= 127)
    {
      switch(a3)
      {
        case 16:
          return @"delete-event-button";
        case 32:
          return @"ok-button";
        case 64:
          return @"join-calendar-button";
      }

      goto LABEL_50;
    }

    if (a3 != 128)
    {
      if (a3 == 256 || a3 == 512)
      {
        return @"view-comment-button";
      }

      goto LABEL_50;
    }

    return @"ignore-button";
  }

  if (a3 < 0x8000)
  {
    if (a3 <= 4095)
    {
      switch(a3)
      {
        case 1024:
          return @"view-event-button";
        case 1792:
          return result;
        case 2048:
          return @"update-event-button";
      }

      goto LABEL_50;
    }

    if (a3 == 4096)
    {
      return @"accept-button";
    }

    if (a3 != 0x2000)
    {
      if (a3 == 0x4000)
      {
        return @"reply-button";
      }

      goto LABEL_50;
    }

    return @"ignore-button";
  }

  if (a3 >= 0x40000)
  {
    switch(a3)
    {
      case 0x40000:
        return @"unsubscribe-calendar-button";
      case 0x80000:
        return @"delete-reminder-button";
      case 0x100000:
        return @"remove-event-button";
    }
  }

  else
  {
    switch(a3)
    {
      case 0x8000:
        return @"cancel-proposed-time-button";
      case 0x10000:
        return @"report-junk-button";
      case 0x20000:
        return @"decline-shared-calendar-button";
    }
  }

LABEL_50:
  v5 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithInteger:a3];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "invalid action passed to buttonTitleForAction: %@", &v9, 0xCu);
  }

  return 0;
}

+ (id)_appliesToAllTitleForAction:(int64_t)a3
{
  v4 = 0;
  v16 = *MEMORY[0x1E69E9840];
  if (a3 > 1023)
  {
    if (a3 >= 0x8000)
    {
      if (a3 >= 0x40000)
      {
        if (a3 == 0x40000 || a3 == 0x80000 || a3 == 0x100000)
        {
          goto LABEL_47;
        }
      }

      else if (a3 == 0x8000 || a3 == 0x10000 || a3 == 0x20000)
      {
        goto LABEL_47;
      }
    }

    else if (a3 > 4095)
    {
      if (a3 == 4096 || a3 == 0x2000 || a3 == 0x4000)
      {
        goto LABEL_47;
      }
    }

    else if (a3 == 1024 || a3 == 1792 || a3 == 2048)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  if (a3 <= 15)
  {
    if (a3 > 3)
    {
      if ((a3 - 7) < 2)
      {
        goto LABEL_47;
      }

      if (a3 == 4)
      {
        v5 = EventKitUIBundle();
        v6 = v5;
        v7 = @"Decline All";
        goto LABEL_45;
      }
    }

    else
    {
      switch(a3)
      {
        case 0:
          goto LABEL_47;
        case 1:
          v5 = EventKitUIBundle();
          v6 = v5;
          v7 = @"Accept All";
          goto LABEL_45;
        case 2:
          v5 = EventKitUIBundle();
          v6 = v5;
          v7 = @"Maybe All";
LABEL_45:
          v12 = &stru_1F4EF6790;
          goto LABEL_46;
      }
    }

    goto LABEL_38;
  }

  if (a3 <= 127)
  {
    switch(a3)
    {
      case 16:
        v5 = EventKitUIBundle();
        v6 = v5;
        v7 = @"Delete All - inbox button";
        v12 = @"Delete All";
LABEL_46:
        v4 = [v5 localizedStringForKey:v7 value:v12 table:0];

        goto LABEL_47;
      case 32:
        v5 = EventKitUIBundle();
        v6 = v5;
        v7 = @"OK All";
        goto LABEL_45;
      case 64:
        goto LABEL_47;
    }

    goto LABEL_38;
  }

  if (a3 == 128)
  {
    v5 = EventKitUIBundle();
    v6 = v5;
    v7 = @"Ignore All";
    goto LABEL_45;
  }

  if (a3 != 256 && a3 != 512)
  {
LABEL_38:
    v8 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = v8;
      v11 = [v9 numberWithInteger:a3];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "invalid action passed to buttonTitleForAction: %@", &v14, 0xCu);
    }

    v4 = 0;
  }

LABEL_47:

  return v4;
}

+ (id)imageForAction:(int64_t)a3 selected:(BOOL)a4
{
  v5 = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a3 <= 1023)
  {
    if (a3 <= 15)
    {
      if (a3 <= 3)
      {
        switch(a3)
        {
          case 0:
            goto LABEL_55;
          case 1:
            v6 = MEMORY[0x1E69DCAB8];
            if (a4)
            {
              v7 = @"checkmark.circle.fill";
            }

            else
            {
              v7 = @"checkmark.circle";
            }

            goto LABEL_54;
          case 2:
            v6 = MEMORY[0x1E69DCAB8];
            if (a4)
            {
              v7 = @"questionmark.circle.fill";
            }

            else
            {
              v7 = @"questionmark.circle";
            }

            goto LABEL_54;
        }

        goto LABEL_49;
      }

      if (a3 != 4)
      {
        if (a3 == 7)
        {
          goto LABEL_55;
        }

        if (a3 == 8)
        {
          v6 = MEMORY[0x1E69DCAB8];
          v7 = @"plus";
          goto LABEL_54;
        }

        goto LABEL_49;
      }

LABEL_43:
      v6 = MEMORY[0x1E69DCAB8];
      if (a4)
      {
        v7 = @"xmark.circle.fill";
      }

      else
      {
        v7 = @"xmark.circle";
      }

      goto LABEL_54;
    }

    if (a3 <= 127)
    {
      if (a3 != 16)
      {
        if (a3 != 32 && a3 != 64)
        {
          goto LABEL_49;
        }

LABEL_42:
        v6 = MEMORY[0x1E69DCAB8];
        v7 = @"checkmark";
        goto LABEL_54;
      }

LABEL_40:
      v6 = MEMORY[0x1E69DCAB8];
      v7 = @"trash";
      goto LABEL_54;
    }

    if (a3 != 128)
    {
      if (a3 == 256 || a3 == 512)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (a3 >= 0x8000)
  {
    if (a3 >= 0x40000)
    {
      if (a3 != 0x40000 && a3 != 0x80000 && a3 != 0x100000)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (a3 != 0x8000)
    {
      if (a3 == 0x10000)
      {
        v6 = MEMORY[0x1E69DCAB8];
        v7 = @"bin.xmark";
        goto LABEL_54;
      }

      if (a3 != 0x20000)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

LABEL_41:
    v6 = MEMORY[0x1E69DCAB8];
    v7 = @"xmark";
    goto LABEL_54;
  }

  if (a3 > 4095)
  {
    if (a3 == 4096)
    {
      goto LABEL_42;
    }

    if (a3 != 0x2000)
    {
      if (a3 == 0x4000)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (a3 == 1024 || a3 == 1792)
  {
    goto LABEL_55;
  }

  if (a3 == 2048)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = @"square.and.arrow.down";
LABEL_54:
    v5 = [v6 systemImageNamed:v7];
    goto LABEL_55;
  }

LABEL_49:
  v8 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = v8;
    v11 = [v9 numberWithInteger:a3];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "invalid action passed to imageForAction: %@", &v13, 0xCu);
  }

  v5 = 0;
LABEL_55:

  return v5;
}

+ (BOOL)isActionDestructive:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v4) = 1;
  if (a3 > 1023)
  {
    if (a3 >= 0x8000)
    {
      if (a3 >= 0x40000)
      {
        if (a3 == 0x40000 || a3 == 0x80000 || a3 == 0x100000)
        {
          return v4;
        }
      }

      else
      {
        if (a3 == 0x8000 || a3 == 0x10000)
        {
          return v4;
        }

        if (a3 == 0x20000)
        {
          goto LABEL_27;
        }
      }
    }

    else if (a3 > 4095)
    {
      if (a3 == 4096 || a3 == 0x2000 || a3 == 0x4000)
      {
        goto LABEL_27;
      }
    }

    else if (a3 == 1024 || a3 == 1792 || a3 == 2048)
    {
      goto LABEL_27;
    }
  }

  else if (a3 <= 127)
  {
    if ((a3 - 4) <= 0x3C)
    {
      if (((1 << (a3 - 4)) & 0x1000000010000019) != 0)
      {
        goto LABEL_27;
      }

      if (a3 == 16)
      {
        return v4;
      }
    }

    if (a3 < 3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a3 == 128)
    {
      return v4;
    }

    if (a3 == 256 || a3 == 512)
    {
      goto LABEL_27;
    }
  }

  v5 = kEKUILogHandle;
  v4 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithInteger:a3];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "invalid action passed to isActionDestructive: %@", &v10, 0xCu);

LABEL_27:
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)labelColorForAction:(int64_t)a3 selected:(BOOL)a4
{
  if (a3 <= 1023)
  {
    if (a3 > 127)
    {
      if (a3 != 128 && a3 != 256 && a3 != 512)
      {
        goto LABEL_34;
      }

LABEL_26:
      if (a4)
      {
        [MEMORY[0x1E69DC888] systemWhiteColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] labelColor];
      }
      a1 = ;
      goto LABEL_34;
    }

    if ((a3 - 4) > 0x3C)
    {
      goto LABEL_21;
    }

    if (((1 << (a3 - 4)) & 0x1000000010000019) != 0)
    {
      goto LABEL_26;
    }

    if (a3 != 16)
    {
LABEL_21:
      if (a3 >= 3)
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }

LABEL_33:
    a1 = [MEMORY[0x1E69DC888] systemRedColor];
    goto LABEL_34;
  }

  if (a3 >= 0x8000)
  {
    if (a3 >= 0x40000)
    {
      if (a3 == 0x40000 || a3 == 0x100000 || a3 == 0x80000)
      {
        goto LABEL_33;
      }
    }

    else if (a3 == 0x8000 || a3 == 0x10000 || a3 == 0x20000)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a3 > 4095)
    {
      if (a3 == 4096)
      {
        goto LABEL_26;
      }

      if (a3 != 0x2000)
      {
        if (a3 != 0x4000)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      }

      goto LABEL_33;
    }

    if (a3 == 1024 || a3 == 1792 || a3 == 2048)
    {
      goto LABEL_26;
    }
  }

LABEL_34:

  return a1;
}

- (id)backgroundColorForAction:(int64_t)a3 selected:(BOOL)a4 inboxStyle:(BOOL)a5 inPadSidebar:(BOOL)a6
{
  if (!a4)
  {
    v6 = MEMORY[0x1E69DC888];
    if (a5)
    {
      self = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3 > 1023)
  {
    if (a3 >= 0x8000)
    {
      if (a3 >= 0x40000)
      {
        if (a3 == 0x40000 || a3 == 0x80000 || a3 == 0x100000)
        {
          goto LABEL_6;
        }
      }

      else if (a3 == 0x8000 || a3 == 0x10000 || a3 == 0x20000)
      {
        goto LABEL_6;
      }
    }

    else if (a3 > 4095)
    {
      if (a3 == 4096 || a3 == 0x2000 || a3 == 0x4000)
      {
        goto LABEL_6;
      }
    }

    else if (a3 == 1024 || a3 == 1792 || a3 == 2048)
    {
      goto LABEL_6;
    }
  }

  else if (a3 > 127)
  {
    if (a3 == 128 || a3 == 256 || a3 == 512)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if ((a3 - 2) <= 0x3E)
    {
      if (((1 << (a3 - 2)) & 0x4000000040004060) != 0)
      {
LABEL_6:
        v6 = MEMORY[0x1E69DC888];
LABEL_9:
        self = [v6 clearColor];
        goto LABEL_10;
      }

      if (a3 == 2)
      {
        self = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_10;
      }

      if (a3 == 4)
      {
        self = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_10;
      }
    }

    if (!a3)
    {
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      self = [MEMORY[0x1E69DC888] systemGreenColor];
    }
  }

LABEL_10:

  return self;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  buttons = self->_buttons;
  v6 = a4;
  v7 = [(NSArray *)buttons firstObject];
  v8 = [v7 titleLabel];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 location];
  v18 = v17;
  v20 = v19;

  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  v24.x = v18;
  v24.y = v20;
  if (CGRectContainsPoint(v25, v24))
  {
    v21 = [MEMORY[0x1E69DCDC0] regionWithRect:0 identifier:{v10, v12, v14, v16}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [(NSArray *)self->_buttons firstObject:a3];
  v5 = [v4 titleLabel];
  [v5 frame];
  v17 = CGRectInset(v16, -6.0, -6.0);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v5];
  v11 = [MEMORY[0x1E69DCD98] effectWithPreview:v10];
  v12 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:{x, y, width, height}];
  v13 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:v12];

  return v13;
}

- (void)setTextSizeMode:(int64_t)a3
{
  if (self->_textSizeMode != a3)
  {
    self->_textSizeMode = a3;
    [(EKUIEventStatusButtonsView *)self _defaultFontSizeForButtons];
    [(EKUIEventStatusButtonsView *)self _updateButtonFontsWithSize:?];
    if (MEMORY[0x1D38B98D0]([(EKUIEventStatusButtonsView *)self setNeedsLayout]))
    {

      [(EKUIEventStatusButtonsView *)self _setupButtons];
    }
  }
}

- (UIButton)leadingButton
{
  v3 = [(NSArray *)self->_buttons count];
  if (v3)
  {
    v3 = [(NSArray *)self->_buttons objectAtIndex:0];
  }

  return v3;
}

- (UIButton)centerButton
{
  v3 = [(NSArray *)self->_buttons count];
  if (v3)
  {
    v3 = [(NSArray *)self->_buttons objectAtIndex:([(NSArray *)self->_buttons count]>> 1)];
  }

  return v3;
}

- (UIButton)trailingButton
{
  v3 = [(NSArray *)self->_buttons count];
  if (v3)
  {
    v3 = [(NSArray *)self->_buttons lastObject];
  }

  return v3;
}

- (void)setActions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 isEqualToArray:self->_actions] & 1) == 0)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      actions = self->_actions;
      v8 = 136315906;
      v9 = "[EKUIEventStatusButtonsView setActions:]";
      v10 = 2112;
      v11 = self;
      v12 = 2112;
      v13 = actions;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "%s: Action set on status buttons [%@] changed from old actions [%@] to new actions [%@]", &v8, 0x2Au);
    }

    objc_storeStrong(&self->_actions, a3);
    [(EKUIEventStatusButtonsView *)self _setupButtons];
  }
}

- (void)setButtonsTouchInsets:(UIEdgeInsets)a3
{
  v17 = *MEMORY[0x1E69E9840];
  p_buttonsTouchInsets = &self->_buttonsTouchInsets;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_buttonsTouchInsets.top, v4), vceqq_f64(*&self->_buttonsTouchInsets.bottom, v5)))) & 1) == 0)
  {
    p_buttonsTouchInsets->top = a3.top;
    self->_buttonsTouchInsets.left = a3.left;
    self->_buttonsTouchInsets.bottom = a3.bottom;
    self->_buttonsTouchInsets.right = a3.right;
    [(EKUIEventStatusButtonsView *)self _setTouchInsets:?];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_buttons;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) _setTouchInsets:{p_buttonsTouchInsets->top, p_buttonsTouchInsets->left, p_buttonsTouchInsets->bottom, p_buttonsTouchInsets->right, v12}];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setSelectedAction:(int64_t)a3
{
  if (self->_selectedAction != a3)
  {
    self->_selectedAction = a3;
    v5 = [(EKUIEventStatusButtonsView *)self buttonForAction:?];
    [(EKUIEventStatusButtonsView *)self _updateSelectionToButton:v5];

    [(EKUIEventStatusButtonsView *)self setNeedsLayout];
  }
}

- (void)setDisableButtonHighlights:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_disableButtonHighlights != a3)
  {
    self->_disableButtonHighlights = a3;
    if (a3)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = self->_buttons;
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v8 + 1) + 8 * v7++) setSelected:{0, v8}];
          }

          while (v5 != v7);
          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

- (void)setShouldUseVerticalLayout:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_shouldUseVerticalLayout != a3)
  {
    v3 = a3;
    self->_shouldUseVerticalLayout = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_buttons;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      if (v3)
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v10++) setContentHorizontalAlignment:{v9, v11}];
        }

        while (v7 != v10);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(EKUIEventStatusButtonsView *)self _setupConstraints];
  }
}

- (void)_updateButtonFontsWithSize:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_layoutButtons)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_buttons;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 titleLabel];
          v12 = -[EKUIEventStatusButtonsView _fontWithSize:selected:](self, "_fontWithSize:selected:", [v10 isSelected], a3);
          [v11 setFont:v12];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updateButtonFonts:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_layoutButtons)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_buttons;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) titleLabel];
          [v10 setFont:v4];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updateButtonFontsWithOverrideSize:(double)a3
{
  v5 = [(EKUIEventStatusButtonsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(EKUIEventStatusButtonsView *)self delegate];
    v8 = [v7 eventStatusButtonsViewButtonFont:self];
    v9 = [v8 fontWithSize:a3];

    [(EKUIEventStatusButtonsView *)self _updateButtonFonts:v9];
  }

  else
  {

    [(EKUIEventStatusButtonsView *)self _updateButtonFontsWithSize:a3];
  }
}

- (double)_defaultFontSizeForButtons
{
  result = 17.0;
  if (!self->_textSizeMode)
  {
    return 13.0;
  }

  return result;
}

- (id)_fontWithSize:(double)a3 selected:(BOOL)a4
{
  if (MEMORY[0x1D38B98D0](self, a2))
  {
    if (a4)
    {
      v6 = [MEMORY[0x1E69DB878] systemFontOfSize:a3 weight:*MEMORY[0x1E69DB970]];
      goto LABEL_7;
    }
  }

  else if (a4)
  {
    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:a3];
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:a3];
LABEL_7:

  return v6;
}

- (double)_updateFontFromDelegate
{
  v3 = [(EKUIEventStatusButtonsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = [(EKUIEventStatusButtonsView *)self delegate];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 eventStatusButtonsViewButtonFont:self];

    [(EKUIEventStatusButtonsView *)self _updateButtonFonts:v7];
    [v7 pointSize];
    v9 = v8;
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0 || (-[EKUIEventStatusButtonsView delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), [v11 eventStatusButtonsViewButtonFontSize:self], v9 = v12, v11, v9 == 0.0))
    {
      [(EKUIEventStatusButtonsView *)self _defaultFontSizeForButtons];
      v9 = v13;
    }

    [(EKUIEventStatusButtonsView *)self _updateButtonFontsWithSize:v9];
  }

  return v9;
}

- (double)_buttonFontSizeFromDelegate
{
  if (self->_layoutButtons)
  {
    v3 = [(EKUIEventStatusButtonsView *)self delegate];
    v4 = objc_opt_respondsToSelector();

    v5 = [(EKUIEventStatusButtonsView *)self delegate];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 eventStatusButtonsViewButtonFont:self];

      [v7 pointSize];
      v9 = v8;

      return v9;
    }

    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(EKUIEventStatusButtonsView *)self delegate];
      [v11 eventStatusButtonsViewButtonFontSize:self];
      v9 = v12;

      return v9;
    }
  }

  [(EKUIEventStatusButtonsView *)self _defaultFontSizeForButtons];
  return result;
}

- (void)updateConstraints
{
  if (self->_layoutButtons)
  {
    leadingMarginConstraint = self->_leadingMarginConstraint;
    if (leadingMarginConstraint)
    {
      [(NSLayoutConstraint *)leadingMarginConstraint setConstant:self->_outsideMargin];
    }

    trailingMarginConstraint = self->_trailingMarginConstraint;
    if (trailingMarginConstraint)
    {
      [(NSLayoutConstraint *)trailingMarginConstraint setConstant:-self->_outsideMargin];
    }
  }

  v5.receiver = self;
  v5.super_class = EKUIEventStatusButtonsView;
  [(EKUIEventStatusButtonsView *)&v5 updateConstraints];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = EKUIEventStatusButtonsView;
  [(EKUIEventStatusButtonsView *)&v33 layoutSubviews];
  if (!self->_layoutButtons)
  {
    return;
  }

  [(EKUIEventStatusButtonsView *)self _updateFontFromDelegate];
  v4 = v3;
  v5 = [(NSArray *)self->_buttons count];
  v6 = 0.0;
  if (![(EKUIEventStatusButtonsView *)self shouldUseVerticalLayout])
  {
    if (!self->_inboxStyle)
    {
      v7 = v4;
LABEL_22:
      v6 = 0.0;
      v26 = 0.0;
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v28 = [(NSArray *)self->_buttons objectAtIndexedSubscript:i];
          v26 = v26 + _CachedSizeForButton(v28);
        }
      }

      [(EKUIEventStatusButtonsView *)self bounds];
      if (v26 + v5 * 46.0 < v29 && v5 > 2)
      {
        [(EKUIEventStatusButtonsView *)self bounds];
        CalRoundToScreenScale((v31 - v26 + v5 * -46.0) * 0.5);
        v6 = v32;
      }

      goto LABEL_4;
    }

    while ([(NSArray *)self->_buttons count]== 3)
    {
      v13 = [(EKUIEventStatusButtonsView *)self leadingButton];
      v14 = _CachedSizeForButton(v13);

      v15 = [(EKUIEventStatusButtonsView *)self centerButton];
      v16 = _CachedSizeForButton(v15);

      v17 = [(EKUIEventStatusButtonsView *)self trailingButton];
      v18 = _CachedSizeForButton(v17);

      [(EKUIEventStatusButtonsView *)self bounds];
      Width = CGRectGetWidth(v34);
      v20 = v16 * 0.5 + 12.0;
      v21 = v14 + v20;
      v22 = Width * 0.5;
      v23 = v20 + v18;
      if (v21 <= v22 && v23 <= v22)
      {
        break;
      }

      v7 = v4 + -1.0;
      [(EKUIEventStatusButtonsView *)self _minimumFontSize];
      if (v4 + -1.0 < v25)
      {
        break;
      }

      [(EKUIEventStatusButtonsView *)self _updateButtonFontsWithOverrideSize:v4 + -1.0];
      v4 = v4 + -1.0;
      if (!self->_inboxStyle)
      {
        goto LABEL_22;
      }
    }
  }

  v7 = v4;
LABEL_4:
  if (self->_outsideMargin != v6 && !self->_inboxStyle)
  {
    self->_outsideMargin = v6;
    [(EKUIEventStatusButtonsView *)self setNeedsUpdateConstraints];
  }

  v8 = [(EKUIEventStatusButtonsView *)self delegate];
  [v8 eventStatusButtonsView:self calculatedFontSizeToFit:v7];

  if (v5)
  {
    v9 = [(NSArray *)self->_buttons firstObject];
    [v9 layoutIfNeeded];
  }

  v10 = [(EKUIEventStatusButtonsView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(EKUIEventStatusButtonsView *)self delegate];
    [v12 statusButtonsDidLayout];
  }
}

- (EKUIEventStatusButtonsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)buttonsTouchInsets
{
  top = self->_buttonsTouchInsets.top;
  left = self->_buttonsTouchInsets.left;
  bottom = self->_buttonsTouchInsets.bottom;
  right = self->_buttonsTouchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end