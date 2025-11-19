@interface AXMSoundOutputAction
+ (id)_soundFileURLForSoundID:(id)a3;
- (id)_initWithSoundID:(id)a3 handle:(id)a4;
- (id)_initWithURL:(id)a3 handle:(id)a4;
@end

@implementation AXMSoundOutputAction

+ (id)_soundFileURLForSoundID:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"aiff" subdirectory:@"sounds"];

  return v6;
}

- (id)_initWithURL:(id)a3 handle:(id)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = AXMSoundOutputAction;
  v8 = [(AXMOutputAction *)&v13 _initWithHandle:a4];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v7 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      objc_storeStrong(v8 + 3, a3);
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (id)_initWithSoundID:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [AXMSoundOutputAction _soundFileURLForSoundID:v6];
  if (v8)
  {
    v9 = [(AXMSoundOutputAction *)self _initWithURL:v8 handle:v7];
    v10 = v6;
    self = v9[2];
    v9[2] = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end