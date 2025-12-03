@interface MKTransitInfoPreload
- (MKTransitInfoPreload)initWithAttributedString:(id)string;
@end

@implementation MKTransitInfoPreload

- (MKTransitInfoPreload)initWithAttributedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = MKTransitInfoPreload;
  v5 = [(MKTransitInfoPreload *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

@end