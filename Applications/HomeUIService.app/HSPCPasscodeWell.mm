@interface HSPCPasscodeWell
- (HSPCPasscodeWell)initWithFrame:(CGRect)frame;
@end

@implementation HSPCPasscodeWell

- (HSPCPasscodeWell)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = HSPCPasscodeWell;
  v3 = [(HSPCPasscodeWell *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HSPCPasscodeWell *)v3 setUserInteractionEnabled:0];
    v5 = objc_alloc_init(UILabel);
    label = v4->_label;
    v4->_label = v5;

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HSPCPasscodeWell *)v4 addSubview:v4->_label];
    centerXAnchor = [(UILabel *)v4->_label centerXAnchor];
    centerXAnchor2 = [(HSPCPasscodeWell *)v4 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v17[0] = v9;
    centerYAnchor = [(UILabel *)v4->_label centerYAnchor];
    centerYAnchor2 = [(HSPCPasscodeWell *)v4 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v17[1] = v12;
    v13 = [NSArray arrayWithObjects:v17 count:2];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = v4;
  }

  return v4;
}

@end