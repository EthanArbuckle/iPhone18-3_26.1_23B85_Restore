@interface UILabel
+ (CGSize)bkSizeForString:(id)string constrainedToSize:(CGSize)size font:(id)font lineBreakMode:(int64_t)mode;
+ (CGSize)bkSizeForString:(id)string font:(id)font;
- (void)bkSetText:(id)text font:(id)font lineBreakMode:(int64_t)mode;
@end

@implementation UILabel

+ (CGSize)bkSizeForString:(id)string font:(id)font
{
  fontCopy = font;
  stringCopy = string;
  v7 = [NSAttributedString alloc];
  v8 = [NSNumber numberWithFloat:0.0];
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:fontCopy, NSFontAttributeName, v8, NSKernAttributeName, 0];

  v10 = [v7 initWithString:stringCopy attributes:v9];
  [v10 size];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (CGSize)bkSizeForString:(id)string constrainedToSize:(CGSize)size font:(id)font lineBreakMode:(int64_t)mode
{
  height = size.height;
  width = size.width;
  fontCopy = font;
  stringCopy = string;
  v12 = objc_alloc_init(NSMutableParagraphStyle);
  [v12 setLineBreakMode:mode];
  v13 = [NSAttributedString alloc];
  v14 = [NSNumber numberWithFloat:0.0];
  v15 = [NSDictionary dictionaryWithObjectsAndKeys:fontCopy, NSFontAttributeName, v14, NSKernAttributeName, v12, NSParagraphStyleAttributeName, 0];

  v16 = [v13 initWithString:stringCopy attributes:v15];
  [v16 boundingRectWithSize:3 options:0 context:{width, height}];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)bkSetText:(id)text font:(id)font lineBreakMode:(int64_t)mode
{
  textCopy = text;
  fontCopy = font;
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_alloc_init(NSMutableParagraphStyle);
    [v9 setLineBreakMode:mode];
    v10 = [NSAttributedString alloc];
    v11 = [NSDictionary dictionaryWithObjectsAndKeys:fontCopy, NSFontAttributeName, &off_1F14F0, NSKernAttributeName, v9, NSParagraphStyleAttributeName, 0];

    v12 = [v10 initWithString:textCopy attributes:v11];
    [(UILabel *)self setAttributedText:v12];

    fontCopy = v9;
  }

  else
  {
    [(UILabel *)self setText:textCopy];
    [(UILabel *)self setFont:fontCopy];
  }
}

@end