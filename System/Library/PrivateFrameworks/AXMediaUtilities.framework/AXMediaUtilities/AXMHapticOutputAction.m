@interface AXMHapticOutputAction
- (AXMHapticOutputAction)initWithURL:(id)a3;
- (id)_initWithURL:(id)a3 handle:(id)a4;
@end

@implementation AXMHapticOutputAction

- (AXMHapticOutputAction)initWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXMActiveSoundOutputActionHandle);
  v6 = [(AXMHapticOutputAction *)self _initWithURL:v4 handle:v5];

  return v6;
}

- (id)_initWithURL:(id)a3 handle:(id)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = AXMHapticOutputAction;
  v8 = [(AXMOutputAction *)&v13 _initWithHandle:a4];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v7 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      objc_storeStrong(v8 + 2, a3);
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

@end