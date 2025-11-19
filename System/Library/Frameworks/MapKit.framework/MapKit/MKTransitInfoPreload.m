@interface MKTransitInfoPreload
- (MKTransitInfoPreload)initWithAttributedString:(id)a3;
@end

@implementation MKTransitInfoPreload

- (MKTransitInfoPreload)initWithAttributedString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKTransitInfoPreload;
  v5 = [(MKTransitInfoPreload *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

@end