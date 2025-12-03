@interface UILabel
- (void)setAttributedOrPlainText:(id)text;
@end

@implementation UILabel

- (void)setAttributedOrPlainText:(id)text
{
  textCopy = text;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v5 = textCopy;
LABEL_3:
    [(UILabel *)selfCopy2 setText:v5];
LABEL_6:
    v6 = textCopy;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UILabel *)self setAttributedText:textCopy];
    goto LABEL_6;
  }

  v6 = textCopy;
  if (!textCopy)
  {
    v5 = &stru_100361FD0;
    selfCopy2 = self;
    goto LABEL_3;
  }

LABEL_7:
}

@end