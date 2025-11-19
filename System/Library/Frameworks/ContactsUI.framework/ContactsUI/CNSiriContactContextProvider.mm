@interface CNSiriContactContextProvider
+ (id)descriptorForRequiredKeys;
- (CNSiriContactContextProvider)initWithContact:(id)a3 store:(id)a4;
- (id)defaultContextManager;
- (id)getCurrentContext;
- (void)_removeContextProviderOnMainThread;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
@end

@implementation CNSiriContactContextProvider

+ (id)descriptorForRequiredKeys
{
  v2 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v3 = [v2 hasSiriCapability];

  if (v3)
  {
    v4 = MEMORY[0x1E695CD58];
    v5 = [getCNAssistantConversionClass() descriptorsForRequiredKeys];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSiriContactContextProvider descriptorForRequiredKeys]"];
    v7 = [v4 descriptorWithKeyDescriptors:v5 description:v6];
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
  v4 = [v2 defaultContextManager];

  return v4;
}

- (void)_removeContextProviderOnMainThread
{
  v3 = [(CNSiriContactContextProvider *)self defaultContextManager];
  [v3 removeContextProvider:self];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  [(CNSiriContactContextProvider *)self setIsEnabled:?];
  v5 = [(CNSiriContactContextProvider *)self defaultContextManager];
  v6 = v5;
  if (v3)
  {
    [v5 addContextProvider:self];
  }

  else
  {
    [v5 removeContextProvider:self];
  }
}

- (id)getCurrentContext
{
  v9[1] = *MEMORY[0x1E69E9840];
  CNAssistantConversionClass = getCNAssistantConversionClass();
  v4 = [(CNSiriContactContextProvider *)self contact];
  v5 = [CNAssistantConversionClass createSAPersonFromCNContact:v4];

  if (v5)
  {
    v6 = [v5 dictionary];
    v9[0] = v6;
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
  v4 = [v3 hasSiriCapability];

  if (v4)
  {
    [(CNSiriContactContextProvider *)self performSelectorOnMainThread:sel__removeContextProviderOnMainThread withObject:0 waitUntilDone:1];
  }

  v5.receiver = self;
  v5.super_class = CNSiriContactContextProvider;
  [(CNSiriContactContextProvider *)&v5 dealloc];
}

- (CNSiriContactContextProvider)initWithContact:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v10 = [v9 hasSiriCapability];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = CNSiriContactContextProvider;
    v11 = [(CNSiriContactContextProvider *)&v15 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_contact, a3);
      objc_storeStrong(p_isa + 3, a4);
    }

    self = p_isa;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end