@interface FPProvider
+ (id)beginMonitoringProviderChangesWithHandler:(id)a3;
+ (void)endMonitoringProviderChanges:(id)a3;
+ (void)fetchProviderForItem:(id)a3 completionHandler:(id)a4;
- (FPProvider)initWithCoder:(id)a3;
- (NSURL)storageURL;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPProvider

- (FPProvider)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = FPProvider;
  return [(FPProviderDomain *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = FPProvider;
  [(FPProviderDomain *)&v3 encodeWithCoder:a3];
}

+ (id)beginMonitoringProviderChangesWithHandler:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___FPProvider;
  v3 = objc_msgSendSuper2(&v5, sel_beginMonitoringProviderDomainChangesWithHandler_, a3);

  return v3;
}

+ (void)endMonitoringProviderChanges:(id)a3
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___FPProvider;
  objc_msgSendSuper2(&v3, sel_endMonitoringProviderDomainChanges_, a3);
}

+ (void)fetchProviderForItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__FPProvider_fetchProviderForItem_completionHandler___block_invoke;
  v8[3] = &unk_1E793A150;
  v9 = v6;
  v7 = v6;
  [a1 fetchProviderDomainForItem:a3 completionHandler:v8];
}

- (NSURL)storageURL
{
  v2 = [(FPProviderDomain *)self storageURLs];
  v3 = [v2 firstObject];

  return v3;
}

@end