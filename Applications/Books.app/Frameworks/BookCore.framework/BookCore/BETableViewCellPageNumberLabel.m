@interface BETableViewCellPageNumberLabel
- (BETableViewCellPageNumberLabel)initWithFrame:(CGRect)a3;
@end

@implementation BETableViewCellPageNumberLabel

- (BETableViewCellPageNumberLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = BETableViewCellPageNumberLabel;
  v3 = [(BETableViewCellPageNumberLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIFont systemFontOfSize:17.0];
    [(BETableViewCellPageNumberLabel *)v3 setFont:v4];

    v5 = [objc_opt_class() p_textColor];
    [(BETableViewCellPageNumberLabel *)v3 setTextColor:v5];

    [(BETableViewCellPageNumberLabel *)v3 setTextAlignment:2];
  }

  return v3;
}

@end