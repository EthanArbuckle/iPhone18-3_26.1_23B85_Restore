@interface UIApplication(MailAccessibilityCategory)
+ (void)_accessibilityPerformValidations:()MailAccessibilityCategory;
- (id)_accessibilityFilenameForAttachmentCID:()MailAccessibilityCategory;
- (uint64_t)_accessibilityApplicationIsModal;
@end

@implementation UIApplication(MailAccessibilityCategory)

+ (void)_accessibilityPerformValidations:()MailAccessibilityCategory
{
  v3 = a3;
  [v3 validateClass:@"MailComposeScene"];
  [v3 validateClass:@"UIWindowScene" isKindOfClass:@"UIScene"];
  [v3 validateClass:@"UIScene" hasClassMethod:@"_mostActiveScene" withFullSignature:{"@", 0}];
}

- (id)_accessibilityFilenameForAttachmentCID:()MailAccessibilityCategory
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x29EDC5CB0] defaultManager];
    v5 = [v4 attachmentForContentID:v3];

    v6 = [v5 fileName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_accessibilityApplicationIsModal
{
  v0 = [MEMORY[0x29EDC7DD8] safeValueForKey:@"_mostActiveScene"];
  NSClassFromString(&cfstr_Mailcomposesce.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end