@interface VSSubscriptionSource
+ (id)currentSource;
+ (id)subscriptionSourceForAppWithBundleID:(id)a3;
+ (id)subscriptionSourceForWebsiteWithDomainName:(id)a3;
+ (id)subscriptionSourceForWebsiteWithURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VSSubscriptionSource)init;
- (VSSubscriptionSource)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [VSOptional optionalWithObject:v3];
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

+ (id)subscriptionSourceForWebsiteWithURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The webURL parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[VSSubscriptionSource subscriptionSourceForWebsiteWithURL:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "%s: Generated webURL: %@", &v11, 0x16u);
  }

  v6 = [v4 host];
  v7 = [VSOptional optionalWithObject:v6];

  v8 = [v7 forceUnwrapObject];
  v9 = [a1 subscriptionSourceForWebsiteWithDomainName:v8];

  return v9;
}

+ (id)subscriptionSourceForWebsiteWithDomainName:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The domainName parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[VSSubscriptionSource subscriptionSourceForWebsiteWithDomainName:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v6 = objc_alloc_init(a1);
  [v6 setKind:1];
  [v6 setIdentifier:v4];

  return v6;
}

+ (id)subscriptionSourceForAppWithBundleID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bundleID parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[VSSubscriptionSource subscriptionSourceForAppWithBundleID:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v6 = objc_alloc_init(a1);
  [v6 setKind:0];
  [v6 setIdentifier:v4];

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

- (VSSubscriptionSource)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSSubscriptionSource;
  v5 = [(VSSubscriptionSource *)&v8 init];
  if (v5)
  {
    v6 = VSSubscriptionSourceValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSSubscriptionSourceValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSSubscriptionSourceValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSSubscriptionSourceValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSSubscriptionSourceValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

  return self;
}

- (id)description
{
  v3 = VSSubscriptionSourceValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end