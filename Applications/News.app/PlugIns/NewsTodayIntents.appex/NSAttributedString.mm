@interface NSAttributedString
+ (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement:(id)announcement;
+ (id)fr_accessibilityAttributedStringForSpeakingStringInLowerPitch:(id)pitch;
+ (id)fr_attributedString:(id)string;
+ (id)fr_attributedStringWithString:(id)string font:(id)font;
- (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement;
@end

@implementation NSAttributedString

+ (id)fr_attributedString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  if (stringCopy)
  {
    stringCopy[2](stringCopy, v4);
  }

  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)fr_attributedStringWithString:(id)string font:(id)font
{
  fontCopy = font;
  stringCopy = string;
  v8 = [self alloc];
  v12 = NSFontAttributeName;
  v13 = fontCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:stringCopy attributes:v9];

  return v10;
}

+ (id)fr_accessibilityAttributedStringForSpeakingStringInLowerPitch:(id)pitch
{
  pitchCopy = pitch;
  v4 = [NSAttributedString alloc];
  v8 = UIAccessibilityTokenLowPitch;
  v9 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 initWithString:pitchCopy attributes:v5];

  return v6;
}

+ (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v4 = [NSAttributedString alloc];
  v8 = UIAccessibilityTokenAnnouncementPriority;
  v9 = &off_100021628;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 initWithString:announcementCopy attributes:v5];

  return v6;
}

- (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement
{
  v2 = [(NSAttributedString *)self mutableCopy];
  [v2 addAttribute:UIAccessibilityTokenAnnouncementPriority value:&off_100021628 range:{0, objc_msgSend(v2, "length")}];
  v3 = [v2 copy];

  return v3;
}

@end