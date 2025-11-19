@interface ILClassificationController
+ (BOOL)shouldActivate;
+ (ILClassificationController)sharedInstance;
+ (id)electedExtensionFromExtensions:(id)a3;
- (BOOL)isClassificationAvailable;
- (ILClassificationController)init;
- (NSArray)extensions;
- (NSExtension)electedExtension;
- (void)activateWithCompletion:(id)a3;
- (void)addDelegate:(id)a3;
- (void)beginMatchingExtensionsWithFirstCompletion:(id)a3;
- (void)dealloc;
- (void)removeDelegate:(id)a3;
- (void)setElectedExtension:(id)a3;
- (void)updateExtensions:(id)a3 electedExtensions:(id)a4;
@end

@implementation ILClassificationController

+ (ILClassificationController)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ILClassificationController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __44__ILClassificationController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ILClassificationController)init
{
  v9.receiver = self;
  v9.super_class = ILClassificationController;
  v2 = [(ILClassificationController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create([@"ILClassificationControllerServiceName" UTF8String], v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v6;
  }

  return v2;
}

+ (BOOL)shouldActivate
{
  if (shouldActivate_onceToken != -1)
  {
    +[ILClassificationController shouldActivate];
  }

  return shouldActivate_shouldActivate;
}

void __44__ILClassificationController_shouldActivate__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  v1 = CFAutorelease(v0);
  shouldActivate_shouldActivate = CFEqual(v1, @"iPhone") != 0;
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412802;
    v5 = v1;
    v6 = 2112;
    v7 = @"iPhone";
    v8 = 1024;
    v9 = shouldActivate_shouldActivate;
    _os_log_impl(&dword_238A41000, v2, OS_LOG_TYPE_DEFAULT, "determined device class to be %@ (requires %@), should activate: %d", &v4, 0x1Cu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ILDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "requested activate classification controller...", buf, 2u);
  }

  v6 = [(ILClassificationController *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ILClassificationController_activateWithCompletion___block_invoke;
  v8[3] = &unk_278A5E578;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __53__ILClassificationController_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [objc_opt_class() shouldActivate];
  v4 = ILDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "classification controller already activated", buf, 2u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__ILClassificationController_activateWithCompletion___block_invoke_8;
      block[3] = &unk_278A5E608;
      v8 = v6;
      block[4] = *(a1 + 32);
      v15 = v8;
      dispatch_async(v7, block);

      v9 = v15;
LABEL_14:
    }
  }

  else if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "activating classification controller", buf, 2u);
    }

    [*(a1 + 32) beginMatchingExtensionsWithFirstCompletion:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "shouldn't activate classification controller", buf, 2u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = dispatch_get_global_queue(21, 0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__ILClassificationController_activateWithCompletion___block_invoke_9;
      v12[3] = &unk_278A5E420;
      v13 = v10;
      dispatch_async(v11, v12);

      v9 = v13;
      goto LABEL_14;
    }
  }
}

- (void)beginMatchingExtensionsWithFirstCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ILDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(v4);
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "begin matching extensions with first match completion: %@", buf, 0xCu);
  }

  [(ILClassificationController *)self setFirstMatchCompletionBlock:v4];
  objc_initWeak(buf, self);
  v14 = *MEMORY[0x277CCA0F8];
  v15 = @"com.apple.identitylookup.classification-ui";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v8 = MEMORY[0x277CCA9C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke;
  v12[3] = &unk_278A5E658;
  objc_copyWeak(&v13, buf);
  v9 = [v8 beginMatchingExtensionsWithAttributes:v7 completion:v12];
  matchingExtensionToken = self->_matchingExtensionToken;
  self->_matchingExtensionToken = v9;

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ILDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_238A41000, v7, OS_LOG_TYPE_DEFAULT, "update matched extensions: %@", &buf, 0xCu);
  }

  if (v6)
  {
    v8 = ILDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy_;
      v23 = __Block_byref_object_dispose_;
      v24 = 0;
      v10 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_12;
      block[3] = &unk_278A5E630;
      p_buf = &buf;
      block[4] = v8;
      v11 = v5;
      v18 = v11;
      dispatch_sync(v10, block);

      v12 = [v8 firstMatchCompletionBlock];

      if (v12)
      {
        v13 = ILDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_238A41000, v13, OS_LOG_TYPE_DEFAULT, "Invoking first matching completion", v16, 2u);
        }

        v14 = [v8 firstMatchCompletionBlock];
        (v14)[2](v14, *(*(&buf + 1) + 40), v11);

        [v8 setFirstMatchCompletionBlock:0];
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_12(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() electedExtensionFromExtensions:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a1[6] + 8) + 40);

  return [v6 updateExtensions:v7 electedExtensions:v8];
}

- (void)updateExtensions:(id)a3 electedExtensions:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ILClassificationController *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = ILDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = @"com.apple.identitylookup.classification-ui";
    _os_log_impl(&dword_238A41000, v10, OS_LOG_TYPE_DEFAULT, "updating extensions: %@ elected extension: %@ for point name: %@", buf, 0x20u);
  }

  v20 = v8;
  v21 = v7;

  objc_storeStrong(&self->_electedExtension, a4);
  objc_storeStrong(&self->_extensions, a3);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(ILClassificationController *)self delegates];
  v12 = [v11 allObjects];

  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        v18 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__ILClassificationController_updateExtensions_electedExtensions___block_invoke;
        block[3] = &unk_278A5E680;
        block[4] = v17;
        block[5] = self;
        dispatch_async(v18, block);

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:{16, v20, v21}];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __65__ILClassificationController_updateExtensions_electedExtensions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 isClassificationAvailable];
  v6 = [*(a1 + 40) electedExtension];
  v5 = [*(a1 + 40) extensions];
  [v2 classificationController:v3 didUpdateAvailability:v4 electedExtension:v6 extensions:v5];
}

- (BOOL)isClassificationAvailable
{
  v2 = [(ILClassificationController *)self electedExtension];
  v3 = v2 != 0;

  return v3;
}

- (NSExtension)electedExtension
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(ILClassificationController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ILClassificationController_electedExtension__block_invoke;
  v6[3] = &unk_278A5E6A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)extensions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(ILClassificationController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ILClassificationController_extensions__block_invoke;
  v6[3] = &unk_278A5E6A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setElectedExtension:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ILClassificationController_setElectedExtension___block_invoke;
  v7[3] = &unk_278A5E680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__ILClassificationController_setElectedExtension___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = (a1 + 40);
  if (v2 != *(a1 + 40))
  {
    v4 = ILDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 16);
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "set elected: %@ in extensions: %@", buf, 0x16u);
    }

    if (v2)
    {
      v16 = 0;
      v7 = [v2 attemptOptOut:&v16];
      v8 = v16;
      if ((v7 & 1) == 0)
      {
        v9 = ILDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __50__ILClassificationController_setElectedExtension___block_invoke_cold_1(v2, v8, v9);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    v10 = *(a1 + 40);
    if (v10)
    {
      v15 = v8;
      v11 = [v10 attemptOptIn:&v15];
      v12 = v15;

      if ((v11 & 1) == 0)
      {
        v13 = ILDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __50__ILClassificationController_setElectedExtension___block_invoke_cold_2(v3, v12, v13);
        }
      }
    }

    else
    {
      v12 = v8;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ILClassificationController_addDelegate___block_invoke;
  v7[3] = &unk_278A5E680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __42__ILClassificationController_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ILClassificationController_removeDelegate___block_invoke;
  v7[3] = &unk_278A5E680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __45__ILClassificationController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

+ (id)electedExtensionFromExtensions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 optedIn])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)dealloc
{
  v3 = MEMORY[0x277CCA9C8];
  v4 = [(ILClassificationController *)self matchingExtensionToken];
  [v3 endMatchingExtensions:v4];

  v5.receiver = self;
  v5.super_class = ILClassificationController;
  [(ILClassificationController *)&v5 dealloc];
}

void __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = @"com.apple.identitylookup.classification-ui";
  _os_log_error_impl(&dword_238A41000, a2, OS_LOG_TYPE_ERROR, "Error (%@) finding extensions for point name: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __50__ILClassificationController_setElectedExtension___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_238A41000, a2, a3, "Error opting out extension %@: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __50__ILClassificationController_setElectedExtension___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_238A41000, a2, a3, "Error opting in extension %@: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end