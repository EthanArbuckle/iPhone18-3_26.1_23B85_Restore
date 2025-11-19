@interface TransitSchedulesHeadsignCollectionViewCell
- (TransitSchedulesHeadsignCollectionViewCell)init;
- (TransitSchedulesHeadsignCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureViews;
- (void)setHeadsign:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateStyling;
@end

@implementation TransitSchedulesHeadsignCollectionViewCell

- (void)updateStyling
{
  if ([(TransitSchedulesHeadsignCollectionViewCell *)self isSelected])
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;
  [(UILabel *)self->_headsignLabel setTextColor:v3];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TransitSchedulesHeadsignCollectionViewCell;
  [(TransitSchedulesHeadsignCollectionViewCell *)&v4 setSelected:a3];
  [(TransitSchedulesHeadsignCollectionViewCell *)self updateStyling];
}

- (void)setHeadsign:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_headsign isEqualToString:?])
  {
    v4 = [v6 copy];
    headsign = self->_headsign;
    self->_headsign = v4;

    [(UILabel *)self->_headsignLabel setText:self->_headsign];
  }
}

- (void)configureViews
{
  v3 = objc_alloc_init(UIView);
  [(TransitSchedulesHeadsignCollectionViewCell *)self setBackgroundView:v3];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [v3 layer];
  [v5 setMasksToBounds:1];

  v6 = +[UIColor systemGray3Color];
  v7 = [v6 CGColor];
  v8 = [v3 layer];
  [v8 setBorderColor:v7];

  v9 = self;
  v10 = [(TransitSchedulesHeadsignCollectionViewCell *)v9 window];
  v11 = [v10 screen];
  if (v11)
  {
    v12 = [(TransitSchedulesHeadsignCollectionViewCell *)v9 window];
    v13 = [v12 screen];
    [v13 nativeScale];
    v15 = v14;
  }

  else
  {
    v12 = +[UIScreen mainScreen];
    [v12 nativeScale];
    v15 = v16;
  }

  if (v15 <= 0.0)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 1.0 / v15;
  }

  v18 = [v3 layer];
  [v18 setBorderWidth:v17];

  [v3 _setContinuousCornerRadius:16.0];
  v41 = objc_alloc_init(UIView);
  v19 = +[UIColor systemBlueColor];
  [v41 setBackgroundColor:v19];

  [(TransitSchedulesHeadsignCollectionViewCell *)v9 setSelectedBackgroundView:v41];
  v20 = [v41 layer];
  [v20 setCornerRadius:16.0];

  v21 = [(TransitSchedulesHeadsignCollectionViewCell *)v9 contentView];
  [v21 setAccessibilityIdentifier:@"TransitSchedulesHeadsignCollectionViewCell"];
  v22 = objc_alloc_init(UILabel);
  [(UILabel *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v22 setTextAlignment:1];
  [(UILabel *)v22 setAccessibilityIdentifier:@"TransitSchedulesHeadsignCollectionViewCellHeadsignLabel"];
  v40 = objc_retainBlock(&stru_10165D908);
  [DynamicTypeWizard autorefreshLabel:v22 withFontProvider:v40];
  [v21 addSubview:v22];
  headsignLabel = v9->_headsignLabel;
  v9->_headsignLabel = v22;
  v24 = v22;

  v39 = [(UILabel *)v24 topAnchor];
  v38 = [v21 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:6.0];
  v42[0] = v37;
  v35 = [(UILabel *)v24 bottomAnchor];
  v34 = [v21 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:-6.0];
  v42[1] = v33;
  v25 = [(UILabel *)v24 leadingAnchor];
  v26 = [v21 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:12.0];
  v42[2] = v27;
  [(UILabel *)v24 trailingAnchor];
  v28 = v36 = v3;
  v29 = [v21 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-12.0];
  v42[3] = v30;
  v31 = [NSArray arrayWithObjects:v42 count:4];
  [NSLayoutConstraint activateConstraints:v31];

  [(TransitSchedulesHeadsignCollectionViewCell *)v9 setIsAccessibilityElement:1];
  v32 = [(TransitSchedulesHeadsignCollectionViewCell *)v9 accessibilityTraits];
  [(TransitSchedulesHeadsignCollectionViewCell *)v9 setAccessibilityTraits:UIAccessibilityTraitButton | v32];
}

- (TransitSchedulesHeadsignCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesHeadsignCollectionViewCell;
  v3 = [(TransitSchedulesHeadsignCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesHeadsignCollectionViewCell *)v3 configureViews];
  }

  return v4;
}

- (TransitSchedulesHeadsignCollectionViewCell)init
{
  v5.receiver = self;
  v5.super_class = TransitSchedulesHeadsignCollectionViewCell;
  v2 = [(TransitSchedulesHeadsignCollectionViewCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TransitSchedulesHeadsignCollectionViewCell *)v2 configureViews];
  }

  return v3;
}

@end