@interface RadioTopAlignedLabel
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation RadioTopAlignedLabel

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  numberOfLines = [(RadioTopAlignedLabel *)selfCopy numberOfLines];
  v9 = type metadata accessor for RadioTopAlignedLabel();
  v11.receiver = selfCopy;
  v11.super_class = v9;
  [(RadioTopAlignedLabel *)&v11 textRectForBounds:numberOfLines limitedToNumberOfLines:x, y, width, height];
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(RadioTopAlignedLabel *)&v10 drawTextInRect:?];
}

@end