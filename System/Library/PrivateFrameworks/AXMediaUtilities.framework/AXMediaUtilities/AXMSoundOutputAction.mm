@interface AXMSoundOutputAction
+ (id)_soundFileURLForSoundID:(id)d;
- (id)_initWithSoundID:(id)d handle:(id)handle;
- (id)_initWithURL:(id)l handle:(id)handle;
@end

@implementation AXMSoundOutputAction

+ (id)_soundFileURLForSoundID:(id)d
{
  v3 = MEMORY[0x1E696AAE8];
  dCopy = d;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:dCopy withExtension:@"aiff" subdirectory:@"sounds"];

  return v6;
}

- (id)_initWithURL:(id)l handle:(id)handle
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = AXMSoundOutputAction;
  v8 = [(AXMOutputAction *)&v13 _initWithHandle:handle];
  if (v8)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v11 = [defaultManager fileExistsAtPath:path];

    if (v11)
    {
      objc_storeStrong(v8 + 3, l);
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (id)_initWithSoundID:(id)d handle:(id)handle
{
  dCopy = d;
  handleCopy = handle;
  v8 = [AXMSoundOutputAction _soundFileURLForSoundID:dCopy];
  if (v8)
  {
    v9 = [(AXMSoundOutputAction *)self _initWithURL:v8 handle:handleCopy];
    v10 = dCopy;
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