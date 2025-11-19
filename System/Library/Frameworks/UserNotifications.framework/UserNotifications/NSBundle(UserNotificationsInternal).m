@interface NSBundle(UserNotificationsInternal)
+ (id)un_safeBundleWithURL:()UserNotificationsInternal;
@end

@implementation NSBundle(UserNotificationsInternal)

+ (id)un_safeBundleWithURL:()UserNotificationsInternal
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end