@interface _SFSettingsAlertItem
+ (id)buttonWithTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 action:(int64_t)a6 handler:(id)a7;
+ (id)optionGroupOptionWithAttributedTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 action:(int64_t)a6 handler:(id)a7;
+ (id)optionsGroupWithTitle:(id)a3 action:(int64_t)a4 subItemAction:(int64_t)a5 controller:(id)a6;
+ (id)paletteWithAction:(int64_t)a3 controller:(id)a4;
+ (id)singleLineButtonWithTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 action:(int64_t)a6 handler:(id)a7;
+ (id)stepperWithController:(id)a3 action:(int64_t)a4 handler:(id)a5;
- (BOOL)isConfigurable;
- (BOOL)isFavorited;
- (NSString)menuAction;
- (SFSettingsAlertItemView)view;
- (SFSettingsAlertItemView)viewAsUIView;
- (UIColor)overrideColor;
- (_SFSettingsAlertButton)viewAsButton;
- (_SFSettingsAlertItem)group;
- (_SFSettingsAlertItem)initWithType:(int64_t)a3 action:(int64_t)a4;
- (void)_buttonCommonInitWithTextStyle:(id)a3 icon:(id)a4 handler:(id)a5;
- (void)_updateButtonSubtitle;
- (void)_updateButtonTitle;
- (void)addObserver:(id)a3;
- (void)notifyObserversItemDidUpdate;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setAttributedSubtitle:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setBadgeView:(id)a3;
- (void)setComponentsArrangement:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFavorited:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsIndicatorDot:(BOOL)a3;
- (void)setStatusImageView:(id)a3;
- (void)setSubItems:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUpSelectionHandlerIfNeededWithViewController:(id)a3;
- (void)setView:(id)a3;
- (void)updateOptionsGroupDetailLabel;
@end

@implementation _SFSettingsAlertItem

- (_SFSettingsAlertItem)initWithType:(int64_t)a3 action:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = _SFSettingsAlertItem;
  v6 = [(_SFSettingsAlertItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = a3;
    v6->_actionType = a4;
    v6->_enabled = 1;
    v8 = v6;
  }

  return v7;
}

- (void)_buttonCommonInitWithTextStyle:(id)a3 icon:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(_SFSettingsAlertItem *)self setTextStyle:a3];
  [(_SFSettingsAlertItem *)self setIcon:v9];

  [(_SFSettingsAlertItem *)self setHandler:v8];
  v10 = [MEMORY[0x1E69DC888] labelColor];
  [(_SFSettingsAlertItem *)self setTintColor:v10];
}

+ (id)buttonWithTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 action:(int64_t)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithType:0 action:a6];
  [v16 setTitle:v15];

  [v16 _buttonCommonInitWithTextStyle:v14 icon:v13 handler:v12];

  return v16;
}

+ (id)singleLineButtonWithTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 action:(int64_t)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithType:1 action:a6];
  [v16 setTitle:v15];

  [v16 _buttonCommonInitWithTextStyle:v14 icon:v13 handler:v12];

  return v16;
}

+ (id)stepperWithController:(id)a3 action:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithType:2 action:a4];
  [v10 setController:v9];

  [v10 setHandler:v8];

  return v10;
}

+ (id)optionsGroupWithTitle:(id)a3 action:(int64_t)a4 subItemAction:(int64_t)a5 controller:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [[a1 alloc] initWithType:3 action:a4];
  [v12 setTitle:v11];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v14 = [v10 values];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke;
  v24[3] = &unk_1E8493C28;
  v25 = v10;
  v26 = v13;
  v27 = a5;
  v15 = v13;
  v16 = v10;
  v17 = [v14 safari_mapAndFilterObjectsUsingBlock:v24];
  [v12 setSubItems:v17];

  [v12 setHandler:&__block_literal_global_40];
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v19 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v20 = [v18 flattenedImageWithColor:v19];
  v21 = [v20 imageWithRenderingMode:1];
  [v12 setIcon:v21];

  v22 = [MEMORY[0x1E69DC888] labelColor];
  [v12 setTintColor:v22];

  [v12 setController:v16];
  [v12 setTextStyle:*MEMORY[0x1E69DDCF8]];
  [v12 setViewConfigurationBlock:&__block_literal_global_15];

  return v12;
}

+ (id)optionGroupOptionWithAttributedTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 action:(int64_t)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithType:4 action:a6];
  [v16 setAttributedTitle:v15];

  [v16 _buttonCommonInitWithTextStyle:v14 icon:v13 handler:v12];

  return v16;
}

+ (id)paletteWithAction:(int64_t)a3 controller:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithType:5 action:a3];
  [v7 setController:v6];

  return v7;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  v4 = [(_SFSettingsAlertItem *)self view];
  [v4 setSelected:v3];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    v5 = [(_SFSettingsAlertItem *)self view];
    [v5 setEnabled:v4];
  }
}

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeWeak(&self->_view, obj);
    [obj setEnabled:{-[_SFSettingsAlertItem isEnabled](self, "isEnabled")}];
    [obj setSelected:{-[_SFSettingsAlertItem isSelected](self, "isSelected")}];
    v5 = [(_SFSettingsAlertItem *)self accessibilityIdentifier];
    v6 = [(_SFSettingsAlertItem *)self viewAsUIView];
    [v6 setAccessibilityIdentifier:v5];
  }
}

- (void)setSubItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  subItems = self->_subItems;
  if (subItems != v4 && ![(NSArray *)subItems isEqualToArray:v4])
  {
    v6 = [(NSArray *)v4 copy];
    v7 = self->_subItems;
    self->_subItems = v6;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v4;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_storeWeak((*(*(&v13 + 1) + 8 * v12++) + 192), self);
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  accessibilityIdentifier = self->_accessibilityIdentifier;
  self->_accessibilityIdentifier = v5;

  v7 = [(_SFSettingsAlertItem *)self viewAsUIView];
  [v7 setAccessibilityIdentifier:v4];
}

- (void)updateOptionsGroupDetailLabel
{
  if (self->_type == 3)
  {
    v18 = v2;
    v19 = v3;
    v5 = self->_controller;
    v6 = [v5 values];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53___SFSettingsAlertItem_updateOptionsGroupDetailLabel__block_invoke;
    v16[3] = &unk_1E8493C90;
    v7 = v5;
    v17 = v7;
    v8 = [v6 safari_firstObjectPassingTest:v16];

    v9 = [(_SFSettingsAlertItem *)self viewAsButton];
    v10 = [v9 accessoryView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v9 accessoryView];
    }

    else
    {
      v12 = objc_alloc_init(_SFOptionsGroupDetailLabel);
      [(_SFOptionsGroupDetailLabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(_SFOptionsGroupDetailLabel *)v12 setTextColor:v13];

      [(_SFOptionsGroupDetailLabel *)v12 setUserInteractionEnabled:0];
      [(_SFOptionsGroupDetailLabel *)v12 setNumberOfLines:0];
      LODWORD(v14) = 1144733696;
      [(_SFOptionsGroupDetailLabel *)v12 setContentCompressionResistancePriority:0 forAxis:v14];
      [v9 setAccessoryView:v12];
    }

    v15 = [v7 attributedStringForValue:v8];
    [(_SFOptionsGroupDetailLabel *)v12 setAttributedText:v15];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  title = self->_title;
  if (title != v4)
  {
    v10 = v4;
    v6 = [(NSString *)title isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_title;
      self->_title = v7;

      attributedTitle = self->_attributedTitle;
      self->_attributedTitle = 0;

      [(_SFSettingsAlertItem *)self _updateButtonTitle];
      v4 = v10;
    }
  }
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  attributedTitle = self->_attributedTitle;
  if (attributedTitle != v4)
  {
    v11 = v4;
    v6 = [(NSAttributedString *)attributedTitle isEqualToAttributedString:v4];
    v4 = v11;
    if (!v6)
    {
      v7 = [(NSAttributedString *)v11 string];
      title = self->_title;
      self->_title = v7;

      v9 = [(NSAttributedString *)v11 copy];
      v10 = self->_attributedTitle;
      self->_attributedTitle = v9;

      [(_SFSettingsAlertItem *)self _updateButtonTitle];
      v4 = v11;
    }
  }
}

- (void)_updateButtonTitle
{
  v3 = [(_SFSettingsAlertItem *)self view];
  v4 = v3;
  if (self->_attributedTitle)
  {
    [v3 setAttributedText:?];
  }

  else
  {
    [v3 setText:self->_title];
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  subtitle = self->_subtitle;
  if (subtitle != v4)
  {
    v12 = v4;
    v6 = [(NSString *)subtitle isEqualToString:v4];
    v4 = v12;
    if (!v6)
    {
      v7 = [(NSString *)v12 copy];
      v8 = self->_subtitle;
      self->_subtitle = v7;

      attributedSubtitle = self->_attributedSubtitle;
      self->_attributedSubtitle = 0;

      v10 = self->_subtitle;
      v11 = [(_SFSettingsAlertItem *)self view];
      [v11 setDetailText:v10];

      v4 = v12;
    }
  }
}

- (void)setAttributedSubtitle:(id)a3
{
  v8 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v8 string];
    subtitle = self->_subtitle;
    self->_subtitle = v4;

    v6 = [v8 copy];
    attributedSubtitle = self->_attributedSubtitle;
    self->_attributedSubtitle = v6;

    [(_SFSettingsAlertItem *)self _updateButtonSubtitle];
  }
}

- (void)_updateButtonSubtitle
{
  v3 = [(_SFSettingsAlertItem *)self view];
  v4 = v3;
  if (self->_attributedSubtitle)
  {
    [v3 setAttributedDetailText:?];
  }

  else
  {
    [v3 setDetailText:self->_subtitle];
  }
}

- (SFSettingsAlertItemView)viewAsUIView
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = WeakRetained;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_SFSettingsAlertButton)viewAsButton
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = WeakRetained;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBadgeView:(id)a3
{
  objc_storeStrong(&self->_badgeView, a3);
  v5 = a3;
  v6 = [(_SFSettingsAlertItem *)self viewAsButton];
  [v6 setAccessoryView:v5];
}

- (void)setStatusImageView:(id)a3
{
  objc_storeStrong(&self->_statusImageView, a3);
  v5 = a3;
  v6 = [(_SFSettingsAlertItem *)self viewAsButton];
  [v6 setStatusImageView:v5];
}

- (void)setComponentsArrangement:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  componentsArrangement = self->_componentsArrangement;
  self->_componentsArrangement = v5;

  v7 = [(_SFSettingsAlertItem *)self viewAsButton];
  [v7 setComponentsArrangement:v4];
}

- (void)setIcon:(id)a3
{
  objc_storeStrong(&self->_icon, a3);
  v5 = a3;
  v6 = [(_SFSettingsAlertItem *)self view];
  [v6 setImage:v5];
}

- (void)setShowsIndicatorDot:(BOOL)a3
{
  v3 = a3;
  self->_showsIndicatorDot = a3;
  v4 = [(_SFSettingsAlertItem *)self viewAsButton];
  [v4 setShowsIndicatorDot:v3];
}

- (NSString)menuAction
{
  v2 = self->_actionType - 9;
  if (v2 > 0x2E)
  {
    v3 = MEMORY[0x1E69B1D78];
  }

  else
  {
    v3 = qword_1E8493D48[v2];
  }

  return *v3;
}

- (BOOL)isConfigurable
{
  v2 = [(_SFSettingsAlertItem *)self menuAction];
  v3 = SFIsMenuActionConfigurable();

  return v3;
}

- (BOOL)isFavorited
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [(_SFSettingsAlertItem *)self menuAction];
  v5 = [v3 browsingAssistant_isMenuActionFavorited:v4];

  return v5;
}

- (void)setFavorited:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [(_SFSettingsAlertItem *)self menuAction];
  [v6 browsingAssistant_setMenuActionFavorited:v5 favorited:v3];
}

- (void)setUpSelectionHandlerIfNeededWithViewController:(id)a3
{
  if (!self->_selectionHandler)
  {
    v13[3] = v3;
    v13[4] = v4;
    v6 = a3;
    objc_initWeak(v13, self);
    objc_initWeak(&v12, v6);

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72___SFSettingsAlertItem_setUpSelectionHandlerIfNeededWithViewController___block_invoke;
    v9[3] = &unk_1E8493CB8;
    objc_copyWeak(&v10, v13);
    objc_copyWeak(&v11, &v12);
    v7 = _Block_copy(v9);
    selectionHandler = self->_selectionHandler;
    self->_selectionHandler = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(v13);
  }
}

- (UIColor)overrideColor
{
  tintColor = self->_tintColor;
  v4 = [MEMORY[0x1E69DC888] labelColor];
  if (([(UIColor *)tintColor isEqual:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_tintColor;
  }

  v6 = v5;

  return v5;
}

- (void)notifyObserversItemDidUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSPointerArray *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) menuItemDidUpdate:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSPointerArray *)observers addPointer:v4];
}

- (SFSettingsAlertItemView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_SFSettingsAlertItem)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

@end