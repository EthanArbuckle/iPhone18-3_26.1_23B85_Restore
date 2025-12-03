@interface SearchResultOutlineCell
- (SearchResultOutlineCell)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateDisclosureConfiguration;
- (void)_updateFromModel;
- (void)_updateHeightConstraint;
- (void)setCellModel:(id)model;
- (void)setHovering:(BOOL)hovering;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchResultOutlineCell

- (void)_updateHeightConstraint
{
  traitCollection = [(SearchResultOutlineCell *)self traitCollection];
  numberOfLines = [(_SearchResultTableViewCell *)self->_tableViewCell numberOfLines];
  placeContextViewModel = [(_SearchResultTableViewCell *)self->_tableViewCell placeContextViewModel];
  [(_SearchResultTableViewCell *)SearchResultTableViewCell cellHeightWithTraitCollection:traitCollection numberOfLines:numberOfLines hasPlaceContext:placeContextViewModel != 0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
}

- (void)_updateDisclosureConfiguration
{
  mapItem = [(_SearchResultTableViewCell *)self->_tableViewCell mapItem];
  _venueFeatureType = [mapItem _venueFeatureType];

  if (_venueFeatureType == 1)
  {
    v5 = [[_UICellAccessoryConfigurationOutlineDisclosure alloc] initWithCellSelectionTogglesExpansionState:0];
    v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:15.0];
    v7 = [UIImage systemImageNamed:@"chevron.forward.circle.fill" withConfiguration:v6];
    [v5 setImage:v7];

    if ([(SidebarOutlineCell *)self isHovering])
    {
      +[UIColor secondaryLabelColor];
    }

    else
    {
      +[UIColor clearColor];
    }
    v8 = ;
    [v5 setTintColor:v8];

    v10 = v5;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(SearchResultOutlineCell *)self setTrailingAccessoryConfigurations:v9];
  }

  else
  {

    [(SearchResultOutlineCell *)self setTrailingAccessoryConfigurations:&__NSArray0__struct];
  }
}

- (void)_updateFromModel
{
  [(_SearchResultTableViewCell *)self->_tableViewCell setDisplayDistanceIfValidCurrentLocation:[(SearchResultOutlineCellModel *)self->_cellModel displayDistance]];
  currentLocation = [(SearchResultOutlineCellModel *)self->_cellModel currentLocation];
  [(_SearchResultTableViewCell *)self->_tableViewCell setCurrentLocation:currentLocation];

  [(_SearchResultTableViewCell *)self->_tableViewCell setPrefersAddressOverCategory:[(SearchResultOutlineCellModel *)self->_cellModel prefersAddressOverCategory]];
  searchCategory = [(SearchResultOutlineCellModel *)self->_cellModel searchCategory];
  [(_SearchResultTableViewCell *)self->_tableViewCell setSearchCategory:searchCategory];

  placeContextViewModel = [(SearchResultOutlineCellModel *)self->_cellModel placeContextViewModel];
  [(_SearchResultTableViewCell *)self->_tableViewCell setPlaceContextViewModel:placeContextViewModel];

  searchResult = [(SearchResultOutlineCellModel *)self->_cellModel searchResult];
  mapItem = [searchResult mapItem];
  [(_SearchResultTableViewCell *)self->_tableViewCell setMapItem:mapItem];

  searchResult2 = [(SearchResultOutlineCellModel *)self->_cellModel searchResult];
  relatedSection = [searchResult2 relatedSection];
  [(_SearchResultTableViewCell *)self->_tableViewCell setRelatedSection:relatedSection];

  [(SearchResultOutlineCell *)self _updateHeightConstraint];

  [(SearchResultOutlineCell *)self _updateDisclosureConfiguration];
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(SearchResultOutlineCellModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, model);
      [(SearchResultOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (void)setHovering:(BOOL)hovering
{
  v4.receiver = self;
  v4.super_class = SearchResultOutlineCell;
  [(SidebarOutlineCell *)&v4 setHovering:hovering];
  [(SearchResultOutlineCell *)self _updateDisclosureConfiguration];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SearchResultOutlineCell;
  v5 = [(SearchResultOutlineCell *)&v11 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self->_tableViewCell] && (objc_msgSend(v5, "gestureRecognizers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    contentView = [(SearchResultOutlineCell *)self contentView];
  }

  else
  {
    contentView = v5;
  }

  v9 = contentView;

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = SearchResultOutlineCell;
  changeCopy = change;
  [(SidebarOutlineCell *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(SearchResultOutlineCell *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(SearchResultOutlineCell *)self _updateHeightConstraint];
  }
}

- (SearchResultOutlineCell)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = SearchResultOutlineCell;
  v3 = [(SidebarOutlineCell *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v35 = +[(_SearchResultTableViewCell *)SearchResultTableViewCell];
    v4 = [[SearchResultTableViewCell alloc] initWithStyle:0 reuseIdentifier:v35];
    tableViewCell = v3->_tableViewCell;
    v3->_tableViewCell = v4;

    [(SearchResultTableViewCell *)v3->_tableViewCell setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(SearchResultOutlineCell *)v3 setAccessibilityIdentifier:v7];

    contentView = [(SearchResultOutlineCell *)v3 contentView];
    [contentView addSubview:v3->_tableViewCell];

    contentView2 = [(SearchResultOutlineCell *)v3 contentView];
    heightAnchor = [contentView2 heightAnchor];
    LODWORD(v11) = 1132003328;
    v12 = [heightAnchor constraintEqualToConstant:0.0 priority:v11];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v12;

    v37[0] = v3->_heightConstraint;
    topAnchor = [(SearchResultTableViewCell *)v3->_tableViewCell topAnchor];
    contentView3 = [(SearchResultOutlineCell *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[1] = v31;
    leadingAnchor = [(SearchResultTableViewCell *)v3->_tableViewCell leadingAnchor];
    contentView4 = [(SearchResultOutlineCell *)v3 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[2] = v26;
    trailingAnchor = [(SearchResultTableViewCell *)v3->_tableViewCell trailingAnchor];
    contentView5 = [(SearchResultOutlineCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[3] = v17;
    bottomAnchor = [(SearchResultTableViewCell *)v3->_tableViewCell bottomAnchor];
    contentView6 = [(SearchResultOutlineCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    LODWORD(v21) = 1112276992;
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v21];
    v37[4] = v22;
    v23 = [NSArray arrayWithObjects:v37 count:5];
    [NSLayoutConstraint activateConstraints:v23];

    [(SearchResultOutlineCell *)v3 _updateDisclosureConfiguration];
    [(SearchResultOutlineCell *)v3 _updateHeightConstraint];
  }

  return v3;
}

@end