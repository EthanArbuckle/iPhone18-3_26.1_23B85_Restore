@interface CNSharingProfileAvatarItemProviderAccessibility
+ (id)animojiItemWithRecord:(id)record stickerConfiguration:(id)configuration backgroundColor:(id)color;
+ (id)contactImageItemWithContact:(id)contact renderer:(id)renderer logger:(id)logger type:(int64_t)type;
+ (id)monogramImageItemWithContact:(id)contact monogramColor:(id)color renderer:(id)renderer RTL:(BOOL)l;
+ (id)silhouetteImageItemWithRenderer:(id)renderer;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CNSharingProfileAvatarItemProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"silhouetteImageItemWithRenderer:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"contactImageItemWithContact:renderer:logger:type:" withFullSignature:{"@", "@", "@", "@", "q", 0}];
  [validationsCopy validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"monogramImageItemWithContact:monogramColor:renderer:RTL:" withFullSignature:{"@", "@", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"animojiItemWithRecord:stickerConfiguration:backgroundColor:" withFullSignature:{"@", "@", "@", "@", 0}];
}

+ (id)silhouetteImageItemWithRenderer:(id)renderer
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_silhouetteImageItemWithRenderer_, renderer);
  v4 = accessibilityLocalizedString(@"contact.image.type.silhouette");
  [v3 setAccessibilityValue:v4];

  return v3;
}

+ (id)contactImageItemWithContact:(id)contact renderer:(id)renderer logger:(id)logger type:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v6 = objc_msgSendSuper2(&v9, sel_contactImageItemWithContact_renderer_logger_type_, contact, renderer, logger, type);
  v7 = accessibilityLocalizedString(@"contact.image.type.photo");
  [v6 setAccessibilityValue:v7];

  return v6;
}

+ (id)monogramImageItemWithContact:(id)contact monogramColor:(id)color renderer:(id)renderer RTL:(BOOL)l
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v6 = objc_msgSendSuper2(&v9, sel_monogramImageItemWithContact_monogramColor_renderer_RTL_, contact, color, renderer, l);
  v7 = accessibilityLocalizedString(@"contact.image.type.monogram");
  [v6 setAccessibilityValue:v7];

  return v6;
}

+ (id)animojiItemWithRecord:(id)record stickerConfiguration:(id)configuration backgroundColor:(id)color
{
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  configurationCopy = configuration;
  recordCopy = record;
  v9 = objc_msgSendSuper2(&v14, sel_animojiItemWithRecord_stickerConfiguration_backgroundColor_, recordCopy, configurationCopy, color);
  v10 = [configurationCopy safeStringForKey:@"localizedName"];

  v11 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:recordCopy includeVideoPrefix:0];

  v12 = __UIAXStringForVariables();
  [v9 setAccessibilityValue:{v12, v11, @"__AXStringForVariablesSentinel", v14.receiver, v14.super_class}];

  return v9;
}

@end