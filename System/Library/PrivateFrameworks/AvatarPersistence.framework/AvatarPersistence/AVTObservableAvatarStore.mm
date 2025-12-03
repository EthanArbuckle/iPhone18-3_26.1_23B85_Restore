@interface AVTObservableAvatarStore
- (AVTAvatarStoreDelegate)delegate;
- (AVTObservableAvatarStore)initWithStore:(id)store callbackQueue:(id)queue;
- (BOOL)canCreateAvatarWithError:(id *)error;
- (id)avatarsForFetchRequest:(id)request error:(id *)error;
- (id)recentStickersForFetchRequest:(id)request error:(id *)error;
- (void)deleteAvatar:(id)avatar completionHandler:(id)handler;
- (void)deleteAvatarWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler;
- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)duplicateAvatar:(id)avatar completionBlock:(id)block;
- (void)fetchAvatarsForFetchRequest:(id)request completionHandler:(id)handler;
- (void)saveAvatarRecord:(id)record thumbnailAvatar:(id)avatar completionBlock:(id)block thumbnailGenerationCompletionBlock:(id)completionBlock;
@end

@implementation AVTObservableAvatarStore

- (AVTObservableAvatarStore)initWithStore:(id)store callbackQueue:(id)queue
{
  storeCopy = store;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = AVTObservableAvatarStore;
  v9 = [(AVTObservableAvatarStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_callbackQueue, queue);
  }

  return v10;
}

- (BOOL)canCreateAvatarWithError:(id *)error
{
  store = [(AVTObservableAvatarStore *)self store];
  LOBYTE(error) = [store canCreateAvatarWithError:error];

  return error;
}

- (id)avatarsForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(AVTObservableAvatarStore *)self store];
  v8 = [store avatarsForFetchRequest:requestCopy error:error];

  return v8;
}

- (void)fetchAvatarsForFetchRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  store = [(AVTObservableAvatarStore *)self store];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__AVTObservableAvatarStore_fetchAvatarsForFetchRequest_completionHandler___block_invoke;
  v10[3] = &unk_278CFAA28;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [store fetchAvatarsForFetchRequest:requestCopy completionHandler:v10];
}

void __74__AVTObservableAvatarStore_fetchAvatarsForFetchRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__AVTObservableAvatarStore_fetchAvatarsForFetchRequest_completionHandler___block_invoke_2;
  block[3] = &unk_278CFAA00;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)deleteAvatar:(id)avatar completionHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [avatar identifier];
  [(AVTObservableAvatarStore *)self deleteAvatarWithIdentifier:identifier completionBlock:handlerCopy];
}

- (void)deleteAvatarWithIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  store = [(AVTObservableAvatarStore *)self store];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__AVTObservableAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke;
  v11[3] = &unk_278CFAAA0;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = identifierCopy;
  [store deleteAvatarWithIdentifier:v10 completionBlock:v11];
}

void __71__AVTObservableAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__AVTObservableAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_2;
  block[3] = &unk_278CFAA78;
  v14 = a2;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v8 = *(a1 + 48);
  v12 = v5;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void __71__AVTObservableAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_2(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __71__AVTObservableAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_4;
      v10[3] = &unk_278CFAA50;
      v10[4] = &v11;
      [v4 store:v5 didDeleteAvatarWithIdentifier:v6 postCompletionHandler:v10];
    }
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v9 = v12[5];
  if (v9)
  {
    (*(v9 + 16))();
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __71__AVTObservableAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x245CF3540](a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)saveAvatarRecord:(id)record thumbnailAvatar:(id)avatar completionBlock:(id)block thumbnailGenerationCompletionBlock:(id)completionBlock
{
  recordCopy = record;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  avatarCopy = avatar;
  store = [(AVTObservableAvatarStore *)self store];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __112__AVTObservableAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke;
  v17[3] = &unk_278CFAAA0;
  v17[4] = self;
  v18 = recordCopy;
  v19 = blockCopy;
  v15 = blockCopy;
  v16 = recordCopy;
  [store saveAvatarRecord:v16 thumbnailAvatar:avatarCopy completionBlock:v17 thumbnailGenerationCompletionBlock:completionBlockCopy];
}

void __112__AVTObservableAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__AVTObservableAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_2;
  block[3] = &unk_278CFAA78;
  v14 = a2;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v8 = *(a1 + 48);
  v12 = v5;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void __112__AVTObservableAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_2(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __112__AVTObservableAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_3;
      v10[3] = &unk_278CFAA50;
      v10[4] = &v11;
      [v4 store:v5 didSaveAvatar:v6 postCompletionHandler:v10];
    }
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v9 = v12[5];
  if (v9)
  {
    (*(v9 + 16))();
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __112__AVTObservableAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x245CF3540](a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)duplicateAvatar:(id)avatar completionBlock:(id)block
{
  avatarCopy = avatar;
  blockCopy = block;
  store = [(AVTObservableAvatarStore *)self store];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__AVTObservableAvatarStore_duplicateAvatar_completionBlock___block_invoke;
  v11[3] = &unk_278CFAAF0;
  v11[4] = self;
  v12 = avatarCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = avatarCopy;
  [store duplicateAvatar:v10 completionBlock:v11];
}

void __60__AVTObservableAvatarStore_duplicateAvatar_completionBlock___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) callbackQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__AVTObservableAvatarStore_duplicateAvatar_completionBlock___block_invoke_2;
  v14[3] = &unk_278CFAAC8;
  v19 = a2;
  v10 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v11 = *(a1 + 48);
  v17 = v8;
  v18 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, v14);
}

void __60__AVTObservableAvatarStore_duplicateAvatar_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__AVTObservableAvatarStore_duplicateAvatar_completionBlock___block_invoke_3;
      v12[3] = &unk_278CFAA50;
      v12[4] = &v13;
      [v4 store:v5 didCreateDuplicateAvatar:v6 forOriginal:v7 postCompletionHandler:v12];
    }
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
  v11 = v14[5];
  if (v11)
  {
    (*(v11 + 16))();
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __60__AVTObservableAvatarStore_duplicateAvatar_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x245CF3540](a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  store = [(AVTObservableAvatarStore *)self store];
  [store deleteRecentStickersWithAvatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy completionHandler:handlerCopy];
}

- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  store = [(AVTObservableAvatarStore *)self store];
  [store didUseStickerWithAvatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy completionHandler:handlerCopy];
}

- (id)recentStickersForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(AVTObservableAvatarStore *)self store];
  v8 = [store recentStickersForFetchRequest:requestCopy error:error];

  return v8;
}

- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler
{
  handlerCopy = handler;
  trackerCopy = tracker;
  store = [(AVTObservableAvatarStore *)self store];
  [store deleteRecentStickersForChangeTracker:trackerCopy completionHandler:handlerCopy];
}

- (AVTAvatarStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end