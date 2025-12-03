@interface CTTelephonyNetworkInfo
- (BOOL)getAllowsVOIP:(BOOL *)p forContext:(id)context withError:(id *)error;
- (BOOL)getCarrierName:(id)name forContext:(id)context withError:(id *)error;
- (BOOL)getMobileCountryCode:(id)code andIsoCountryCode:(id)countryCode forContext:(id)context withError:(id *)error;
- (BOOL)getMobileNetworkCode:(id)code forContext:(id)context withError:(id *)error;
- (BOOL)updateNetworkInfoAndShouldNotifyClient:(BOOL *)client forContext:(id)context;
- (CTCarrier)subscriberCellularProvider;
- (CTServiceDescriptorContainer)descriptors;
- (CTTelephonyNetworkInfo)init;
- (CTTelephonyNetworkInfo)initWithClient:(id)client;
- (NSDictionary)serviceCurrentRadioAccessTechnology;
- (NSString)currentRadioAccessTechnology;
- (NSString)dataServiceIdentifier;
- (id)cellId;
- (id)radioAccessTechnology;
- (id)serviceCellId;
- (id)serviceSignalStrength;
- (id)serviceSubscribersCellularProviderDidUpdateNotifier;
- (id)signalStrength;
- (void)carrierBundleChange:(id)change;
- (void)currentDataServiceDescriptorChanged:(id)changed;
- (void)dealloc;
- (void)postNotificationIfReady:(id)ready object:(id)object;
- (void)queryRat;
- (void)queryRatForDescriptor:(id)descriptor;
- (void)regDataModeChanged:(id)changed dataMode:(int)mode;
- (void)setServiceSubscriberCellularProviderDidUpdateNotifier:(id)notifier;
- (void)setSubscriberCellularProviderDidUpdateNotifier:(void *)subscriberCellularProviderDidUpdateNotifier;
- (void)subscriberCellularProviderDidUpdateNotifier;
- (void)updateLegacyRat:(id)rat;
- (void)updateRat:(id)rat descriptor:(id)descriptor;
@end

@implementation CTTelephonyNetworkInfo

- (CTTelephonyNetworkInfo)init
{
  v3 = dispatch_queue_create("CTTelephonyNetworkInfo", 0);
  fObj = self->_clientQueue.fObj.fObj;
  self->_clientQueue.fObj.fObj = v3;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  v5 = [[CoreTelephonyClient alloc] initWithQueue:self->_clientQueue.fObj.fObj];
  v6 = [(CTTelephonyNetworkInfo *)self initWithClient:v5];

  return v6;
}

- (CTServiceDescriptorContainer)descriptors
{
  descriptors = self->_descriptors;
  if (descriptors)
  {
LABEL_2:
    v3 = descriptors;
    goto LABEL_7;
  }

  client = self->_client;
  v12 = 0;
  v6 = [(CoreTelephonyClient *)client getDescriptorsForDomain:1 error:&v12];
  v7 = v12;
  if (!v7)
  {
    v10 = CTLogNetworkInfo();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CTTelephonyNetworkInfo descriptors];
    }

    v11 = self->_descriptors;
    self->_descriptors = v6;

    descriptors = self->_descriptors;
    goto LABEL_2;
  }

  v8 = CTLogNetworkInfo();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CTTelephonyNetworkInfo descriptors];
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (NSString)dataServiceIdentifier
{
  client = self->_client;
  v9 = 0;
  v3 = [(CoreTelephonyClient *)client getCurrentDataServiceDescriptorSync:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = CTLogNetworkInfo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CTTelephonyNetworkInfo dataServiceIdentifier];
    }

    identifier = 0;
  }

  else
  {
    v7 = CTLogNetworkInfo();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CTTelephonyNetworkInfo dataServiceIdentifier];
    }

    identifier = [v3 identifier];
  }

  return identifier;
}

- (void)queryRat
{
  v15 = *MEMORY[0x1E69E9840];
  descriptors = [(CTTelephonyNetworkInfo *)self descriptors];
  v4 = CTLogNetworkInfo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CTTelephonyNetworkInfo queryRat];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3Descriptors = [descriptors descriptors];
  v6 = [v3Descriptors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3Descriptors);
        }

        [(CTTelephonyNetworkInfo *)self queryRatForDescriptor:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v3Descriptors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)serviceCurrentRadioAccessTechnology
{
  v3 = self->_cachedCurrentRadioAccessTechnology;
  objc_sync_enter(v3);
  cachedCurrentRadioAccessTechnology = [(CTTelephonyNetworkInfo *)self cachedCurrentRadioAccessTechnology];
  objc_sync_exit(v3);

  return cachedCurrentRadioAccessTechnology;
}

- (CTTelephonyNetworkInfo)initWithClient:(id)client
{
  v35 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v31.receiver = self;
  v31.super_class = CTTelephonyNetworkInfo;
  v5 = [(CTTelephonyNetworkInfo *)&v31 init];
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v5->_initialized = 0;
    v8 = objc_opt_new();
    serviceSubscriberCellularProviders = v7->_serviceSubscriberCellularProviders;
    v7->_serviceSubscriberCellularProviders = v8;

    objc_storeStrong(&v6->_client, client);
    cachedCurrentRadioAccessTechnology = v7->_cachedCurrentRadioAccessTechnology;
    v7->_cachedCurrentRadioAccessTechnology = 0;

    if (v7->_subscriberCellularProviderDidUpdateNotifier)
    {
      [(CTTelephonyNetworkInfo *)v7 setSubscriberCellularProviderDidUpdateNotifier:?];
    }

    serviceSubscriberCellularProviders = [(CTTelephonyNetworkInfo *)v7 serviceSubscriberCellularProviders];
    v12 = serviceSubscriberCellularProviders == 0;

    if (v12)
    {
      v22 = v7;
      v7 = 0;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(CTTelephonyNetworkInfo *)v7 setCachedCurrentRadioAccessTechnology:v13];

      [(CTTelephonyNetworkInfo *)v7 descriptors];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v25 = v28 = 0u;
      descriptors = [(CTTelephonyNetworkInfo *)v25 descriptors];
      v15 = [descriptors countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v15)
      {
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(descriptors);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            instance = [v18 instance];
            v20 = +[CTXPCServiceSubscriptionContext contextWithSlot:](CTXPCServiceSubscriptionContext, "contextWithSlot:", [instance intValue]);

            if (![(CTTelephonyNetworkInfo *)v7 updateNetworkInfoAndShouldNotifyClient:0 forContext:v20])
            {
              v21 = CTLogNetworkInfo();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v33 = v18;
                _os_log_debug_impl(&dword_182E9B000, v21, OS_LOG_TYPE_DEBUG, "Could not successfully update network info for descriptor %@ during initialization.", buf, 0xCu);
              }
            }
          }

          v15 = [descriptors countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v15);
      }

      [(CTTelephonyNetworkInfo *)v7 queryRat];
      [(CoreTelephonyClient *)v7->_client setDelegate:v7];
      v7->_initialized = 1;
      v22 = v25;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  if (self->_initialized)
  {
    [(CoreTelephonyClient *)self->_client setDelegate:0];
    client = self->_client;
    self->_client = 0;

    delegate = self->_delegate;
    self->_delegate = 0;

    descriptors = self->_descriptors;
    self->_descriptors = 0;
  }

  v6.receiver = self;
  v6.super_class = CTTelephonyNetworkInfo;
  [(CTTelephonyNetworkInfo *)&v6 dealloc];
}

- (id)serviceSubscribersCellularProviderDidUpdateNotifier
{
  v2 = _Block_copy(self->_serviceSubscriberCellularProvidersDidUpdateNotifier);

  return v2;
}

- (void)subscriberCellularProviderDidUpdateNotifier
{
  v2 = _Block_copy(self->_subscriberCellularProviderDidUpdateNotifier);

  return v2;
}

- (void)setServiceSubscriberCellularProviderDidUpdateNotifier:(id)notifier
{
  notifierCopy = notifier;
  if (self->_serviceSubscriberCellularProvidersDidUpdateNotifier != notifierCopy)
  {
    v7 = notifierCopy;
    v5 = [notifierCopy copyWithZone:0];
    serviceSubscriberCellularProvidersDidUpdateNotifier = self->_serviceSubscriberCellularProvidersDidUpdateNotifier;
    self->_serviceSubscriberCellularProvidersDidUpdateNotifier = v5;

    notifierCopy = v7;
  }
}

- (void)setSubscriberCellularProviderDidUpdateNotifier:(void *)subscriberCellularProviderDidUpdateNotifier
{
  v4 = subscriberCellularProviderDidUpdateNotifier;
  if (self->_subscriberCellularProviderDidUpdateNotifier != v4)
  {
    v7 = v4;
    v5 = [v4 copyWithZone:0];
    v6 = self->_subscriberCellularProviderDidUpdateNotifier;
    self->_subscriberCellularProviderDidUpdateNotifier = v5;

    v4 = v7;
  }
}

- (BOOL)getCarrierName:(id)name forContext:(id)context withError:(id *)error
{
  nameCopy = name;
  contextCopy = context;
  if (nameCopy)
  {
    v10 = [[CTBundle alloc] initWithBundleType:1];
    client = self->_client;
    v18 = 0;
    v12 = [(CoreTelephonyClient *)client copyCarrierBundleValue:contextCopy key:@"CarrierName" bundleType:v10 error:&v18];
    v13 = v18;
    v14 = v13;
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    v16 = v14 == 0;
    if (!v14 && v12)
    {
      [nameCopy setString:v12];
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)getMobileCountryCode:(id)code andIsoCountryCode:(id)countryCode forContext:(id)context withError:(id *)error
{
  codeCopy = code;
  countryCodeCopy = countryCode;
  contextCopy = context;
  if (codeCopy && countryCodeCopy)
  {
    client = self->_client;
    v25 = 0;
    v14 = [(CoreTelephonyClient *)client copyMobileSubscriberCountryCode:contextCopy error:&v25];
    v15 = v25;
    v16 = v15;
    if (v15 || !v14)
    {
      if (error)
      {
        v22 = v15;
        v21 = 0;
        *error = v16;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v17 = self->_client;
      v24 = 0;
      v18 = [(CoreTelephonyClient *)v17 copyMobileSubscriberIsoCountryCode:v14 error:&v24];
      v19 = v24;
      v16 = v19;
      if (error)
      {
        v20 = v19;
        *error = v16;
      }

      v21 = v16 == 0;
      if (!v16)
      {
        [codeCopy setString:v14];
        if (v18)
        {
          [countryCodeCopy setString:v18];
        }
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)getMobileNetworkCode:(id)code forContext:(id)context withError:(id *)error
{
  codeCopy = code;
  contextCopy = context;
  if (codeCopy)
  {
    client = self->_client;
    v17 = 0;
    v11 = [(CoreTelephonyClient *)client copyMobileSubscriberNetworkCode:contextCopy error:&v17];
    v12 = v17;
    v13 = v12;
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    v15 = v13 == 0;
    if (!v13 && v11)
    {
      [codeCopy setString:v11];
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)getAllowsVOIP:(BOOL *)p forContext:(id)context withError:(id *)error
{
  contextCopy = context;
  if (p)
  {
    v9 = [[CTBundle alloc] initWithBundleType:1];
    client = self->_client;
    v17 = 0;
    v11 = [(CoreTelephonyClient *)client copyCarrierBundleValue:contextCopy key:@"AllowsVoIP" bundleType:v9 error:&v17];
    v12 = v17;
    v13 = v12;
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    v15 = v13 == 0;
    if (!v13 && v11)
    {
      *p = [v11 BOOLValue];
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)updateNetworkInfoAndShouldNotifyClient:(BOOL *)client forContext:(id)context
{
  contextCopy = context;
  v44 = 1;
  v37 = contextCopy;
  v6 = objc_alloc_init(CTCarrier);
  v39 = v6;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1EF016BD0];
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1EF016BD0];
  v43 = 0;
  v36 = v8;
  v9 = [(CTTelephonyNetworkInfo *)self getCarrierName:v7 forContext:contextCopy withError:&v43];
  v10 = v43;
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = [v7 length];
  if (v11)
  {
    v12 = [v7 copyWithZone:0];
  }

  else
  {
    v12 = 0;
  }

  [(CTCarrier *)v6 setCarrierName:v12];
  if (v11)
  {
  }

  [v7 setString:&stru_1EF016BD0];
  v42 = v10;
  v13 = [(CTTelephonyNetworkInfo *)self getMobileCountryCode:v7 andIsoCountryCode:v8 forContext:contextCopy withError:&v42];
  v14 = v42;

  if (!v13)
  {
    v17 = 0;
    v10 = v14;
    goto LABEL_23;
  }

  v15 = [v7 length];
  if (v15)
  {
    v16 = [v7 copyWithZone:0];
  }

  else
  {
    v16 = 0;
  }

  [(CTCarrier *)v6 setMobileCountryCode:v16];
  if (v15)
  {
  }

  v18 = [v8 length];
  if (v18)
  {
    v19 = [v8 copyWithZone:0];
  }

  else
  {
    v19 = 0;
  }

  [(CTCarrier *)v6 setIsoCountryCode:v19];
  if (v18)
  {
  }

  [v7 setString:&stru_1EF016BD0];
  [v8 setString:&stru_1EF016BD0];
  v41 = v14;
  v20 = [(CTTelephonyNetworkInfo *)self getMobileNetworkCode:v7 forContext:contextCopy withError:&v41];
  v10 = v41;

  if (v20)
  {
    v21 = [v7 length];
    if (v21)
    {
      v22 = [v7 copyWithZone:0];
    }

    else
    {
      v22 = 0;
    }

    [(CTCarrier *)v6 setMobileNetworkCode:v22];
    if (v21)
    {
    }

    [v7 setString:&stru_1EF016BD0];
    v40 = v10;
    v34 = [(CTTelephonyNetworkInfo *)self getAllowsVOIP:&v44 forContext:contextCopy withError:&v40];
    v35 = v40;

    if (v34)
    {
      [(CTCarrier *)v6 setAllowsVOIP:v44];
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v10 = v35;
  }

  else
  {
LABEL_22:
    v17 = 0;
  }

LABEL_23:
  v23 = [CTServiceDescriptor descriptorWithSubscriptionContext:contextCopy];
  if (v17)
  {
    if (client)
    {
      *client = 0;
    }

    v24 = self->_serviceSubscriberCellularProviders;
    objc_sync_enter(v24);
    serviceSubscriberCellularProviders = [(CTTelephonyNetworkInfo *)self serviceSubscriberCellularProviders];
    identifier = [v23 identifier];
    v27 = [serviceSubscriberCellularProviders objectForKeyedSubscript:identifier];
    v28 = [v27 isEqual:v39];

    if ((v28 & 1) == 0)
    {
      serviceSubscriberCellularProviders = self->_serviceSubscriberCellularProviders;
      identifier2 = [v23 identifier];
      [(NSMutableDictionary *)serviceSubscriberCellularProviders setObject:v39 forKey:identifier2];

      if (client)
      {
        *client = 1;
      }
    }
  }

  else
  {
    v24 = self->_serviceSubscriberCellularProviders;
    objc_sync_enter(v24);
    v31 = self->_serviceSubscriberCellularProviders;
    identifier3 = [v23 identifier];
    [(NSMutableDictionary *)v31 removeObjectForKey:identifier3];
  }

  objc_sync_exit(v24);

  return v17;
}

- (void)regDataModeChanged:(id)changed dataMode:(int)mode
{
  v6 = v8 = changed;
  v7 = [CTServiceDescriptor descriptorWithSubscriptionContext:v8];
  [(CTTelephonyNetworkInfo *)self updateRat:v6 descriptor:v7];
}

- (void)currentDataServiceDescriptorChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(CTTelephonyNetworkInfo *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    global_queue = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__CTTelephonyNetworkInfo_currentDataServiceDescriptorChanged___block_invoke;
    v7[3] = &unk_1E6A46298;
    v8 = delegate;
    v9 = changedCopy;
    dispatch_async(global_queue, v7);
  }
}

void __62__CTTelephonyNetworkInfo_currentDataServiceDescriptorChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 dataServiceIdentifierDidChange:?];
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  v19 = 0;
  if ([(CTTelephonyNetworkInfo *)self updateNetworkInfoAndShouldNotifyClient:&v19 forContext:changeCopy])
  {
    if (v19 == 1)
    {
      v6 = [CTServiceDescriptor descriptorWithSubscriptionContext:changeCopy];
      if (self->_serviceSubscriberCellularProvidersDidUpdateNotifier)
      {
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __46__CTTelephonyNetworkInfo_carrierBundleChange___block_invoke;
        block[3] = &unk_1E6A46298;
        block[4] = self;
        v18 = v6;
        dispatch_async(global_queue, block);
      }

      {
        v8 = self->_serviceSubscriberCellularProviders;
        objc_sync_enter(v8);
        serviceSubscriberCellularProviders = [(CTTelephonyNetworkInfo *)self serviceSubscriberCellularProviders];
        identifier = [v6 identifier];
        v11 = [serviceSubscriberCellularProviders objectForKeyedSubscript:identifier];

        v12 = dispatch_get_global_queue(0, 0);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __46__CTTelephonyNetworkInfo_carrierBundleChange___block_invoke_2;
        v15[3] = &unk_1E6A46298;
        v15[4] = self;
        v16 = v11;
        v13 = v11;
        dispatch_async(v12, v15);

        objc_sync_exit(v8);
      }
    }
  }

  else
  {
    v14 = CTLogNetworkInfo();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CTTelephonyNetworkInfo carrierBundleChange:];
    }
  }
}

void __46__CTTelephonyNetworkInfo_carrierBundleChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) identifier];
  (*(v1 + 16))(v1);
}

- (void)postNotificationIfReady:(id)ready object:(id)object
{
  readyCopy = ready;
  objectCopy = object;
  if (self->_initialized)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:readyCopy object:objectCopy];
  }
}

- (void)queryRatForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [CTXPCServiceSubscriptionContext contextWithServiceDescriptor:descriptorCopy];
  client = self->_client;
  v12 = 0;
  v7 = [(CoreTelephonyClient *)client getDataStatus:v5 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = CTLogNetworkInfo();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CTTelephonyNetworkInfo queryRatForDescriptor:];
    }
  }

  else if (v7)
    v10 = {;
    [(CTTelephonyNetworkInfo *)self updateRat:v10 descriptor:descriptorCopy];
  }

  else
  {
    v11 = CTLogNetworkInfo();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CTTelephonyNetworkInfo queryRatForDescriptor:];
    }
  }
}

- (void)updateRat:(id)rat descriptor:(id)descriptor
{
  v24 = *MEMORY[0x1E69E9840];
  ratCopy = rat;
  descriptorCopy = descriptor;
  v8 = self->_cachedCurrentRadioAccessTechnology;
  objc_sync_enter(v8);
  cachedCurrentRadioAccessTechnology = [(CTTelephonyNetworkInfo *)self cachedCurrentRadioAccessTechnology];
  identifier = [descriptorCopy identifier];
  v11 = [cachedCurrentRadioAccessTechnology objectForKeyedSubscript:identifier];

  if (!(ratCopy | v11) || v11 && ([v11 isEqualToString:ratCopy] & 1) != 0)
  {

    objc_sync_exit(v8);
    goto LABEL_12;
  }

  v12 = CTLogNetworkInfo();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412802;
    v19 = descriptorCopy;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = ratCopy;
    _os_log_debug_impl(&dword_182E9B000, v12, OS_LOG_TYPE_DEBUG, "Updating RAT for descriptor: %@, from: %@ to: %@", &v18, 0x20u);
    if (ratCopy)
    {
      goto LABEL_7;
    }
  }

  else if (ratCopy)
  {
LABEL_7:
    cachedCurrentRadioAccessTechnology2 = [(CTTelephonyNetworkInfo *)self cachedCurrentRadioAccessTechnology];
    identifier2 = [descriptorCopy identifier];
    [cachedCurrentRadioAccessTechnology2 setObject:ratCopy forKey:identifier2];
    goto LABEL_10;
  }

  cachedCurrentRadioAccessTechnology2 = [(CTTelephonyNetworkInfo *)self cachedCurrentRadioAccessTechnology];
  identifier2 = [descriptorCopy identifier];
  [cachedCurrentRadioAccessTechnology2 removeObjectForKey:identifier2];
LABEL_10:

  objc_sync_exit(v8);
  identifier3 = [descriptorCopy identifier];
  [(CTTelephonyNetworkInfo *)self postNotificationIfReady:@"CTServiceRadioAccessTechnologyDidChangeNotification" object:identifier3];

  {
    [(CTTelephonyNetworkInfo *)self updateLegacyRat:ratCopy];
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updateLegacyRat:(id)rat
{
  ratCopy = rat;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CTRadioAccessTechnologyDidChangeNotification" object:ratCopy];
}

- (NSString)currentRadioAccessTechnology
{
  v3 = [CTServiceDescriptor alloc];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v5 = [(CTServiceDescriptor *)v3 initWithDomain:1 instance:v4];

  v6 = self->_cachedCurrentRadioAccessTechnology;
  objc_sync_enter(v6);
  cachedCurrentRadioAccessTechnology = [(CTTelephonyNetworkInfo *)self cachedCurrentRadioAccessTechnology];
  identifier = [(CTServiceDescriptor *)v5 identifier];
  v9 = [cachedCurrentRadioAccessTechnology objectForKeyedSubscript:identifier];

  objc_sync_exit(v6);

  return v9;
}

- (id)serviceSignalStrength
{
  v2 = CTLogNetworkInfo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [CTTelephonyNetworkInfo serviceSignalStrength];
  }

  return MEMORY[0x1E695E0F8];
}

- (id)signalStrength
{
  v2 = CTLogNetworkInfo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [CTTelephonyNetworkInfo signalStrength];
  }

  return MEMORY[0x1E695E0F8];
}

- (id)serviceCellId
{
  v2 = CTLogNetworkInfo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [CTTelephonyNetworkInfo serviceCellId];
  }

  return MEMORY[0x1E695E0F8];
}

- (id)cellId
{
  v2 = CTLogNetworkInfo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [CTTelephonyNetworkInfo cellId];
  }

  return 0;
}

- (CTCarrier)subscriberCellularProvider
{
  v3 = [CTServiceDescriptor alloc];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v5 = [(CTServiceDescriptor *)v3 initWithDomain:1 instance:v4];

  v6 = self->_serviceSubscriberCellularProviders;
  objc_sync_enter(v6);
  serviceSubscriberCellularProviders = [(CTTelephonyNetworkInfo *)self serviceSubscriberCellularProviders];
  identifier = [(CTServiceDescriptor *)v5 identifier];
  v9 = [serviceSubscriberCellularProviders objectForKeyedSubscript:identifier];

  objc_sync_exit(v6);

  return v9;
}

- (id)radioAccessTechnology
{
  v2 = [[CTRadioAccessTechnology alloc] initWithCTTelephonyNetworkInfo:self];

  return v2;
}

@end