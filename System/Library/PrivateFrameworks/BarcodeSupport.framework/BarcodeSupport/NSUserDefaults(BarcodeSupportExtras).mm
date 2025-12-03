@interface NSUserDefaults(BarcodeSupportExtras)
+ (id)bcs_barcodeSupportDefaults;
- (uint64_t)bcs_BOOLForKey:()BarcodeSupportExtras defaultValue:;
@end

@implementation NSUserDefaults(BarcodeSupportExtras)

+ (id)bcs_barcodeSupportDefaults
{
  if (bcs_barcodeSupportDefaults_onceToken != -1)
  {
    +[NSUserDefaults(BarcodeSupportExtras) bcs_barcodeSupportDefaults];
  }

  v1 = bcs_barcodeSupportDefaults_barcodeSupportDefaults;

  return v1;
}

- (uint64_t)bcs_BOOLForKey:()BarcodeSupportExtras defaultValue:
{
  v5 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

@end