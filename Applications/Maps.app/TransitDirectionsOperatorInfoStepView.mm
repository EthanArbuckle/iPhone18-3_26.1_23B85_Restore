@interface TransitDirectionsOperatorInfoStepView
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_updateNavigationStateAlpha:(double)a3;
- (void)configureWithItem:(id)a3;
- (void)setPreviousItem:(id)a3 withPreviousNavigationState:(int64_t)a4;
@end

@implementation TransitDirectionsOperatorInfoStepView

- (void)_updateNavigationStateAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsOperatorInfoStepView;
  [(TransitDirectionsStepView *)&v5 _updateNavigationStateAlpha:?];
  [(MKMultiPartLabel *)self->_label setAlpha:a3];
}

- (void)_contentSizeCategoryDidChange
{
  v2 = self;
  if (sub_10000FA08(v2) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v3 = ;

  v4 = [v3 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(MKMultiPartLabel *)v2->_label setFont:v4];
  v5.receiver = v2;
  v5.super_class = TransitDirectionsOperatorInfoStepView;
  [(TransitDirectionsStepView *)&v5 _contentSizeCategoryDidChange];
}

- (void)setPreviousItem:(id)a3 withPreviousNavigationState:(int64_t)a4
{
  v9 = a3;
  objc_storeStrong(&self->_previousTransitDirectionsListItem, a3);
  self->_previousTransitDirectionsListItemsNavigationState = a4;
  v7 = [v9 type];
  v8 = 0.0;
  if (v7 == 12)
  {
    [TransitDirectionsBlockTransferStepView leadingTextInsetForBlockTransferTransitDirectionsListItem:v9 navigationState:a4, 0.0];
  }

  [(NSLayoutConstraint *)self->_leadingLabelConstraint setConstant:v8];
}

- (void)configureWithItem:(id)a3
{
  v19.receiver = self;
  v19.super_class = TransitDirectionsOperatorInfoStepView;
  v4 = a3;
  [(TransitDirectionsStepView *)&v19 configureWithItem:v4];
  v20 = NSFontAttributeName;
  v5 = [(MKMultiPartLabel *)self->_label font];
  v21 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v7 = [v4 majorFormattedStrings];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100F91804;
  v17 = &unk_10165F570;
  v18 = v6;
  v8 = v6;
  v9 = sub_100021DB0(v7, &v14);

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
  v3 = [(TransitDirectionsStepView *)&v12 _initialConstraints];
  label = self->_label;
  v5 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  LODWORD(v6) = 1148846080;
  v7 = [(MKMultiPartLabel *)label _maps_constraintsEqualToEdgesOfLayoutGuide:v5 priority:v6];

  v8 = [v7 leadingConstraint];
  leadingLabelConstraint = self->_leadingLabelConstraint;
  self->_leadingLabelConstraint = v8;

  v10 = [v7 allConstraints];
  [v3 addObjectsFromArray:v10];

  return v3;
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