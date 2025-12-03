@interface EditShortcutType
+ (id)shortcutWithType:(int64_t)type;
@end

@implementation EditShortcutType

+ (id)shortcutWithType:(int64_t)type
{
  v4 = objc_alloc_init(EditShortcutType);
  [(EditShortcutType *)v4 setType:type];

  return v4;
}

@end