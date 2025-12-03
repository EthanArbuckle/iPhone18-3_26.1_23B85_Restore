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
  selfCopy = self;
  sub_66AF4();
}

- (void)updateFont
{
  selfCopy = self;
  sub_6735C();
}

- (void)updateTextColor
{
  selfCopy = self;
  sub_6746C();
}

- (void)updateBackgroundColor
{
  selfCopy = self;
  sub_677F8();
}

@end