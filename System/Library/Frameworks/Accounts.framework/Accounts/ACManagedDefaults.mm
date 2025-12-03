@interface ACManagedDefaults
+ (id)sharedInstance;
- (id)valueForManagedDefault:(id)default;
- (void)_writeManagedDefaults:(id)defaults;
- (void)setValue:(id)value forManagedDefault:(id)default;
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

- (void)_writeManagedDefaults:(id)defaults
{
  _CFPreferencesWriteManagedDomainForUser();
  _CFPreferencesPostValuesChangedInDomains();

  MEMORY[0x1EEDB8420](&unk_1F21188E0);
}

- (id)valueForManagedDefault:(id)default
{
  defaultCopy = default;
  _readManagedDefaults = [(ACManagedDefaults *)self _readManagedDefaults];
  v6 = [_readManagedDefaults objectForKey:defaultCopy];

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

- (void)setValue:(id)value forManagedDefault:(id)default
{
  valueCopy = value;
  defaultCopy = default;
  _readManagedDefaults = [(ACManagedDefaults *)self _readManagedDefaults];
  v8 = [_readManagedDefaults mutableCopy];

  if ([valueCopy intValue] == -1)
  {
    [v8 removeObjectForKey:defaultCopy];
  }

  else
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    [v8 setValue:valueCopy forKey:defaultCopy];
  }

  [(ACManagedDefaults *)self _writeManagedDefaults:v8];
}

@end