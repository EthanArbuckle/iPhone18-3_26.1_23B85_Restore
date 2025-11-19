@interface AXLTSettingsManager
+ (AXLTSettingsManager)shared;
- (void)updateBackgroundColor;
- (void)updateFont;
- (void)updateNubbitIdleOpacity;
- (void)updateTextColor;
@end

@implementation AXLTSettingsManager

+ (AXLTSettingsManager)shared
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v3 = static AXLTSettingsManager.shared;

  return v3;
}

- (void)updateNubbitIdleOpacity
{
  v2 = self;
  sub_66AF4();
}

- (void)updateFont
{
  v2 = self;
  sub_6735C();
}

- (void)updateTextColor
{
  v2 = self;
  sub_6746C();
}

- (void)updateBackgroundColor
{
  v2 = self;
  sub_677F8();
}

@end