@interface TransitDirectionsBadgesStepView
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)configureWithItem:(id)item;
@end

@implementation TransitDirectionsBadgesStepView

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  v7.receiver = self;
  v7.super_class = TransitDirectionsBadgesStepView;
  [(TransitDirectionsStepView *)&v7 configureWithItem:itemCopy];
  badges = [itemCopy badges];
  v6 = [GEOTransitStepBadge _maps_artworkListFromStepBadges:badges];
  [(TransitArtworkListView *)self->_artworkListView setArtworkData:v6];
}

- (id)_initialConstraints
{
  v11.receiver = self;
  v11.super_class = TransitDirectionsBadgesStepView;
  _initialConstraints = [(TransitDirectionsStepView *)&v11 _initialConstraints];
  artworkListView = self->_artworkListView;
  contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
  LODWORD(v6) = 1148846080;
  v7 = [(TransitArtworkListView *)artworkListView _maps_constraintsEqualToEdgesOfLayoutGuide:contentLayoutGuide priority:v6];

  topConstraint = [v7 topConstraint];
  [topConstraint setConstant:6.0];

  allConstraints = [v7 allConstraints];
  [_initialConstraints addObjectsFromArray:allConstraints];

  return _initialConstraints;
}

- (void)_createSubviews
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsBadgesStepView;
  [(TransitDirectionsStepView *)&v5 _createSubviews];
  v3 = [[TransitArtworkListView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  artworkListView = self->_artworkListView;
  self->_artworkListView = v3;

  [(TransitArtworkListView *)self->_artworkListView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransitArtworkListView *)self->_artworkListView setSeparatorStyle:1];
  [(TransitDirectionsBadgesStepView *)self addSubview:self->_artworkListView];
}

@end