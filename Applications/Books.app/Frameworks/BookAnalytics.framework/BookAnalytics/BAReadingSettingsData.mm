@interface BAReadingSettingsData
- (BAReadingSettingsData)init;
- (BAReadingSettingsData)initWithScrollViewStatus:(int64_t)status autoNightThemeStatus:(int64_t)themeStatus backgroundColor:(int64_t)color font:(id)font fontSize:(id)size brightnessLevel:(id)level;
@end

@implementation BAReadingSettingsData

- (BAReadingSettingsData)initWithScrollViewStatus:(int64_t)status autoNightThemeStatus:(int64_t)themeStatus backgroundColor:(int64_t)color font:(id)font fontSize:(id)size brightnessLevel:(id)level
{
  v14 = sub_1E1780();
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_scrollViewStatus) = status;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus) = themeStatus;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_backgroundColor) = color;
  v15 = (self + OBJC_IVAR___BAReadingSettingsData_font);
  *v15 = v14;
  v15[1] = v16;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_fontSize) = size;
  *(&self->super.isa + OBJC_IVAR___BAReadingSettingsData_brightnessLevel) = level;
  v20.receiver = self;
  v20.super_class = type metadata accessor for BridgedReadingSettingsData();
  sizeCopy = size;
  levelCopy = level;
  return [(BAReadingSettingsData *)&v20 init];
}

- (BAReadingSettingsData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end