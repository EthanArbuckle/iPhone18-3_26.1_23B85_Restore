@interface CNPRUISPosterSnapshotController
- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error;
- (id)sharedController;
- (void)acquireKeepActiveAssertionForReason:(id)reason;
- (void)executeSnapshotRequest:(id)request completion:(id)completion;
- (void)releaseKeepActiveAssertionForReason:(id)reason;
@end

@implementation CNPRUISPosterSnapshotController

- (void)releaseKeepActiveAssertionForReason:(id)reason
{
  v5 = *MEMORY[0x1E6996568];
  v6 = *(*MEMORY[0x1E6996568] + 16);
  reasonCopy = reason;
  if (v6(v5, reasonCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNPostersSoftLinkWrappers.m" lineNumber:717 description:@"assertion reason must be non-empty"];
  }

  v9 = [_assertions objectForKeyedSubscript:reasonCopy];
  [v9 invalidate];
  [_assertions setObject:0 forKeyedSubscript:reasonCopy];
}

- (void)acquireKeepActiveAssertionForReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CNPostersSoftLinkWrappers.m" lineNumber:699 description:@"assertion reason must be non-empty"];
    }

    if (acquireKeepActiveAssertionForReason__onceToken != -1)
    {
      dispatch_once(&acquireKeepActiveAssertionForReason__onceToken, &__block_literal_global_65724);
    }

    v12 = [_assertions objectForKeyedSubscript:reasonCopy];

    if (!v12)
    {
      sharedController = [(CNPRUISPosterSnapshotController *)self sharedController];
      v14 = [sharedController acquireKeepActiveAssertionForReason:reasonCopy];

      [_assertions setObject:v14 forKeyedSubscript:reasonCopy];
      goto LABEL_13;
    }

    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = reasonCopy;
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

- (void)executeSnapshotRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  sharedController = [(CNPRUISPosterSnapshotController *)self sharedController];
  wrappedRequest = [requestCopy wrappedRequest];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CNPRUISPosterSnapshotController_executeSnapshotRequest_completion___block_invoke;
  v11[3] = &unk_1E74E74B0;
  v12 = completionCopy;
  v10 = completionCopy;
  [sharedController executeSnapshotRequest:wrappedRequest completion:v11];
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

- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  sharedController = [(CNPRUISPosterSnapshotController *)self sharedController];
  wrappedRequest = [requestCopy wrappedRequest];

  v9 = [sharedController latestSnapshotBundleForRequest:wrappedRequest error:error];

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
  sharedIncomingCallSnapshotController = [v2 sharedIncomingCallSnapshotController];

  return sharedIncomingCallSnapshotController;
}

@end