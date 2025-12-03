@interface VenueDropDownOutlineCell
- (VenueDropDownOutlineCell)initWithFrame:(CGRect)frame;
- (void)_itemSelectedCategory:(id)category;
- (void)_updateFromModel;
- (void)setCellModel:(id)model;
@end

@implementation VenueDropDownOutlineCell

- (void)_itemSelectedCategory:(id)category
{
  cellModel = self->_cellModel;
  categoryCopy = category;
  delegate = [(VenueDropDownOutlineCellModel *)cellModel delegate];
  [delegate venuesDropDownOutlineCell:self didSelectCategory:categoryCopy];
}

- (void)_updateFromModel
{
  button = self->_button;
  buttonTitle = [(VenueDropDownOutlineCellModel *)self->_cellModel buttonTitle];
  v5 = [buttonTitle stringByAppendingString:@" "];
  [(MapsRightImageButton *)button setTitle:v5 forState:0];

  [(MapsRightImageButton *)self->_button setAccessibilityIdentifier:@"VenueDropDownButton"];
  categories = [(VenueDropDownOutlineCellModel *)self->_cellModel categories];
  v7 = [categories count];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = +[NSMutableArray array];
    categories2 = [(VenueDropDownOutlineCellModel *)self->_cellModel categories];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10057DA7C;
    v16 = &unk_1016222B0;
    objc_copyWeak(&v19, &location);
    selfCopy = self;
    v10 = v8;
    v18 = v10;
    [categories2 enumerateObjectsUsingBlock:&v13];

    selfCopy = [UIMenu menuWithTitle:&stru_1016631F0 children:v10, v13, v14, v15, v16, selfCopy];
    [(MapsRightImageButton *)self->_button setMenu:selfCopy];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = self->_button;

    [(MapsRightImageButton *)v12 setMenu:0];
  }
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(VenueDropDownOutlineCellModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, model);
      [(VenueDropDownOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (VenueDropDownOutlineCell)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = VenueDropDownOutlineCell;
  v3 = [(SidebarOutlineCell *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MapsRightImageButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    [(MapsRightImageButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIFont system15];
    titleLabel = [(MapsRightImageButton *)v3->_button titleLabel];
    [titleLabel setFont:v6];

    [(MapsThemeButton *)v3->_button setTitleColorProvider:&stru_101622288];
    v8 = v3->_button;
    v9 = +[UIFont system15];
    v10 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:2];
    v11 = [UIImage systemImageNamed:@"chevron.down" withConfiguration:v10];
    [(MapsRightImageButton *)v8 setImage:v11 forState:0];

    theme = [(VenueDropDownOutlineCell *)v3 theme];
    keyColor = [theme keyColor];
    [(MapsRightImageButton *)v3->_button setTintColor:keyColor];

    [(MapsRightImageButton *)v3->_button setShowsMenuAsPrimaryAction:1];
    contentView = [(VenueDropDownOutlineCell *)v3 contentView];
    [contentView addSubview:v3->_button];

    topAnchor = [(MapsRightImageButton *)v3->_button topAnchor];
    contentView2 = [(VenueDropDownOutlineCell *)v3 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v37[0] = v32;
    leadingAnchor = [(MapsRightImageButton *)v3->_button leadingAnchor];
    contentView3 = [(VenueDropDownOutlineCell *)v3 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[1] = v27;
    trailingAnchor = [(MapsRightImageButton *)v3->_button trailingAnchor];
    contentView4 = [(VenueDropDownOutlineCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v18 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v37[2] = v18;
    bottomAnchor = [(MapsRightImageButton *)v3->_button bottomAnchor];
    contentView5 = [(VenueDropDownOutlineCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    LODWORD(v22) = 1112276992;
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0 priority:v22];
    v37[3] = v23;
    v24 = [NSArray arrayWithObjects:v37 count:4];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v3;
}

@end