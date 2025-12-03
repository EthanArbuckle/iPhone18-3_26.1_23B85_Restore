@interface FPXPCSanitizer
+ (id)permittedErrorDomains;
- (FPXPCSanitizer)init;
- (FPXPCSanitizer)initWithProviderDomainIdentifier:(id)identifier;
@end

@implementation FPXPCSanitizer

+ (id)permittedErrorDomains
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E696A250];
  v5[1] = @"NSFileProviderErrorDomain";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (FPXPCSanitizer)initWithProviderDomainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FPXPCSanitizer;
  v6 = [(FPXPCSanitizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providerIdentifier, identifier);
  }

  return v7;
}

- (FPXPCSanitizer)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not call this"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPXPCSanitizer init]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPXPCSanitizer.m", 81, [v2 UTF8String]);
}

@end