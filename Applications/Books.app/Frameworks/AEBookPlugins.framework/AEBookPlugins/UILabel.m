@interface UILabel
+ (CGSize)bkSizeForString:(id)a3 constrainedToSize:(CGSize)a4 font:(id)a5 lineBreakMode:(int64_t)a6;
+ (CGSize)bkSizeForString:(id)a3 font:(id)a4;
- (void)bkSetText:(id)a3 font:(id)a4 lineBreakMode:(int64_t)a5;
@end

@implementation UILabel

+ (CGSize)bkSizeForString:(id)a3 font:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSAttributedString alloc];
  v8 = [NSNumber numberWithFloat:0.0];
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v5, NSFontAttributeName, v8, NSKernAttributeName, 0];

  v10 = [v7 initWithString:v6 attributes:v9];
  [v10 size];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (CGSize)bkSizeForString:(id)a3 constrainedToSize:(CGSize)a4 font:(id)a5 lineBreakMode:(int64_t)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(NSMutableParagraphStyle);
  [v12 setLineBreakMode:a6];
  v13 = [NSAttributedString alloc];
  v14 = [NSNumber numberWithFloat:0.0];
  v15 = [NSDictionary dictionaryWithObjectsAndKeys:v10, NSFontAttributeName, v14, NSKernAttributeName, v12, NSParagraphStyleAttributeName, 0];

  v16 = [v13 initWithString:v11 attributes:v15];
  [v16 boundingRectWithSize:3 options:0 context:{width, height}];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)bkSetText:(id)a3 font:(id)a4 lineBreakMode:(int64_t)a5
{
  v13 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_alloc_init(NSMutableParagraphStyle);
    [v9 setLineBreakMode:a5];
    v10 = [NSAttributedString alloc];
    v11 = [NSDictionary dictionaryWithObjectsAndKeys:v8, NSFontAttributeName, &off_1F14F0, NSKernAttributeName, v9, NSParagraphStyleAttributeName, 0];

    v12 = [v10 initWithString:v13 attributes:v11];
    [(UILabel *)self setAttributedText:v12];

    v8 = v9;
  }

  else
  {
    [(UILabel *)self setText:v13];
    [(UILabel *)self setFont:v8];
  }
}

@end