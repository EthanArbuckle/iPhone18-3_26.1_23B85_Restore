@interface MapsDebugCollectionViewCell
- (MapsDebugCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setupContentView;
@end

@implementation MapsDebugCollectionViewCell

- (void)setupContentView
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  contentView = [(MapsDebugCollectionViewCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v19 + 1) + 8 * v8) removeFromSuperview];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v9 = [UIStackView alloc];
  detailTextLabel = self->_detailTextLabel;
  v23[0] = self->_textLabel;
  v23[1] = detailTextLabel;
  v11 = [NSArray arrayWithObjects:v23 count:2];
  v12 = [v9 initWithArrangedSubviews:v11];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAxis:1];
  [v12 setAlignment:0];
  [v12 setDistribution:2];
  [v12 setSpacing:1.0];
  [v12 setAccessibilityIdentifier:@"MapsDebugCollectionViewCellTextStack"];
  contentView2 = [(MapsDebugCollectionViewCell *)self contentView];
  [contentView2 addSubview:v12];

  if (sub_10000FA08(self) == 5)
  {
    v14 = 5.0;
  }

  else
  {
    v14 = 10.0;
  }

  contentView3 = [(MapsDebugCollectionViewCell *)self contentView];
  LODWORD(v16) = 1148846080;
  v17 = [v12 _maps_constraintsEqualToEdgesOfView:contentView3 insets:v14 priority:{16.0, v14, 16.0, v16}];
  allConstraints = [v17 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (MapsDebugCollectionViewCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = MapsDebugCollectionViewCell;
  v3 = [(MapsDebugCollectionViewCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = sub_10000FA08(v3);
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    textLabel = v4->_textLabel;
    v4->_textLabel = v10;

    [(UILabel *)v4->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v5 == 5)
    {
      [UIFont systemFontOfSize:15.0];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
    v12 = ;
    [(UILabel *)v4->_textLabel setFont:v12];

    [(UILabel *)v4->_textLabel setAdjustsFontForContentSizeCategory:v5 != 5];
    [(UILabel *)v4->_textLabel setNumberOfLines:2];
    [(UILabel *)v4->_textLabel setAccessibilityIdentifier:@"TextLabel"];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v13;

    [(UILabel *)v4->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_detailTextLabel setTextColor:v15];

    if (v5 == 5)
    {
      [UIFont systemFontOfSize:15.0];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
    v16 = ;
    [(UILabel *)v4->_detailTextLabel setFont:v16];

    [(UILabel *)v4->_detailTextLabel setAdjustsFontForContentSizeCategory:v5 != 5];
    [(UILabel *)v4->_detailTextLabel setNumberOfLines:2];
    [(UILabel *)v4->_detailTextLabel setAccessibilityIdentifier:@"DetailTextLabel"];
    [(MapsDebugCollectionViewCell *)v4 setupContentView];
  }

  return v4;
}

@end