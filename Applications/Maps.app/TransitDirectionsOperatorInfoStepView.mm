@interface TransitDirectionsOperatorInfoStepView
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
- (void)setPreviousItem:(id)item withPreviousNavigationState:(int64_t)state;
@end

@implementation TransitDirectionsOperatorInfoStepView

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsOperatorInfoStepView;
  [(TransitDirectionsStepView *)&v5 _updateNavigationStateAlpha:?];
  [(MKMultiPartLabel *)self->_label setAlpha:alpha];
}

- (void)_contentSizeCategoryDidChange
{
  selfCopy = self;
  if (sub_10000FA08(selfCopy) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v3 = ;

  _mapkit_fontByAddingFeaturesForTimeDisplay = [v3 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(MKMultiPartLabel *)selfCopy->_label setFont:_mapkit_fontByAddingFeaturesForTimeDisplay];
  v5.receiver = selfCopy;
  v5.super_class = TransitDirectionsOperatorInfoStepView;
  [(TransitDirectionsStepView *)&v5 _contentSizeCategoryDidChange];
}

- (void)setPreviousItem:(id)item withPreviousNavigationState:(int64_t)state
{
  itemCopy = item;
  objc_storeStrong(&self->_previousTransitDirectionsListItem, item);
  self->_previousTransitDirectionsListItemsNavigationState = state;
  type = [itemCopy type];
  v8 = 0.0;
  if (type == 12)
  {
    [TransitDirectionsBlockTransferStepView leadingTextInsetForBlockTransferTransitDirectionsListItem:itemCopy navigationState:state, 0.0];
  }

  [(NSLayoutConstraint *)self->_leadingLabelConstraint setConstant:v8];
}

- (void)configureWithItem:(id)item
{
  v19.receiver = self;
  v19.super_class = TransitDirectionsOperatorInfoStepView;
  itemCopy = item;
  [(TransitDirectionsStepView *)&v19 configureWithItem:itemCopy];
  v20 = NSFontAttributeName;
  font = [(MKMultiPartLabel *)self->_label font];
  v21 = font;
  v6 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  majorFormattedStrings = [itemCopy majorFormattedStrings];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100F91804;
  v17 = &unk_10165F570;
  v18 = v6;
  v8 = v6;
  v9 = sub_100021DB0(majorFormattedStrings, &v14);

  v10 = [NSBundle mainBundle:v14];
  v11 = [v10 localizedStringForKey:@"Hours [separator] Fares [Transit value:Route List View]" table:{@"localized string not found", 0}];

  v12 = [[NSAttributedString alloc] initWithString:v11];
  v13 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v9 repeatedSeparator:v12];

  [(MKMultiPartLabel *)self->_label setMultiPartString:v13];
}

- (id)_initialConstraints
{
  v12.receiver = self;
  v12.super_class = TransitDirectionsOperatorInfoStepView;
  _initialConstraints = [(TransitDirectionsStepView *)&v12 _initialConstraints];
  label = self->_label;
  contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
  LODWORD(v6) = 1148846080;
  v7 = [(MKMultiPartLabel *)label _maps_constraintsEqualToEdgesOfLayoutGuide:contentLayoutGuide priority:v6];

  leadingConstraint = [v7 leadingConstraint];
  leadingLabelConstraint = self->_leadingLabelConstraint;
  self->_leadingLabelConstraint = leadingConstraint;

  allConstraints = [v7 allConstraints];
  [_initialConstraints addObjectsFromArray:allConstraints];

  return _initialConstraints;
}

- (void)_createSubviews
{
  v9.receiver = self;
  v9.super_class = TransitDirectionsOperatorInfoStepView;
  [(TransitDirectionsStepView *)&v9 _createSubviews];
  v3 = [[MKMultiPartLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  label = self->_label;
  self->_label = v3;

  [(MKMultiPartLabel *)self->_label setAccessibilityIdentifier:@"Label"];
  [(MKMultiPartLabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIFont system15];
  [(MKMultiPartLabel *)self->_label setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [(MKMultiPartLabel *)self->_label setTextColor:v6];

  [(MKMultiPartLabel *)self->_label setUserInteractionEnabled:0];
  [(MKMultiPartLabel *)self->_label setTextInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  LODWORD(v7) = 1148846080;
  [(MKMultiPartLabel *)self->_label setContentHuggingPriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(MKMultiPartLabel *)self->_label setContentCompressionResistancePriority:1 forAxis:v8];
  [(TransitDirectionsOperatorInfoStepView *)self addSubview:self->_label];
}

@end