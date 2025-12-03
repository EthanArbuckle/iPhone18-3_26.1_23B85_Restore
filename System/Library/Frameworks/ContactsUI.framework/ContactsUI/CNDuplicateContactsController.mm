@interface CNDuplicateContactsController
+ (id)defaultContactFormatter;
+ (id)defaultContactFormatterForDataSource:(id)source;
+ (id)os_log;
- (BOOL)canMergeDuplicates;
- (BOOL)isInMergeCooldown:(int64_t)cooldown;
- (BOOL)wantsToDisplayNewDuplicatesBanner:(int64_t)banner;
- (CNContactStore)contactStore;
- (CNDuplicateContactsController)initWithDataSource:(id)source environment:(id)environment delegate:(id)delegate;
- (CNDuplicateContactsControllerDelegate)delegate;
- (int64_t)lastIgnoredNewDuplicatesCount;
- (void)decorateBannerViewCell:(id)cell;
- (void)didPerformDuplicatesMerge;
- (void)duplicatesDidChange;
- (void)findDuplicates;
- (void)ignoreNewDuplicatesBanner;
- (void)performIgnoreAll;
- (void)performMerge:(id)merge;
- (void)presentDuplicatesUIFailureAlertForController:(id)controller;
- (void)presentSheetBasedMergeForController:(id)controller showsIgnored:(BOOL)ignored;
- (void)refreshManagedDuplicatesWithCompletionBlock:(id)block;
- (void)resetDuplicates;
- (void)setAllDuplicatesCount:(int64_t)count;
- (void)setDataSource:(id)source;
- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count;
- (void)setNewDuplicatesCount:(int64_t)count;
- (void)updateDuplicatesCounts;
- (void)willPerformDuplicatesMerge:(BOOL)merge;
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:16];

  if (v5)
  {
    if (![(CNDuplicateContactsController *)self isBusy])
    {
      self->_isAlreadyFindingDuplicates = 1;
      currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
      schedulerProvider = [currentEnvironment2 schedulerProvider];
      backgroundScheduler = [schedulerProvider backgroundScheduler];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__CNDuplicateContactsController_findDuplicates__block_invoke;
      v9[3] = &unk_1E74E6A88;
      v9[4] = self;
      [backgroundScheduler performBlock:v9];
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

- (void)willPerformDuplicatesMerge:(BOOL)merge
{
  if (merge && (v4 = objc_loadWeakRetained(&self->_delegate), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
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
  newDuplicatesCount = [(CNDuplicateContactsController *)self newDuplicatesCount];
  if (newDuplicatesCount != [(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218240;
      lastIgnoredNewDuplicatesCount = [(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount];
      v10 = 2048;
      newDuplicatesCount2 = [(CNDuplicateContactsController *)self newDuplicatesCount];
      _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "Unignoring duplicates banner. Duplicates count updated from %ld to %ld", &v8, 0x16u);
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

- (void)performMerge:(id)merge
{
  mergeCopy = merge;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:16];

  if (v7 && ![(CNDuplicateContactsController *)self isBusy])
  {
    self->_isPerformingMerge = 1;
    -[CNDuplicateContactsController willPerformDuplicatesMerge:](self, "willPerformDuplicatesMerge:", -[CNDuplicateContactsController allDuplicatesCount](self, "allDuplicatesCount") == [mergeCopy count]);
    if ([mergeCopy count] >= 0x1F5)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    schedulerProvider = [currentEnvironment2 schedulerProvider];
    v11 = [schedulerProvider backgroundSchedulerWithQualityOfService:v8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__CNDuplicateContactsController_performMerge___block_invoke;
    v12[3] = &unk_1E74E77C0;
    v13 = mergeCopy;
    selfCopy = self;
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

- (void)decorateBannerViewCell:(id)cell
{
  isPerformingMerge = self->_isPerformingMerge;
  cellCopy = cell;
  if (isPerformingMerge)
  {
    [cellCopy updateWithState:1];
  }

  else
  {
    [cellCopy updateWithCount:{-[CNDuplicateContactsController newDuplicatesCount](self, "newDuplicatesCount")}];
  }
}

- (void)presentDuplicatesUIFailureAlertForController:(id)controller
{
  v3 = MEMORY[0x1E69DC650];
  controllerCopy = controller;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"COULD_NOT_LOAD_DUPLICATES" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v3 alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:&__block_literal_global_29_63653];

  [v11 addAction:v10];
  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

- (void)presentSheetBasedMergeForController:(id)controller showsIgnored:(BOOL)ignored
{
  ignoredCopy = ignored;
  controllerCopy = controller;
  v6 = [(DuplicatesUIHelper *)self->_duplicatesUIHelper duplicateContactsListViewController:ignoredCopy];
  v7 = v6;
  if (v6)
  {
    [v6 setModalPresentationStyle:2];
    [controllerCopy presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(CNDuplicateContactsController *)self presentDuplicatesUIFailureAlertForController:controllerCopy];
  }
}

- (BOOL)isInMergeCooldown:(int64_t)cooldown
{
  if (self->_mergeCompletedAt == 0.0)
  {
    return 0;
  }

  defaultProvider = [MEMORY[0x1E6996860] defaultProvider];
  [defaultProvider timestamp];
  v7 = v6;

  return v7 - self->_mergeCompletedAt < cooldown;
}

- (BOOL)canMergeDuplicates
{
  hasNewDuplicates = [(CNDuplicateContactsController *)self hasNewDuplicates];
  if (hasNewDuplicates)
  {
    LOBYTE(hasNewDuplicates) = ![(CNDuplicateContactsController *)self isBusy];
  }

  return hasNewDuplicates;
}

- (BOOL)wantsToDisplayNewDuplicatesBanner:(int64_t)banner
{
  if ([(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount]> 0)
  {
    return 0;
  }

  if ([(CNDuplicateContactsController *)self hasNewDuplicates])
  {
    return 1;
  }

  return [(CNDuplicateContactsController *)self isInMergeCooldown:banner];
}

- (void)ignoreNewDuplicatesBanner
{
  newDuplicatesCount = [(CNDuplicateContactsController *)self newDuplicatesCount];

  [(CNDuplicateContactsController *)self setLastIgnoredNewDuplicatesCount:newDuplicatesCount];
}

- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count
{
  if ([(CNDuplicateContactsController *)self lastIgnoredNewDuplicatesCount]!= count)
  {
    mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
    [mEMORY[0x1E695CE40] setLastIgnoredNewDuplicatesCount:count];
  }
}

- (int64_t)lastIgnoredNewDuplicatesCount
{
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  lastIgnoredNewDuplicatesCount = [mEMORY[0x1E695CE40] lastIgnoredNewDuplicatesCount];

  return lastIgnoredNewDuplicatesCount;
}

- (void)setAllDuplicatesCount:(int64_t)count
{
  if (self->_allDuplicatesCount != count)
  {
    self->_allDuplicatesCount = count;
    [(CNDuplicateContactsController *)self duplicatesDidChange];
  }
}

- (void)setNewDuplicatesCount:(int64_t)count
{
  if (self->_newDuplicatesCount != count)
  {
    self->_newDuplicatesCount = count;
    [(CNDuplicateContactsController *)self duplicatesDidChange];
  }
}

- (void)refreshManagedDuplicatesWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x1E695CE88];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CNDuplicateContactsController_refreshManagedDuplicatesWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E74E6FB0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
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
    store = [(CNContactDataSource *)self->_dataSource store];
  }

  else
  {
    environment = [(CNDuplicateContactsController *)self environment];
    store = [environment inProcessContactStore];
  }

  return store;
}

- (void)setDataSource:(id)source
{
  objc_storeStrong(&self->_dataSource, source);
  sourceCopy = source;
  v6 = [CNDuplicateContactsController defaultContactFormatterForDataSource:sourceCopy];
  contactFormatter = self->_contactFormatter;
  self->_contactFormatter = v6;

  *&self->_isPerformingMerge = 0;
  self->_allDuplicatesCount = 0;
  self->_mergeCompletedAt = 0.0;
  self->_newDuplicatesCount = 0;

  [(CNDuplicateContactsController *)self updateDuplicatesCounts];
}

- (CNDuplicateContactsController)initWithDataSource:(id)source environment:(id)environment delegate:(id)delegate
{
  sourceCopy = source;
  environmentCopy = environment;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CNDuplicateContactsController;
  v12 = [(CNDuplicateContactsController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, environment);
    objc_storeStrong(&v13->_dataSource, source);
    v14 = [CNDuplicateContactsController defaultContactFormatterForDataSource:sourceCopy];
    contactFormatter = v13->_contactFormatter;
    v13->_contactFormatter = v14;

    objc_storeWeak(&v13->_delegate, delegateCopy);
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

+ (id)defaultContactFormatterForDataSource:(id)source
{
  sourceCopy = source;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([sourceCopy contactFormatter], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    contactFormatter = [sourceCopy contactFormatter];
  }

  else
  {
    contactFormatter = [self defaultContactFormatter];
  }

  v7 = contactFormatter;

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