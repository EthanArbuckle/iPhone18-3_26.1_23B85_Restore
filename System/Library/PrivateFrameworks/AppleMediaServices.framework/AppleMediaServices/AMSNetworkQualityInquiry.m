@interface AMSNetworkQualityInquiry
+ (AMSNetworkQualityInquiry)sharedInstance;
+ (BOOL)isEntitled;
+ (NSDictionary)lastConnectionReport;
+ (id)reportForConnectionInterface:(id)a3 fromReports:(id)a4;
- (AMSNetworkQualityInquiry)init;
- (id)investigateNetworks;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)drainKnownNetworksReadyHandlers;
- (void)performWhenKnownNetworksReady:(id)a3;
- (void)updateLastConnectionReportWithTask:(id)a3;
@end

@implementation AMSNetworkQualityInquiry

+ (AMSNetworkQualityInquiry)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AMSNetworkQualityInquiry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6E2FF8 != -1)
  {
    dispatch_once(&qword_1ED6E2FF8, block);
  }

  v2 = _MergedGlobals_139;

  return v2;
}

void __42__AMSNetworkQualityInquiry_sharedInstance__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(AMSNetworkQualityInquiry);
  v1 = _MergedGlobals_139;
  _MergedGlobals_139 = v0;

  if (!_MergedGlobals_139)
  {
    v2 = +[AMSLogConfig sharedConfig];
    if (!v2)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      v4 = v6;
      _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: The network quality inquiry failed to initialize.", &v5, 0xCu);
    }
  }
}

- (AMSNetworkQualityInquiry)init
{
  v20 = *MEMORY[0x1E69E9840];
  if (!+[AMSNetworkQualityInquiry isEntitled])
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = objc_opt_class();
      v15 = v19;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Missing entitlements to perform network quality inquiry.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = AMSNetworkQualityInquiry;
  self = [(AMSNetworkQualityInquiry *)&v17 init];
  if (self)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D53E0]);
    manager = self->_manager;
    self->_manager = v3;

    if (self->_manager)
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create("com.apple.AppleMediaServices.NetworkQualityInquiry.queue", v5);
      queue = self->_queue;
      self->_queue = v6;

      [(NWNetworkOfInterestManager *)self->_manager setQueue:self->_queue];
      [(NWNetworkOfInterestManager *)self->_manager setDelegate:self];
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      knownNetworks = self->_knownNetworks;
      self->_knownNetworks = v8;

      v10 = objc_opt_new();
      knownNetworksReadyHandlers = self->_knownNetworksReadyHandlers;
      self->_knownNetworksReadyHandlers = v10;

      [(NWNetworkOfInterestManager *)self->_manager trackNOIAnyForInterfaceType:2 options:0];
      [(NWNetworkOfInterestManager *)self->_manager trackNOIAnyForInterfaceType:1 options:0];
      [(NWNetworkOfInterestManager *)self->_manager trackNOIAnyForInterfaceType:3 options:0];
      goto LABEL_5;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

LABEL_5:
  self = self;
  v12 = self;
LABEL_12:

  return v12;
}

+ (BOOL)isEntitled
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_1F0779C28 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = *v14;
  v5 = 1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v14 != v4)
      {
        objc_enumerationMutation(&unk_1F0779C28);
      }

      v7 = *(*(&v13 + 1) + 8 * i);
      v8 = SecTaskCreateFromSelf(0);
      if (v8)
      {
        v9 = v8;
        error = 0;
        v10 = SecTaskCopyValueForEntitlement(v8, v7, &error);
        if (error)
        {
          CFRelease(error);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        else
        {
          v5 = 0;
        }

        CFRelease(v9);
      }

      else
      {
        v5 = 0;
      }
    }

    v3 = [&unk_1F0779C28 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v3);
  return v5;
}

- (void)dealloc
{
  [(NWNetworkOfInterestManager *)self->_manager setDelegate:0];
  [(NWNetworkOfInterestManager *)self->_manager destroy];
  v3.receiver = self;
  v3.super_class = AMSNetworkQualityInquiry;
  [(AMSNetworkQualityInquiry *)&v3 dealloc];
}

- (id)investigateNetworks
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke;
  v8[3] = &unk_1E73B3DE0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(AMSNetworkQualityInquiry *)self performWhenKnownNetworksReady:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

- (void)drainKnownNetworksReadyHandlers
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_knownNetworksReadyHandlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_knownNetworksReadyHandlers removeAllObjects];
}

void __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke_2;
    v31[3] = &unk_1E73B3958;
    v32 = *(a1 + 40);
    [v2 addFinishBlock:v31];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSince1970];
    v5 = v4;

    v6 = *(a1 + 32);
    if (*(v6 + 40) && (v5 * 1000.0) - *(v6 + 48) <= 999)
    {
      v7 = *(a1 + 40);

      [v7 finishWithResult:?];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [*(*(a1 + 32) + 24) count];
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = *(*(a1 + 32) + 24);
      v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          v14 = 0;
          do
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v27 + 1) + 8 * v14);
            v16 = objc_alloc_init(AMSMutablePromise);
            [v8 addObject:v16];
            v17 = *(*(a1 + 32) + 8);
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke_3;
            v24[3] = &unk_1E73BA0A0;
            v24[4] = v15;
            v25 = v10;
            v26 = v16;
            v18 = v16;
            [v17 auditableLinkQualityForNOI:v15 reply:v24];

            ++v14;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v12);
      }

      v19 = [AMSPromise promiseWithAll:v8];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke_56;
      v22[3] = &unk_1E73BA3F8;
      v22[4] = *(a1 + 32);
      v23 = v10;
      v20 = v10;
      [v19 addFinishBlock:v22];
      objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
    }
  }
}

void __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  if (v8 && (v9 = [v7 interface], (v9 - 1) <= 2))
  {
    v10 = off_1E73BA440[v9 - 1];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *v17 = MEMORY[0x1E69E9820];
    *&v17[8] = 3221225472;
    *&v17[16] = __AMSNetworkQualityInquiryReportMake_block_invoke;
    v18 = &unk_1E73B4560;
    v12 = v11;
    v19 = v12;
    [v8 enumerateKeysAndObjectsUsingBlock:v17];
    if ([v12 count])
    {
      [v12 setObject:v10 forKeyedSubscript:@"interface"];
      v13 = [v12 copy];
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      [*(a1 + 40) addObject:v13];
    }
  }

  else
  {
  }

  if (v6)
  {
    v14 = +[AMSLogConfig sharedConfig];
    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *v17 = 138543618;
      *&v17[4] = v16;
      *&v17[12] = 2112;
      *&v17[14] = v6;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "Could not determine link quality for %{public}@, reason: %@", v17, 0x16u);
    }
  }

  [*(a1 + 48) finishWithResult:MEMORY[0x1E695E118]];
}

void __47__AMSNetworkQualityInquiry_investigateNetworks__block_invoke_56(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSince1970];
  *(*(a1 + 32) + 48) = (v6 * 1000.0);

  [*(*(a1 + 32) + 56) finishWithResult:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  *(v7 + 56) = 0;
}

+ (NSDictionary)lastConnectionReport
{
  v2 = [a1 sharedInstance];
  v3 = [v2 lastConnectionReport];

  return v3;
}

+ (id)reportForConnectionInterface:(id)a3 fromReports:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = MEMORY[0x1E6977E30];
    v9 = a3;
    v10 = [[v8 alloc] initWithInterfaceName:v9];

    v11 = [v10 type];
    if ((v11 - 1) > 2)
    {
      v7 = 0;
    }

    else
    {
      v12 = off_1E73BA440[v11 - 1];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__AMSNetworkQualityInquiry_reportForConnectionInterface_fromReports___block_invoke;
      v14[3] = &unk_1E73BA420;
      v15 = v12;
      v7 = [v6 ams_firstObjectPassingTest:v14];
    }
  }

  return v7;
}

uint64_t __69__AMSNetworkQualityInquiry_reportForConnectionInterface_fromReports___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"interface"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)updateLastConnectionReportWithTask:(id)a3
{
  v4 = [a3 _timingData];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"_kCFNTimingDataConnectionInterfaceIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;

      if (v7)
      {
        v8 = [(AMSNetworkQualityInquiry *)self investigateNetworks];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __63__AMSNetworkQualityInquiry_updateLastConnectionReportWithTask___block_invoke;
        v9[3] = &unk_1E73B5B60;
        v7 = v7;
        v10 = v7;
        v11 = self;
        [v8 addFinishBlock:v9];
      }
    }

    else
    {

      v7 = 0;
    }
  }
}

uint64_t __63__AMSNetworkQualityInquiry_updateLastConnectionReportWithTask___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [AMSNetworkQualityInquiry reportForConnectionInterface:*(result + 32) fromReports:a2];
    if (v3)
    {
      v5 = v3;
      [*(v2 + 40) setLastConnectionReport:v3];
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 postNotificationName:@"AMSLastConnectionReportChangedNotification" object:v5];
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)performWhenKnownNetworksReady:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AMSNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__AMSNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) areKnownNetworksReady])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 32);
    v5 = _Block_copy(v3);
    [v4 addObject:v5];
  }
}

- (void)didStartTrackingNOI:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_knownNetworks addObject:v5];

  if ([(AMSNetworkQualityInquiry *)self areKnownNetworksReady])
  {

    [(AMSNetworkQualityInquiry *)self drainKnownNetworksReadyHandlers];
  }
}

- (void)didStopTrackingNOI:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableSet *)self->_knownNetworks removeObject:v4];
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Stopped tracking %@, searching for interface again", &v7, 0x16u);
  }

  -[NWNetworkOfInterestManager trackNOIAnyForInterfaceType:options:](self->_manager, "trackNOIAnyForInterfaceType:options:", [v4 interface], 0);
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AMSNetworkQualityInquiry *)self didStopTrackingNOI:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end