@interface NFCCWrappedLabel
- (NFCCWrappedLabel)initWithFrame:(CGRect)a3;
@end

@implementation NFCCWrappedLabel

- (NFCCWrappedLabel)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = NFCCWrappedLabel;
  v3 = [(NFCCWrappedLabel *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NFCCWrappedLabel *)v3 addSubview:v3->_label];
    v20 = [(UILabel *)v3->_label leadingAnchor];
    v19 = [(NFCCWrappedLabel *)v3 leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v17 = [(UILabel *)v3->_label firstBaselineAnchor];
    v6 = [(NFCCWrappedLabel *)v3 topAnchor];
    v7 = [v17 constraintEqualToAnchor:v6];
    v22[1] = v7;
    v8 = [(NFCCWrappedLabel *)v3 trailingAnchor];
    v9 = [(UILabel *)v3->_label trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v22[2] = v10;
    v11 = [(NFCCWrappedLabel *)v3 bottomAnchor];
    v12 = [(UILabel *)v3->_label lastBaselineAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v22[3] = v13;
    v14 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = v3;
  }

  return v3;
}

@end