@interface CNDuplicateContactsController
+ (id)defaultContactFormatter;
+ (id)defaultContactFormatterForDataSource:(id)a3;
+ (id)os_log;
- (BOOL)canMergeDuplicates;
- (BOOL)isInMergeCooldown:(int64_t)a3;
- (BOOL)wantsToDisplayNewDuplicatesBanner:(int64_t)a3;
- (CNContactStore)contactStore;
- (CNDuplicateContactsController)initWithDataSource:(id)a3 environment:(id)a4 delegate:(id)a5;
- (CNDuplicateContactsControllerDelegate)delegate;
- (int64_t)lastIgnoredNewDuplicatesCount;
- (void)decorateBannerViewCell:(id)a3;
- (void)didPerformDuplicatesMerge;
- (void)duplicatesDidChange;
- (void)findDuplicates;
- (void)ignoreNewDuplicatesBanner;
- (void)performIgnoreAll;
- (void)performMerge:(id)a3;
- (void)presentDuplicatesUIFailureAlertForController:(id)a3;
- (void)presentSheetBasedMergeForController:(id)a3 showsIgnored:(BOOL)a4;
- (void)refreshManagedDuplicatesWithCompletionBlock:(id)a3;
- (void)resetDuplicates;
- (void)setAllDuplicatesCount:(int64_t)a3;
- (void)setDataSource:(id)a3;
- (void)setLastIgnoredNewDuplicatesCount:(int64_t)a3;
- (void)setNewDuplicatesCount:(int64_t)a3;
- (void)updateDuplicatesCounts;
- (void)willPerformDuplicatesMerge:(BOOL)a3;
@end

@implementation CNDuplicateContactsController

- (void)resetDuplicates
{
  if (!self->_isPerformingMerge)
  {
    *&self->_isPerformingMerge = 0;
    self->_mergeCompletedAt = 0.0;
  }
}

- (void)findDuplicates
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:16];

  if (v5)
  {
    if (![(CNDuplicateContactsController *)self isBusy])
    {
      self->_isAlreadyFindingDuplicates = 1;
      v6 = [MEMORY[0x1E69966E8] currentEnvironment];
      v7 = [v6 schedulerProvider];
      v8 = [v7 backgroundScheduler];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__CNDuplicateContactsController_findDuplicates__block_invoke;
      v9[3] = &unk_1E74E6A88;
      v9[4] = self;
      [v8 performBlock:v9];
    }
  }
}

void __47__CNDuplicateContactsController_findDuplicates__block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshManagedDuplicates];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CNDuplicateContactsController_findDuplicates__block_invoke_2;
  block[3] = &unk_1E74E6A88;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)updateDuplicatesCounts
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__CNDuplicateContactsController_updateDuplicatesCounts__block_invoke;
  v2[3] = &unk_1E74E6760;
  v2[4] = self;
  [MEMORY[0x1E695CE88] duplicatesCountsWithCompletionHandler:v2];
}

uint64_t __55__CNDuplicateContactsController_updateDuplicatesCounts__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) newDuplicatesCount];
  v7 = *(a1 + 32);
  if (v6 == a2)
  {
    result = [v7 allDuplicatesCount];
    if (result == a3)
    {
      return result;
    }

    goto LABEL_5;
  }

  v7[7] = a2;
  if ([*(a1 + 32) allDuplicatesCount] != a3)
  {
LABEL_5:
    *(*(a1 + 32) + 64) = a3;
  }

  v9 = *(a1 + 32);

  return [v9 duplicatesDidChange];
}

- (CNDuplicateContactsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didPerformDuplicatesMerge
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 didPerformDuplicatesMerge:self];
  }
}

- (void)willPerformDuplicatesMerge:(BOOL)a3
{
  if (a3 && (v4 = objc_loadWeakRetained(&self->_delegate), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willPerformDuplicatesMergeAll:self];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willPerformDuplicatesMerge:self];
  }
}

- (void)duplicatesDidChange
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(CNDuplicateContactsController *)self newDuplicatesCount];
  if (v3 != [(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount])
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218240;
      v9 = [(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount];
      v10 = 2048;
      v11 = [(CNDuplicateContactsController *)self newDuplicatesCount];
      _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Unignoring duplicates banner. Duplicates count updated from %ld to %ld", &v8, 0x16u);
    }

    [(CNDuplicateContactsController *)self setLastIgnoredNewDuplicatesCount:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 duplicatesDidChange:self];
  }
}

- (void)performIgnoreAll
{
  self->_mergeCompletedAt = 0.0;
  *&self->_isPerformingMerge = 0;
  [(CNDuplicateContactsController *)self updateDuplicatesCounts];
}

- (void)performMerge:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:16];

  if (v7 && ![(CNDuplicateContactsController *)self isBusy])
  {
    self->_isPerformingMerge = 1;
    -[CNDuplicateContactsController willPerformDuplicatesMerge:](self, "willPerformDuplicatesMerge:", -[CNDuplicateContactsController allDuplicatesCount](self, "allDuplicatesCount") == [v4 count]);
    if ([v4 count] >= 0x1F5)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    v9 = [MEMORY[0x1E69966E8] currentEnvironment];
    v10 = [v9 schedulerProvider];
    v11 = [v10 backgroundSchedulerWithQualityOfService:v8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__CNDuplicateContactsController_performMerge___block_invoke;
    v12[3] = &unk_1E74E77C0;
    v13 = v4;
    v14 = self;
    [v11 performBlock:v12];
  }
}

void __46__CNDuplicateContactsController_performMerge___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695CF88]);
  if ([MEMORY[0x1E695CE88] applyMergeResultToSaveRequest:v2 signatures:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) contactStore];
    v12 = 0;
    [v3 executeSaveRequest:v2 error:&v12];
    v4 = v12;

    if (v4)
    {
      v5 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(a1 + 32) count];
        v10 = [v4 localizedDescription];
        *buf = 134218242;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_error_impl(&dword_199A75000, v5, OS_LOG_TYPE_ERROR, "Could not merge %lu duplicates. %@", buf, 0x16u);
      }
    }

    else
    {
      [MEMORY[0x1E695CE88] updateRecentImagesDatabaseForSignatures:*(a1 + 32)];
      [MEMORY[0x1E695CE88] updateRecentPostersDatabaseForSignatures:*(a1 + 32)];
    }

    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 timeProvider];
    [v7 timestamp];
    [*(a1 + 40) setMergeCompletedAt:?];

    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__CNDuplicateContactsController_performMerge___block_invoke_31;
    v11[3] = &unk_1E74E67A8;
    v11[4] = v8;
    [v8 refreshManagedDuplicatesWithCompletionBlock:v11];
  }
}

uint64_t __46__CNDuplicateContactsController_performMerge___block_invoke_31(uint64_t a1)
{
  [*(a1 + 32) didPerformDuplicatesMerge];
  v2 = *(a1 + 32);

  return [v2 setIsPerformingMerge:0];
}

- (void)decorateBannerViewCell:(id)a3
{
  isPerformingMerge = self->_isPerformingMerge;
  v5 = a3;
  if (isPerformingMerge)
  {
    [v5 updateWithState:1];
  }

  else
  {
    [v5 updateWithCount:{-[CNDuplicateContactsController newDuplicatesCount](self, "newDuplicatesCount")}];
  }
}

- (void)presentDuplicatesUIFailureAlertForController:(id)a3
{
  v3 = MEMORY[0x1E69DC650];
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"COULD_NOT_LOAD_DUPLICATES" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v3 alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:&__block_literal_global_29_63653];

  [v11 addAction:v10];
  [v4 presentViewController:v11 animated:1 completion:0];
}

- (void)presentSheetBasedMergeForController:(id)a3 showsIgnored:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(DuplicatesUIHelper *)self->_duplicatesUIHelper duplicateContactsListViewController:v4];
  v7 = v6;
  if (v6)
  {
    [v6 setModalPresentationStyle:2];
    [v8 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(CNDuplicateContactsController *)self presentDuplicatesUIFailureAlertForController:v8];
  }
}

- (BOOL)isInMergeCooldown:(int64_t)a3
{
  if (self->_mergeCompletedAt == 0.0)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E6996860] defaultProvider];
  [v5 timestamp];
  v7 = v6;

  return v7 - self->_mergeCompletedAt < a3;
}

- (BOOL)canMergeDuplicates
{
  v3 = [(CNDuplicateContactsController *)self hasNewDuplicates];
  if (v3)
  {
    LOBYTE(v3) = ![(CNDuplicateContactsController *)self isBusy];
  }

  return v3;
}

- (BOOL)wantsToDisplayNewDuplicatesBanner:(int64_t)a3
{
  if ([(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount]> 0)
  {
    return 0;
  }

  if ([(CNDuplicateContactsController *)self hasNewDuplicates])
  {
    return 1;
  }

  return [(CNDuplicateContactsController *)self isInMergeCooldown:a3];
}

- (void)ignoreNewDuplicatesBanner
{
  v3 = [(CNDuplicateContactsController *)self newDuplicatesCount];

  [(CNDuplicateContactsController *)self setLastIgnoredNewDuplicatesCount:v3];
}

- (void)setLastIgnoredNewDuplicatesCount:(int64_t)a3
{
  if ([(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount]!= a3)
  {
    v4 = [MEMORY[0x1E695CE40] sharedDefaults];
    [v4 setLastIgnoredNewDuplicatesCount:a3];
  }
}

- (int64_t)lastIgnoredNewDuplicatesCount
{
  v2 = [MEMORY[0x1E695CE40] sharedDefaults];
  v3 = [v2 lastIgnoredNewDuplicatesCount];

  return v3;
}

- (void)setAllDuplicatesCount:(int64_t)a3
{
  if (self->_allDuplicatesCount != a3)
  {
    self->_allDuplicatesCount = a3;
    [(CNDuplicateContactsController *)self duplicatesDidChange];
  }
}

- (void)setNewDuplicatesCount:(int64_t)a3
{
  if (self->_newDuplicatesCount != a3)
  {
    self->_newDuplicatesCount = a3;
    [(CNDuplicateContactsController *)self duplicatesDidChange];
  }
}

- (void)refreshManagedDuplicatesWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695CE88];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CNDuplicateContactsController_refreshManagedDuplicatesWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E74E6FB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 refreshManagedDuplicatesWithCompletionHandler:v7];
}

uint64_t __77__CNDuplicateContactsController_refreshManagedDuplicatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateDuplicatesCounts];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (CNContactStore)contactStore
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CNContactDataSource *)self->_dataSource store];
  }

  else
  {
    v4 = [(CNDuplicateContactsController *)self environment];
    v3 = [v4 inProcessContactStore];
  }

  return v3;
}

- (void)setDataSource:(id)a3
{
  objc_storeStrong(&self->_dataSource, a3);
  v5 = a3;
  v6 = [CNDuplicateContactsController defaultContactFormatterForDataSource:v5];
  contactFormatter = self->_contactFormatter;
  self->_contactFormatter = v6;

  *&self->_isPerformingMerge = 0;
  self->_allDuplicatesCount = 0;
  self->_mergeCompletedAt = 0.0;
  self->_newDuplicatesCount = 0;

  [(CNDuplicateContactsController *)self updateDuplicatesCounts];
}

- (CNDuplicateContactsController)initWithDataSource:(id)a3 environment:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = CNDuplicateContactsController;
  v12 = [(CNDuplicateContactsController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, a4);
    objc_storeStrong(&v13->_dataSource, a3);
    v14 = [CNDuplicateContactsController defaultContactFormatterForDataSource:v9];
    contactFormatter = v13->_contactFormatter;
    v13->_contactFormatter = v14;

    objc_storeWeak(&v13->_delegate, v11);
    *&v13->_isPerformingMerge = 0;
    v13->_allDuplicatesCount = 0;
    v13->_mergeCompletedAt = 0.0;
    v13->_newDuplicatesCount = 0;
    v16 = [[_TtC10ContactsUI18DuplicatesUIHelper alloc] initWithDelegate:v13];
    duplicatesUIHelper = v13->_duplicatesUIHelper;
    v13->_duplicatesUIHelper = v16;

    [(CNDuplicateContactsController *)v13 updateDuplicatesCounts];
    v18 = v13;
  }

  return v13;
}

+ (id)defaultContactFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v2 setStyle:0];
  [v2 setEmphasizesPrimaryNameComponent:1];
  [v2 setFallbackStyle:-1];

  return v2;
}

+ (id)defaultContactFormatterForDataSource:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 contactFormatter], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 contactFormatter];
  }

  else
  {
    v6 = [a1 defaultContactFormatter];
  }

  v7 = v6;

  return v7;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_63681 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1_63681, &__block_literal_global_63682);
  }

  v3 = os_log_cn_once_object_1_63683;

  return v3;
}

uint64_t __39__CNDuplicateContactsController_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.deduplication", "duplicates-ui");
  v1 = os_log_cn_once_object_1_63683;
  os_log_cn_once_object_1_63683 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end