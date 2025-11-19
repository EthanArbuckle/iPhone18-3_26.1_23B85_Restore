@interface CNCoreRecentsContactStore
+ (NSString)acceptedContactsAccountIdentifier;
+ (NSString)acceptedContactsDomainIdentifier;
+ (id)coreRecentsDomainFromContactIdentifier:(id)a3;
+ (id)coreRecentsDomainFromInternalIdentifier:(id)a3;
+ (id)coreRecentsIdentifierFromInternalIdentifier:(id)a3;
+ (id)internalIdentifierForDomain:(id)a3 recentsIdentifier:(id)a4;
+ (id)storeIdentifier;
- (CNCoreRecentsContactStore)initWithConfiguration:(id)a3 domains:(id)a4;
@end

@implementation CNCoreRecentsContactStore

+ (NSString)acceptedContactsDomainIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_0;
  v10 = getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_0;
  if (!getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke_0;
    v6[3] = &unk_1E7412110;
    v6[4] = &v7;
    __getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke_0(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v3 = *v2;

  return v3;
}

+ (id)storeIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CNCoreRecentsContactStore_storeIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (storeIdentifier_cn_once_token_1 != -1)
  {
    dispatch_once(&storeIdentifier_cn_once_token_1, block);
  }

  v2 = storeIdentifier_cn_once_object_1;

  return v2;
}

void __44__CNCoreRecentsContactStore_storeIdentifier__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = [v3 copy];
  v2 = storeIdentifier_cn_once_object_1;
  storeIdentifier_cn_once_object_1 = v1;
}

+ (id)internalIdentifierForDomain:(id)a3 recentsIdentifier:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", a3, @":", a4];
    v4 = vars8;
  }

  return v5;
}

+ (id)coreRecentsDomainFromContactIdentifier:(id)a3
{
  v4 = [a1 internalIdentifierFromContactIdentifier:a3];
  v5 = [a1 coreRecentsDomainFromInternalIdentifier:v4];

  return v5;
}

+ (id)coreRecentsDomainFromInternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  return v5;
}

+ (id)coreRecentsIdentifierFromInternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + v5];
  }

  return v6;
}

+ (NSString)acceptedContactsAccountIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CNCoreRecentsContactStore_acceptedContactsAccountIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (acceptedContactsAccountIdentifier_cn_once_token_0 != -1)
  {
    dispatch_once(&acceptedContactsAccountIdentifier_cn_once_token_0, block);
  }

  v2 = acceptedContactsAccountIdentifier_cn_once_object_0;

  return v2;
}

void __62__CNCoreRecentsContactStore_acceptedContactsAccountIdentifier__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) acceptedContactsDomainIdentifier];
  v1 = [@"AcceptedIntroductionsContainer:" stringByAppendingString:v3];
  v2 = acceptedContactsAccountIdentifier_cn_once_object_0;
  acceptedContactsAccountIdentifier_cn_once_object_0 = v1;
}

- (CNCoreRecentsContactStore)initWithConfiguration:(id)a3 domains:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:v7];

  v9 = [[CNCoreRecentsMapper alloc] initWithDomains:v6 configuration:v8];
  v12.receiver = self;
  v12.super_class = CNCoreRecentsContactStore;
  v10 = [(CNDataMapperContactStore *)&v12 initWithDataMapper:v9 dataMapperConfiguration:v8];

  return v10;
}

@end