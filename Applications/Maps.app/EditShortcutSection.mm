@interface EditShortcutSection
+ (id)sectionWithType:(unint64_t)type;
@end

@implementation EditShortcutSection

+ (id)sectionWithType:(unint64_t)type
{
  v4 = objc_alloc_init(EditShortcutSection);
  [(EditShortcutSection *)v4 setType:type];

  return v4;
}

@end