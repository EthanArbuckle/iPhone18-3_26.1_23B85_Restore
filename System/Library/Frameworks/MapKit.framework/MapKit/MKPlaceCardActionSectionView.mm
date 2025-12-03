@interface MKPlaceCardActionSectionView
+ (id)_font:(BOOL)_font;
- (MKPlaceCardActionSectionView)initWithLeftActionItem:(id)item rightActionItem:(id)actionItem useSmallFonts:(BOOL)fonts singleItemIsFullWidth:(BOOL)width useMarginLayout:(BOOL)layout;
- (MKPlaceCardActionSectionViewDelegate)delegate;
- (id)_makePlaceActionButtonWithActionItem:(id)item isLeftItem:(BOOL)leftItem useSmallFonts:(BOOL)fonts;
- (id)currentLeftItem;
- (id)glyphFont;
- (void)_contentSizeDidChange;
- (void)_leftButtonIsPressed:(id)pressed;
- (void)_rightButtonIsPressed:(id)pressed;
- (void)_setUpViewWithButtons;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setTopHairlineHidden:(BOOL)hidden;
@end

@implementation MKPlaceCardActionSectionView

- (MKPlaceCardActionSectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_leftButton);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"enabled"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"selected"))
  {
    [(MKPlaceCardActionSectionView *)self _setUpViewWithButtons];
  }
}

- (void)dealloc
{
  [*&self->_singleItemIsFullWidth removeObserver:self forKeyPath:@"enabled"];
  [*&self->_singleItemIsFullWidth removeObserver:self forKeyPath:@"selected"];
  v3.receiver = self;
  v3.super_class = MKPlaceCardActionSectionView;
  [(MKPlaceCardActionSectionView *)&v3 dealloc];
}

- (void)_rightButtonIsPressed:(id)pressed
{
  delegate = [(MKPlaceCardActionSectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MKPlaceCardActionSectionView *)self delegate];
    [delegate2 placeCardActionSectionView:self buttonWithActionItemPressed:self->_leftItem];
  }
}

- (void)_leftButtonIsPressed:(id)pressed
{
  delegate = [(MKPlaceCardActionSectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MKPlaceCardActionSectionView *)self delegate];
    currentLeftItem = [(MKPlaceCardActionSectionView *)self currentLeftItem];
    [delegate2 placeCardActionSectionView:self buttonWithActionItemPressed:currentLeftItem];
  }
}

- (id)_makePlaceActionButtonWithActionItem:(id)item isLeftItem:(BOOL)leftItem useSmallFonts:(BOOL)fonts
{
  leftItemCopy = leftItem;
  v6 = MEMORY[0x1E69DC738];
  itemCopy = item;
  v8 = objc_alloc_init(v6);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [objc_opt_class() _setButtonString:v8 forActionItem:itemCopy isLeftItem:leftItemCopy];

  return v8;
}

- (void)_contentSizeDidChange
{
  v3 = [objc_opt_class() _font:self->super._highlighted];
  v9 = v3;
  v4 = 60.0;
  if (self->super._highlighted)
  {
    v4 = 40.0;
  }

  [v3 _mapkit_scaledValueForValue:v4];
  v6 = v5;
  isTopHairlineHidden = [(MKViewWithHairline *)self isTopHairlineHidden];
  v8 = 6.0;
  if (isTopHairlineHidden)
  {
    v8 = 0.0;
  }

  [*&self->_useMarginLayout setConstant:v6 + v8];
}

- (void)infoCardThemeChanged
{
  v9.receiver = self;
  v9.super_class = MKPlaceCardActionSectionView;
  [(MKPlaceSectionItemView *)&v9 infoCardThemeChanged];
  rightButton = self->_rightButton;
  mk_theme = [(UIView *)self mk_theme];
  tintColor = [mk_theme tintColor];
  [(UIButton *)rightButton setTitleColor:tintColor forState:0];

  rightItem = self->_rightItem;
  mk_theme2 = [(UIView *)self mk_theme];
  tintColor2 = [mk_theme2 tintColor];
  [(MKPlaceCardActionItem *)rightItem setTitleColor:tintColor2 forState:0];
}

- (void)setTopHairlineHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(MKViewWithHairline *)self isTopHairlineHidden]!= hidden)
  {
    if (hiddenCopy)
    {
      v5 = -6.0;
    }

    else
    {
      v5 = 6.0;
    }

    v6 = *&self->_useMarginLayout;
    [v6 constant];
    [v6 setConstant:v5 + v7];
    leftButtonYConstraint = self->_leftButtonYConstraint;
    v9 = v5 * 0.5;
    [(NSLayoutConstraint *)leftButtonYConstraint constant];
    [(NSLayoutConstraint *)leftButtonYConstraint setConstant:v9 + v10];
    heightAnchor = self->_heightAnchor;
    [(NSLayoutConstraint *)heightAnchor constant];
    [(NSLayoutConstraint *)heightAnchor setConstant:v9 + v12];
  }

  v13.receiver = self;
  v13.super_class = MKPlaceCardActionSectionView;
  [(MKViewWithHairline *)&v13 setTopHairlineHidden:hiddenCopy];
}

- (id)glyphFont
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v5 = [objc_opt_class() _font:self->super._highlighted];
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v6 pointSize];
    v8 = v7 / 13.0;

    v9 = round(v8 * 16.0);
    if (v9 > 42.0)
    {
      v9 = 42.0;
    }

    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:v9];
  }

  return v5;
}

- (void)_setUpViewWithButtons
{
  [(UIButton *)self->_rightButton removeFromSuperview];
  rightButton = self->_rightButton;
  self->_rightButton = 0;

  [(MKPlaceCardActionItem *)self->_rightItem removeFromSuperview];
  rightItem = self->_rightItem;
  self->_rightItem = 0;

  [(MKPlaceCardActionSectionViewDelegate *)self->_delegate removeFromSuperview];
  delegate = self->_delegate;
  self->_delegate = 0;

  array = [MEMORY[0x1E695DF70] array];
  heightAnchor = [(MKPlaceCardActionSectionView *)self heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:0.0];
  v8 = *&self->_useMarginLayout;
  *&self->_useMarginLayout = v7;

  [array addObject:*&self->_useMarginLayout];
  leftItem = self->_leftItem;
  if (leftItem)
  {
    v10 = [(MKPlaceCardActionSectionView *)self _makePlaceActionButtonWithActionItem:leftItem isLeftItem:0 useSmallFonts:self->super._highlighted];
    v11 = self->_rightItem;
    self->_rightItem = v10;

    [(MKPlaceCardActionSectionView *)self addSubview:self->_rightItem];
    centerYAnchor = [(MKPlaceCardActionItem *)self->_rightItem centerYAnchor];
    centerYAnchor2 = [(MKPlaceCardActionSectionView *)self centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    layoutMarginsGuide = 480;
    leftButtonYConstraint = self->_leftButtonYConstraint;
    self->_leftButtonYConstraint = v14;

    [array addObject:self->_leftButtonYConstraint];
    trailingAnchor = [(MKPlaceCardActionItem *)self->_rightItem trailingAnchor];
    selected = self->super._selected;
    if (selected)
    {
      layoutMarginsGuide = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
      [layoutMarginsGuide trailingAnchor];
    }

    else
    {
      [(MKPlaceCardActionSectionView *)self trailingAnchor];
    }
    v19 = ;
    v20 = [trailingAnchor constraintEqualToAnchor:v19];
    [array addObject:v20];

    if (selected)
    {

      v19 = layoutMarginsGuide;
    }
  }

  currentLeftItem = [(MKPlaceCardActionSectionView *)self currentLeftItem];

  if (currentLeftItem)
  {
    currentLeftItem2 = [(MKPlaceCardActionSectionView *)self currentLeftItem];
    v23 = [(MKPlaceCardActionSectionView *)self _makePlaceActionButtonWithActionItem:currentLeftItem2 isLeftItem:1 useSmallFonts:self->super._highlighted];
    v24 = self->_rightButton;
    self->_rightButton = v23;

    [(MKPlaceCardActionSectionView *)self addSubview:self->_rightButton];
    centerYAnchor3 = [(UIButton *)self->_rightButton centerYAnchor];
    centerYAnchor4 = [(MKPlaceCardActionSectionView *)self centerYAnchor];
    v27 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    heightAnchor = self->_heightAnchor;
    self->_heightAnchor = v27;

    [array addObject:self->_heightAnchor];
    topAnchor = [(UIButton *)self->_rightButton topAnchor];
    topAnchor2 = [(MKPlaceCardActionSectionView *)self topAnchor];
    v31 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [array addObject:v31];

    bottomAnchor = [(UIButton *)self->_rightButton bottomAnchor];
    bottomAnchor2 = [(MKPlaceCardActionSectionView *)self bottomAnchor];
    v34 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [array addObject:v34];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    leadingAnchor = [(UIButton *)self->_rightButton leadingAnchor];
    v38 = self->super._selected;
    if (userInterfaceIdiom == 5)
    {
      if (self->super._selected)
      {
        layoutMarginsGuide2 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
        leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
      }

      else
      {
        leadingAnchor2 = [(MKPlaceCardActionSectionView *)self leadingAnchor];
        layoutMarginsGuide2 = leadingAnchor2;
      }

      v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
      [array addObject:v41];

      if (!v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (self->super._selected)
      {
        layoutMarginsGuide2 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
        leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
      }

      else
      {
        leadingAnchor2 = [(MKPlaceCardActionSectionView *)self leadingAnchor];
        layoutMarginsGuide2 = leadingAnchor2;
      }

      v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [array addObject:v42];

      if (!v38)
      {
        goto LABEL_20;
      }
    }

LABEL_20:
    if (!self->_leftItem)
    {
      trailingAnchor2 = [(UIButton *)self->_rightButton trailingAnchor];
      v44 = self->super._selected;
      if (v44)
      {
        layoutMarginsGuide2 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
        [layoutMarginsGuide2 trailingAnchor];
      }

      else
      {
        [(MKPlaceCardActionSectionView *)self trailingAnchor];
      }
      v45 = ;
      v46 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:v45];
      [array addObject:v46];

      if (v44)
      {

        v45 = layoutMarginsGuide2;
      }
    }

    if (self->_rightItem)
    {
      currentLeftItem3 = [(MKPlaceCardActionSectionView *)self currentLeftItem];

      if (currentLeftItem3)
      {
        LODWORD(v48) = 1148846080;
        [(UIButton *)self->_rightButton _mapkit_setContentCompressionResistancePriority:0 forAxis:v48];
        trailingAnchor3 = [(UIButton *)self->_rightButton trailingAnchor];
        leadingAnchor3 = [(MKPlaceCardActionItem *)self->_rightItem leadingAnchor];
        v51 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-20.0];

        titleLabel = [(MKPlaceCardActionItem *)self->_rightItem titleLabel];
        [titleLabel setLineBreakMode:3];

        [array addObject:v51];
      }
    }
  }

  [(MKPlaceCardActionSectionView *)self _contentSizeDidChange];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (id)currentLeftItem
{
  selectedItem = [*&self->_singleItemIsFullWidth selectedItem];
  if (selectedItem && (v4 = selectedItem, v5 = [*&self->_singleItemIsFullWidth selected], v4, v5))
  {
    selectedItem2 = [*&self->_singleItemIsFullWidth selectedItem];
  }

  else
  {
    selectedItem2 = *&self->_singleItemIsFullWidth;
  }

  return selectedItem2;
}

- (MKPlaceCardActionSectionView)initWithLeftActionItem:(id)item rightActionItem:(id)actionItem useSmallFonts:(BOOL)fonts singleItemIsFullWidth:(BOOL)width useMarginLayout:(BOOL)layout
{
  itemCopy = item;
  actionItemCopy = actionItem;
  v19.receiver = self;
  v19.super_class = MKPlaceCardActionSectionView;
  v15 = [(MKPlaceCardActionSectionView *)&v19 init];
  v16 = v15;
  if (v15)
  {
    *(v15 + 456) = layout;
    objc_storeStrong(v15 + 63, item);
    [*(v16 + 63) addObserver:v16 forKeyPath:@"enabled" options:1 context:0];
    [*(v16 + 63) addObserver:v16 forKeyPath:@"selected" options:1 context:0];
    objc_storeStrong(v16 + 64, actionItem);
    *(v16 + 457) = fonts;
    *(v16 + 496) = width;
    [v16 setPreservesSuperviewLayoutMargins:1];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 _setUpViewWithButtons];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v16;
}

+ (id)_font:(BOOL)_font
{
  v4 = +[MKFontManager sharedManager];
  v5 = v4;
  if (_font)
  {
    [v4 attributionFont];
  }

  else
  {
    [v4 bodyFont];
  }
  v6 = ;

  return v6;
}

@end