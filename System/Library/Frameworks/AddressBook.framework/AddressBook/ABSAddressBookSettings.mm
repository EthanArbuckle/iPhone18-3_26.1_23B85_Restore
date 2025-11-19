@interface ABSAddressBookSettings
- (ABSAddressBookSettings)init;
- (ABSAddressBookSettings)initWithContactStoreFuture:(id)a3;
- (ABSAddressBookSettings)initWithOptions:(id)a3 policy:(int)a4;
- (ABSAddressBookSettings)initWithOptions:(id)a3 policy:(int)a4 contactStoreFuture:(id)a5 schedulerProvider:(id)a6;
- (id)newFaultHandlerWithStorage:(id)a3;
@end

@implementation ABSAddressBookSettings

- (ABSAddressBookSettings)init
{
  v3 = !CNLinkedOnOrAfter() && !ABAddressBookForceNullDatabaseForAccessDeniedIsEnabled();

  return [(ABSAddressBookSettings *)self initWithOptions:0 policy:v3];
}

- (ABSAddressBookSettings)initWithContactStoreFuture:(id)a3
{
  v4 = MEMORY[0x277CFBEB0];
  v5 = a3;
  v6 = [v4 defaultProvider];
  v7 = [(ABSAddressBookSettings *)self initWithOptions:0 policy:0 contactStoreFuture:v5 schedulerProvider:v6];

  return v7;
}

- (ABSAddressBookSettings)initWithOptions:(id)a3 policy:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x277CFBE28];
  v7 = a3;
  v8 = [v6 lazyFutureWithBlock:&__block_literal_global_1];
  v9 = [MEMORY[0x277CFBEB0] defaultProvider];
  v10 = [(ABSAddressBookSettings *)self initWithOptions:v7 policy:v4 contactStoreFuture:v8 schedulerProvider:v9];

  return v10;
}

id __49__ABSAddressBookSettings_initWithOptions_policy___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);

  return v0;
}

- (ABSAddressBookSettings)initWithOptions:(id)a3 policy:(int)a4 contactStoreFuture:(id)a5 schedulerProvider:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = ABSAddressBookSettings;
  v13 = [(ABSAddressBookSettings *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contactStoreFuture, a5);
    v15 = [v10 copy];
    options = v14->_options;
    v14->_options = v15;

    v14->_policy = a4;
    objc_storeStrong(&v14->_schedulerProvider, a6);
    v17 = v14;
  }

  return v14;
}

- (id)newFaultHandlerWithStorage:(id)a3
{
  v4 = a3;
  v5 = [ABSBulkFaultHandler alloc];
  v6 = [(ABSAddressBookSettings *)self contactStoreFuture];
  v7 = [(ABSAddressBookSettings *)self schedulerProvider];
  v8 = [(ABSBulkFaultHandler *)v5 initWithStorage:v4 contactStoreFuture:v6 schedulerProvider:v7];

  return v8;
}

@end