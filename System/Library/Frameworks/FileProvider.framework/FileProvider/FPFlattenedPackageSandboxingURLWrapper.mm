@interface FPFlattenedPackageSandboxingURLWrapper
- (FPFlattenedPackageSandboxingURLWrapper)initWithCoder:(id)coder;
- (FPFlattenedPackageSandboxingURLWrapper)initWithURL:(id)l packageURL:(id)rL error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPFlattenedPackageSandboxingURLWrapper

- (FPFlattenedPackageSandboxingURLWrapper)initWithURL:(id)l packageURL:(id)rL error:(id *)error
{
  rLCopy = rL;
  v9 = *MEMORY[0x1E69E9BB0];
  v15.receiver = self;
  v15.super_class = FPFlattenedPackageSandboxingURLWrapper;
  v10 = [(FPSandboxingURLWrapper *)&v15 initWithURL:l extensionClass:v9 report:1 error:error];
  if (v10 && (v11 = [[FPSandboxingURLWrapper alloc] initWithURL:rLCopy extensionClass:v9 report:0 error:error], packageWrapper = v10->_packageWrapper, v10->_packageWrapper = v11, packageWrapper, !v10->_packageWrapper))
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (FPFlattenedPackageSandboxingURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPFlattenedPackageSandboxingURLWrapper;
  v5 = [(FPSandboxingURLWrapper *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pkg"];
    packageWrapper = v5->_packageWrapper;
    v5->_packageWrapper = v6;

    v8 = [(FPSandboxingURLWrapper *)v5 url];
    v9 = [(FPSandboxingURLWrapper *)v5->_packageWrapper url];
    [v8 setTemporaryResourceValue:v9 forKey:@"FPUnflattenedPackageURL"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPFlattenedPackageSandboxingURLWrapper;
  coderCopy = coder;
  [(FPSandboxingURLWrapper *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_packageWrapper forKey:{@"pkg", v5.receiver, v5.super_class}];
}

@end