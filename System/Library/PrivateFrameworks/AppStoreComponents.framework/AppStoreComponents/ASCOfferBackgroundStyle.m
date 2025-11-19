@interface ASCOfferBackgroundStyle
+ (id)defaultStyle;
+ (id)fixedCornerRadiusStyle:(double)a3;
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

+ (id)fixedCornerRadiusStyle:(double)a3
{
  v3 = [[ASCFixedCornerRadiusOfferBackgroundStyle alloc] initWithCornerRadius:a3];

  return v3;
}

@end