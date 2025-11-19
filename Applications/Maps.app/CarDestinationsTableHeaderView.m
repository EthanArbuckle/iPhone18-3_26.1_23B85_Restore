@interface CarDestinationsTableHeaderView
- (CarDestinationsTableHeaderView)initWithReuseIdentifier:(id)a3;
@end

@implementation CarDestinationsTableHeaderView

- (CarDestinationsTableHeaderView)initWithReuseIdentifier:(id)a3
{
  v26.receiver = self;
  v26.super_class = CarDestinationsTableHeaderView;
  v3 = [(CarDestinationsTableHeaderView *)&v26 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [[MKVibrantLabel alloc] initWithStyle:1];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(MKVibrantLabel *)v3->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(MKVibrantLabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v30[0] = UIFontDescriptorFamilyAttribute;
    v30[1] = UIFontDescriptorSizeAttribute;
    v31[0] = @"SF Pro Text";
    v31[1] = &off_1016EE878;
    v30[2] = UIFontDescriptorTraitsAttribute;
    v28 = UIFontWeightTrait;
    v6 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v29 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
    v25 = [UIFontDescriptor fontDescriptorWithFontAttributes:v8];

    v9 = [UIFont fontWithDescriptor:v25 size:10.0];
    [(MKVibrantLabel *)v3->_titleLabel setFont:v9];

    [(MKVibrantLabel *)v3->_titleLabel setNumberOfLines:1];
    [(CarDestinationsTableHeaderView *)v3 addSubview:v3->_titleLabel];
    v24 = [(MKVibrantLabel *)v3->_titleLabel firstBaselineAnchor];
    v23 = [(CarDestinationsTableHeaderView *)v3 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23 constant:10.0];
    v27[0] = v22;
    v21 = [(MKVibrantLabel *)v3->_titleLabel leadingAnchor];
    v10 = [(CarDestinationsTableHeaderView *)v3 leadingAnchor];
    v11 = [v21 constraintEqualToAnchor:v10 constant:-2.0];
    v27[1] = v11;
    v12 = [(CarDestinationsTableHeaderView *)v3 trailingAnchor];
    v13 = [(MKVibrantLabel *)v3->_titleLabel trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v27[2] = v14;
    v15 = [(CarDestinationsTableHeaderView *)v3 bottomAnchor];
    v16 = [(MKVibrantLabel *)v3->_titleLabel lastBaselineAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:7.0];
    v27[3] = v17;
    v18 = [NSArray arrayWithObjects:v27 count:4];
    [(CarDestinationsTableHeaderView *)v3 addConstraints:v18];

    v19 = objc_alloc_init(UIView);
    [(CarDestinationsTableHeaderView *)v3 setBackgroundView:v19];
  }

  return v3;
}

@end