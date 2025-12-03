@interface APCDefaults
+ (BOOL)BOOLForDefault:(unint64_t)default;
+ (float)floatForDefault:(unint64_t)default;
+ (id)sharedDefaults;
+ (int64_t)integerForDefault:(unint64_t)default;
@end

@implementation APCDefaults

+ (id)sharedDefaults
{
  if (+[APCDefaults sharedDefaults]::onceToken != -1)
  {
    +[APCDefaults sharedDefaults];
  }

  v3 = _defaults;

  return v3;
}

uint64_t __29__APCDefaults_sharedDefaults__block_invoke()
{
  _defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.audiopasscode"];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)BOOLForDefault:(unint64_t)default
{
  sharedDefaults = [self sharedDefaults];
  if (default)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
    v7 = [sharedDefaults objectForKey:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
      v5 = [sharedDefaults BOOLForKey:v8];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

+ (int64_t)integerForDefault:(unint64_t)default
{
  sharedDefaults = [self sharedDefaults];
  if (default)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
    v5 = [sharedDefaults objectForKey:v6];

    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
      v5 = [sharedDefaults integerForKey:v7];
    }
  }

  return v5;
}

+ (float)floatForDefault:(unint64_t)default
{
  sharedDefaults = [self sharedDefaults];
  v5 = 0.0;
  if (!default)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
    v7 = [sharedDefaults objectForKey:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
      [sharedDefaults floatForKey:v8];
      v5 = v9;
    }

    else
    {
      v10 = MGGetProductType();
      v11 = 0.56;
      if (v10 == 2903084588)
      {
        v11 = 1.0;
      }

      if (v10 == 3348380076)
      {
        v5 = 0.75;
      }

      else
      {
        v5 = v11;
      }
    }
  }

  return v5;
}

@end