@interface RadioTopAlignedLabel
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation RadioTopAlignedLabel

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = [(RadioTopAlignedLabel *)v7 numberOfLines];
  v9 = type metadata accessor for RadioTopAlignedLabel();
  v11.receiver = v7;
  v11.super_class = v9;
  [(RadioTopAlignedLabel *)&v11 textRectForBounds:v8 limitedToNumberOfLines:x, y, width, height];
  v10.receiver = v7;
  v10.super_class = v9;
  [(RadioTopAlignedLabel *)&v10 drawTextInRect:?];
}

@end