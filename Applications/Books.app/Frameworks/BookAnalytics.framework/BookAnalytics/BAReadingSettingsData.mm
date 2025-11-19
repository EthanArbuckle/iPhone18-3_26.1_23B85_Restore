@interface BAReadingSettingsData
- (BAReadingSettingsData)init;
- (BAReadingSettingsData)initWithScrollViewStatus:(int64_t)a3 autoNightThemeStatus:(int64_t)a4 backgroundColor:(int64_t)a5 font:(id)a6 fontSize:(id)a7 brightnessLevel:(id)a8;
@end

@implementation BAReadingSettingsData

- (BAReadingSettingsData)initWithScrollViewStatus:(int64_t)a3 autoNightThemeStatus:(int64_t)a4 backgroundColor:(int64_t)a5 font:(id)a6 fontSize:(id)a7 brightnessLevel:(id)a8
{
  v14 = sub_1E1780();
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_scrollViewStatus) = a3;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus) = a4;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_backgroundColor) = a5;
  v15 = (self + OBJC_IVAR___BAReadingSettingsData_font);
  *v15 = v14;
  v15[1] = v16;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_fontSize) = a7;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_brightnessLevel) = a8;
  v20.receiver = self;
  v20.super_class = type metadata accessor for BridgedReadingSettingsData();
  v17 = a7;
  v18 = a8;
  return [(BAReadingSettingsData *)&v20 init];
}

- (BAReadingSettingsData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end