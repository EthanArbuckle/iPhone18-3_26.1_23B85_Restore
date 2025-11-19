@interface FMSettingRowView
- (NSString)accessibilityLabel;
- (UIImage)accessibilityChevronImage;
- (_TtC6FindMy16FMSettingRowView)initWithFrame:(CGRect)a3;
@end

@implementation FMSettingRowView

- (UIImage)accessibilityChevronImage
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron) image];

  return v2;
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_100502ADC();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC6FindMy16FMSettingRowView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end