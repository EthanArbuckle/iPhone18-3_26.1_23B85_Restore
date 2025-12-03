@interface CarDestinationsTableHeaderView
- (CarDestinationsTableHeaderView)initWithReuseIdentifier:(id)identifier;
@end

@implementation CarDestinationsTableHeaderView

- (CarDestinationsTableHeaderView)initWithReuseIdentifier:(id)identifier
{
  v26.receiver = self;
  v26.super_class = CarDestinationsTableHeaderView;
  v3 = [(CarDestinationsTableHeaderView *)&v26 initWithReuseIdentifier:identifier];
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
    firstBaselineAnchor = [(MKVibrantLabel *)v3->_titleLabel firstBaselineAnchor];
    topAnchor = [(CarDestinationsTableHeaderView *)v3 topAnchor];
    v22 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:10.0];
    v27[0] = v22;
    leadingAnchor = [(MKVibrantLabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(CarDestinationsTableHeaderView *)v3 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-2.0];
    v27[1] = v11;
    trailingAnchor = [(CarDestinationsTableHeaderView *)v3 trailingAnchor];
    trailingAnchor2 = [(MKVibrantLabel *)v3->_titleLabel trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[2] = v14;
    bottomAnchor = [(CarDestinationsTableHeaderView *)v3 bottomAnchor];
    lastBaselineAnchor = [(MKVibrantLabel *)v3->_titleLabel lastBaselineAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:7.0];
    v27[3] = v17;
    v18 = [NSArray arrayWithObjects:v27 count:4];
    [(CarDestinationsTableHeaderView *)v3 addConstraints:v18];

    v19 = objc_alloc_init(UIView);
    [(CarDestinationsTableHeaderView *)v3 setBackgroundView:v19];
  }

  return v3;
}

@end