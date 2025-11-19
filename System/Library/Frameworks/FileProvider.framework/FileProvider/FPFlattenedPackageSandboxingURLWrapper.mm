@interface FPFlattenedPackageSandboxingURLWrapper
- (FPFlattenedPackageSandboxingURLWrapper)initWithCoder:(id)a3;
- (FPFlattenedPackageSandboxingURLWrapper)initWithURL:(id)a3 packageURL:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPFlattenedPackageSandboxingURLWrapper

- (FPFlattenedPackageSandboxingURLWrapper)initWithURL:(id)a3 packageURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = *MEMORY[0x1E69E9BB0];
  v15.receiver = self;
  v15.super_class = FPFlattenedPackageSandboxingURLWrapper;
  v10 = [(FPSandboxingURLWrapper *)&v15 initWithURL:a3 extensionClass:v9 report:1 error:a5];
  if (v10 && (v11 = [[FPSandboxingURLWrapper alloc] initWithURL:v8 extensionClass:v9 report:0 error:a5], packageWrapper = v10->_packageWrapper, v10->_packageWrapper = v11, packageWrapper, !v10->_packageWrapper))
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (FPFlattenedPackageSandboxingURLWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPFlattenedPackageSandboxingURLWrapper;
  v5 = [(FPSandboxingURLWrapper *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pkg"];
    packageWrapper = v5->_packageWrapper;
    v5->_packageWrapper = v6;

    v8 = [(FPSandboxingURLWrapper *)v5 url];
    v9 = [(FPSandboxingURLWrapper *)v5->_packageWrapper url];
    [v8 setTemporaryResourceValue:v9 forKey:@"FPUnflattenedPackageURL"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPFlattenedPackageSandboxingURLWrapper;
  v4 = a3;
  [(FPSandboxingURLWrapper *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_packageWrapper forKey:{@"pkg", v5.receiver, v5.super_class}];
}

@end