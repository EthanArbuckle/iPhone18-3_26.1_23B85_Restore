@interface CardTestPopoverContainee
- (CardTestPopoverContainee)initWithContext:(id)context forLabelMarker:(id)marker;
- (void)_createSubviews;
@end

@implementation CardTestPopoverContainee

- (void)_createSubviews
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [NSString stringWithFormat:@"Label Marker: %@", self->_labelMarker];
  [v3 setText:v4];

  [v3 setNumberOfLines:0];
  view = [(CardTestPopoverContainee *)self view];
  [view addSubview:v3];

  leadingAnchor = [v3 leadingAnchor];
  view2 = [(CardTestPopoverContainee *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v23[0] = v19;
  topAnchor = [v3 topAnchor];
  view3 = [(CardTestPopoverContainee *)self view];
  topAnchor2 = [view3 topAnchor];
  v15 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v23[1] = v15;
  view4 = [(CardTestPopoverContainee *)self view];
  trailingAnchor = [view4 trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v23[2] = v9;
  view5 = [(CardTestPopoverContainee *)self view];
  bottomAnchor = [view5 bottomAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v23[3] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (CardTestPopoverContainee)initWithContext:(id)context forLabelMarker:(id)marker
{
  markerCopy = marker;
  v11.receiver = self;
  v11.super_class = CardTestPopoverContainee;
  v8 = [(CardTestContainee *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_labelMarker, marker);
  }

  return v9;
}

@end