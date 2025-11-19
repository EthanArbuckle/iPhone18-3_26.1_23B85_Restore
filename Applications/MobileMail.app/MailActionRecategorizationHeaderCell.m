@interface MailActionRecategorizationHeaderCell
- (void)setCardAction:(id)a3;
@end

@implementation MailActionRecategorizationHeaderCell

- (void)setCardAction:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MailActionRecategorizationHeaderCell;
  [(MailActionCell *)&v8 setCardAction:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 isExpanded])
    {
      [UIImage systemImageNamed:MFImageGlyphDownArrow];
    }

    else
    {
      [UIImage systemImageNamed:MFImageGlyphSeeMore];
    }
    v6 = ;
    v7 = [(MailActionCell *)self imageView];
    [v7 setImage:v6];
  }
}

@end