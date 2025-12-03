@interface ASCDefaultOfferBackgroundStyle
- (ASCDefaultOfferBackgroundStyle)init;
- (BOOL)isEqual:(id)equal;
@end

@implementation ASCDefaultOfferBackgroundStyle

- (ASCDefaultOfferBackgroundStyle)init
{
  v3.receiver = self;
  v3.super_class = ASCDefaultOfferBackgroundStyle;
  return [(ASCOfferBackgroundStyle *)&v3 _init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    equalCopy = equal;
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