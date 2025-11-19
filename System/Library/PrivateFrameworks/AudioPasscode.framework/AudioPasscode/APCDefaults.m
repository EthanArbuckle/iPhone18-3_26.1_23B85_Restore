@interface APCDefaults
+ (BOOL)BOOLForDefault:(unint64_t)a3;
+ (float)floatForDefault:(unint64_t)a3;
+ (id)sharedDefaults;
+ (int64_t)integerForDefault:(unint64_t)a3;
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

+ (BOOL)BOOLForDefault:(unint64_t)a3
{
  v4 = [a1 sharedDefaults];
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
    v7 = [v4 objectForKey:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
      v5 = [v4 BOOLForKey:v8];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

+ (int64_t)integerForDefault:(unint64_t)a3
{
  v4 = [a1 sharedDefaults];
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
    v5 = [v4 objectForKey:v6];

    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
      v5 = [v4 integerForKey:v7];
    }
  }

  return v5;
}

+ (float)floatForDefault:(unint64_t)a3
{
  v4 = [a1 sharedDefaults];
  v5 = 0.0;
  if (!a3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
    v7 = [v4 objectForKey:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volume"];
      [v4 floatForKey:v8];
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