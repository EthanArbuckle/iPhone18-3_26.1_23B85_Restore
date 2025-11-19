@interface ACCUserDefaults
+ (id)sharedDefaults;
+ (id)sharedDefaultsIapd;
+ (id)sharedDefaultsLogging;
- (ACCUserDefaults)init;
@end

@implementation ACCUserDefaults

- (ACCUserDefaults)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedDefaults);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

+ (id)sharedDefaults
{
  if (sharedDefaults_once != -1)
  {
    +[ACCUserDefaults sharedDefaults];
  }

  v3 = sharedDefaults_sharedInstance;

  return v3;
}

uint64_t __33__ACCUserDefaults_sharedDefaults__block_invoke()
{
  sharedDefaults_sharedInstance = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreAccessories"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedDefaultsIapd
{
  if (sharedDefaultsIapd_once != -1)
  {
    +[ACCUserDefaults sharedDefaultsIapd];
  }

  v3 = sharedDefaultsIapd_sharedInstance;

  return v3;
}

uint64_t __37__ACCUserDefaults_sharedDefaultsIapd__block_invoke()
{
  sharedDefaultsIapd_sharedInstance = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.iapd"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedDefaultsLogging
{
  if (sharedDefaultsLogging_once != -1)
  {
    +[ACCUserDefaults sharedDefaultsLogging];
  }

  v3 = sharedDefaultsLogging_sharedInstance;

  return v3;
}

uint64_t __40__ACCUserDefaults_sharedDefaultsLogging__block_invoke()
{
  sharedDefaultsLogging_sharedInstance = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.logging"];

  return MEMORY[0x2821F96F8]();
}

@end