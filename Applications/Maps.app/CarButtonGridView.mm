@interface CarButtonGridView
- (CarButtonGridView)initWithFrame:(CGRect)frame;
- (NSArray)buttons;
- (void)addButton:(id)button;
- (void)resetButtons;
@end

@implementation CarButtonGridView

- (void)resetButtons
{
  buttonArray = [(CarButtonGridView *)self buttonArray];
  [buttonArray removeAllObjects];

  buttonStack = [(CarButtonGridView *)self buttonStack];
  [buttonStack _maps_setArrangedSubviews:&__NSArray0__struct];

  [(CarButtonGridView *)self setNeedsLayout];
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  buttonArray = [(CarButtonGridView *)self buttonArray];
  v5 = [buttonArray containsObject:buttonCopy];

  if ((v5 & 1) == 0)
  {
    buttonArray2 = [(CarButtonGridView *)self buttonArray];
    [buttonArray2 addObject:buttonCopy];

    buttonStack = [(CarButtonGridView *)self buttonStack];
    arrangedSubviews = [buttonStack arrangedSubviews];
    lastObject = [arrangedSubviews lastObject];

    if (!lastObject || ([lastObject arrangedSubviews], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11 >= 2))
    {
      v12 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

      [v12 setAxis:0];
      [v12 setDistribution:1];
      [v12 setSpacing:20.0];
      buttonStack2 = [(CarButtonGridView *)self buttonStack];
      [buttonStack2 addArrangedSubview:v12];

      lastObject = v12;
    }

    [lastObject addArrangedSubview:buttonCopy];
    [(CarButtonGridView *)self setNeedsLayout];
  }
}

- (NSArray)buttons
{
  buttonArray = [(CarButtonGridView *)self buttonArray];
  v3 = [buttonArray copy];

  return v3;
}

- (CarButtonGridView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = CarButtonGridView;
  v3 = [(CarButtonGridView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarButtonGridView *)v3 setAccessibilityIdentifier:@"CarButtonGridView"];
    v5 = objc_opt_new();
    buttonArray = v4->_buttonArray;
    v4->_buttonArray = v5;

    v7 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CarButtonGridView *)v4 setButtonStack:v7];

    buttonStack = [(CarButtonGridView *)v4 buttonStack];
    [buttonStack setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonStack2 = [(CarButtonGridView *)v4 buttonStack];
    [buttonStack2 setAxis:1];

    buttonStack3 = [(CarButtonGridView *)v4 buttonStack];
    [buttonStack3 setDistribution:1];

    buttonStack4 = [(CarButtonGridView *)v4 buttonStack];
    [buttonStack4 setSpacing:20.0];

    buttonStack5 = [(CarButtonGridView *)v4 buttonStack];
    [(CarButtonGridView *)v4 addSubview:buttonStack5];

    buttonStack6 = [(CarButtonGridView *)v4 buttonStack];
    leadingAnchor = [buttonStack6 leadingAnchor];
    leadingAnchor2 = [(CarButtonGridView *)v4 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[0] = v27;
    buttonStack7 = [(CarButtonGridView *)v4 buttonStack];
    trailingAnchor = [buttonStack7 trailingAnchor];
    trailingAnchor2 = [(CarButtonGridView *)v4 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[1] = v23;
    buttonStack8 = [(CarButtonGridView *)v4 buttonStack];
    topAnchor = [buttonStack8 topAnchor];
    topAnchor2 = [(CarButtonGridView *)v4 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[2] = v16;
    buttonStack9 = [(CarButtonGridView *)v4 buttonStack];
    bottomAnchor = [buttonStack9 bottomAnchor];
    bottomAnchor2 = [(CarButtonGridView *)v4 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[3] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:4];

    [NSLayoutConstraint activateConstraints:v21];
  }

  return v4;
}

@end