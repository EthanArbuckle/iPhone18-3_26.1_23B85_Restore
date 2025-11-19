@interface RCTimeLabel
- (CGSize)intrinsicContentSize;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation RCTimeLabel

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = RCTimeLabel;
  [(RCTimeLabel *)&v10 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  if ([(RCTimeLabel *)self usesIntrinsicHeightSetting])
  {
    [(RCTimeLabel *)self intrinsicHeight];
    v6 = v7;
  }

  v8 = v4;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(RCTimeLabel *)self labelYOffset];
  v9.receiver = self;
  v9.super_class = RCTimeLabel;
  [(RCTimeLabel *)&v9 drawTextInRect:x, y - v8, width, height];
}

@end