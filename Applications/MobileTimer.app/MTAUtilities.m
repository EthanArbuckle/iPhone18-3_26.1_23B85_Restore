@interface MTAUtilities
+ (BOOL)isLandscape;
+ (MTControlButtonAttributes)controlButtonAttributesForView:(SEL)a3 buttonCircleSize:(id)a4;
+ (id)durationStringFromInterval:(double)a3;
+ (id)pillButtonWithTitle:(id)a3;
+ (id)sectionHeaderConfigurationWithTitle:(id)a3 isRTL:(BOOL)a4;
+ (id)startTimerShortcutItem;
+ (id)stopTimerShortcutItem;
+ (id)thinG2FontWithSize:(double)a3;
+ (id)thinG2MonospacedDigitFontWithSize:(double)a3;
+ (id)timerShortcutItemForType:(unint64_t)a3;
+ (int64_t)estimatedSplitLayoutForWindowWidth:(double)a3;
+ (void)updateTimerAppShortcutsForType:(unint64_t)a3;
@end

@implementation MTAUtilities

+ (MTControlButtonAttributes)controlButtonAttributesForView:(SEL)a3 buttonCircleSize:(id)a4
{
  v25 = a4;
  v7 = MTUIShouldUseLargePadLayout();
  v8 = [v25 traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  [v25 bounds];
  v12 = v11;
  v14 = v13;
  v15 = +[UIScreen mainScreen];
  [v15 bounds];
  Height = CGRectGetHeight(v27);

  if (v10)
  {
    [MTACircleButton buttonWidthForSize:1];
    if (v17 >= 120.0)
    {
      v18 = 120.0;
    }

    else
    {
      v18 = v17;
    }

    v19 = 24.0;
  }

  else
  {
    [v25 bounds];
    fmin(Height * 0.542, CGRectGetWidth(v28));
    [v25 safeAreaInsets];
    [MTACircleButton buttonWidthForSize:0];
    [v25 bounds];
    v18 = (v20 + -32.0) * 0.25;
    [MTACircleButton buttonWidthForSize:a5];
    if (v21 < v18)
    {
      v18 = v21;
    }

    v19 = 16.0;
  }

  UIRoundToViewScale();
  *&retstr->var3 = 0;
  retstr->var0 = v22;
  retstr->var1 = v18;
  v23 = 40.0;
  if (!v7)
  {
    v23 = v19;
  }

  retstr->var2 = v23;
  retstr->var3 = v12 / v14 > 0.9;
  retstr->var4 = v10;
  retstr->var5 = v7;

  return result;
}

+ (id)pillButtonWithTitle:(id)a3
{
  v3 = a3;
  v4 = [UIButton buttonWithType:1];
  [v4 setRole:1];
  v5 = +[UIButtonConfiguration grayButtonConfiguration];
  [v5 setTitle:v3];

  [v5 setButtonSize:2];
  [v5 setCornerStyle:4];
  v6 = +[UIColor mtui_tintColor];
  [v5 setBaseForegroundColor:v6];

  [v4 setConfiguration:v5];

  return v4;
}

+ (id)thinG2FontWithSize:(double)a3
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x66u, a3, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(UIFontForLanguage);

  return CopyOfSystemUIFontWithGrade;
}

+ (id)thinG2MonospacedDigitFontWithSize:(double)a3
{
  v4 = CTFontDescriptorCreateForUIType();
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v4, &off_1000B1968, &off_1000B1980);
  CFRelease(v4);
  v6 = CTFontCreateWithFontDescriptor(CopyWithFeature, a3, 0);
  CFRelease(CopyWithFeature);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(v6);

  return CopyOfSystemUIFontWithGrade;
}

+ (id)durationStringFromInterval:(double)a3
{
  if (qword_1000D2AA8 != -1)
  {
    sub_100074008();
  }

  [qword_1000D2AA0 setAllowedUnits:224];
  [qword_1000D2AA0 setUnitsStyle:2];
  v4 = qword_1000D2AA0;

  return [v4 stringFromTimeInterval:a3];
}

+ (BOOL)isLandscape
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation];

  return (v6 - 3) < 2;
}

+ (id)sectionHeaderConfigurationWithTitle:(id)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v7 = [v6 textProperties];
  v8 = [v7 font];

  v9 = [v6 textProperties];
  v10 = [v9 color];

  v11 = objc_alloc_init(NSMutableParagraphStyle);
  v12 = v11;
  if (v4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  [v11 setAlignment:v13];
  [v12 setLineBreakMode:0];
  v14 = +[UIListContentConfiguration groupedHeaderConfiguration];
  v15 = [NSAttributedString alloc];
  v19[0] = NSFontAttributeName;
  v19[1] = NSForegroundColorAttributeName;
  v20[0] = v8;
  v20[1] = v10;
  v19[2] = NSParagraphStyleAttributeName;
  v20[2] = v12;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v17 = [v15 initWithString:v5 attributes:v16];

  [v14 setAttributedText:v17];

  return v14;
}

+ (int64_t)estimatedSplitLayoutForWindowWidth:(double)a3
{
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = v6 * 0.5;
  if (v6 > a3 && v7 < a3)
  {
    return 1;
  }

  if (v7 + v6 / -3.0 * 0.25 > a3)
  {
    return 2;
  }

  if (v6 == a3)
  {
    return 0;
  }

  return 3;
}

+ (void)updateTimerAppShortcutsForType:(unint64_t)a3
{
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 shortcutItems];
  v10 = [v6 mutableCopy];

  v7 = [v10 indexOfObjectPassingTest:&stru_1000AE5B8];
  v8 = [a1 timerShortcutItemForType:a3];
  if (v8)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 addObject:v8];
    }

    else
    {
      [v10 replaceObjectAtIndex:v7 withObject:v8];
    }

    v9 = +[UIApplication sharedApplication];
    [v9 setShortcutItems:v10];
  }
}

+ (id)timerShortcutItemForType:(unint64_t)a3
{
  if (a3)
  {
    [a1 stopTimerShortcutItem];
  }

  else
  {
    [a1 startTimerShortcutItem];
  }
  v3 = ;

  return v3;
}

+ (id)startTimerShortcutItem
{
  v2 = [UIApplicationShortcutIcon iconWithSystemImageName:@"timer"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"START_TIMER_QUICK_ACTION_TITLE" value:&stru_1000AEF10 table:@"Localizable-OrbHW"];

  v5 = [UIApplicationShortcutItem alloc];
  v6 = [v5 initWithType:kStartTimerActionID localizedTitle:v4 localizedSubtitle:0 icon:v2 userInfo:0];

  return v6;
}

+ (id)stopTimerShortcutItem
{
  v2 = [UIApplicationShortcutIcon iconWithSystemImageName:@"timer"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"STOP_TIMER_QUICK_ACTION_TITLE" value:&stru_1000AEF10 table:@"Localizable-OrbHW"];

  v5 = [UIApplicationShortcutItem alloc];
  v6 = [v5 initWithType:kStopTimerActionID localizedTitle:v4 localizedSubtitle:0 icon:v2 userInfo:0];

  return v6;
}

@end