@interface AAWalrusStringProvider
+ (id)confettiWebAccessNotificationTextForKey:(id)key;
+ (id)webAccessNotificationTextForKey:(id)key;
@end

@implementation AAWalrusStringProvider

+ (id)webAccessNotificationTextForKey:(id)key
{
  v3 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  v5 = [v3 bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:keyCopy value:0 table:@"Localizable-Walrus"];

  return v6;
}

+ (id)confettiWebAccessNotificationTextForKey:(id)key
{
  v3 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  v5 = [v3 bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:keyCopy value:0 table:@"Localizable-Confetti"];

  return v6;
}

@end