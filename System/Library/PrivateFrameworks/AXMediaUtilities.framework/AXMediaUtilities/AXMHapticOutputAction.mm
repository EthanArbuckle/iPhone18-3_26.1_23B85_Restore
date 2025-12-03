@interface AXMHapticOutputAction
- (AXMHapticOutputAction)initWithURL:(id)l;
- (id)_initWithURL:(id)l handle:(id)handle;
@end

@implementation AXMHapticOutputAction

- (AXMHapticOutputAction)initWithURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(AXMActiveSoundOutputActionHandle);
  v6 = [(AXMHapticOutputAction *)self _initWithURL:lCopy handle:v5];

  return v6;
}

- (id)_initWithURL:(id)l handle:(id)handle
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = AXMHapticOutputAction;
  v8 = [(AXMOutputAction *)&v13 _initWithHandle:handle];
  if (v8)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v11 = [defaultManager fileExistsAtPath:path];

    if (v11)
    {
      objc_storeStrong(v8 + 2, l);
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

@end