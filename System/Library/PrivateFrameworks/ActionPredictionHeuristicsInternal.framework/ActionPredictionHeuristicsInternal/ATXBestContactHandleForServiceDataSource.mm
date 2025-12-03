@interface ATXBestContactHandleForServiceDataSource
- (ATXBestContactHandleForServiceDataSource)initWithDevice:(id)device;
- (id)_getBestGuessFromRankedHandle:(id)handle forService:(id)service;
- (void)allHandlesForContact:(id)contact callback:(id)callback;
- (void)bestHandleForContact:(id)contact service:(id)service callback:(id)callback;
@end

@implementation ATXBestContactHandleForServiceDataSource

- (ATXBestContactHandleForServiceDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = ATXBestContactHandleForServiceDataSource;
  v6 = [(ATXBestContactHandleForServiceDataSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_alloc(MEMORY[0x277D425F8]);
    v9 = objc_opt_new();
    v10 = [v8 initWithGuardedData:v9];
    lock = v7->_lock;
    v7->_lock = v10;
  }

  return v7;
}

- (void)allHandlesForContact:(id)contact callback:(id)callback
{
  v32 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  callbackCopy = callback;
  v7 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v9 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v26 + 1) + 8 * v12) value];
        unformattedInternationalStringValue = [value unformattedInternationalStringValue];

        if ([unformattedInternationalStringValue length])
        {
          [v7 addObject:unformattedInternationalStringValue];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v16 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(emailAddresses);
        }

        value2 = [*(*(&v22 + 1) + 8 * v19) value];
        if ([value2 length])
        {
          [v7 addObject:value2];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  callbackCopy[2](callbackCopy, v7, 0);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)bestHandleForContact:(id)contact service:(id)service callback:(id)callback
{
  v89 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  serviceCopy = service;
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA350))
  {
    v52 = callbackCopy;
    v60 = objc_opt_new();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [contactCopy phoneNumbers];
    v9 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
    if (v9)
    {
      v10 = *v79;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v79 != v10)
          {
            objc_enumerationMutation(obj);
          }

          value = [*(*(&v78 + 1) + 8 * i) value];
          v13 = objc_alloc(MEMORY[0x277CFE078]);
          stringValue = [value stringValue];
          givenName = [contactCopy givenName];
          identifier = [contactCopy identifier];
          v17 = [v13 initWithIdentifier:stringValue type:1 displayName:givenName personId:identifier personIdType:3];

          [v60 addObject:v17];
        }

        v9 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
      }

      while (v9);
    }

    if (([serviceCopy isEqualToString:*MEMORY[0x277D18690]] & 1) == 0)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      emailAddresses = [contactCopy emailAddresses];
      v19 = [emailAddresses countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (v19)
      {
        v20 = *v75;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v75 != v20)
            {
              objc_enumerationMutation(emailAddresses);
            }

            value2 = [*(*(&v74 + 1) + 8 * j) value];
            v23 = objc_alloc(MEMORY[0x277CFE078]);
            givenName2 = [contactCopy givenName];
            identifier2 = [contactCopy identifier];
            v26 = [v23 initWithIdentifier:value2 type:2 displayName:givenName2 personId:identifier2 personIdType:3];

            [v60 addObject:v26];
          }

          v19 = [emailAddresses countByEnumeratingWithState:&v74 objects:v87 count:16];
        }

        while (v19);
      }
    }

    mEMORY[0x277CFE0B0] = [MEMORY[0x277CFE0B0] sharedInteractionAdvisor];
    interactionAdvisorSettingsDefault = [MEMORY[0x277CFE0B8] interactionAdvisorSettingsDefault];
    v27 = [mEMORY[0x277CFE0B0] rankCandidateContacts:v60 usingSettings:interactionAdvisorSettingsDefault];
    v28 = objc_opt_class();
    obja = NSStringFromClass(v28);
    v29 = obja;
    uTF8String = [obja UTF8String];
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v54 = dispatch_queue_create(uTF8String, v31);

    mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
    [mEMORY[0x277D18728] addDelegate:self forService:serviceCopy listenerID:obja queue:v54];
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__13;
    v72 = __Block_byref_object_dispose__13;
    v73 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = v27;
    v32 = [v53 countByEnumeratingWithState:&v64 objects:v86 count:16];
    if (v32)
    {
      v33 = *v65;
      while (2)
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v65 != v33)
          {
            objc_enumerationMutation(v53);
          }

          v35 = *(*(&v64 + 1) + 8 * k);
          v36 = dispatch_semaphore_create(0);
          identifier3 = [v35 identifier];
          v38 = [identifier3 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL;

          identifier4 = [v35 identifier];
          if (v38)
          {
            v40 = IDSCopyIDForPhoneNumber();
          }

          else
          {
            v40 = MEMORY[0x23EF09DF0]();
          }

          v41 = v40;

          if (v41)
          {
            v42 = __atxlog_handle_heuristic();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v83 = v41;
              v84 = 2112;
              v85 = serviceCopy;
              _os_log_debug_impl(&dword_23E3EA000, v42, OS_LOG_TYPE_DEBUG, "Refreshing ID status for %@ on service %@", buf, 0x16u);
            }

            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __82__ATXBestContactHandleForServiceDataSource_bestHandleForContact_service_callback___block_invoke;
            v62[3] = &unk_278C3D438;
            v62[4] = self;
            v62[5] = v35;
            v43 = v36;
            v63 = v43;
            [mEMORY[0x277D18728] refreshIDStatusForDestination:v41 service:serviceCopy listenerID:obja queue:v54 completionBlock:v62];
            [MEMORY[0x277D425A0] waitForSemaphore:v43 timeoutSeconds:5.0];
            lock = self->_lock;
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __82__ATXBestContactHandleForServiceDataSource_bestHandleForContact_service_callback___block_invoke_3;
            v61[3] = &unk_278C3D460;
            v61[4] = &v68;
            [(_PASLock *)lock runWithLockAcquired:v61];
            v45 = v69[5] == 0;

            if (!v45)
            {

              goto LABEL_35;
            }
          }
        }

        v32 = [v53 countByEnumeratingWithState:&v64 objects:v86 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:

    [mEMORY[0x277D18728] removeDelegate:self forService:*MEMORY[0x277D186B0] listenerID:obja];
    v46 = v69[5];
    if (!v46)
    {
      v47 = [(ATXBestContactHandleForServiceDataSource *)self _getBestGuessFromRankedHandle:v53 forService:serviceCopy];
      v48 = v69[5];
      v69[5] = v47;

      v46 = v69[5];
    }

    v52[2](v52, v46, 0);
    _Block_object_dispose(&v68, 8);

    callbackCopy = v52;
  }

  else
  {
    callbackCopy[2](callbackCopy, &stru_2850AD368, 0);
  }

  v49 = *MEMORY[0x277D85DE8];
}

intptr_t __82__ATXBestContactHandleForServiceDataSource_bestHandleForContact_service_callback___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __82__ATXBestContactHandleForServiceDataSource_bestHandleForContact_service_callback___block_invoke_2;
    v5[3] = &unk_278C3D410;
    v5[4] = *(a1 + 40);
    [v3 runWithLockAcquired:v5];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void __82__ATXBestContactHandleForServiceDataSource_bestHandleForContact_service_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = v3[1];
  v3[1] = v4;
}

- (id)_getBestGuessFromRankedHandle:(id)handle forService:(id)service
{
  v22 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  serviceCopy = service;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = handleCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = *MEMORY[0x277D18690];
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([serviceCopy isEqualToString:{v11, v17}] && objc_msgSend(v13, "type") == 1)
        {
          identifier = [v13 identifier];
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  identifier = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return identifier;
}

@end