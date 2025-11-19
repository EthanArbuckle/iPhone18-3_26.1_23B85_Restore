@interface CarButtonGridView
- (CarButtonGridView)initWithFrame:(CGRect)a3;
- (NSArray)buttons;
- (void)addButton:(id)a3;
- (void)resetButtons;
@end

@implementation CarButtonGridView

- (void)resetButtons
{
  v3 = [(CarButtonGridView *)self buttonArray];
  [v3 removeAllObjects];

  v4 = [(CarButtonGridView *)self buttonStack];
  [v4 _maps_setArrangedSubviews:&__NSArray0__struct];

  [(CarButtonGridView *)self setNeedsLayout];
}

- (void)addButton:(id)a3
{
  v14 = a3;
  v4 = [(CarButtonGridView *)self buttonArray];
  v5 = [v4 containsObject:v14];

  if ((v5 & 1) == 0)
  {
    v6 = [(CarButtonGridView *)self buttonArray];
    [v6 addObject:v14];

    v7 = [(CarButtonGridView *)self buttonStack];
    v8 = [v7 arrangedSubviews];
    v9 = [v8 lastObject];

    if (!v9 || ([v9 arrangedSubviews], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11 >= 2))
    {
      v12 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

      [v12 setAxis:0];
      [v12 setDistribution:1];
      [v12 setSpacing:20.0];
      v13 = [(CarButtonGridView *)self buttonStack];
      [v13 addArrangedSubview:v12];

      v9 = v12;
    }

    [v9 addArrangedSubview:v14];
    [(CarButtonGridView *)self setNeedsLayout];
  }
}

- (NSArray)buttons
{
  v2 = [(CarButtonGridView *)self buttonArray];
  v3 = [v2 copy];

  return v3;
}

- (CarButtonGridView)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = CarButtonGridView;
  v3 = [(CarButtonGridView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarButtonGridView *)v3 setAccessibilityIdentifier:@"CarButtonGridView"];
    v5 = objc_opt_new();
    buttonArray = v4->_buttonArray;
    v4->_buttonArray = v5;

    v7 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CarButtonGridView *)v4 setButtonStack:v7];

    v8 = [(CarButtonGridView *)v4 buttonStack];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(CarButtonGridView *)v4 buttonStack];
    [v9 setAxis:1];

    v10 = [(CarButtonGridView *)v4 buttonStack];
    [v10 setDistribution:1];

    v11 = [(CarButtonGridView *)v4 buttonStack];
    [v11 setSpacing:20.0];

    v12 = [(CarButtonGridView *)v4 buttonStack];
    [(CarButtonGridView *)v4 addSubview:v12];

    v30 = [(CarButtonGridView *)v4 buttonStack];
    v29 = [v30 leadingAnchor];
    v28 = [(CarButtonGridView *)v4 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v32[0] = v27;
    v26 = [(CarButtonGridView *)v4 buttonStack];
    v25 = [v26 trailingAnchor];
    v24 = [(CarButtonGridView *)v4 trailingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v32[1] = v23;
    v13 = [(CarButtonGridView *)v4 buttonStack];
    v14 = [v13 topAnchor];
    v15 = [(CarButtonGridView *)v4 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v32[2] = v16;
    v17 = [(CarButtonGridView *)v4 buttonStack];
    v18 = [v17 bottomAnchor];
    v19 = [(CarButtonGridView *)v4 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v32[3] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:4];

    [NSLayoutConstraint activateConstraints:v21];
  }

  return v4;
}

@end