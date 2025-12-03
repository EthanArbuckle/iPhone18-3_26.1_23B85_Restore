@interface VSSubscriptionSource
+ (id)currentSource;
+ (id)subscriptionSourceForAppWithBundleID:(id)d;
+ (id)subscriptionSourceForWebsiteWithDomainName:(id)name;
+ (id)subscriptionSourceForWebsiteWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (VSSubscriptionSource)init;
- (VSSubscriptionSource)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSSubscriptionSource

+ (id)currentSource
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [VSOptional optionalWithObject:bundleIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__VSSubscriptionSource_currentSource__block_invoke;
  v9[3] = &unk_278B74240;
  v9[4] = &v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__VSSubscriptionSource_currentSource__block_invoke_2;
  v8[3] = &unk_278B74318;
  v8[4] = &v10;
  [v4 conditionallyUnwrapObject:v9 otherwise:v8];

  v5 = v11[5];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The source parameter must not be nil."];
    v5 = v11[5];
  }

  v6 = v5;

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __37__VSSubscriptionSource_currentSource__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:a2];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __37__VSSubscriptionSource_currentSource__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v2 processName];

  v3 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:v7];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)subscriptionSourceForWebsiteWithURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The webURL parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[VSSubscriptionSource subscriptionSourceForWebsiteWithURL:]";
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "%s: Generated webURL: %@", &v11, 0x16u);
  }

  host = [lCopy host];
  v7 = [VSOptional optionalWithObject:host];

  forceUnwrapObject = [v7 forceUnwrapObject];
  v9 = [self subscriptionSourceForWebsiteWithDomainName:forceUnwrapObject];

  return v9;
}

+ (id)subscriptionSourceForWebsiteWithDomainName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The domainName parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[VSSubscriptionSource subscriptionSourceForWebsiteWithDomainName:]";
    v10 = 2112;
    v11 = nameCopy;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v6 = objc_alloc_init(self);
  [v6 setKind:1];
  [v6 setIdentifier:nameCopy];

  return v6;
}

+ (id)subscriptionSourceForAppWithBundleID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bundleID parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[VSSubscriptionSource subscriptionSourceForAppWithBundleID:]";
    v10 = 2112;
    v11 = dCopy;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v6 = objc_alloc_init(self);
  [v6 setKind:0];
  [v6 setIdentifier:dCopy];

  return v6;
}

- (VSSubscriptionSource)init
{
  v5.receiver = self;
  v5.super_class = VSSubscriptionSource;
  v2 = [(VSSubscriptionSource *)&v5 init];
  if (v2)
  {
    v3 = VSSubscriptionSourceValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSSubscriptionSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSSubscriptionSource;
  v5 = [(VSSubscriptionSource *)&v8 init];
  if (v5)
  {
    v6 = VSSubscriptionSourceValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSSubscriptionSourceValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSSubscriptionSourceValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSSubscriptionSourceValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSSubscriptionSourceValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSSubscriptionSourceValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end