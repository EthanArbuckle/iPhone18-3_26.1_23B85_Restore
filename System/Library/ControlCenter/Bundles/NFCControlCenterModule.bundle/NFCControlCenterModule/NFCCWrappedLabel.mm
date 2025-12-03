@interface NFCCWrappedLabel
- (NFCCWrappedLabel)initWithFrame:(CGRect)frame;
@end

@implementation NFCCWrappedLabel

- (NFCCWrappedLabel)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = NFCCWrappedLabel;
  v3 = [(NFCCWrappedLabel *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NFCCWrappedLabel *)v3 addSubview:v3->_label];
    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(NFCCWrappedLabel *)v3 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[0] = v18;
    firstBaselineAnchor = [(UILabel *)v3->_label firstBaselineAnchor];
    topAnchor = [(NFCCWrappedLabel *)v3 topAnchor];
    v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
    v22[1] = v7;
    trailingAnchor = [(NFCCWrappedLabel *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_label trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[2] = v10;
    bottomAnchor = [(NFCCWrappedLabel *)v3 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_label lastBaselineAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
    v22[3] = v13;
    v14 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = v3;
  }

  return v3;
}

@end