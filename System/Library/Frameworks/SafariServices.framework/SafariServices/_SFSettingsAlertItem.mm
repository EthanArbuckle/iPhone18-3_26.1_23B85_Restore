@interface _SFSettingsAlertItem
+ (id)buttonWithTitle:(id)title textStyle:(id)style icon:(id)icon action:(int64_t)action handler:(id)handler;
+ (id)optionGroupOptionWithAttributedTitle:(id)title textStyle:(id)style icon:(id)icon action:(int64_t)action handler:(id)handler;
+ (id)optionsGroupWithTitle:(id)title action:(int64_t)action subItemAction:(int64_t)itemAction controller:(id)controller;
+ (id)paletteWithAction:(int64_t)action controller:(id)controller;
+ (id)singleLineButtonWithTitle:(id)title textStyle:(id)style icon:(id)icon action:(int64_t)action handler:(id)handler;
+ (id)stepperWithController:(id)controller action:(int64_t)action handler:(id)handler;
- (BOOL)isConfigurable;
- (BOOL)isFavorited;
- (NSString)menuAction;
- (SFSettingsAlertItemView)view;
- (SFSettingsAlertItemView)viewAsUIView;
- (UIColor)overrideColor;
- (_SFSettingsAlertButton)viewAsButton;
- (_SFSettingsAlertItem)group;
- (_SFSettingsAlertItem)initWithType:(int64_t)type action:(int64_t)action;
- (void)_buttonCommonInitWithTextStyle:(id)style icon:(id)icon handler:(id)handler;
- (void)_updateButtonSubtitle;
- (void)_updateButtonTitle;
- (void)addObserver:(id)observer;
- (void)notifyObserversItemDidUpdate;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setAttributedSubtitle:(id)subtitle;
- (void)setAttributedTitle:(id)title;
- (void)setBadgeView:(id)view;
- (void)setComponentsArrangement:(id)arrangement;
- (void)setEnabled:(BOOL)enabled;
- (void)setFavorited:(BOOL)favorited;
- (void)setIcon:(id)icon;
- (void)setSelected:(BOOL)selected;
- (void)setShowsIndicatorDot:(BOOL)dot;
- (void)setStatusImageView:(id)view;
- (void)setSubItems:(id)items;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUpSelectionHandlerIfNeededWithViewController:(id)controller;
- (void)setView:(id)view;
- (void)updateOptionsGroupDetailLabel;
@end

@implementation _SFSettingsAlertItem

- (_SFSettingsAlertItem)initWithType:(int64_t)type action:(int64_t)action
{
  v10.receiver = self;
  v10.super_class = _SFSettingsAlertItem;
  v6 = [(_SFSettingsAlertItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    v6->_actionType = action;
    v6->_enabled = 1;
    v8 = v6;
  }

  return v7;
}

- (void)_buttonCommonInitWithTextStyle:(id)style icon:(id)icon handler:(id)handler
{
  handlerCopy = handler;
  iconCopy = icon;
  [(_SFSettingsAlertItem *)self setTextStyle:style];
  [(_SFSettingsAlertItem *)self setIcon:iconCopy];

  [(_SFSettingsAlertItem *)self setHandler:handlerCopy];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(_SFSettingsAlertItem *)self setTintColor:labelColor];
}

+ (id)buttonWithTitle:(id)title textStyle:(id)style icon:(id)icon action:(int64_t)action handler:(id)handler
{
  handlerCopy = handler;
  iconCopy = icon;
  styleCopy = style;
  titleCopy = title;
  v16 = [[self alloc] initWithType:0 action:action];
  [v16 setTitle:titleCopy];

  [v16 _buttonCommonInitWithTextStyle:styleCopy icon:iconCopy handler:handlerCopy];

  return v16;
}

+ (id)singleLineButtonWithTitle:(id)title textStyle:(id)style icon:(id)icon action:(int64_t)action handler:(id)handler
{
  handlerCopy = handler;
  iconCopy = icon;
  styleCopy = style;
  titleCopy = title;
  v16 = [[self alloc] initWithType:1 action:action];
  [v16 setTitle:titleCopy];

  [v16 _buttonCommonInitWithTextStyle:styleCopy icon:iconCopy handler:handlerCopy];

  return v16;
}

+ (id)stepperWithController:(id)controller action:(int64_t)action handler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v10 = [[self alloc] initWithType:2 action:action];
  [v10 setController:controllerCopy];

  [v10 setHandler:handlerCopy];

  return v10;
}

+ (id)optionsGroupWithTitle:(id)title action:(int64_t)action subItemAction:(int64_t)itemAction controller:(id)controller
{
  controllerCopy = controller;
  titleCopy = title;
  v12 = [[self alloc] initWithType:3 action:action];
  [v12 setTitle:titleCopy];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  values = [controllerCopy values];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke;
  v24[3] = &unk_1E8493C28;
  v25 = controllerCopy;
  v26 = v13;
  itemActionCopy = itemAction;
  v15 = v13;
  v16 = controllerCopy;
  v17 = [values safari_mapAndFilterObjectsUsingBlock:v24];
  [v12 setSubItems:v17];

  [v12 setHandler:&__block_literal_global_40];
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v20 = [v18 flattenedImageWithColor:tertiaryLabelColor];
  v21 = [v20 imageWithRenderingMode:1];
  [v12 setIcon:v21];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v12 setTintColor:labelColor];

  [v12 setController:v16];
  [v12 setTextStyle:*MEMORY[0x1E69DDCF8]];
  [v12 setViewConfigurationBlock:&__block_literal_global_15];

  return v12;
}

+ (id)optionGroupOptionWithAttributedTitle:(id)title textStyle:(id)style icon:(id)icon action:(int64_t)action handler:(id)handler
{
  handlerCopy = handler;
  iconCopy = icon;
  styleCopy = style;
  titleCopy = title;
  v16 = [[self alloc] initWithType:4 action:action];
  [v16 setAttributedTitle:titleCopy];

  [v16 _buttonCommonInitWithTextStyle:styleCopy icon:iconCopy handler:handlerCopy];

  return v16;
}

+ (id)paletteWithAction:(int64_t)action controller:(id)controller
{
  controllerCopy = controller;
  v7 = [[self alloc] initWithType:5 action:action];
  [v7 setController:controllerCopy];

  return v7;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  view = [(_SFSettingsAlertItem *)self view];
  [view setSelected:selectedCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    view = [(_SFSettingsAlertItem *)self view];
    [view setEnabled:enabledCopy];
  }
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeWeak(&self->_view, obj);
    [obj setEnabled:{-[_SFSettingsAlertItem isEnabled](self, "isEnabled")}];
    [obj setSelected:{-[_SFSettingsAlertItem isSelected](self, "isSelected")}];
    accessibilityIdentifier = [(_SFSettingsAlertItem *)self accessibilityIdentifier];
    viewAsUIView = [(_SFSettingsAlertItem *)self viewAsUIView];
    [viewAsUIView setAccessibilityIdentifier:accessibilityIdentifier];
  }
}

- (void)setSubItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  subItems = self->_subItems;
  if (subItems != itemsCopy && ![(NSArray *)subItems isEqualToArray:itemsCopy])
  {
    v6 = [(NSArray *)itemsCopy copy];
    v7 = self->_subItems;
    self->_subItems = v6;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = itemsCopy;
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

- (void)setAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy copy];
  accessibilityIdentifier = self->_accessibilityIdentifier;
  self->_accessibilityIdentifier = v5;

  viewAsUIView = [(_SFSettingsAlertItem *)self viewAsUIView];
  [viewAsUIView setAccessibilityIdentifier:identifierCopy];
}

- (void)updateOptionsGroupDetailLabel
{
  if (self->_type == 3)
  {
    v18 = v2;
    v19 = v3;
    v5 = self->_controller;
    values = [v5 values];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53___SFSettingsAlertItem_updateOptionsGroupDetailLabel__block_invoke;
    v16[3] = &unk_1E8493C90;
    v7 = v5;
    v17 = v7;
    v8 = [values safari_firstObjectPassingTest:v16];

    viewAsButton = [(_SFSettingsAlertItem *)self viewAsButton];
    accessoryView = [viewAsButton accessoryView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      accessoryView2 = [viewAsButton accessoryView];
    }

    else
    {
      accessoryView2 = objc_alloc_init(_SFOptionsGroupDetailLabel);
      [(_SFOptionsGroupDetailLabel *)accessoryView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(_SFOptionsGroupDetailLabel *)accessoryView2 setTextColor:secondaryLabelColor];

      [(_SFOptionsGroupDetailLabel *)accessoryView2 setUserInteractionEnabled:0];
      [(_SFOptionsGroupDetailLabel *)accessoryView2 setNumberOfLines:0];
      LODWORD(v14) = 1144733696;
      [(_SFOptionsGroupDetailLabel *)accessoryView2 setContentCompressionResistancePriority:0 forAxis:v14];
      [viewAsButton setAccessoryView:accessoryView2];
    }

    v15 = [v7 attributedStringForValue:v8];
    [(_SFOptionsGroupDetailLabel *)accessoryView2 setAttributedText:v15];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  if (title != titleCopy)
  {
    v10 = titleCopy;
    v6 = [(NSString *)title isEqualToString:titleCopy];
    titleCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_title;
      self->_title = v7;

      attributedTitle = self->_attributedTitle;
      self->_attributedTitle = 0;

      [(_SFSettingsAlertItem *)self _updateButtonTitle];
      titleCopy = v10;
    }
  }
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  attributedTitle = self->_attributedTitle;
  if (attributedTitle != titleCopy)
  {
    v11 = titleCopy;
    v6 = [(NSAttributedString *)attributedTitle isEqualToAttributedString:titleCopy];
    titleCopy = v11;
    if (!v6)
    {
      string = [(NSAttributedString *)v11 string];
      title = self->_title;
      self->_title = string;

      v9 = [(NSAttributedString *)v11 copy];
      v10 = self->_attributedTitle;
      self->_attributedTitle = v9;

      [(_SFSettingsAlertItem *)self _updateButtonTitle];
      titleCopy = v11;
    }
  }
}

- (void)_updateButtonTitle
{
  view = [(_SFSettingsAlertItem *)self view];
  v4 = view;
  if (self->_attributedTitle)
  {
    [view setAttributedText:?];
  }

  else
  {
    [view setText:self->_title];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  if (subtitle != subtitleCopy)
  {
    v12 = subtitleCopy;
    v6 = [(NSString *)subtitle isEqualToString:subtitleCopy];
    subtitleCopy = v12;
    if (!v6)
    {
      v7 = [(NSString *)v12 copy];
      v8 = self->_subtitle;
      self->_subtitle = v7;

      attributedSubtitle = self->_attributedSubtitle;
      self->_attributedSubtitle = 0;

      v10 = self->_subtitle;
      view = [(_SFSettingsAlertItem *)self view];
      [view setDetailText:v10];

      subtitleCopy = v12;
    }
  }
}

- (void)setAttributedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if ((WBSIsEqual() & 1) == 0)
  {
    string = [subtitleCopy string];
    subtitle = self->_subtitle;
    self->_subtitle = string;

    v6 = [subtitleCopy copy];
    attributedSubtitle = self->_attributedSubtitle;
    self->_attributedSubtitle = v6;

    [(_SFSettingsAlertItem *)self _updateButtonSubtitle];
  }
}

- (void)_updateButtonSubtitle
{
  view = [(_SFSettingsAlertItem *)self view];
  v4 = view;
  if (self->_attributedSubtitle)
  {
    [view setAttributedDetailText:?];
  }

  else
  {
    [view setDetailText:self->_subtitle];
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

- (void)setBadgeView:(id)view
{
  objc_storeStrong(&self->_badgeView, view);
  viewCopy = view;
  viewAsButton = [(_SFSettingsAlertItem *)self viewAsButton];
  [viewAsButton setAccessoryView:viewCopy];
}

- (void)setStatusImageView:(id)view
{
  objc_storeStrong(&self->_statusImageView, view);
  viewCopy = view;
  viewAsButton = [(_SFSettingsAlertItem *)self viewAsButton];
  [viewAsButton setStatusImageView:viewCopy];
}

- (void)setComponentsArrangement:(id)arrangement
{
  arrangementCopy = arrangement;
  v5 = [arrangementCopy copy];
  componentsArrangement = self->_componentsArrangement;
  self->_componentsArrangement = v5;

  viewAsButton = [(_SFSettingsAlertItem *)self viewAsButton];
  [viewAsButton setComponentsArrangement:arrangementCopy];
}

- (void)setIcon:(id)icon
{
  objc_storeStrong(&self->_icon, icon);
  iconCopy = icon;
  view = [(_SFSettingsAlertItem *)self view];
  [view setImage:iconCopy];
}

- (void)setShowsIndicatorDot:(BOOL)dot
{
  dotCopy = dot;
  self->_showsIndicatorDot = dot;
  viewAsButton = [(_SFSettingsAlertItem *)self viewAsButton];
  [viewAsButton setShowsIndicatorDot:dotCopy];
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
  menuAction = [(_SFSettingsAlertItem *)self menuAction];
  v3 = SFIsMenuActionConfigurable();

  return v3;
}

- (BOOL)isFavorited
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  menuAction = [(_SFSettingsAlertItem *)self menuAction];
  v5 = [safari_browserDefaults browsingAssistant_isMenuActionFavorited:menuAction];

  return v5;
}

- (void)setFavorited:(BOOL)favorited
{
  favoritedCopy = favorited;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  menuAction = [(_SFSettingsAlertItem *)self menuAction];
  [safari_browserDefaults browsingAssistant_setMenuActionFavorited:menuAction favorited:favoritedCopy];
}

- (void)setUpSelectionHandlerIfNeededWithViewController:(id)controller
{
  if (!self->_selectionHandler)
  {
    v13[3] = v3;
    v13[4] = v4;
    controllerCopy = controller;
    objc_initWeak(v13, self);
    objc_initWeak(&v12, controllerCopy);

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
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  if (([(UIColor *)tintColor isEqual:labelColor]& 1) != 0)
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
  allObjects = [(NSPointerArray *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * v7++) menuItemDidUpdate:self];
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v7 = self->_observers;
    self->_observers = weakObjectsPointerArray;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSPointerArray *)observers addPointer:observerCopy];
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