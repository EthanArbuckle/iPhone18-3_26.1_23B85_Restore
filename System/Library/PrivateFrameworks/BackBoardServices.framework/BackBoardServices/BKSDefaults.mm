@interface BKSDefaults
+ (id)externalDefaults;
+ (id)localDefaults;
@end

@implementation BKSDefaults

+ (id)localDefaults
{
  if (localDefaults___once != -1)
  {
    dispatch_once(&localDefaults___once, &__block_literal_global_12851);
  }

  v3 = localDefaults___instance;

  return v3;
}

+ (id)externalDefaults
{
  if (externalDefaults___once != -1)
  {
    dispatch_once(&externalDefaults___once, &__block_literal_global_2_12848);
  }

  v3 = externalDefaults___instance;

  return v3;
}

uint64_t __31__BKSDefaults_externalDefaults__block_invoke()
{
  externalDefaults___instance = objc_alloc_init(BKSExternalDefaults);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __28__BKSDefaults_localDefaults__block_invoke()
{
  localDefaults___instance = objc_alloc_init(BKSLocalDefaults);

  return MEMORY[0x1EEE66BB8]();
}

@end