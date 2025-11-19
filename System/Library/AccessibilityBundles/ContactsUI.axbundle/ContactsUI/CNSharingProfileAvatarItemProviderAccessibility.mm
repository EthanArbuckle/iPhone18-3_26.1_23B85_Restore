@interface CNSharingProfileAvatarItemProviderAccessibility
+ (id)animojiItemWithRecord:(id)a3 stickerConfiguration:(id)a4 backgroundColor:(id)a5;
+ (id)contactImageItemWithContact:(id)a3 renderer:(id)a4 logger:(id)a5 type:(int64_t)a6;
+ (id)monogramImageItemWithContact:(id)a3 monogramColor:(id)a4 renderer:(id)a5 RTL:(BOOL)a6;
+ (id)silhouetteImageItemWithRenderer:(id)a3;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CNSharingProfileAvatarItemProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"silhouetteImageItemWithRenderer:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"contactImageItemWithContact:renderer:logger:type:" withFullSignature:{"@", "@", "@", "@", "q", 0}];
  [v3 validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"monogramImageItemWithContact:monogramColor:renderer:RTL:" withFullSignature:{"@", "@", "@", "@", "B", 0}];
  [v3 validateClass:@"CNSharingProfileAvatarItemProvider" hasClassMethod:@"animojiItemWithRecord:stickerConfiguration:backgroundColor:" withFullSignature:{"@", "@", "@", "@", 0}];
}

+ (id)silhouetteImageItemWithRenderer:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_silhouetteImageItemWithRenderer_, a3);
  v4 = accessibilityLocalizedString(@"contact.image.type.silhouette");
  [v3 setAccessibilityValue:v4];

  return v3;
}

+ (id)contactImageItemWithContact:(id)a3 renderer:(id)a4 logger:(id)a5 type:(int64_t)a6
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v6 = objc_msgSendSuper2(&v9, sel_contactImageItemWithContact_renderer_logger_type_, a3, a4, a5, a6);
  v7 = accessibilityLocalizedString(@"contact.image.type.photo");
  [v6 setAccessibilityValue:v7];

  return v6;
}

+ (id)monogramImageItemWithContact:(id)a3 monogramColor:(id)a4 renderer:(id)a5 RTL:(BOOL)a6
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v6 = objc_msgSendSuper2(&v9, sel_monogramImageItemWithContact_monogramColor_renderer_RTL_, a3, a4, a5, a6);
  v7 = accessibilityLocalizedString(@"contact.image.type.monogram");
  [v6 setAccessibilityValue:v7];

  return v6;
}

+ (id)animojiItemWithRecord:(id)a3 stickerConfiguration:(id)a4 backgroundColor:(id)a5
{
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___CNSharingProfileAvatarItemProviderAccessibility;
  v7 = a4;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v14, sel_animojiItemWithRecord_stickerConfiguration_backgroundColor_, v8, v7, a5);
  v10 = [v7 safeStringForKey:@"localizedName"];

  v11 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v8 includeVideoPrefix:0];

  v12 = __UIAXStringForVariables();
  [v9 setAccessibilityValue:{v12, v11, @"__AXStringForVariablesSentinel", v14.receiver, v14.super_class}];

  return v9;
}

@end