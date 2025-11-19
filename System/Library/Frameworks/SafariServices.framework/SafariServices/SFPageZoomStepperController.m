@interface SFPageZoomStepperController
- (SFPageZoomStepperController)initWithDocument:(id)a3 preferenceManager:(id)a4;
- (id)longestTextForButton:(int64_t)a3;
- (void)_pageZoomChanged:(id)a3;
- (void)_updateButtonsEnabledOnMainQueueWithZoomFactor:(double)a3;
- (void)_updateButtonsEnabledWithZoomFactor:(double)a3;
- (void)dealloc;
- (void)decrementValue:(id)a3;
- (void)incrementValue:(id)a3;
- (void)prepareStepper:(id)a3;
- (void)resetValue:(id)a3;
@end

@implementation SFPageZoomStepperController

- (SFPageZoomStepperController)initWithDocument:(id)a3 preferenceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFPageZoomStepperController;
  v8 = [(SFPageZoomStepperController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_tab, v6);
    objc_storeStrong(&v9->_preferenceManager, a4);
    v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    percentFormatter = v9->_percentFormatter;
    v9->_percentFormatter = v10;

    [(NSNumberFormatter *)v9->_percentFormatter setNumberStyle:3];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v9 selector:sel__pageZoomChanged_ name:*MEMORY[0x1E69C9430] object:v7];

    v13 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFPageZoomStepperController;
  [(SFPageZoomStepperController *)&v4 dealloc];
}

- (void)prepareStepper:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_stepper, v4);
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat.size.smaller"];
  [v4 setImage:v5 forButton:1];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat.size.larger"];
  [v4 setImage:v6 forButton:0];

  v7 = [(NSNumberFormatter *)self->_percentFormatter stringFromNumber:&unk_1F5022BA0];
  [v4 setText:v7 forButton:2];

  preferenceManager = self->_preferenceManager;
  WeakRetained = objc_loadWeakRetained(&self->_tab);
  v10 = [WeakRetained URLForPerSitePreferences];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__SFPageZoomStepperController_prepareStepper___block_invoke;
  v11[3] = &unk_1E848F5C0;
  v11[4] = self;
  [(WBSPageZoomPreferenceManager *)preferenceManager getPageZoomFactorForURL:v10 usingBlock:v11];
}

- (void)incrementValue:(id)a3
{
  preferenceManager = self->_preferenceManager;
  WeakRetained = objc_loadWeakRetained(&self->_tab);
  v6 = [WeakRetained URLForPerSitePreferences];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFPageZoomStepperController_incrementValue___block_invoke;
  v7[3] = &unk_1E848F5E8;
  v7[4] = self;
  [(WBSPageZoomPreferenceManager *)preferenceManager zoomInOnURL:v6 completionHandler:v7];
}

void __46__SFPageZoomStepperController_incrementValue___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _updateButtonsEnabledWithZoomFactor:?];
  if (a2)
  {
    v3 = [MEMORY[0x1E69C8810] sharedLogger];
    [v3 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x1E69C9720] modificationLevel:1 type:0 method:0];
  }
}

- (void)decrementValue:(id)a3
{
  preferenceManager = self->_preferenceManager;
  WeakRetained = objc_loadWeakRetained(&self->_tab);
  v6 = [WeakRetained URLForPerSitePreferences];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFPageZoomStepperController_decrementValue___block_invoke;
  v7[3] = &unk_1E848F5E8;
  v7[4] = self;
  [(WBSPageZoomPreferenceManager *)preferenceManager zoomOutOnURL:v6 completionHandler:v7];
}

void __46__SFPageZoomStepperController_decrementValue___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _updateButtonsEnabledWithZoomFactor:?];
  if (a2)
  {
    v3 = [MEMORY[0x1E69C8810] sharedLogger];
    [v3 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x1E69C9720] modificationLevel:1 type:0 method:0];
  }
}

- (void)resetValue:(id)a3
{
  preferenceManager = self->_preferenceManager;
  WeakRetained = objc_loadWeakRetained(&self->_tab);
  v6 = [WeakRetained URLForPerSitePreferences];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFPageZoomStepperController_resetValue___block_invoke;
  v7[3] = &unk_1E848F5E8;
  v7[4] = self;
  [(WBSPageZoomPreferenceManager *)preferenceManager resetZoomLevelOnURL:v6 completionHandler:v7];
}

void __42__SFPageZoomStepperController_resetValue___block_invoke(uint64_t a1, char a2, double a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SFPageZoomStepperController_resetValue___block_invoke_2;
  block[3] = &unk_1E848F610;
  block[4] = *(a1 + 32);
  *&block[5] = a3;
  v4 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42__SFPageZoomStepperController_resetValue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = [WeakRetained webView];
  [v4 _setViewScale:v2];

  [*(a1 + 32) _updateButtonsEnabledOnMainQueueWithZoomFactor:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v5 = [MEMORY[0x1E69C8810] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x1E69C9720] modificationLevel:1 type:1 method:0];
  }
}

- (id)longestTextForButton:(int64_t)a3
{
  if (a3 == 2)
  {
    percentFormatter = self->_percentFormatter;
    v4 = [MEMORY[0x1E69C8F98] pageZoomFactors];
    v5 = [v4 lastObject];
    v6 = [(NSNumberFormatter *)percentFormatter stringFromNumber:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateButtonsEnabledWithZoomFactor:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__SFPageZoomStepperController__updateButtonsEnabledWithZoomFactor___block_invoke;
  v3[3] = &unk_1E848F638;
  v3[4] = self;
  *&v3[5] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_updateButtonsEnabledOnMainQueueWithZoomFactor:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_stepper);
  percentFormatter = self->_percentFormatter;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v8 = [(NSNumberFormatter *)percentFormatter stringFromNumber:v7];

  preferenceManager = self->_preferenceManager;
  v10 = objc_loadWeakRetained(&self->_tab);
  v11 = [v10 URLForPerSitePreferences];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__SFPageZoomStepperController__updateButtonsEnabledOnMainQueueWithZoomFactor___block_invoke;
  v14[3] = &unk_1E848F688;
  v15 = WeakRetained;
  v16 = self;
  v17 = v8;
  v12 = v8;
  v13 = WeakRetained;
  [(WBSPageZoomPreferenceManager *)preferenceManager getAvailableActionsForURL:v11 usingBlock:v14];

  [v13 setText:v12 forButton:2];
}

void __78__SFPageZoomStepperController__updateButtonsEnabledOnMainQueueWithZoomFactor___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__SFPageZoomStepperController__updateButtonsEnabledOnMainQueueWithZoomFactor___block_invoke_2;
  v7[3] = &unk_1E848F660;
  v4 = *(a1 + 32);
  v11 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __78__SFPageZoomStepperController__updateButtonsEnabledOnMainQueueWithZoomFactor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 56) & 1 forButton:0];
  [*(a1 + 32) setEnabled:(*(a1 + 56) >> 1) & 1 forButton:1];
  [*(a1 + 32) setEnabled:(*(a1 + 56) >> 2) & 1 forButton:2];
  result = *(*(a1 + 40) + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_pageZoomChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C9208]];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SFPageZoomStepperController__pageZoomChanged___block_invoke;
  block[3] = &unk_1E848F6B0;
  v9 = v5;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__SFPageZoomStepperController__pageZoomChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v4 = [WeakRetained URLForPerSitePreferences];
  v5 = [v4 safari_userVisibleHostWithoutWWWSubdomain];
  LODWORD(v2) = [v2 isEqualToString:v5];

  if (v2)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69C9428]];
    [v6 doubleValue];
    v8 = v7;

    v9 = *(a1 + 40);

    [v9 _updateButtonsEnabledOnMainQueueWithZoomFactor:v8];
  }
}

@end