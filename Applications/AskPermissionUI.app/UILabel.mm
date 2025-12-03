@interface UILabel
- (double)heightForWidth:(double)width;
@end

@implementation UILabel

- (double)heightForWidth:(double)width
{
  v11 = NSFontAttributeName;
  font = [(UILabel *)self font];
  v12 = font;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  text = [(UILabel *)self text];
  [text boundingRectWithSize:3 options:v6 attributes:0 context:{width, 1.79769313e308}];
  v9 = v8;

  return v9;
}

@end