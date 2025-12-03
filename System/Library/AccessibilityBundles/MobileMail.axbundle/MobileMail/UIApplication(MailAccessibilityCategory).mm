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
    defaultManager = [MEMORY[0x29EDC5CB0] defaultManager];
    v5 = [defaultManager attachmentForContentID:v3];

    fileName = [v5 fileName];
  }

  else
  {
    fileName = 0;
  }

  return fileName;
}

- (uint64_t)_accessibilityApplicationIsModal
{
  v0 = [MEMORY[0x29EDC7DD8] safeValueForKey:@"_mostActiveScene"];
  NSClassFromString(&cfstr_Mailcomposesce.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end