@interface SFBrowserASCLockupViewGenerator
+ (SFBrowserASCLockupViewGenerator)sharedGenerator;
+ (id)lockupViewGroup;
- (void)generateLockupViewsWithDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation SFBrowserASCLockupViewGenerator

+ (SFBrowserASCLockupViewGenerator)sharedGenerator
{
  if (sharedGenerator_onceToken != -1)
  {
    +[SFBrowserASCLockupViewGenerator sharedGenerator];
  }

  v3 = sharedGenerator_sharedGenerator;

  return v3;
}

void __50__SFBrowserASCLockupViewGenerator_sharedGenerator__block_invoke()
{
  v0 = objc_alloc_init(SFBrowserASCLockupViewGenerator);
  v1 = sharedGenerator_sharedGenerator;
  sharedGenerator_sharedGenerator = v0;
}

+ (id)lockupViewGroup
{
  if (lockupViewGroup_onceToken != -1)
  {
    +[SFBrowserASCLockupViewGenerator lockupViewGroup];
  }

  v3 = lockupViewGroup_group;

  return v3;
}

void __50__SFBrowserASCLockupViewGenerator_lockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"BrowserLockups"];
  v1 = lockupViewGroup_group;
  lockupViewGroup_group = v0;
}

- (void)generateLockupViewsWithDelegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  if (AppStoreComponentsLibraryCore() && getASCLockupContextWebBrowserSymbolLoc())
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSTimer *)self->_requestTimeout invalidate];
    v9 = MEMORY[0x1E695DFF0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__SFBrowserASCLockupViewGenerator_generateLockupViewsWithDelegate_completionHandler___block_invoke;
    v19[3] = &unk_1E8495FC8;
    v10 = array;
    v20 = v10;
    v11 = handlerCopy;
    selfCopy = self;
    v22 = v11;
    v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v19 block:15.0];
    requestTimeout = self->_requestTimeout;
    self->_requestTimeout = v12;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__SFBrowserASCLockupViewGenerator_generateLockupViewsWithDelegate_completionHandler___block_invoke_2;
    block[3] = &unk_1E84939B8;
    block[4] = self;
    v16 = delegateCopy;
    v17 = v10;
    v18 = v11;
    v14 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __85__SFBrowserASCLockupViewGenerator_generateLockupViewsWithDelegate_completionHandler___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
    (*(*(a1 + 48) + 16))();
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void __85__SFBrowserASCLockupViewGenerator_generateLockupViewsWithDelegate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E698B3A0]);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v3 = getASCCollectionIDWebBrowsersSymbolLoc_ptr;
  v26 = getASCCollectionIDWebBrowsersSymbolLoc_ptr;
  if (!getASCCollectionIDWebBrowsersSymbolLoc_ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getASCCollectionIDWebBrowsersSymbolLoc_block_invoke;
    v21 = &unk_1E848F710;
    v22 = &v23;
    v4 = AppStoreComponentsLibrary();
    v24[3] = dlsym(v4, "ASCCollectionIDWebBrowsers");
    getASCCollectionIDWebBrowsersSymbolLoc_ptr = *(v22[1] + 24);
    v3 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v3)
  {
    [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
LABEL_7:
    v13 = [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v13);
  }

  v5 = *v3;
  ASCLockupContextWebBrowserSymbolLoc = getASCLockupContextWebBrowserSymbolLoc();
  if (!ASCLockupContextWebBrowserSymbolLoc)
  {
    goto LABEL_7;
  }

  v7 = [v2 initWithID:v5 kind:*MEMORY[0x1E698B360] context:*ASCLockupContextWebBrowserSymbolLoc limit:20];

  v8 = [objc_opt_class() lockupViewGroup];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__SFBrowserASCLockupViewGenerator_generateLockupViewsWithDelegate_completionHandler___block_invoke_3;
  v15[3] = &unk_1E8495FF0;
  v14 = *(a1 + 32);
  v9 = *(&v14 + 1);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v14;
  v17 = v12;
  [v8 _cacheLockupsWithCollectionRequest:v7 withCompletionBlock:v15];
}

void __85__SFBrowserASCLockupViewGenerator_generateLockupViewsWithDelegate_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 32) + 8) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  if (v3 && [v3 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v12 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = objc_alloc(MEMORY[0x1E698B3C8]);
          v17 = [v16 initWithFrame:{v10, v11, v12, v13, v23}];
          [v17 setDelegate:*(a1 + 40)];
          v18 = [objc_opt_class() lockupViewGroup];
          [v17 setGroup:v18];

          v19 = [v15 copy];
          [v17 setRequest:v19];

          [v17 setShowsPlaceholderContent:1];
          v20 = [v17 lockup];
          v21 = [v20 lockupWithOffer:0];
          [v17 setLockup:v21];

          [*(a1 + 48) addObject:v17];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v22 = *(*(a1 + 56) + 16);
  }

  else
  {
    v22 = *(*(a1 + 56) + 16);
  }

  v22();
}

@end