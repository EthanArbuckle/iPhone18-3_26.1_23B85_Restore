@interface PHSandboxExtensionWrapper
+ (PHSandboxExtensionWrapper)wrapperWithToken:(id)a3;
- (void)dealloc;
@end

@implementation PHSandboxExtensionWrapper

- (void)dealloc
{
  if ((self->_handle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = PHSandboxExtensionWrapper;
  [(PHSandboxExtensionWrapper *)&v3 dealloc];
}

+ (PHSandboxExtensionWrapper)wrapperWithToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [v3 copy];

  if (v5)
  {
    [v5 UTF8String];
    v6 = sandbox_extension_consume();
  }

  else
  {
    v6 = -1;
  }

  v7 = v4[1];
  v4[1] = v5;
  v4[2] = v6;

  return v4;
}

@end