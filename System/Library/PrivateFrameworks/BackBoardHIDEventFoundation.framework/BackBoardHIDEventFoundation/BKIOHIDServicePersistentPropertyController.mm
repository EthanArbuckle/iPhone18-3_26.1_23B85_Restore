@interface BKIOHIDServicePersistentPropertyController
+ (id)digitizerServicePersistentPropertyController;
+ (id)sharedInstances;
+ (id)touchSensitiveButtonServicePersistentPropertyController;
- (BKIOHIDServicePersistentPropertyController)initWithClientEntitlement:(id)a3 defaults:(id)a4 defaultsKey:(id)a5;
- (id)allPersistentPropertiesForServicesMatchingDescriptor:(id)a3;
- (id)persistentPropertiesForKeys:(id)a3 forSenderDescriptor:(id)a4;
- (void)registerHandler:(id)a3;
- (void)setPersistentProperties:(id)a3 forSenderDescriptor:(id)a4;
@end

@implementation BKIOHIDServicePersistentPropertyController

- (id)allPersistentPropertiesForServicesMatchingDescriptor:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  os_unfair_lock_lock(&self->_defaultsLock);
  v5 = [(BKSLocalDefaults *)self->_defaultsLock_defaults valueForKey:self->_defaultsKey defaultValueProvider:&__block_literal_global_33_2560];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"sender"];
        v12 = [objc_alloc(MEMORY[0x277CF06D0]) initFromPropertyList:v11];
        if ([v4 matchesDescriptor:v12 failureReason:0])
        {
          v13 = [v10 objectForKeyedSubscript:@"props"];
          if ([v13 count])
          {
            [v16 addEntriesFromDictionary:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_defaultsLock);

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)persistentPropertiesForKeys:(id)a3 forSenderDescriptor:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_defaultsLock);
  v8 = [v7 propertyListEncoded];
  [(BKSLocalDefaults *)self->_defaultsLock_defaults valueForKey:self->_defaultsKey defaultValueProvider:&__block_literal_global_24_2570];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"sender"];
        if ([v14 isEqual:v8])
        {
          v30 = v8;
          v31 = self;
          v32 = v7;
          v16 = [v13 objectForKeyedSubscript:@"props"];
          v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v33 = v6;
          v17 = v6;
          v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v36;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v35 + 1) + 8 * j);
                v23 = [v16 objectForKeyedSubscript:v22];
                v24 = v23;
                if (v23)
                {
                  v25 = [v23 copy];
                  [v15 setObject:v25 forKeyedSubscript:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v19);
          }

          v7 = v32;
          v6 = v33;
          v8 = v30;
          self = v31;
          goto LABEL_20;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_20:

  os_unfair_lock_unlock(&self->_defaultsLock);
  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = MEMORY[0x277CBEC10];
  }

  v27 = v26;

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)setPersistentProperties:(id)a3 forSenderDescriptor:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!CFPropertyListIsValid(v7, kCFPropertyListXMLFormat_v1_0))
  {
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"non-plistable type in %@", v7];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      *&buf[4] = v45;
      *&buf[12] = 2114;
      *&buf[14] = v47;
      *&buf[22] = 2048;
      v65 = self;
      *v66 = 2114;
      *&v66[2] = @"BKIOHIDServicePersistentPropertyController.m";
      v67 = 1024;
      v68 = 141;
      v69 = 2114;
      v70 = v44;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE4934);
  }

  v9 = v8;
  if (self)
  {
    os_unfair_lock_lock(&self->_handlersLock);
    v10 = [(NSMutableArray *)self->_handlersLock_handlers copy];
    os_unfair_lock_unlock(&self->_handlersLock);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __75__BKIOHIDServicePersistentPropertyController__handlersForSenderDescriptor___block_invoke;
    v65 = &unk_2784F6ED8;
    *v66 = v9;
    v11 = [v10 bs_filter:buf];
  }

  else
  {
    v11 = 0;
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __90__BKIOHIDServicePersistentPropertyController_setPersistentProperties_forSenderDescriptor___block_invoke;
  v54[3] = &unk_2784F6F00;
  v12 = v7;
  v55 = v12;
  v13 = v9;
  v56 = v13;
  v57 = self;
  v14 = [v11 bs_filter:v54];

  v15 = [v14 count];
  v16 = BKLogHID();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      defaultsKey = self->_defaultsKey;
      v19 = [MEMORY[0x277CF0C08] descriptionForRootObject:v12];
      *buf = 138543874;
      *&buf[4] = defaultsKey;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      v65 = v13;
      _os_log_impl(&dword_223CBE000, v16, OS_LOG_TYPE_DEFAULT, "setPersistentProperties(%{public}@): %{public}@ forServicesMatching:(%{public}@)", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_defaultsLock);
    v51 = v13;
    v20 = [(BKIOHIDServicePersistentPropertyController *)v13 propertyListEncoded];
    v21 = [(BKSLocalDefaults *)self->_defaultsLock_defaults valueForKey:self->_defaultsKey defaultValueProvider:&__block_literal_global_22];
    v22 = objc_opt_class();
    v23 = v21;
    if (v22)
    {
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v50 = v14;
    v53 = self;
    v26 = v24;

    v27 = [v26 mutableCopy];
    if (!v27)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v16 = v20;
    v52 = v12;
    v48 = v12;
    v49 = v27;
    DeepCopy = CFPropertyListCreateDeepCopy(0, v27, 1uLL);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v29 = DeepCopy;
    v30 = [v29 countByEnumeratingWithState:&v58 objects:buf count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v59;
      while (2)
      {
        v33 = 0;
        do
        {
          if (*v59 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v58 + 1) + 8 * v33);
          v35 = objc_opt_class();
          v36 = v34;
          if (v35)
          {
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;

          if (v38)
          {
            v39 = [v38 objectForKeyedSubscript:@"sender"];
            v40 = [v38 objectForKeyedSubscript:@"props"];
            if ([v39 isEqual:v16])
            {
              v41 = v48;
              [v40 addEntriesFromDictionary:v48];

              v42 = v29;
              goto LABEL_33;
            }
          }

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v58 objects:buf count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    v62[0] = @"sender";
    v62[1] = @"props";
    v41 = v48;
    v63[0] = v16;
    v63[1] = v48;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    [v29 addObject:v42];
LABEL_33:

    [(BKSLocalDefaults *)v53->_defaultsLock_defaults setValue:v29 forKey:v53->_defaultsKey];
    os_unfair_lock_unlock(&v53->_defaultsLock);

    v13 = v51;
    v12 = v52;
    v14 = v50;
  }

  else if (v17)
  {
    v25 = self->_defaultsKey;
    *buf = 138543618;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    _os_log_impl(&dword_223CBE000, v16, OS_LOG_TYPE_DEFAULT, "setPersistentProperties(%{public}@): no support for <%{public}@>", buf, 0x16u);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __90__BKIOHIDServicePersistentPropertyController_setPersistentProperties_forSenderDescriptor___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 setPersistentProperties:a1[4] forServicesMatchingDescriptor:a1[5]];
  if (v4 == 1)
  {
    v5 = BKLogHID();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1[6] + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = v3;
      v7 = v15;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "setPersistentProperties(%{public}@): properties disallowed by handler <%{public}@: %p>", &v12, 0x20u);
      goto LABEL_7;
    }
  }

  else
  {
    if (v4)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v5 = BKLogHID();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1[6] + 40);
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = v3;
      v7 = v15;
      _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "setPersistentProperties(%{public}@): handler <%{public}@: %p> does not handle this sender descriptor", &v12, 0x20u);
LABEL_7:
    }
  }

  v9 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)registerHandler:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_handlersLock);
  handlersLock_handlers = self->_handlersLock_handlers;
  if (!handlersLock_handlers)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = self->_handlersLock_handlers;
    self->_handlersLock_handlers = v5;

    handlersLock_handlers = self->_handlersLock_handlers;
  }

  [(NSMutableArray *)handlersLock_handlers addObject:v7];
  os_unfair_lock_unlock(&self->_handlersLock);
}

- (BKIOHIDServicePersistentPropertyController)initWithClientEntitlement:(id)a3 defaults:(id)a4 defaultsKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BKIOHIDServicePersistentPropertyController;
  v12 = [(BKIOHIDServicePersistentPropertyController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientEntitlement, a3);
    objc_storeStrong(&v13->_defaultsLock_defaults, a4);
    objc_storeStrong(&v13->_defaultsKey, a5);
    *&v13->_handlersLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

+ (id)touchSensitiveButtonServicePersistentPropertyController
{
  if (touchSensitiveButtonServicePersistentPropertyController_onceToken != -1)
  {
    dispatch_once(&touchSensitiveButtonServicePersistentPropertyController_onceToken, &__block_literal_global_5);
  }

  v3 = touchSensitiveButtonServicePersistentPropertyController_sharedController;

  return v3;
}

void __101__BKIOHIDServicePersistentPropertyController_touchSensitiveButtonServicePersistentPropertyController__block_invoke()
{
  v0 = [BKIOHIDServicePersistentPropertyController alloc];
  v3 = [MEMORY[0x277CF05D0] localDefaults];
  v1 = [(BKIOHIDServicePersistentPropertyController *)v0 initWithClientEntitlement:@"com.apple.backboardd.hidPersistentProperty-TouchSensitiveButton" defaults:v3 defaultsKey:@"BKTouchSensitiveButtonPersistentServiceProperties"];
  v2 = touchSensitiveButtonServicePersistentPropertyController_sharedController;
  touchSensitiveButtonServicePersistentPropertyController_sharedController = v1;
}

+ (id)digitizerServicePersistentPropertyController
{
  if (digitizerServicePersistentPropertyController_onceToken != -1)
  {
    dispatch_once(&digitizerServicePersistentPropertyController_onceToken, &__block_literal_global_2597);
  }

  v3 = digitizerServicePersistentPropertyController_sharedController;

  return v3;
}

void __90__BKIOHIDServicePersistentPropertyController_digitizerServicePersistentPropertyController__block_invoke()
{
  v0 = [BKIOHIDServicePersistentPropertyController alloc];
  v3 = [MEMORY[0x277CF05D0] localDefaults];
  v1 = [(BKIOHIDServicePersistentPropertyController *)v0 initWithClientEntitlement:@"com.apple.backboardd.hidPersistentProperty-digitizer" defaults:v3 defaultsKey:@"BKDigitizerPersistentServiceProperties"];
  v2 = digitizerServicePersistentPropertyController_sharedController;
  digitizerServicePersistentPropertyController_sharedController = v1;
}

+ (id)sharedInstances
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BKIOHIDServicePersistentPropertyController_sharedInstances__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstances_onceToken != -1)
  {
    dispatch_once(&sharedInstances_onceToken, block);
  }

  v2 = sharedInstances_sharedInstances;

  return v2;
}

void __61__BKIOHIDServicePersistentPropertyController_sharedInstances__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = [*(a1 + 32) digitizerServicePersistentPropertyController];
  v3 = [*(a1 + 32) touchSensitiveButtonServicePersistentPropertyController];
  v4 = [v2 initWithObjects:{v6, v3, 0}];
  v5 = sharedInstances_sharedInstances;
  sharedInstances_sharedInstances = v4;
}

@end