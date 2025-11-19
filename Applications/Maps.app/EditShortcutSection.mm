@interface EditShortcutSection
+ (id)sectionWithType:(unint64_t)a3;
@end

@implementation EditShortcutSection

+ (id)sectionWithType:(unint64_t)a3
{
  v4 = objc_alloc_init(EditShortcutSection);
  [(EditShortcutSection *)v4 setType:a3];

  return v4;
}

@end