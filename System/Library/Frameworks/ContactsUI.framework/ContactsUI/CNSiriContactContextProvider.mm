@interface CNSiriContactContextProvider
+ (id)descriptorForRequiredKeys;
- (CNSiriContactContextProvider)initWithContact:(id)contact store:(id)store;
- (id)defaultContextManager;
- (id)getCurrentContext;
- (void)_removeContextProviderOnMainThread;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CNSiriContactContextProvider

+ (id)descriptorForRequiredKeys
{
  v2 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  hasSiriCapability = [v2 hasSiriCapability];

  if (hasSiriCapability)
  {
    v4 = MEMORY[0x1E695CD58];
    descriptorsForRequiredKeys = [getCNAssistantConversionClass() descriptorsForRequiredKeys];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSiriContactContextProvider descriptorForRequiredKeys]"];
    v7 = [v4 descriptorWithKeyDescriptors:descriptorsForRequiredKeys description:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)defaultContextManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAFContextManagerClass_softClass;
  v10 = getAFContextManagerClass_softClass;
  if (!getAFContextManagerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAFContextManagerClass_block_invoke;
    v6[3] = &unk_1E74E7518;
    v6[4] = &v7;
    __getAFContextManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  defaultContextManager = [v2 defaultContextManager];

  return defaultContextManager;
}

- (void)_removeContextProviderOnMainThread
{
  defaultContextManager = [(CNSiriContactContextProvider *)self defaultContextManager];
  [defaultContextManager removeContextProvider:self];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(CNSiriContactContextProvider *)self setIsEnabled:?];
  defaultContextManager = [(CNSiriContactContextProvider *)self defaultContextManager];
  v6 = defaultContextManager;
  if (enabledCopy)
  {
    [defaultContextManager addContextProvider:self];
  }

  else
  {
    [defaultContextManager removeContextProvider:self];
  }
}

- (id)getCurrentContext
{
  v9[1] = *MEMORY[0x1E69E9840];
  CNAssistantConversionClass = getCNAssistantConversionClass();
  contact = [(CNSiriContactContextProvider *)self contact];
  v5 = [CNAssistantConversionClass createSAPersonFromCNContact:contact];

  if (v5)
  {
    dictionary = [v5 dictionary];
    v9[0] = dictionary;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  hasSiriCapability = [v3 hasSiriCapability];

  if (hasSiriCapability)
  {
    [(CNSiriContactContextProvider *)self performSelectorOnMainThread:sel__removeContextProviderOnMainThread withObject:0 waitUntilDone:1];
  }

  v5.receiver = self;
  v5.super_class = CNSiriContactContextProvider;
  [(CNSiriContactContextProvider *)&v5 dealloc];
}

- (CNSiriContactContextProvider)initWithContact:(id)contact store:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  v9 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  hasSiriCapability = [v9 hasSiriCapability];

  if (hasSiriCapability)
  {
    v15.receiver = self;
    v15.super_class = CNSiriContactContextProvider;
    v11 = [(CNSiriContactContextProvider *)&v15 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_contact, contact);
      objc_storeStrong(p_isa + 3, store);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end