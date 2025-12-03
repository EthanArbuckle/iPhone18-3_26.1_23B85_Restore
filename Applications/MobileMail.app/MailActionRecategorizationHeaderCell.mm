@interface MailActionRecategorizationHeaderCell
- (void)setCardAction:(id)action;
@end

@implementation MailActionRecategorizationHeaderCell

- (void)setCardAction:(id)action
{
  actionCopy = action;
  v8.receiver = self;
  v8.super_class = MailActionRecategorizationHeaderCell;
  [(MailActionCell *)&v8 setCardAction:actionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = actionCopy;
    if ([v5 isExpanded])
    {
      [UIImage systemImageNamed:MFImageGlyphDownArrow];
    }

    else
    {
      [UIImage systemImageNamed:MFImageGlyphSeeMore];
    }
    v6 = ;
    imageView = [(MailActionCell *)self imageView];
    [imageView setImage:v6];
  }
}

@end