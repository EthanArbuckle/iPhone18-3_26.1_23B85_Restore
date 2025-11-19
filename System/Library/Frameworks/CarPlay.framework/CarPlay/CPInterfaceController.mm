@interface CPInterfaceController
+ (id)_templateProvidingInterface;
+ (void)_allowlistClassesForBaseTemplateProvider:(id)a3;
- (BOOL)isCarPlayCanvasActive;
- (CPTemplate)presentedTemplate;
- (CPTemplate)topTemplate;
- (CPWindowProviding)windowProvider;
- (NSArray)templates;
- (UITraitCollection)carTraitCollection;
- (id)_activeMapTemplate;
- (id)_init;
- (id)_listenerEndpointForSettings:(id)a3;
- (id)_synchronousTemplateProvider;
- (id)_templateWithIdentifier:(id)a3;
- (id)delegate;
- (void)_completeSetupWithCompletion:(id)a3;
- (void)_connectToListenerEndpoint:(id)a3;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)_handleCompletion:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)_invalidate;
- (void)_pushTabBarTemplate:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_sceneConnect:(id)a3;
- (void)bannerDidAppearWithIdentifier:(id)a3;
- (void)bannerDidDisappearWithIdentifier:(id)a3;
- (void)bannerTappedWithIdentifier:(id)a3;
- (void)clientAssistantCellUnavailableWithError:(id)a3;
- (void)clientPushNowPlayingTemplateAnimated:(BOOL)a3;
- (void)clientPushedIllegalTemplateOfClass:(id)a3;
- (void)selectTabBarTemplateIndex:(int64_t)a3;
- (void)setPrefersDarkUserInterfaceStyle:(BOOL)prefersDarkUserInterfaceStyle;
- (void)templateIdentifierDidDismiss:(id)a3;
- (void)templateIdentifierDidPop:(id)a3;
- (void)updateInterestingLayoutGuideWithInsets:(UIEdgeInsets)a3;
- (void)updateTabBarTemplate:(id)a3;
@end

@implementation CPInterfaceController

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CPInterfaceController;
  v2 = [(CPInterfaceController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    templateMapTable = v2->_templateMapTable;
    v2->_templateMapTable = v3;
  }

  return v2;
}

- (void)setPrefersDarkUserInterfaceStyle:(BOOL)prefersDarkUserInterfaceStyle
{
  if (self->_prefersDarkUserInterfaceStyle != prefersDarkUserInterfaceStyle)
  {
    self->_prefersDarkUserInterfaceStyle = prefersDarkUserInterfaceStyle;
    v5 = [(CPInterfaceController *)self templateProvider];
    [v5 setHostPrefersDarkUserInterfaceStyle:self->_prefersDarkUserInterfaceStyle];
  }
}

void __62__CPInterfaceController_popToRootTemplateAnimated_completion___block_invoke(uint64_t a1, int a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = *(a1 + 32);

    [v5 _handleCompletion:v3 withSuccess:1 error:0];
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"No templates were available to be popped.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:@"CarPlayErrorDomain" code:-1 userInfo:v7];
    [v2 _handleCompletion:v3 withSuccess:0 error:v8];

    v9 = *MEMORY[0x277D85DE8];
  }
}

void __56__CPInterfaceController_popTemplateAnimated_completion___block_invoke(uint64_t a1, int a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = *(a1 + 32);

    [v5 _handleCompletion:v3 withSuccess:1 error:0];
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"No templates were available to be popped.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:@"CarPlayErrorDomain" code:-1 userInfo:v7];
    [v2 _handleCompletion:v3 withSuccess:0 error:v8];

    v9 = *MEMORY[0x277D85DE8];
  }
}

void __59__CPInterfaceController_popToTemplate_animated_completion___block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CPInterfaceController_popToTemplate_animated_completion___block_invoke_2;
  v4[3] = &unk_278A108D8;
  v7 = a2;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v8 = *(a1 + 56);
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __59__CPInterfaceController_popToTemplate_animated_completion___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v3 = [*(a1 + 32) templateProvider];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 57)];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__CPInterfaceController_popToTemplate_animated_completion___block_invoke_3;
    v11[3] = &unk_278A108B0;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    [v3 popToTemplate:v4 animated:v5 reply:v11];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"The specified template does not exist in the current navigation hierarchy.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 errorWithDomain:@"CarPlayErrorDomain" code:-1 userInfo:v8];
    [v2 _handleCompletion:v6 withSuccess:0 error:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __59__CPInterfaceController_popToTemplate_animated_completion___block_invoke_3(uint64_t a1, int a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = *(a1 + 32);

    [v5 _handleCompletion:v3 withSuccess:1 error:0];
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"The specified template does not exist in the current navigation hierarchy.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:@"CarPlayErrorDomain" code:-1 userInfo:v7];
    [v2 _handleCompletion:v3 withSuccess:0 error:v8];

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (CPTemplate)presentedTemplate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(CPInterfaceController *)self _synchronousTemplateProvider];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CPInterfaceController_presentedTemplate__block_invoke;
  v6[3] = &unk_278A10950;
  v6[4] = self;
  v6[5] = &v7;
  [v3 getPresentedTemplateWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__CPInterfaceController_presentedTemplate__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(*(a1 + 32) + 24) identifier];
  v4 = [v3 isEqual:v9];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = (v5 + 24);
  }

  else
  {
    v7 = [*(v5 + 56) identifier];
    v8 = [v7 isEqual:v9];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = (*(a1 + 32) + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *v6);
LABEL_6:
}

- (CPTemplate)topTemplate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(CPInterfaceController *)self _synchronousTemplateProvider];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__CPInterfaceController_topTemplate__block_invoke;
  v6[3] = &unk_278A10978;
  v6[4] = self;
  v6[5] = &v7;
  [v3 getTopTemplateWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__CPInterfaceController_topTemplate__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 templateMapTable];
  v5 = [v8 objectForKey:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSArray)templates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(CPInterfaceController *)self _synchronousTemplateProvider];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__CPInterfaceController_templates__block_invoke;
  v6[3] = &unk_278A109C8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 getTemplatesWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__CPInterfaceController_templates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__CPInterfaceController_templates__block_invoke_2;
  v9[3] = &unk_278A109A0;
  v9[4] = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;
}

void __34__CPInterfaceController_templates__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 templateMapTable];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

- (void)_handleCompletion:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__CPInterfaceController__handleCompletion_withSuccess_error___block_invoke_2;
    v11[3] = &unk_278A109F0;
    v10 = &v13;
    v13 = v7;
    v14 = a4;
    v12 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v11);

LABEL_3:
    goto LABEL_8;
  }

  if ((v8 || !a4) && dyld_program_sdk_at_least())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__CPInterfaceController__handleCompletion_withSuccess_error___block_invoke;
    block[3] = &unk_278A105A0;
    v10 = &v16;
    v16 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_3;
  }

LABEL_8:
}

uint64_t __71__CPInterfaceController__pushVoiceControlTemplate_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

uint64_t __81__CPInterfaceController__pushGridTemplate_presentationStyle_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

uint64_t __88__CPInterfaceController__pushInformationTemplate_presentationStyle_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

uint64_t __80__CPInterfaceController__pushMapTemplate_presentationStyle_animated_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setNavigationSessionProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

uint64_t __81__CPInterfaceController__pushListTemplate_presentationStyle_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

uint64_t __83__CPInterfaceController__pushSearchTemplate_presentationStyle_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

uint64_t __87__CPInterfaceController__pushNowPlayingTemplate_presentationStyle_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

- (void)_pushTabBarTemplate:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  [v7 setInterfaceController:self];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v7 templates];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        location[1] = MEMORY[0x277D85DD0];
        location[2] = 3221225472;
        location[3] = __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke;
        location[4] = &unk_278A10B80;
        location[5] = v13;
        [CPInterfaceController _pushTemplate:"_pushTemplate:presentationStyle:animated:completion:" presentationStyle:? animated:? completion:?];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  objc_initWeak(location, self);
  v14 = [(CPInterfaceController *)self templateProvider];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke_54;
  v18[3] = &unk_278A10BA8;
  v15 = v7;
  v19 = v15;
  objc_copyWeak(&v21, location);
  v16 = v8;
  v20 = v16;
  [v14 setTabBarTemplate:v15 withProxyDelegate:v15 reply:v18 animated:MEMORY[0x277CBEC28]];

  objc_destroyWeak(&v21);
  objc_destroyWeak(location);

  v17 = *MEMORY[0x277D85DE8];
}

void __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CarPlayFrameworkGeneralLogging();
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "Prepared a tab for %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke_54(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleCompletion:*(a1 + 40) withSuccess:1 error:0];
}

uint64_t __83__CPInterfaceController__pushEntityTemplate_presentationStyle_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) connectTemplateProvider:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _handleCompletion:v4 withSuccess:1 error:0];
}

- (void)updateTabBarTemplate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 templates];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [CPInterfaceController _pushTemplate:"_pushTemplate:presentationStyle:animated:completion:" presentationStyle:? animated:? completion:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [(CPInterfaceController *)self templateProvider];
  [v10 updateTabBarTemplate:v4];

  v11 = *MEMORY[0x277D85DE8];
}

void __46__CPInterfaceController_updateTabBarTemplate___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CarPlayFrameworkGeneralLogging();
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "Prepared a tab for %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)selectTabBarTemplateIndex:(int64_t)a3
{
  v4 = [(CPInterfaceController *)self templateProvider];
  [v4 selectTabBarTemplateAtIndex:a3];
}

- (void)_sceneConnect:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _FBSScene];
  if (CPCurrentProcessHasTemplateEntitlement() && ([v5 settings], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 _identifier];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "Connecting to listener endpoint for scene identifier: %{public}@", &v14, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    v11 = [v5 settings];
    v12 = [v11 endpoint];
    [v10 _setEndpoint:v12];

    [(CPInterfaceController *)self _connectToListenerEndpoint:v10];
  }

  else
  {
    v10 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CPInterfaceController _sceneConnect:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  presentedTemplate = self->_presentedTemplate;
  if (presentedTemplate)
  {
    [(CPTemplate *)presentedTemplate invalidateTemplateProvider];
    v4 = self->_presentedTemplate;
    self->_presentedTemplate = 0;
  }

  lastPresentedTemplate = self->_lastPresentedTemplate;
  if (lastPresentedTemplate)
  {
    [(CPTemplate *)lastPresentedTemplate invalidateTemplateProvider];
    v6 = self->_lastPresentedTemplate;
    self->_lastPresentedTemplate = 0;
  }

  v11 = [(NSMapTable *)self->_templateMapTable objectEnumerator];
  v7 = [v11 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      [v8 invalidateTemplateProvider];
      v9 = [v11 nextObject];

      v8 = v9;
    }

    while (v9);
  }

  [(NSMapTable *)self->_templateMapTable removeAllObjects];
  v10 = [(CPInterfaceController *)self connection];
  [v10 invalidate];

  [(CPInterfaceController *)self setConnection:0];
  [(CPInterfaceController *)self setTemplateProvider:0];
}

+ (id)_templateProvidingInterface
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A3F0];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_getTemplatesWithReply_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:sel_preferredListMaximumImageSizeWithReply_ argumentIndex:0 ofReply:1];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v8 forSelector:sel_preferredImageRowMaximumImageSizeWithReply_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v9 forSelector:sel_preferredListMaximumGridButtonImageSizeWithReply_ argumentIndex:0 ofReply:1];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v10 forSelector:sel_preferredGridMaximumGridButtonImageSizeWithReply_ argumentIndex:0 ofReply:1];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_presentActionSheetTemplate_withProxyDelegate_animated_reply_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A060D8];
  [v3 setInterface:v12 forSelector:sel_presentActionSheetTemplate_withProxyDelegate_animated_reply_ argumentIndex:1 ofReply:0];

  [v3 setClass:objc_opt_class() forSelector:sel_presentAlertTemplate_withProxyDelegate_animated_reply_ argumentIndex:0 ofReply:0];
  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A060D8];
  [v3 setInterface:v13 forSelector:sel_presentAlertTemplate_withProxyDelegate_animated_reply_ argumentIndex:1 ofReply:0];

  v84 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A450];
  [v3 setInterface:v84 forSelector:sel_requestBannerProviderWithReply_ argumentIndex:0 ofReply:1];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A1A558];
  [v3 setInterface:v14 forSelector:sel_pushGridTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:1 ofReply:0];

  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A4B0];
  [a1 _allowlistClassesForBaseTemplateProvider:v15];
  v83 = v15;
  [v3 setInterface:v15 forSelector:sel_pushGridTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_reloadTemplate_ argumentIndex:0 ofReply:0];

  v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A06050];
  [v3 setInterface:v17 forSelector:sel_pushInformationTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:1 ofReply:0];

  v82 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A510];
  [a1 _allowlistClassesForBaseTemplateProvider:v82];
  [v3 setInterface:v82 forSelector:sel_pushInformationTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];
  v18 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A1AF58];
  [v3 setInterface:v18 forSelector:sel_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:1 ofReply:0];

  [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A570];
  v19 = v77 = a1;
  [a1 _allowlistClassesForBaseTemplateProvider:?];
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v21 = v19;
  [v19 setClasses:v20 forSelector:sel_reloadTemplate_ argumentIndex:0 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
  v81 = v21;
  [v21 setClasses:v26 forSelector:sel_reloadItems_ argumentIndex:0 ofReply:0];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v21 setClasses:v29 forSelector:sel_reloadTableHeaderGridButtons_ argumentIndex:0 ofReply:0];

  [v3 setInterface:v21 forSelector:sel_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];
  v30 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A1C768];
  [v3 setInterface:v30 forSelector:? argumentIndex:? ofReply:?];

  v31 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A5D0];
  [a1 _allowlistClassesForBaseTemplateProvider:v31];
  [v31 setClass:objc_opt_class() forSelector:sel_hostSetMapButton_imageSet_ argumentIndex:1 ofReply:0];
  v32 = MEMORY[0x277CBEB98];
  v33 = objc_opt_class();
  v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
  [v31 setClasses:v34 forSelector:sel_setHostTripPreviews_textConfiguration_previewOnlyRouteChoices_selectedIndex_ argumentIndex:0 ofReply:0];

  v35 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v31 setClasses:v35 forSelector:sel_setHostTripPreviews_textConfiguration_previewOnlyRouteChoices_selectedIndex_ argumentIndex:1 ofReply:0];

  v36 = MEMORY[0x277CBEB98];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  [v31 setClasses:v38 forSelector:sel_hostSetMapButtons_ argumentIndex:0 ofReply:0];

  v39 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A630];
  v40 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [v39 setClasses:v42 forSelector:sel_showManeuvers_usingDisplayStyles_ argumentIndex:0 ofReply:0];

  v43 = MEMORY[0x277CBEB98];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  [v39 setClasses:v45 forSelector:sel_showManeuvers_usingDisplayStyles_ argumentIndex:1 ofReply:0];

  v46 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  [v39 setClasses:v48 forSelector:sel_addManeuvers_ argumentIndex:0 ofReply:0];

  v49 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  [v39 setClasses:v51 forSelector:sel_addLaneGuidances_ argumentIndex:0 ofReply:0];

  v52 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v39 setClasses:v52 forSelector:sel_setCurrentLaneGuidance_ argumentIndex:0 ofReply:0];

  v53 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v80 = v39;
  [v39 setClasses:v53 forSelector:sel_routeChangedWithReason_routeInfo_ argumentIndex:1 ofReply:0];

  v79 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A690];
  [v79 setInterface:v39 forSelector:sel_hostStartNavigationSessionForTrip_reply_ argumentIndex:0 ofReply:1];
  [v3 setInterface:v79 forSelector:sel_requestNavigationProviderForMapTemplate_withReply_ argumentIndex:0 ofReply:1];
  v78 = v31;
  [v31 setClass:objc_opt_class() forSelector:sel_showNavigationAlert_animated_ argumentIndex:0 ofReply:0];
  [v3 setInterface:v31 forSelector:sel_pushMapTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];
  v54 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A0D600];
  [v3 setInterface:v54 forSelector:sel_pushNowPlayingTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:1 ofReply:0];

  v55 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A6F0];
  [a1 _allowlistClassesForBaseTemplateProvider:v55];
  v56 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v55 setClasses:v56 forSelector:sel_updateNowPlayingTemplate_withProxyDelegate_canThrottle_ argumentIndex:0 ofReply:0];

  v57 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A0D600];
  [v55 setInterface:v57 forSelector:sel_updateNowPlayingTemplate_withProxyDelegate_canThrottle_ argumentIndex:1 ofReply:0];

  v58 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v55 setClasses:v58 forSelector:sel_updateNowPlayingTemplate_withProxyDelegate_canThrottle_ argumentIndex:2 ofReply:0];

  [v3 setInterface:v55 forSelector:sel_pushNowPlayingTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];
  v76 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A1E228];
  v59 = MEMORY[0x277CBEB98];
  v60 = objc_opt_class();
  v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
  [v76 setClasses:v61 forSelector:sel_searchTemplateWithIdentifier_updateSearchResultsForSearchText_completionResults_ argumentIndex:0 ofReply:1];

  [v3 setInterface:v76 forSelector:sel_pushSearchTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:1 ofReply:0];
  v75 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A750];
  [v3 setInterface:v75 forSelector:sel_pushSearchTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];
  v62 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A19658];
  [v3 setInterface:v62 forSelector:sel_presentVoiceTemplate_withProxyDelegate_animated_reply_ argumentIndex:1 ofReply:0];

  v63 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A7B0];
  [a1 _allowlistClassesForBaseTemplateProvider:v63];
  [v3 setInterface:v63 forSelector:sel_presentVoiceTemplate_withProxyDelegate_animated_reply_ argumentIndex:0 ofReply:1];
  v64 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A199C0];
  [v3 setInterface:v64 forSelector:sel_setTabBarTemplate_withProxyDelegate_reply_animated_ argumentIndex:1 ofReply:0];

  v65 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A810];
  v66 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v65 setClasses:v66 forSelector:sel_updateTabBarTemplate_ argumentIndex:0 ofReply:0];

  [v3 setInterface:v65 forSelector:sel_setTabBarTemplate_withProxyDelegate_reply_animated_ argumentIndex:0 ofReply:1];
  v67 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A1E388];
  [v3 setInterface:v67 forSelector:sel_pushEntityTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:1 ofReply:0];

  v68 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A870];
  [v77 _allowlistClassesForBaseTemplateProvider:v68];
  v69 = MEMORY[0x277CBEB98];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = [v69 setWithObjects:{v70, v71, objc_opt_class(), 0}];
  [v68 setClasses:v72 forSelector:sel_updateEntityTemplate_withProxyDelegate_ argumentIndex:0 ofReply:0];

  v73 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A1E388];
  [v68 setInterface:v73 forSelector:sel_updateEntityTemplate_withProxyDelegate_ argumentIndex:1 ofReply:0];

  [v3 setInterface:v68 forSelector:sel_pushEntityTemplate_withProxyDelegate_animated_presentationStyle_reply_ argumentIndex:0 ofReply:1];

  return v3;
}

+ (void)_allowlistClassesForBaseTemplateProvider:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v11 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v11 setClasses:v6 forSelector:sel_setLeadingNavigationBarButtons_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v11 setClasses:v10 forSelector:sel_setTrailingNavigationBarButtons_ argumentIndex:0 ofReply:0];

  [v11 setClass:objc_opt_class() forSelector:sel_setBarButton_image_ argumentIndex:1 ofReply:0];
  [v11 setClass:objc_opt_class() forSelector:sel_setHostBackButton_ argumentIndex:0 ofReply:0];
}

- (void)_connectToListenerEndpoint:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v4];
  v6 = [objc_opt_class() _templateProvidingInterface];
  [v5 setRemoteObjectInterface:v6];
  v7 = [objc_opt_class() _templateClientInterface];
  [v5 setExportedInterface:v7];
  [v5 setExportedObject:self];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CPInterfaceController__connectToListenerEndpoint___block_invoke;
  v11[3] = &unk_278A106E0;
  objc_copyWeak(&v12, &location);
  [v5 setInterruptionHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CPInterfaceController__connectToListenerEndpoint___block_invoke_431;
  v9[3] = &unk_278A106E0;
  objc_copyWeak(&v10, &location);
  [v5 setInvalidationHandler:v9];
  [v5 resume];
  [(CPInterfaceController *)self setConnection:v5];
  v8 = [v5 remoteObjectProxy];
  [(CPInterfaceController *)self setTemplateProvider:v8];

  [(CPInterfaceController *)self _completeSetupWithCompletion:&__block_literal_global_5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__CPInterfaceController__connectToListenerEndpoint___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__CPInterfaceController__connectToListenerEndpoint___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __52__CPInterfaceController__connectToListenerEndpoint___block_invoke_431(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__CPInterfaceController__connectToListenerEndpoint___block_invoke_431_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

void __52__CPInterfaceController__connectToListenerEndpoint___block_invoke_432()
{
  v0 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_236ED4000, v0, OS_LOG_TYPE_DEFAULT, "Fetched interface controller image sizes.", v1, 2u);
  }
}

- (void)_completeSetupWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [(CPInterfaceController *)self templateProvider];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__CPInterfaceController__completeSetupWithCompletion___block_invoke;
  v20[3] = &unk_278A10BF8;
  v7 = v5;
  v21 = v7;
  [v6 preferredListMaximumImageSizeWithReply:v20];

  dispatch_group_enter(v7);
  v8 = [(CPInterfaceController *)self templateProvider];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__CPInterfaceController__completeSetupWithCompletion___block_invoke_2;
  v18[3] = &unk_278A10BF8;
  v9 = v7;
  v19 = v9;
  [v8 preferredImageRowMaximumImageSizeWithReply:v18];

  dispatch_group_enter(v9);
  v10 = [(CPInterfaceController *)self templateProvider];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__CPInterfaceController__completeSetupWithCompletion___block_invoke_3;
  v16[3] = &unk_278A10BF8;
  v11 = v9;
  v17 = v11;
  [v10 preferredListMaximumGridButtonImageSizeWithReply:v16];

  dispatch_group_enter(v11);
  v12 = [(CPInterfaceController *)self templateProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__CPInterfaceController__completeSetupWithCompletion___block_invoke_4;
  v14[3] = &unk_278A10BF8;
  v15 = v11;
  v13 = v11;
  [v12 preferredGridMaximumGridButtonImageSizeWithReply:v14];

  dispatch_group_notify(v13, MEMORY[0x277D85CD0], v4);
}

void __54__CPInterfaceController__completeSetupWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  [a2 CGSizeValue];
  [CPListItem _setMaximumImageSize:?];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __54__CPInterfaceController__completeSetupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 CGSizeValue];
  [CPListImageRowItem _setMaximumImageSize:?];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  [CPListImageRowItemElement _setMaximumImageSize:v5, v7];
  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void __54__CPInterfaceController__completeSetupWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 CGSizeValue];
  [CPListTemplate _setMaximumGridButtonImageSize:?];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __54__CPInterfaceController__completeSetupWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 CGSizeValue];
  [CPGridTemplate _setMaximumGridButtonImageSize:?];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

- (void)_connectionInvalidated
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CPInterfaceController__connectionInvalidated__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_connectionInterrupted
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CPInterfaceController__connectionInterrupted__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_listenerEndpointForSettings:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForSetting:1];
    v4 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    v5 = [v3 endpoint];
    [v4 _setEndpoint:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_synchronousTemplateProvider
{
  v2 = [(CPInterfaceController *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_437];

  return v3;
}

void __53__CPInterfaceController__synchronousTemplateProvider__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Error accessing synchronous template provider", v3, 2u);
    }
  }
}

- (UITraitCollection)carTraitCollection
{
  v2 = [(CPInterfaceController *)self windowProvider];
  v3 = [v2 carTraitCollection];

  return v3;
}

- (id)_templateWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPTemplate *)self->_presentedTemplate identifier];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    presentedTemplate = self->_presentedTemplate;
LABEL_5:
    v10 = presentedTemplate;
    goto LABEL_6;
  }

  v8 = [(CPTemplate *)self->_lastPresentedTemplate identifier];
  v9 = [v8 isEqual:v4];

  if (v9)
  {
    presentedTemplate = self->_lastPresentedTemplate;
    goto LABEL_5;
  }

  v12 = [(CPInterfaceController *)self templateMapTable];
  v13 = [v12 objectForKey:v4];

  if (v13)
  {
    v14 = [(CPInterfaceController *)self templateMapTable];
    v10 = [v14 objectForKey:v4];
  }

  else
  {
    v15 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CPInterfaceController *)v4 _templateWithIdentifier:v15];
    }

    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (BOOL)isCarPlayCanvasActive
{
  WeakRetained = objc_loadWeakRetained(&self->_windowProvider);
  v3 = [WeakRetained activationState] == 0;

  return v3;
}

- (void)updateInterestingLayoutGuideWithInsets:(UIEdgeInsets)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CPInterfaceController_updateInterestingLayoutGuideWithInsets___block_invoke;
  block[3] = &unk_278A10C40;
  block[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__CPInterfaceController_updateInterestingLayoutGuideWithInsets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) windowProvider];
  [v2 updateLayoutGuideWithInsets:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)clientPushNowPlayingTemplateAnimated:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__CPInterfaceController_clientPushNowPlayingTemplateAnimated___block_invoke;
  v3[3] = &unk_278A10C88;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __62__CPInterfaceController_clientPushNowPlayingTemplateAnimated___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Requesting Now Playing template from client.", v4, 2u);
  }

  v3 = +[CPNowPlayingTemplate sharedTemplate];
  [*(a1 + 32) pushTemplate:v3 animated:*(a1 + 40) completion:&__block_literal_global_448];
}

void __62__CPInterfaceController_clientPushNowPlayingTemplateAnimated___block_invoke_446(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Failed to request now playing template with %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)clientAssistantCellUnavailableWithError:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CPInterfaceController_clientAssistantCellUnavailableWithError___block_invoke;
  block[3] = &unk_278A105A0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CPInterfaceController_clientAssistantCellUnavailableWithError___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAD8];
  v2 = *MEMORY[0x277CBE648];
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  [v1 raise:v2 format:{@"Error: %@", v4}];

  exit(-1);
}

- (void)clientPushedIllegalTemplateOfClass:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CPInterfaceController_clientPushedIllegalTemplateOfClass___block_invoke;
  block[3] = &unk_278A105A0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CPInterfaceController_clientExceededAudioMetadataThrottleLimit__block_invoke()
{
  v0 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __65__CPInterfaceController_clientExceededAudioMetadataThrottleLimit__block_invoke_cold_1();
  }
}

- (void)templateIdentifierDidPop:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CPInterfaceController_templateIdentifierDidPop___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __50__CPInterfaceController_templateIdentifierDidPop___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) templateMapTable];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [v3 invalidateTemplateProvider];
    v4 = [*(a1 + 32) templateMapTable];
    [v4 removeObjectForKey:*(a1 + 40)];

    v5 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) templateMapTable];
      v8 = 134217984;
      v9 = [v6 count];
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Template did pop, stack count: %lu", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)templateIdentifierDidDismiss:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CPInterfaceController_templateIdentifierDidDismiss___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__CPInterfaceController_templateIdentifierDidDismiss___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) identifier];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    [*(*(a1 + 32) + 24) invalidateTemplateProvider];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  v6 = [*(*(a1 + 32) + 56) identifier];
  v7 = [v6 isEqual:*(a1 + 40)];

  if (v7)
  {
    [*(*(a1 + 32) + 56) invalidateTemplateProvider];
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = 0;
  }

  v10 = [*(a1 + 32) templateMapTable];
  [v10 removeObjectForKey:*(a1 + 40)];

  v11 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) templateMapTable];
    v14 = 134217984;
    v15 = [v12 count];
    _os_log_impl(&dword_236ED4000, v11, OS_LOG_TYPE_DEFAULT, "Template did dismiss, stack count: %lu", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_activeMapTemplate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(CPInterfaceController *)self templates];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CPInterfaceController__activeMapTemplate__block_invoke;
  v5[3] = &unk_278A10CB0;
  v5[4] = &v6;
  [v2 enumerateObjectsWithOptions:2 usingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__CPInterfaceController__activeMapTemplate__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)bannerDidAppearWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CPInterfaceController_bannerDidAppearWithIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__CPInterfaceController_bannerDidAppearWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeMapTemplate];
  [v2 bannerDidAppearWithIdentifier:*(a1 + 40)];
}

- (void)bannerDidDisappearWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CPInterfaceController_bannerDidDisappearWithIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__CPInterfaceController_bannerDidDisappearWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeMapTemplate];
  [v2 bannerDidDisappearWithIdentifier:*(a1 + 40)];
}

- (void)bannerTappedWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CPInterfaceController_bannerTappedWithIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __52__CPInterfaceController_bannerTappedWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeMapTemplate];
  [v2 bannerTappedWithIdentifier:*(a1 + 40)];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPWindowProviding)windowProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_windowProvider);

  return WeakRetained;
}

void __65__CPInterfaceController__pushTabBarTemplate_animated_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_236ED4000, v2, v3, "Failed to create a tab for %@ with %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_templateWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_236ED4000, a2, OS_LOG_TYPE_ERROR, "Unable to identify a template with identifier %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end