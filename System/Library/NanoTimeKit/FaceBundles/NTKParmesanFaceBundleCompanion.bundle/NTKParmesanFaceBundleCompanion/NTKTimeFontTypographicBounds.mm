@interface NTKTimeFontTypographicBounds
- (NTKTimeFontTypographicBounds)init;
- (NTKTimeFontTypographicBounds)initWithText:(id)text font:(id)font;
@end

@implementation NTKTimeFontTypographicBounds

- (NTKTimeFontTypographicBounds)initWithText:(id)text font:(id)font
{
  v5 = sub_23BFFA300();
  v7 = v6;
  fontCopy = font;
  v9 = sub_23BF6D9DC(v5, v7, fontCopy);

  return v9;
}

- (NTKTimeFontTypographicBounds)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end