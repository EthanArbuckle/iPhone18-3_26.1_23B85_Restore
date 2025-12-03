@interface SmallButtonOutlineCell
- (SmallButtonOutlineCell)initWithFrame:(CGRect)frame;
- (void)_buttonTapped:(id)tapped;
- (void)_updateFromModel;
- (void)_updateImage;
- (void)_updateTitleColor;
- (void)hoverSourceStateDidChange:(id)change;
- (void)setCellModel:(id)model;
- (void)tintColorDidChange;
@end

@implementation SmallButtonOutlineCell

- (void)hoverSourceStateDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = SmallButtonOutlineCell;
  [(SidebarOutlineCell *)&v4 hoverSourceStateDidChange:change];
  [(SmallButtonOutlineCell *)self _updateImage];
}

- (void)_buttonTapped:(id)tapped
{
  delegate = [(SmallButtonOutlineCellModel *)self->_cellModel delegate];
  [delegate smallButtonOutlineCellTapped:self];
}

- (void)_updateImage
{
  hoverSource = [(SidebarOutlineCell *)self hoverSource];
  hoverGestureRecognizer = [hoverSource hoverGestureRecognizer];

  hoverImage = [(SmallButtonOutlineCellModel *)self->_cellModel hoverImage];
  if (hoverImage && [hoverGestureRecognizer _maps_isHovering])
  {
    [(MapsThemeButton *)self->_button bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [hoverGestureRecognizer locationInView:self->_button];
    v21.x = v13;
    v21.y = v14;
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    v15 = CGRectContainsPoint(v22, v21);

    if (v15)
    {
      button = self->_button;
      hoverImage2 = [(SmallButtonOutlineCellModel *)self->_cellModel hoverImage];
      goto LABEL_7;
    }
  }

  else
  {
  }

  button = self->_button;
  hoverImage2 = [(SmallButtonOutlineCellModel *)self->_cellModel image];
LABEL_7:
  v18 = hoverImage2;
  [(MapsThemeButton *)button setImage:hoverImage2 forState:0];
}

- (void)_updateTitleColor
{
  style = [(SmallButtonOutlineCellModel *)self->_cellModel style];
  if (style == 1)
  {
    v7 = +[UIColor secondaryLabelColor];
    [(MapsThemeButton *)self->_button setTintColor:v7];

    button = self->_button;
    tintColor = +[UIColor secondaryLabelColor];
    v6 = button;
  }

  else
  {
    if (style)
    {
      return;
    }

    [(MapsThemeButton *)self->_button setTintColor:0];
    v4 = self->_button;
    tintColor = [(SmallButtonOutlineCell *)self tintColor];
    v6 = v4;
  }

  v9 = tintColor;
  [MapsThemeButton setTitleColor:v6 forState:"setTitleColor:forState:"];
}

- (void)_updateFromModel
{
  button = self->_button;
  title = [(SmallButtonOutlineCellModel *)self->_cellModel title];
  [(MapsThemeButton *)button setTitle:title forState:0];

  [(MapsThemeButton *)self->_button setAccessibilityIdentifier:@"SmallButton"];
  [(SmallButtonOutlineCell *)self _updateTitleColor];

  [(SmallButtonOutlineCell *)self _updateImage];
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(SmallButtonOutlineCellModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, model);
      [(SmallButtonOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SmallButtonOutlineCell;
  [(SmallButtonOutlineCell *)&v3 tintColorDidChange];
  [(SmallButtonOutlineCell *)self _updateTitleColor];
}

- (SmallButtonOutlineCell)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = SmallButtonOutlineCell;
  v3 = [(SidebarOutlineCell *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    [(MapsThemeButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIFont system15];
    titleLabel = [(MapsThemeButton *)v3->_button titleLabel];
    [titleLabel setFont:v6];

    v8 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:15.0];
    imageView = [(MapsThemeButton *)v3->_button imageView];
    [imageView setPreferredSymbolConfiguration:v8];

    [(MapsThemeButton *)v3->_button addTarget:v3 action:"_buttonTapped:" forControlEvents:64];
    contentView = [(SmallButtonOutlineCell *)v3 contentView];
    [contentView addSubview:v3->_button];

    topAnchor = [(MapsThemeButton *)v3->_button topAnchor];
    contentView2 = [(SmallButtonOutlineCell *)v3 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[0] = v28;
    leadingAnchor = [(MapsThemeButton *)v3->_button leadingAnchor];
    contentView3 = [(SmallButtonOutlineCell *)v3 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[1] = v23;
    trailingAnchor = [(MapsThemeButton *)v3->_button trailingAnchor];
    contentView4 = [(SmallButtonOutlineCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v14 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v33[2] = v14;
    bottomAnchor = [(MapsThemeButton *)v3->_button bottomAnchor];
    contentView5 = [(SmallButtonOutlineCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    LODWORD(v18) = 1112276992;
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v18];
    v33[3] = v19;
    v20 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v3;
}

@end