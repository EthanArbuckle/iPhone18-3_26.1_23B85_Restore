@interface MTUIImageAccessibility
+ (id)halfPlayedIcon;
+ (id)infoIcon;
+ (id)nowPlayingIcon;
+ (id)unplayedIcon;
@end

@implementation MTUIImageAccessibility

+ (id)nowPlayingIcon
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTUIImageAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_nowPlayingIcon);
  v3 = accessibilityLocalizedString(@"now.playing.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)unplayedIcon
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTUIImageAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_unplayedIcon);
  v3 = accessibilityLocalizedString(@"unplayed");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)halfPlayedIcon
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTUIImageAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_halfPlayedIcon);
  v3 = accessibilityLocalizedString(@"partial.play");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)infoIcon
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTUIImageAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_infoIcon);
  v3 = accessibilityLocalizedString(@"info.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end