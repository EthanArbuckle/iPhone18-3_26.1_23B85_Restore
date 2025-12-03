@interface FPProvider
+ (id)beginMonitoringProviderChangesWithHandler:(id)handler;
+ (void)endMonitoringProviderChanges:(id)changes;
+ (void)fetchProviderForItem:(id)item completionHandler:(id)handler;
- (FPProvider)initWithCoder:(id)coder;
- (NSURL)storageURL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPProvider

- (FPProvider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = FPProvider;
  return [(FPProviderDomain *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = FPProvider;
  [(FPProviderDomain *)&v3 encodeWithCoder:coder];
}

+ (id)beginMonitoringProviderChangesWithHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___FPProvider;
  v3 = objc_msgSendSuper2(&v5, sel_beginMonitoringProviderDomainChangesWithHandler_, handler);

  return v3;
}

+ (void)endMonitoringProviderChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___FPProvider;
  objc_msgSendSuper2(&v3, sel_endMonitoringProviderDomainChanges_, changes);
}

+ (void)fetchProviderForItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__FPProvider_fetchProviderForItem_completionHandler___block_invoke;
  v8[3] = &unk_1E793A150;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [self fetchProviderDomainForItem:item completionHandler:v8];
}

- (NSURL)storageURL
{
  storageURLs = [(FPProviderDomain *)self storageURLs];
  firstObject = [storageURLs firstObject];

  return firstObject;
}

@end