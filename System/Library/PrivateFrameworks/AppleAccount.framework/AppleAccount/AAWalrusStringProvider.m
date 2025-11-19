@interface AAWalrusStringProvider
+ (id)confettiWebAccessNotificationTextForKey:(id)a3;
+ (id)webAccessNotificationTextForKey:(id)a3;
@end

@implementation AAWalrusStringProvider

+ (id)webAccessNotificationTextForKey:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"Localizable-Walrus"];

  return v6;
}

+ (id)confettiWebAccessNotificationTextForKey:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"Localizable-Confetti"];

  return v6;
}

@end