@interface CNPropertyBestIDSValueQuery
- (CNPropertyBestIDSValueQuery)initWithPropertyItems:(id)items service:(id)service;
- (CNPropertyBestIDSValueQuery)initWithPropertyItems:(id)items service:(id)service idsAvailabilityProvider:(id)provider schedulerProvider:(id)schedulerProvider;
- (CNPropertyBestIDSValueQueryDelegate)delegate;
- (CNPropertyGroupItem)bestIDSProperty;
- (void)cancel;
@end

@implementation CNPropertyBestIDSValueQuery

- (CNPropertyBestIDSValueQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNPropertyGroupItem)bestIDSProperty
{
  v47[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695CBC0];
  v47[0] = *MEMORY[0x1E695CB90];
  v47[1] = v3;
  v47[2] = *MEMORY[0x1E695CB70];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  validIDSHandles = [(CNPropertyBestIDSValueQuery *)self validIDSHandles];
  v6 = [validIDSHandles countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v6)
  {
    v8 = 0;
    v32 = 0;
LABEL_25:

    goto LABEL_27;
  }

  v7 = v6;
  obj = validIDSHandles;
  v35 = v4;
  v8 = 0;
  v37 = *v43;
  v9 = *MEMORY[0x1E695C330];
  selfCopy = self;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v43 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v42 + 1) + 8 * i);
      validIDSHandles2 = [(CNPropertyBestIDSValueQuery *)self validIDSHandles];
      if ([validIDSHandles2 containsObject:v11])
      {
        validIDSHandles3 = [(CNPropertyBestIDSValueQuery *)self validIDSHandles];
        v14 = [validIDSHandles3 containsObject:v8];

        if ((v14 & 1) == 0)
        {
          v15 = v11;

          v8 = v15;
          continue;
        }
      }

      else
      {
      }

      contactProperty = [v11 contactProperty];
      v17 = [contactProperty key];
      if ([v17 isEqualToString:v9])
      {
        contactProperty2 = [v8 contactProperty];
        v19 = [contactProperty2 key];
        v20 = [v19 isEqualToString:v9];

        self = selfCopy;
        if ((v20 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      contactProperty3 = [v11 contactProperty];
      label = [contactProperty3 label];
      if ([v35 containsObject:label])
      {
        contactProperty4 = [v8 contactProperty];
        label2 = [contactProperty4 label];
        v25 = [v35 containsObject:label2];

        self = selfCopy;
        if ((v25 & 1) == 0)
        {
LABEL_16:
          v26 = v11;

          v8 = v26;
          continue;
        }
      }

      else
      {
      }

      if (!v8)
      {
        v8 = v11;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v7);

  if (v8)
  {
    idsHandles = [(CNPropertyBestIDSValueQuery *)self idsHandles];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __46__CNPropertyBestIDSValueQuery_bestIDSProperty__block_invoke;
    v40[3] = &unk_1E74E70E0;
    v8 = v8;
    v41 = v8;
    [idsHandles _cn_firstObjectPassingTest:v40];
    v29 = v28 = self;

    propertyItems = [(CNPropertyBestIDSValueQuery *)v28 propertyItems];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __46__CNPropertyBestIDSValueQuery_bestIDSProperty__block_invoke_2;
    v38[3] = &unk_1E74E7108;
    v39 = v29;
    v31 = v29;
    v32 = [propertyItems _cn_firstObjectPassingTest:v38];

    validIDSHandles = v41;
    v4 = v35;
    goto LABEL_25;
  }

  v32 = 0;
  v4 = v35;
LABEL_27:

  return v32;
}

uint64_t __46__CNPropertyBestIDSValueQuery_bestIDSProperty__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 contactProperty];
  v4 = [*(a1 + 32) contactProperty];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)cancel
{
  idsLookupToken = [(CNPropertyBestIDSValueQuery *)self idsLookupToken];
  [idsLookupToken cancel];

  [(CNPropertyBestIDSValueQuery *)self setDelegate:0];
}

- (CNPropertyBestIDSValueQuery)initWithPropertyItems:(id)items service:(id)service idsAvailabilityProvider:(id)provider schedulerProvider:(id)schedulerProvider
{
  itemsCopy = items;
  serviceCopy = service;
  providerCopy = provider;
  schedulerProviderCopy = schedulerProvider;
  v42.receiver = self;
  v42.super_class = CNPropertyBestIDSValueQuery;
  v14 = [(CNPropertyBestIDSValueQuery *)&v42 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  [(CNPropertyBestIDSValueQuery *)v14 setPropertyItems:itemsCopy];
  propertyItems = [(CNPropertyBestIDSValueQuery *)v15 propertyItems];
  v17 = [propertyItems count];

  if (!v17)
  {
    goto LABEL_15;
  }

  propertyItems2 = [(CNPropertyBestIDSValueQuery *)v15 propertyItems];
  v19 = [propertyItems2 _cn_filter:&__block_literal_global_3_58876];
  v20 = [v19 _cn_map:&__block_literal_global_58871];
  [(CNPropertyBestIDSValueQuery *)v15 setIdsHandles:v20];

  v21 = [MEMORY[0x1E695DFA8] set];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__CNPropertyBestIDSValueQuery_initWithPropertyItems_service_idsAvailabilityProvider_schedulerProvider___block_invoke;
  aBlock[3] = &unk_1E74E7130;
  v22 = v15;
  v40 = v22;
  v23 = v21;
  v41 = v23;
  v24 = _Block_copy(aBlock);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v25 = getIDSServiceNameFaceTimeSymbolLoc_ptr_46386;
  v51 = getIDSServiceNameFaceTimeSymbolLoc_ptr_46386;
  if (!getIDSServiceNameFaceTimeSymbolLoc_ptr_46386)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getIDSServiceNameFaceTimeSymbolLoc_block_invoke_46387;
    v46 = &unk_1E74E7518;
    v47 = &v48;
    v26 = IDSLibrary_46388();
    v27 = dlsym(v26, "IDSServiceNameFaceTime");
    *(v47[1] + 24) = v27;
    getIDSServiceNameFaceTimeSymbolLoc_ptr_46386 = *(v47[1] + 24);
    v25 = v49[3];
  }

  _Block_object_dispose(&v48, 8);
  if (v25)
  {
    if ([serviceCopy isEqualToString:*v25])
    {
      v28 = MEMORY[0x1E6996B68];
      idsHandles = [(CNPropertyBestIDSValueQuery *)v22 idsHandles];
      v30 = [v28 validateHandlesForFaceTime:idsHandles availabilityProvider:providerCopy schedulerProvider:schedulerProviderCopy handler:v24];
      goto LABEL_13;
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v31 = getIDSServiceNameiMessageSymbolLoc_ptr_46396;
    v51 = getIDSServiceNameiMessageSymbolLoc_ptr_46396;
    if (!getIDSServiceNameiMessageSymbolLoc_ptr_46396)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __getIDSServiceNameiMessageSymbolLoc_block_invoke_46397;
      v46 = &unk_1E74E7518;
      v47 = &v48;
      v32 = IDSLibrary_46388();
      v33 = dlsym(v32, "IDSServiceNameiMessage");
      *(v47[1] + 24) = v33;
      getIDSServiceNameiMessageSymbolLoc_ptr_46396 = *(v47[1] + 24);
      v31 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (v31)
    {
      if (![serviceCopy isEqualToString:*v31])
      {
LABEL_14:

LABEL_15:
        return v15;
      }

      v34 = MEMORY[0x1E6996B68];
      idsHandles = [(CNPropertyBestIDSValueQuery *)v22 idsHandles];
      v30 = [v34 validateHandlesForIMessage:idsHandles availabilityProvider:providerCopy schedulerProvider:schedulerProviderCopy handler:v24];
LABEL_13:
      v35 = v30;
      [(CNPropertyBestIDSValueQuery *)v22 setIdsLookupToken:v30];

      goto LABEL_14;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameiMessage(void)"];
    [currentHandler handleFailureInFunction:v38 file:@"CNUIIDS_SoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameFaceTime(void)"];
    [currentHandler handleFailureInFunction:v38 file:@"CNUIIDS_SoftLink.h" lineNumber:24 description:{@"%s", dlerror()}];
  }

  __break(1u);
  return result;
}

void __103__CNPropertyBestIDSValueQuery_initWithPropertyItems_service_idsAvailabilityProvider_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 handle];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;

  v6 = [v3 isAvailable];
  if (v6)
  {
    v7 = [*(a1 + 32) validIDSHandles];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setValidIDSHandles:v8];
    }

    v9 = [*(a1 + 32) validIDSHandles];
    v10 = [v9 containsObject:v16];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 32) validIDSHandles];
      [v11 addObject:v16];
    }
  }

  [*(a1 + 40) addObject:v16];
  v12 = [*(a1 + 40) count];
  v13 = [*(a1 + 32) idsHandles];
  v14 = [v13 count];

  if (v12 == v14)
  {
    v15 = [*(a1 + 32) delegate];
    [v15 queryComplete];
  }
}

- (CNPropertyBestIDSValueQuery)initWithPropertyItems:(id)items service:(id)service
{
  serviceCopy = service;
  itemsCopy = items;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  idsAvailabilityProvider = [v8 idsAvailabilityProvider];
  defaultSchedulerProvider = [v8 defaultSchedulerProvider];
  v11 = [(CNPropertyBestIDSValueQuery *)self initWithPropertyItems:itemsCopy service:serviceCopy idsAvailabilityProvider:idsAvailabilityProvider schedulerProvider:defaultSchedulerProvider];

  return v11;
}

@end