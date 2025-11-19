@interface UILabel
- (void)applyParagraphStyle:(id)a3;
@end

@implementation UILabel

- (void)applyParagraphStyle:(id)a3
{
  if (a3)
  {
    if ([a3 definesProperty:86])
    {
      v5 = [a3 intValueForProperty:86];
      if (v5 == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = v5 == 2;
      }

      [(UILabel *)self setTextAlignment:v6];
    }

    -[UILabel setTextColor:](self, "setTextColor:", [objc_msgSend(a3 valueForProperty:{18), "UIColor"}]);
    FontForStyle = TSWPFastCreateFontForStyle();
    [(UILabel *)self setFont:TSWPUIFontForCTFont()];

    CFRelease(FontForStyle);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

@end