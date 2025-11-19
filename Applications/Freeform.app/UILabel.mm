@interface UILabel
- (void)crl_setTextAllowingHyphenation:(id)a3;
@end

@implementation UILabel

- (void)crl_setTextAllowingHyphenation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    LODWORD(v6) = 1036831949;
    [v5 setHyphenationFactor:v6];
    [v5 setAlignment:{-[UILabel textAlignment](self, "textAlignment")}];
    [v5 setAllowsDefaultTighteningForTruncation:{-[UILabel allowsDefaultTighteningForTruncation](self, "allowsDefaultTighteningForTruncation")}];
    [v5 setLineBreakMode:{-[UILabel lineBreakMode](self, "lineBreakMode")}];
    v7 = [NSAttributedString alloc];
    v10 = NSParagraphStyleAttributeName;
    v11 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [v7 initWithString:v4 attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  [(UILabel *)self setAttributedText:v9];
}

@end