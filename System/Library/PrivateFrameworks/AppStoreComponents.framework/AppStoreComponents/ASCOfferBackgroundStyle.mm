@interface ASCOfferBackgroundStyle
+ (id)defaultStyle;
+ (id)fixedCornerRadiusStyle:(double)style;
- (ASCOfferBackgroundStyle)init;
- (id)_init;
@end

@implementation ASCOfferBackgroundStyle

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ASCOfferBackgroundStyle;
  return [(ASCOfferBackgroundStyle *)&v3 init];
}

- (ASCOfferBackgroundStyle)init
{
  [(ASCOfferBackgroundStyle *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)defaultStyle
{
  v2 = objc_alloc_init(ASCDefaultOfferBackgroundStyle);

  return v2;
}

+ (id)fixedCornerRadiusStyle:(double)style
{
  v3 = [[ASCFixedCornerRadiusOfferBackgroundStyle alloc] initWithCornerRadius:style];

  return v3;
}

@end