@interface BETableViewCellPageNumberLabel
- (BETableViewCellPageNumberLabel)initWithFrame:(CGRect)frame;
@end

@implementation BETableViewCellPageNumberLabel

- (BETableViewCellPageNumberLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BETableViewCellPageNumberLabel;
  v3 = [(BETableViewCellPageNumberLabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIFont systemFontOfSize:17.0];
    [(BETableViewCellPageNumberLabel *)v3 setFont:v4];

    p_textColor = [objc_opt_class() p_textColor];
    [(BETableViewCellPageNumberLabel *)v3 setTextColor:p_textColor];

    [(BETableViewCellPageNumberLabel *)v3 setTextAlignment:2];
  }

  return v3;
}

@end