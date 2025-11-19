@interface NTKTimeFontTypographicBounds
- (NTKTimeFontTypographicBounds)init;
- (NTKTimeFontTypographicBounds)initWithText:(id)a3 font:(id)a4;
@end

@implementation NTKTimeFontTypographicBounds

- (NTKTimeFontTypographicBounds)initWithText:(id)a3 font:(id)a4
{
  v5 = sub_23BFFA300();
  v7 = v6;
  v8 = a4;
  v9 = sub_23BF6D9DC(v5, v7, v8);

  return v9;
}

- (NTKTimeFontTypographicBounds)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end