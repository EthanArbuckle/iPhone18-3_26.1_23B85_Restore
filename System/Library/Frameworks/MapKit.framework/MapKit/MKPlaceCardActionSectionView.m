@interface MKPlaceCardActionSectionView
+ (id)_font:(BOOL)a3;
- (MKPlaceCardActionSectionView)initWithLeftActionItem:(id)a3 rightActionItem:(id)a4 useSmallFonts:(BOOL)a5 singleItemIsFullWidth:(BOOL)a6 useMarginLayout:(BOOL)a7;
- (MKPlaceCardActionSectionViewDelegate)delegate;
- (id)_makePlaceActionButtonWithActionItem:(id)a3 isLeftItem:(BOOL)a4 useSmallFonts:(BOOL)a5;
- (id)currentLeftItem;
- (id)glyphFont;
- (void)_contentSizeDidChange;
- (void)_leftButtonIsPressed:(id)a3;
- (void)_rightButtonIsPressed:(id)a3;
- (void)_setUpViewWithButtons;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setTopHairlineHidden:(BOOL)a3;
@end

@implementation MKPlaceCardActionSectionView

- (MKPlaceCardActionSectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_leftButton);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if (([v7 isEqualToString:@"enabled"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"selected"))
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

- (void)_rightButtonIsPressed:(id)a3
{
  v4 = [(MKPlaceCardActionSectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKPlaceCardActionSectionView *)self delegate];
    [v6 placeCardActionSectionView:self buttonWithActionItemPressed:self->_leftItem];
  }
}

- (void)_leftButtonIsPressed:(id)a3
{
  v4 = [(MKPlaceCardActionSectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(MKPlaceCardActionSectionView *)self delegate];
    v6 = [(MKPlaceCardActionSectionView *)self currentLeftItem];
    [v7 placeCardActionSectionView:self buttonWithActionItemPressed:v6];
  }
}

- (id)_makePlaceActionButtonWithActionItem:(id)a3 isLeftItem:(BOOL)a4 useSmallFonts:(BOOL)a5
{
  v5 = a4;
  v6 = MEMORY[0x1E69DC738];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [objc_opt_class() _setButtonString:v8 forActionItem:v7 isLeftItem:v5];

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
  v7 = [(MKViewWithHairline *)self isTopHairlineHidden];
  v8 = 6.0;
  if (v7)
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
  v4 = [(UIView *)self mk_theme];
  v5 = [v4 tintColor];
  [(UIButton *)rightButton setTitleColor:v5 forState:0];

  rightItem = self->_rightItem;
  v7 = [(UIView *)self mk_theme];
  v8 = [v7 tintColor];
  [(MKPlaceCardActionItem *)rightItem setTitleColor:v8 forState:0];
}

- (void)setTopHairlineHidden:(BOOL)a3
{
  v3 = a3;
  if ([(MKViewWithHairline *)self isTopHairlineHidden]!= a3)
  {
    if (v3)
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
  [(MKViewWithHairline *)&v13 setTopHairlineHidden:v3];
}

- (id)glyphFont
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
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

  v53 = [MEMORY[0x1E695DF70] array];
  v6 = [(MKPlaceCardActionSectionView *)self heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];
  v8 = *&self->_useMarginLayout;
  *&self->_useMarginLayout = v7;

  [v53 addObject:*&self->_useMarginLayout];
  leftItem = self->_leftItem;
  if (leftItem)
  {
    v10 = [(MKPlaceCardActionSectionView *)self _makePlaceActionButtonWithActionItem:leftItem isLeftItem:0 useSmallFonts:self->super._highlighted];
    v11 = self->_rightItem;
    self->_rightItem = v10;

    [(MKPlaceCardActionSectionView *)self addSubview:self->_rightItem];
    v12 = [(MKPlaceCardActionItem *)self->_rightItem centerYAnchor];
    v13 = [(MKPlaceCardActionSectionView *)self centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v15 = 480;
    leftButtonYConstraint = self->_leftButtonYConstraint;
    self->_leftButtonYConstraint = v14;

    [v53 addObject:self->_leftButtonYConstraint];
    v17 = [(MKPlaceCardActionItem *)self->_rightItem trailingAnchor];
    selected = self->super._selected;
    if (selected)
    {
      v15 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
      [v15 trailingAnchor];
    }

    else
    {
      [(MKPlaceCardActionSectionView *)self trailingAnchor];
    }
    v19 = ;
    v20 = [v17 constraintEqualToAnchor:v19];
    [v53 addObject:v20];

    if (selected)
    {

      v19 = v15;
    }
  }

  v21 = [(MKPlaceCardActionSectionView *)self currentLeftItem];

  if (v21)
  {
    v22 = [(MKPlaceCardActionSectionView *)self currentLeftItem];
    v23 = [(MKPlaceCardActionSectionView *)self _makePlaceActionButtonWithActionItem:v22 isLeftItem:1 useSmallFonts:self->super._highlighted];
    v24 = self->_rightButton;
    self->_rightButton = v23;

    [(MKPlaceCardActionSectionView *)self addSubview:self->_rightButton];
    v25 = [(UIButton *)self->_rightButton centerYAnchor];
    v26 = [(MKPlaceCardActionSectionView *)self centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    heightAnchor = self->_heightAnchor;
    self->_heightAnchor = v27;

    [v53 addObject:self->_heightAnchor];
    v29 = [(UIButton *)self->_rightButton topAnchor];
    v30 = [(MKPlaceCardActionSectionView *)self topAnchor];
    v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
    [v53 addObject:v31];

    v32 = [(UIButton *)self->_rightButton bottomAnchor];
    v33 = [(MKPlaceCardActionSectionView *)self bottomAnchor];
    v34 = [v32 constraintLessThanOrEqualToAnchor:v33];
    [v53 addObject:v34];

    v35 = [MEMORY[0x1E69DC938] currentDevice];
    v36 = [v35 userInterfaceIdiom];

    v37 = [(UIButton *)self->_rightButton leadingAnchor];
    v38 = self->super._selected;
    if (v36 == 5)
    {
      if (self->super._selected)
      {
        v39 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
        v40 = [v39 leadingAnchor];
      }

      else
      {
        v40 = [(MKPlaceCardActionSectionView *)self leadingAnchor];
        v39 = v40;
      }

      v41 = [v37 constraintEqualToAnchor:v40 constant:30.0];
      [v53 addObject:v41];

      if (!v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (self->super._selected)
      {
        v39 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
        v40 = [v39 leadingAnchor];
      }

      else
      {
        v40 = [(MKPlaceCardActionSectionView *)self leadingAnchor];
        v39 = v40;
      }

      v42 = [v37 constraintEqualToAnchor:v40];
      [v53 addObject:v42];

      if (!v38)
      {
        goto LABEL_20;
      }
    }

LABEL_20:
    if (!self->_leftItem)
    {
      v43 = [(UIButton *)self->_rightButton trailingAnchor];
      v44 = self->super._selected;
      if (v44)
      {
        v39 = [(MKPlaceCardActionSectionView *)self layoutMarginsGuide];
        [v39 trailingAnchor];
      }

      else
      {
        [(MKPlaceCardActionSectionView *)self trailingAnchor];
      }
      v45 = ;
      v46 = [v43 constraintLessThanOrEqualToAnchor:v45];
      [v53 addObject:v46];

      if (v44)
      {

        v45 = v39;
      }
    }

    if (self->_rightItem)
    {
      v47 = [(MKPlaceCardActionSectionView *)self currentLeftItem];

      if (v47)
      {
        LODWORD(v48) = 1148846080;
        [(UIButton *)self->_rightButton _mapkit_setContentCompressionResistancePriority:0 forAxis:v48];
        v49 = [(UIButton *)self->_rightButton trailingAnchor];
        v50 = [(MKPlaceCardActionItem *)self->_rightItem leadingAnchor];
        v51 = [v49 constraintLessThanOrEqualToAnchor:v50 constant:-20.0];

        v52 = [(MKPlaceCardActionItem *)self->_rightItem titleLabel];
        [v52 setLineBreakMode:3];

        [v53 addObject:v51];
      }
    }
  }

  [(MKPlaceCardActionSectionView *)self _contentSizeDidChange];
  [MEMORY[0x1E696ACD8] activateConstraints:v53];
}

- (id)currentLeftItem
{
  v3 = [*&self->_singleItemIsFullWidth selectedItem];
  if (v3 && (v4 = v3, v5 = [*&self->_singleItemIsFullWidth selected], v4, v5))
  {
    v6 = [*&self->_singleItemIsFullWidth selectedItem];
  }

  else
  {
    v6 = *&self->_singleItemIsFullWidth;
  }

  return v6;
}

- (MKPlaceCardActionSectionView)initWithLeftActionItem:(id)a3 rightActionItem:(id)a4 useSmallFonts:(BOOL)a5 singleItemIsFullWidth:(BOOL)a6 useMarginLayout:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v19.receiver = self;
  v19.super_class = MKPlaceCardActionSectionView;
  v15 = [(MKPlaceCardActionSectionView *)&v19 init];
  v16 = v15;
  if (v15)
  {
    *(v15 + 456) = a7;
    objc_storeStrong(v15 + 63, a3);
    [*(v16 + 63) addObserver:v16 forKeyPath:@"enabled" options:1 context:0];
    [*(v16 + 63) addObserver:v16 forKeyPath:@"selected" options:1 context:0];
    objc_storeStrong(v16 + 64, a4);
    *(v16 + 457) = a5;
    *(v16 + 496) = a6;
    [v16 setPreservesSuperviewLayoutMargins:1];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 _setUpViewWithButtons];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v16 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v16;
}

+ (id)_font:(BOOL)a3
{
  v4 = +[MKFontManager sharedManager];
  v5 = v4;
  if (a3)
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