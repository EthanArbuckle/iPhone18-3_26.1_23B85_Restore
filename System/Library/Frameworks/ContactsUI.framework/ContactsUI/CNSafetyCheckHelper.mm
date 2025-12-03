@interface CNSafetyCheckHelper
+ (id)shared;
- (CNSafetyCheckHelper)init;
- (void)fetchSharing;
- (void)makeSafetyCheckFlowFor:(id)for completion:(id)completion;
@end

@implementation CNSafetyCheckHelper

- (void)makeSafetyCheckFlowFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  if ([getDSSafetyCheckWhenBlockingClass() featureEnabled])
  {
    safetyCheckProvider = [(CNSafetyCheckHelper *)self safetyCheckProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__CNSafetyCheckHelper_makeSafetyCheckFlowFor_completion___block_invoke;
    v9[3] = &unk_1E74E6650;
    v9[4] = self;
    v10 = forCopy;
    v11 = completionCopy;
    [safetyCheckProvider fetchSharingWithCompletion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __57__CNSafetyCheckHelper_makeSafetyCheckFlowFor_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safetyCheckProvider];
  [v2 startManageSharingWithContact:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)fetchSharing
{
  safetyCheckProvider = [(CNSafetyCheckHelper *)self safetyCheckProvider];
  [safetyCheckProvider fetchSharingWithCompletion:&__block_literal_global_2_62974];
}

- (CNSafetyCheckHelper)init
{
  v5.receiver = self;
  v5.super_class = CNSafetyCheckHelper;
  v2 = [(CNSafetyCheckHelper *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(getDSSafetyCheckWhenBlockingClass());
    [(CNSafetyCheckHelper *)v2 setSafetyCheckProvider:v3];
  }

  return v2;
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_62981);
  }

  v3 = shared__shared;

  return v3;
}

uint64_t __29__CNSafetyCheckHelper_shared__block_invoke()
{
  v0 = objc_alloc_init(CNSafetyCheckHelper);
  v1 = shared__shared;
  shared__shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end