@interface CNPRUISPosterSnapshotController
- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (id)sharedController;
- (void)acquireKeepActiveAssertionForReason:(id)a3;
- (void)executeSnapshotRequest:(id)a3 completion:(id)a4;
- (void)releaseKeepActiveAssertionForReason:(id)a3;
@end

@implementation CNPRUISPosterSnapshotController

- (void)releaseKeepActiveAssertionForReason:(id)a3
{
  v5 = *MEMORY[0x1E6996568];
  v6 = *(*MEMORY[0x1E6996568] + 16);
  v7 = a3;
  if (v6(v5, v7))
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CNPostersSoftLinkWrappers.m" lineNumber:717 description:@"assertion reason must be non-empty"];
  }

  v9 = [_assertions objectForKeyedSubscript:v7];
  [v9 invalidate];
  [_assertions setObject:0 forKeyedSubscript:v7];
}

- (void)acquireKeepActiveAssertionForReason:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v9 = "Posters are not supported on iPad";
      v10 = v8;
      v11 = 2;
LABEL_11:
      _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, v9, &v16, v11);
    }
  }

  else
  {
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"CNPostersSoftLinkWrappers.m" lineNumber:699 description:@"assertion reason must be non-empty"];
    }

    if (acquireKeepActiveAssertionForReason__onceToken != -1)
    {
      dispatch_once(&acquireKeepActiveAssertionForReason__onceToken, &__block_literal_global_65724);
    }

    v12 = [_assertions objectForKeyedSubscript:v5];

    if (!v12)
    {
      v13 = [(CNPRUISPosterSnapshotController *)self sharedController];
      v14 = [v13 acquireKeepActiveAssertionForReason:v5];

      [_assertions setObject:v14 forKeyedSubscript:v5];
      goto LABEL_13;
    }

    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v5;
      v9 = "There's already an assertion for reason: %@, skipping adding another one";
      v10 = v8;
      v11 = 12;
      goto LABEL_11;
    }
  }

LABEL_13:
}

uint64_t __71__CNPRUISPosterSnapshotController_acquireKeepActiveAssertionForReason___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _assertions;
  _assertions = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)executeSnapshotRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNPRUISPosterSnapshotController *)self sharedController];
  v9 = [v7 wrappedRequest];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CNPRUISPosterSnapshotController_executeSnapshotRequest_completion___block_invoke;
  v11[3] = &unk_1E74E74B0;
  v12 = v6;
  v10 = v6;
  [v8 executeSnapshotRequest:v9 completion:v11];
}

void __69__CNPRUISPosterSnapshotController_executeSnapshotRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*(a1 + 32))
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v11 = [[CNPRUISPosterSnapshotRequest alloc] initWithWrappedRequest:v9];

    v10 = [[CNPRUISPosterSnapshotResult alloc] initWithWrappedResult:v8];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNPRUISPosterSnapshotController *)self sharedController];
  v8 = [v6 wrappedRequest];

  v9 = [v7 latestSnapshotBundleForRequest:v8 error:a4];

  if (v9)
  {
    v10 = [[CNPRPosterSnapshotBundle alloc] initWithWrappedBundle:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sharedController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPRUISPosterSnapshotControllerClass_softClass;
  v10 = getPRUISPosterSnapshotControllerClass_softClass;
  if (!getPRUISPosterSnapshotControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getPRUISPosterSnapshotControllerClass_block_invoke;
    v6[3] = &unk_1E74E7518;
    v6[4] = &v7;
    __getPRUISPosterSnapshotControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 sharedIncomingCallSnapshotController];

  return v4;
}

@end