@interface MTAUtilities
+ (BOOL)isLandscape;
+ (MTControlButtonAttributes)controlButtonAttributesForView:(SEL)view buttonCircleSize:(id)size;
+ (id)durationStringFromInterval:(double)interval;
+ (id)pillButtonWithTitle:(id)title;
+ (id)sectionHeaderConfigurationWithTitle:(id)title isRTL:(BOOL)l;
+ (id)startTimerShortcutItem;
+ (id)stopTimerShortcutItem;
+ (id)thinG2FontWithSize:(double)size;
+ (id)thinG2MonospacedDigitFontWithSize:(double)size;
+ (id)timerShortcutItemForType:(unint64_t)type;
+ (int64_t)estimatedSplitLayoutForWindowWidth:(double)width;
+ (void)updateTimerAppShortcutsForType:(unint64_t)type;
@end

@implementation MTAUtilities

+ (MTControlButtonAttributes)controlButtonAttributesForView:(SEL)view buttonCircleSize:(id)size
{
  sizeCopy = size;
  v7 = MTUIShouldUseLargePadLayout();
  traitCollection = [sizeCopy traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  [sizeCopy bounds];
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
    [sizeCopy bounds];
    fmin(Height * 0.542, CGRectGetWidth(v28));
    [sizeCopy safeAreaInsets];
    [MTACircleButton buttonWidthForSize:0];
    [sizeCopy bounds];
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

+ (id)pillButtonWithTitle:(id)title
{
  titleCopy = title;
  v4 = [UIButton buttonWithType:1];
  [v4 setRole:1];
  v5 = +[UIButtonConfiguration grayButtonConfiguration];
  [v5 setTitle:titleCopy];

  [v5 setButtonSize:2];
  [v5 setCornerStyle:4];
  v6 = +[UIColor mtui_tintColor];
  [v5 setBaseForegroundColor:v6];

  [v4 setConfiguration:v5];

  return v4;
}

+ (id)thinG2FontWithSize:(double)size
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x66u, size, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(UIFontForLanguage);

  return CopyOfSystemUIFontWithGrade;
}

+ (id)thinG2MonospacedDigitFontWithSize:(double)size
{
  v4 = CTFontDescriptorCreateForUIType();
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v4, &off_1000B1968, &off_1000B1980);
  CFRelease(v4);
  v6 = CTFontCreateWithFontDescriptor(CopyWithFeature, size, 0);
  CFRelease(CopyWithFeature);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(v6);

  return CopyOfSystemUIFontWithGrade;
}

+ (id)durationStringFromInterval:(double)interval
{
  if (qword_1000D2AA8 != -1)
  {
    sub_100074008();
  }

  [qword_1000D2AA0 setAllowedUnits:224];
  [qword_1000D2AA0 setUnitsStyle:2];
  v4 = qword_1000D2AA0;

  return [v4 stringFromTimeInterval:interval];
}

+ (BOOL)isLandscape
{
  v2 = +[UIApplication sharedApplication];
  windows = [v2 windows];
  firstObject = [windows firstObject];
  windowScene = [firstObject windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return (interfaceOrientation - 3) < 2;
}

+ (id)sectionHeaderConfigurationWithTitle:(id)title isRTL:(BOOL)l
{
  lCopy = l;
  titleCopy = title;
  v6 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  textProperties = [v6 textProperties];
  font = [textProperties font];

  textProperties2 = [v6 textProperties];
  color = [textProperties2 color];

  v11 = objc_alloc_init(NSMutableParagraphStyle);
  v12 = v11;
  if (lCopy)
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
  v20[0] = font;
  v20[1] = color;
  v19[2] = NSParagraphStyleAttributeName;
  v20[2] = v12;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v17 = [v15 initWithString:titleCopy attributes:v16];

  [v14 setAttributedText:v17];

  return v14;
}

+ (int64_t)estimatedSplitLayoutForWindowWidth:(double)width
{
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = v6 * 0.5;
  if (v6 > width && v7 < width)
  {
    return 1;
  }

  if (v7 + v6 / -3.0 * 0.25 > width)
  {
    return 2;
  }

  if (v6 == width)
  {
    return 0;
  }

  return 3;
}

+ (void)updateTimerAppShortcutsForType:(unint64_t)type
{
  v5 = +[UIApplication sharedApplication];
  shortcutItems = [v5 shortcutItems];
  v10 = [shortcutItems mutableCopy];

  v7 = [v10 indexOfObjectPassingTest:&stru_1000AE5B8];
  v8 = [self timerShortcutItemForType:type];
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

+ (id)timerShortcutItemForType:(unint64_t)type
{
  if (type)
  {
    [self stopTimerShortcutItem];
  }

  else
  {
    [self startTimerShortcutItem];
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