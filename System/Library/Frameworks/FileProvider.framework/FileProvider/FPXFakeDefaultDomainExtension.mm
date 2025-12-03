@interface FPXFakeDefaultDomainExtension
- (FPXFakeDefaultDomainExtension)initWithDomain:(id)domain;
- (id)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)enumeratorForContainerItemIdentifier:(id)identifier request:(id)request error:(id *)error;
- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version request:(id)request completionHandler:(id)handler;
- (id)itemForIdentifier:(id)identifier request:(id)request completionHandler:(id)handler;
- (id)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler;
@end

@implementation FPXFakeDefaultDomainExtension

- (FPXFakeDefaultDomainExtension)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = FPXFakeDefaultDomainExtension;
  v6 = [(FPXFakeDefaultDomainExtension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
  }

  return v7;
}

- (id)itemForIdentifier:(id)identifier request:(id)request completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v8 = [v6 errorWithDomain:@"NSFileProviderErrorDomain" code:-1000 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);

  v9 = objc_opt_new();

  return v9;
}

- (id)enumeratorForContainerItemIdentifier:(id)identifier request:(id)request error:(id *)error
{
  identifierCopy = identifier;
  requestCopy = request;
  if (error)
  {
    domain = [(FPXFakeDefaultDomainExtension *)self domain];
    isHidden = [domain isHidden];

    if (isHidden)
    {
      v12 = -2011;
    }

    else
    {
      v12 = -1000;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:v12 userInfo:0];
  }

  return 0;
}

- (id)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  contentsCopy = contents;
  requestCopy = request;
  handlerCopy = handler;
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

- (id)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  requestCopy = request;
  handlerCopy = handler;
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

- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version request:(id)request completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  requestCopy = request;
  handlerCopy = handler;
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

- (id)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  versionCopy = version;
  contentsCopy = contents;
  requestCopy = request;
  handlerCopy = handler;
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