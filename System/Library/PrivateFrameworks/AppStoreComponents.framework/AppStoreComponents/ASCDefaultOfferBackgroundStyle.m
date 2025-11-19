@interface ASCDefaultOfferBackgroundStyle
- (ASCDefaultOfferBackgroundStyle)init;
- (BOOL)isEqual:(id)a3;
@end

@implementation ASCDefaultOfferBackgroundStyle

- (ASCDefaultOfferBackgroundStyle)init
{
  v3.receiver = self;
  v3.super_class = ASCDefaultOfferBackgroundStyle;
  return [(ASCOfferBackgroundStyle *)&v3 _init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end