@interface ABSAddressBookSettings
- (ABSAddressBookSettings)init;
- (ABSAddressBookSettings)initWithContactStoreFuture:(id)future;
- (ABSAddressBookSettings)initWithOptions:(id)options policy:(int)policy;
- (ABSAddressBookSettings)initWithOptions:(id)options policy:(int)policy contactStoreFuture:(id)future schedulerProvider:(id)provider;
- (id)newFaultHandlerWithStorage:(id)storage;
@end

@implementation ABSAddressBookSettings

- (ABSAddressBookSettings)init
{
  v3 = !CNLinkedOnOrAfter() && !ABAddressBookForceNullDatabaseForAccessDeniedIsEnabled();

  return [(ABSAddressBookSettings *)self initWithOptions:0 policy:v3];
}

- (ABSAddressBookSettings)initWithContactStoreFuture:(id)future
{
  v4 = MEMORY[0x277CFBEB0];
  futureCopy = future;
  defaultProvider = [v4 defaultProvider];
  v7 = [(ABSAddressBookSettings *)self initWithOptions:0 policy:0 contactStoreFuture:futureCopy schedulerProvider:defaultProvider];

  return v7;
}

- (ABSAddressBookSettings)initWithOptions:(id)options policy:(int)policy
{
  v4 = *&policy;
  v6 = MEMORY[0x277CFBE28];
  optionsCopy = options;
  v8 = [v6 lazyFutureWithBlock:&__block_literal_global_1];
  defaultProvider = [MEMORY[0x277CFBEB0] defaultProvider];
  v10 = [(ABSAddressBookSettings *)self initWithOptions:optionsCopy policy:v4 contactStoreFuture:v8 schedulerProvider:defaultProvider];

  return v10;
}

id __49__ABSAddressBookSettings_initWithOptions_policy___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);

  return v0;
}

- (ABSAddressBookSettings)initWithOptions:(id)options policy:(int)policy contactStoreFuture:(id)future schedulerProvider:(id)provider
{
  optionsCopy = options;
  futureCopy = future;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = ABSAddressBookSettings;
  v13 = [(ABSAddressBookSettings *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contactStoreFuture, future);
    v15 = [optionsCopy copy];
    options = v14->_options;
    v14->_options = v15;

    v14->_policy = policy;
    objc_storeStrong(&v14->_schedulerProvider, provider);
    v17 = v14;
  }

  return v14;
}

- (id)newFaultHandlerWithStorage:(id)storage
{
  storageCopy = storage;
  v5 = [ABSBulkFaultHandler alloc];
  contactStoreFuture = [(ABSAddressBookSettings *)self contactStoreFuture];
  schedulerProvider = [(ABSAddressBookSettings *)self schedulerProvider];
  v8 = [(ABSBulkFaultHandler *)v5 initWithStorage:storageCopy contactStoreFuture:contactStoreFuture schedulerProvider:schedulerProvider];

  return v8;
}

@end