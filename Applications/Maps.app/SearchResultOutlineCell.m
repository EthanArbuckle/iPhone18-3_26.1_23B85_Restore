@interface SearchResultOutlineCell
- (SearchResultOutlineCell)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateDisclosureConfiguration;
- (void)_updateFromModel;
- (void)_updateHeightConstraint;
- (void)setCellModel:(id)a3;
- (void)setHovering:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SearchResultOutlineCell

- (void)_updateHeightConstraint
{
  v5 = [(SearchResultOutlineCell *)self traitCollection];
  v3 = [(_SearchResultTableViewCell *)self->_tableViewCell numberOfLines];
  v4 = [(_SearchResultTableViewCell *)self->_tableViewCell placeContextViewModel];
  [(_SearchResultTableViewCell *)SearchResultTableViewCell cellHeightWithTraitCollection:v5 numberOfLines:v3 hasPlaceContext:v4 != 0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
}

- (void)_updateDisclosureConfiguration
{
  v3 = [(_SearchResultTableViewCell *)self->_tableViewCell mapItem];
  v4 = [v3 _venueFeatureType];

  if (v4 == 1)
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
  v3 = [(SearchResultOutlineCellModel *)self->_cellModel currentLocation];
  [(_SearchResultTableViewCell *)self->_tableViewCell setCurrentLocation:v3];

  [(_SearchResultTableViewCell *)self->_tableViewCell setPrefersAddressOverCategory:[(SearchResultOutlineCellModel *)self->_cellModel prefersAddressOverCategory]];
  v4 = [(SearchResultOutlineCellModel *)self->_cellModel searchCategory];
  [(_SearchResultTableViewCell *)self->_tableViewCell setSearchCategory:v4];

  v5 = [(SearchResultOutlineCellModel *)self->_cellModel placeContextViewModel];
  [(_SearchResultTableViewCell *)self->_tableViewCell setPlaceContextViewModel:v5];

  v6 = [(SearchResultOutlineCellModel *)self->_cellModel searchResult];
  v7 = [v6 mapItem];
  [(_SearchResultTableViewCell *)self->_tableViewCell setMapItem:v7];

  v8 = [(SearchResultOutlineCellModel *)self->_cellModel searchResult];
  v9 = [v8 relatedSection];
  [(_SearchResultTableViewCell *)self->_tableViewCell setRelatedSection:v9];

  [(SearchResultOutlineCell *)self _updateHeightConstraint];

  [(SearchResultOutlineCell *)self _updateDisclosureConfiguration];
}

- (void)setCellModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cellModel != v5)
  {
    v8 = v5;
    v7 = [(SearchResultOutlineCellModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, a3);
      [(SearchResultOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (void)setHovering:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SearchResultOutlineCell;
  [(SidebarOutlineCell *)&v4 setHovering:a3];
  [(SearchResultOutlineCell *)self _updateDisclosureConfiguration];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = SearchResultOutlineCell;
  v5 = [(SearchResultOutlineCell *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self->_tableViewCell] && (objc_msgSend(v5, "gestureRecognizers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v8 = [(SearchResultOutlineCell *)self contentView];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SearchResultOutlineCell;
  v4 = a3;
  [(SidebarOutlineCell *)&v10 traitCollectionDidChange:v4];
  v5 = [(SearchResultOutlineCell *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(SearchResultOutlineCell *)self _updateHeightConstraint];
  }
}

- (SearchResultOutlineCell)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = SearchResultOutlineCell;
  v3 = [(SidebarOutlineCell *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v8 = [(SearchResultOutlineCell *)v3 contentView];
    [v8 addSubview:v3->_tableViewCell];

    v9 = [(SearchResultOutlineCell *)v3 contentView];
    v10 = [v9 heightAnchor];
    LODWORD(v11) = 1132003328;
    v12 = [v10 constraintEqualToConstant:0.0 priority:v11];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v12;

    v37[0] = v3->_heightConstraint;
    v33 = [(SearchResultTableViewCell *)v3->_tableViewCell topAnchor];
    v34 = [(SearchResultOutlineCell *)v3 contentView];
    v32 = [v34 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v37[1] = v31;
    v29 = [(SearchResultTableViewCell *)v3->_tableViewCell leadingAnchor];
    v30 = [(SearchResultOutlineCell *)v3 contentView];
    v28 = [v30 layoutMarginsGuide];
    v27 = [v28 leadingAnchor];
    v26 = [v29 constraintEqualToAnchor:v27];
    v37[2] = v26;
    v25 = [(SearchResultTableViewCell *)v3->_tableViewCell trailingAnchor];
    v14 = [(SearchResultOutlineCell *)v3 contentView];
    v15 = [v14 layoutMarginsGuide];
    v16 = [v15 trailingAnchor];
    v17 = [v25 constraintEqualToAnchor:v16];
    v37[3] = v17;
    v18 = [(SearchResultTableViewCell *)v3->_tableViewCell bottomAnchor];
    v19 = [(SearchResultOutlineCell *)v3 contentView];
    v20 = [v19 bottomAnchor];
    LODWORD(v21) = 1112276992;
    v22 = [v18 constraintEqualToAnchor:v20 constant:0.0 priority:v21];
    v37[4] = v22;
    v23 = [NSArray arrayWithObjects:v37 count:5];
    [NSLayoutConstraint activateConstraints:v23];

    [(SearchResultOutlineCell *)v3 _updateDisclosureConfiguration];
    [(SearchResultOutlineCell *)v3 _updateHeightConstraint];
  }

  return v3;
}

@end