@interface NSAttributedString
+ (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement:(id)a3;
+ (id)fr_accessibilityAttributedStringForSpeakingStringInLowerPitch:(id)a3;
+ (id)fr_attributedString:(id)a3;
+ (id)fr_attributedStringWithString:(id)a3 font:(id)a4;
- (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement;
@end

@implementation NSAttributedString

+ (id)fr_attributedString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v3[2](v3, v4);
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

+ (id)fr_attributedStringWithString:(id)a3 font:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v12 = NSFontAttributeName;
  v13 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:v7 attributes:v9];

  return v10;
}

+ (id)fr_accessibilityAttributedStringForSpeakingStringInLowerPitch:(id)a3
{
  v3 = a3;
  v4 = [NSAttributedString alloc];
  v8 = UIAccessibilityTokenLowPitch;
  v9 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 initWithString:v3 attributes:v5];

  return v6;
}

+ (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement:(id)a3
{
  v3 = a3;
  v4 = [NSAttributedString alloc];
  v8 = UIAccessibilityTokenAnnouncementPriority;
  v9 = &off_1000CB540;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 initWithString:v3 attributes:v5];

  return v6;
}

- (id)fr_accessibilityAttributedStringForHighPriorityAnnouncement
{
  v2 = [(NSAttributedString *)self mutableCopy];
  [v2 addAttribute:UIAccessibilityTokenAnnouncementPriority value:&off_1000CB540 range:{0, objc_msgSend(v2, "length")}];
  v3 = [v2 copy];

  return v3;
}

@end