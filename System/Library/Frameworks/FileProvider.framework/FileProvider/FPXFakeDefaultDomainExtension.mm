@interface FPXFakeDefaultDomainExtension
- (FPXFakeDefaultDomainExtension)initWithDomain:(id)a3;
- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8;
- (id)deleteItemWithIdentifier:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7;
- (id)enumeratorForContainerItemIdentifier:(id)a3 request:(id)a4 error:(id *)a5;
- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (id)itemForIdentifier:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9;
@end

@implementation FPXFakeDefaultDomainExtension

- (FPXFakeDefaultDomainExtension)initWithDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPXFakeDefaultDomainExtension;
  v6 = [(FPXFakeDefaultDomainExtension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, a3);
  }

  return v7;
}

- (id)itemForIdentifier:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = a5;
  v8 = [v6 errorWithDomain:@"NSFileProviderErrorDomain" code:-1000 userInfo:0];
  (*(a5 + 2))(v7, 0, v8);

  v9 = objc_opt_new();

  return v9;
}

- (id)enumeratorForContainerItemIdentifier:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [(FPXFakeDefaultDomainExtension *)self domain];
    v11 = [v10 isHidden];

    if (v11)
    {
      v12 = -2011;
    }

    else
    {
      v12 = -1000;
    }

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:v12 userInfo:0];
  }

  return 0;
}

- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a8;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling createItem on fake extension instance"];
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v17 = 138543362;
    v18 = v15;
    _os_log_fault_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v17, 0xCu);
  }

  __assert_rtn("-[FPXFakeDefaultDomainExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXFakeDefaultDomainExtension.m", 61, [v15 UTF8String]);
}

- (id)deleteItemWithIdentifier:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling deleteItem on fake extension instance"];
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = 138543362;
    v17 = v14;
    _os_log_fault_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v16, 0xCu);
  }

  __assert_rtn("-[FPXFakeDefaultDomainExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXFakeDefaultDomainExtension.m", 70, [v14 UTF8String]);
}

- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling fetchContent on fake extension instance"];
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v15 = 138543362;
    v16 = v13;
    _os_log_fault_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v15, 0xCu);
  }

  __assert_rtn("-[FPXFakeDefaultDomainExtension fetchContentsForItemWithIdentifier:version:request:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXFakeDefaultDomainExtension.m", 80, [v13 UTF8String]);
}

- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = a9;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling modifyItem on fake extension instance"];
  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v19 = 138543362;
    v20 = v17;
    _os_log_fault_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v19, 0xCu);
  }

  __assert_rtn("-[FPXFakeDefaultDomainExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXFakeDefaultDomainExtension.m", 92, [v17 UTF8String]);
}

@end