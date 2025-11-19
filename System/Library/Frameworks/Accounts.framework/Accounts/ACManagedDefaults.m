@interface ACManagedDefaults
+ (id)sharedInstance;
- (id)valueForManagedDefault:(id)a3;
- (void)_writeManagedDefaults:(id)a3;
- (void)setValue:(id)a3 forManagedDefault:(id)a4;
@end

@implementation ACManagedDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ACManagedDefaults sharedInstance];
  }

  v3 = sharedInstance_managedDefaults;

  return v3;
}

uint64_t __35__ACManagedDefaults_sharedInstance__block_invoke()
{
  sharedInstance_managedDefaults = objc_alloc_init(ACManagedDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_writeManagedDefaults:(id)a3
{
  _CFPreferencesWriteManagedDomainForUser();
  _CFPreferencesPostValuesChangedInDomains();

  MEMORY[0x1EEDB8420](&unk_1F21188E0);
}

- (id)valueForManagedDefault:(id)a3
{
  v4 = a3;
  v5 = [(ACManagedDefaults *)self _readManagedDefaults];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    if ([v6 isNSNumber])
    {
      v7 = v6;
LABEL_6:
      v8 = v7;
      goto LABEL_8;
    }

    if ([v6 isNSString])
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v6, "intValue")}];
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)setValue:(id)a3 forManagedDefault:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ACManagedDefaults *)self _readManagedDefaults];
  v8 = [v7 mutableCopy];

  if ([v9 intValue] == -1)
  {
    [v8 removeObjectForKey:v6];
  }

  else
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    [v8 setValue:v9 forKey:v6];
  }

  [(ACManagedDefaults *)self _writeManagedDefaults:v8];
}

@end