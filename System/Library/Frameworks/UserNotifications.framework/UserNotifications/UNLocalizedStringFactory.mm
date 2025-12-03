@interface UNLocalizedStringFactory
+ (id)localizedUserNotificationStringForKey:(id)key arguments:(id)arguments;
+ (id)localizedUserNotificationStringForKey:(id)key arguments:(id)arguments cfBundle:(__CFBundle *)bundle defaultValue:(id)value;
@end

@implementation UNLocalizedStringFactory

+ (id)localizedUserNotificationStringForKey:(id)key arguments:(id)arguments
{
  keyCopy = key;
  argumentsCopy = arguments;
  bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  un_applicationBundleURL = [bundleProxyForCurrentProcess un_applicationBundleURL];
  v9 = [MEMORY[0x1E696AAE8] un_safeBundleWithURL:un_applicationBundleURL];
  v10 = [v9 localizedStringForKey:keyCopy value:&stru_1F308F460 table:0];
  v11 = v10;
  if (argumentsCopy)
  {
    v12 = UNFormatLocalizedString(v10, argumentsCopy);
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = [UNLocalizedString localizedStringForKey:keyCopy arguments:argumentsCopy value:v12];

  return v14;
}

+ (id)localizedUserNotificationStringForKey:(id)key arguments:(id)arguments cfBundle:(__CFBundle *)bundle defaultValue:(id)value
{
  argumentsCopy = arguments;
  keyCopy = key;
  v11 = UNFormatLocalizedStringInBundleWithDefaultValue(keyCopy, argumentsCopy, bundle, value);
  v12 = [UNLocalizedString localizedStringForKey:keyCopy arguments:argumentsCopy value:v11];

  return v12;
}

@end