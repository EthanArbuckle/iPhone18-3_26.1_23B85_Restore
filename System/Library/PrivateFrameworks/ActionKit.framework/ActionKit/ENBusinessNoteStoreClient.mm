@interface ENBusinessNoteStoreClient
+ (id)noteStoreClientForBusiness;
- (ENBusinessNoteStoreClientDelegate)delegate;
- (NSString)noteStoreUrl;
- (id)authenticationToken;
- (void)createBusinessNotebook:(id)notebook completion:(id)completion;
- (void)createBusinessNotebook:(id)notebook success:(id)success failure:(id)failure;
@end

@implementation ENBusinessNoteStoreClient

- (ENBusinessNoteStoreClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createBusinessNotebook:(id)notebook success:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__ENBusinessNoteStoreClient_createBusinessNotebook_success_failure___block_invoke;
  v12[3] = &unk_278C1FE80;
  v13 = successCopy;
  v14 = failureCopy;
  v10 = failureCopy;
  v11 = successCopy;
  [(ENBusinessNoteStoreClient *)self createBusinessNotebook:notebook completion:v12];
}

uint64_t __68__ENBusinessNoteStoreClient_createBusinessNotebook_success_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)createBusinessNotebook:(id)notebook completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ENBusinessNoteStoreClient_createBusinessNotebook_completion___block_invoke;
  v8[3] = &unk_278C1A010;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ENNoteStoreClient *)self createNotebook:notebook completion:v8];
}

void __63__ENBusinessNoteStoreClient_createBusinessNotebook_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 sharedNotebooks];
    v7 = [v6 objectAtIndexedSubscript:0];

    v8 = objc_alloc_init(EDAMLinkedNotebook);
    v9 = [v7 globalId];
    [(EDAMLinkedNotebook *)v8 setSharedNotebookGlobalId:v9];

    v10 = [v19 name];
    [(EDAMLinkedNotebook *)v8 setShareName:v10];

    v11 = +[ENSession sharedSession];
    v12 = [v11 businessUser];
    v13 = [v12 username];
    [(EDAMLinkedNotebook *)v8 setUsername:v13];

    v14 = +[ENSession sharedSession];
    v15 = [v14 businessUser];
    v16 = [v15 shardId];
    [(EDAMLinkedNotebook *)v8 setShardId:v16];

    v17 = +[ENSession sharedSession];
    v18 = [v17 primaryNoteStore];
    [v18 createLinkedNotebook:v8 completion:*(a1 + 32)];
  }
}

- (id)authenticationToken
{
  delegate = [(ENBusinessNoteStoreClient *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ENBusinessNoteStoreClient.m" lineNumber:46 description:@"ENBusinessNoteStoreClient delegate not set"];
  }

  delegate2 = [(ENBusinessNoteStoreClient *)self delegate];
  v6 = [delegate2 authenticationTokenForBusinessStoreClient:self];

  return v6;
}

- (NSString)noteStoreUrl
{
  delegate = [(ENBusinessNoteStoreClient *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ENBusinessNoteStoreClient.m" lineNumber:40 description:@"ENBusinessNoteStoreClient delegate not set"];
  }

  delegate2 = [(ENBusinessNoteStoreClient *)self delegate];
  v6 = [delegate2 noteStoreUrlForBusinessStoreClient:self];

  return v6;
}

+ (id)noteStoreClientForBusiness
{
  v2 = objc_alloc_init(ENBusinessNoteStoreClient);

  return v2;
}

@end