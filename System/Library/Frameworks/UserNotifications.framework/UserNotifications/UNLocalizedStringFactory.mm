@interface UNLocalizedStringFactory
+ (id)localizedUserNotificationStringForKey:(id)a3 arguments:(id)a4;
+ (id)localizedUserNotificationStringForKey:(id)a3 arguments:(id)a4 cfBundle:(__CFBundle *)a5 defaultValue:(id)a6;
@end

@implementation UNLocalizedStringFactory

+ (id)localizedUserNotificationStringForKey:(id)a3 arguments:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v8 = [v7 un_applicationBundleURL];
  v9 = [MEMORY[0x1E696AAE8] un_safeBundleWithURL:v8];
  v10 = [v9 localizedStringForKey:v5 value:&stru_1F308F460 table:0];
  v11 = v10;
  if (v6)
  {
    v12 = UNFormatLocalizedString(v10, v6);
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = [UNLocalizedString localizedStringForKey:v5 arguments:v6 value:v12];

  return v14;
}

+ (id)localizedUserNotificationStringForKey:(id)a3 arguments:(id)a4 cfBundle:(__CFBundle *)a5 defaultValue:(id)a6
{
  v9 = a4;
  v10 = a3;
  v11 = UNFormatLocalizedStringInBundleWithDefaultValue(v10, v9, a5, a6);
  v12 = [UNLocalizedString localizedStringForKey:v10 arguments:v9 value:v11];

  return v12;
}

@end