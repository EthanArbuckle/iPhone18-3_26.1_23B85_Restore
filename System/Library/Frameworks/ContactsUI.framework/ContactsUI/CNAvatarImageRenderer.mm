@interface CNAvatarImageRenderer
+ (id)descriptorForRequiredKeys;
- (CNAvatarImageRenderer)init;
- (CNAvatarImageRenderer)initWithSettings:(id)a3;
- (id)avatarImageForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5;
- (id)imageForAvatarAccessoryView:(id)a3 scope:(id)a4;
- (id)loadingPlaceholderImageProvider;
- (id)placeholderImageProvider;
- (id)renderAvatarsForContacts:(id)a3 handler:(id)a4;
- (id)renderAvatarsForContacts:(id)a3 scope:(id)a4 includePlaceholder:(BOOL)a5 imageHandler:(id)a6;
- (id)renderAvatarsForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 includePlaceholder:(BOOL)a6 imageHandler:(id)a7;
- (id)renderAvatarsForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 placeholder:(BOOL)a6 workScheduler:(id)a7 imageHandler:(id)a8;
- (id)renderAvatarsForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 placeholder:(BOOL)a6 workScheduler:(id)a7 observer:(id)a8;
- (id)renderMonogramForContact:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6;
- (id)renderMonogramForString:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6;
- (id)renderMonogramForString:(id)a3 handler:(id)a4;
- (id)renderMonogramForString:(id)a3 scope:(id)a4 imageHandler:(id)a5;
- (id)renderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 placeholder:(BOOL)a6 workScheduler:(id)a7;
- (id)renderedMonogramObservableForString:(id)a3 scope:(id)a4;
- (id)runScopeBasedImageObservable:(id)a3 scope:(id)a4 imageHandler:(id)a5;
- (id)runScopeBasedImageObservable:(id)a3 scope:(id)a4 observer:(id)a5;
@end

@implementation CNAvatarImageRenderer

- (CNAvatarImageRenderer)init
{
  v3 = +[CNAvatarImageRendererSettings defaultSettings];
  v4 = [(CNAvatarImageRenderer *)self initWithSettings:v3];

  return v4;
}

- (id)placeholderImageProvider
{
  v3 = [_CNAvatarImageProvider alloc];
  v4 = [(CNAvatarImageRenderer *)self resolver];
  v5 = [v4 placeholderProviderFactory];
  v6 = [v5 placeholderProvider];
  v7 = [(_CNAvatarImageProvider *)v3 initWithLikenessProvider:v6];

  return v7;
}

- (id)loadingPlaceholderImageProvider
{
  v3 = [_CNAvatarImageProvider alloc];
  v4 = [(CNAvatarImageRenderer *)self resolver];
  v5 = [v4 placeholderProviderFactory];
  v6 = [v5 loadingPlaceholderProvider];
  v7 = [(_CNAvatarImageProvider *)v3 initWithLikenessProvider:v6];

  return v7;
}

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E6996BB8] descriptorForRequiredKeys];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNAvatarImageRenderer descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (id)renderMonogramForContact:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6
{
  v10 = MEMORY[0x1E695CD80];
  v11 = a5;
  v12 = a4;
  v13 = [v10 stringFromContact:a3 style:1002];
  v14 = [(CNAvatarImageRenderer *)self renderMonogramForString:v13 color:v12 scope:v11 prohibitedSources:a6];

  return v14;
}

- (id)renderMonogramForString:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a5 likenessRenderingScope];
  v13 = [(CNAvatarImageRenderer *)self renderer];
  v14 = [v13 renderedBasicMonogramForString:v11 color:v10 scope:v12 prohibitedSources:a6];

  return v14;
}

- (id)imageForAvatarAccessoryView:(id)a3 scope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v9 = [v8 immediateScheduler];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__21846;
  v25 = __Block_byref_object_dispose__21847;
  v26 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__CNAvatarImageRenderer_imageForAvatarAccessoryView_scope___block_invoke;
  v18[3] = &unk_1E74E3250;
  v18[4] = self;
  v10 = v6;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__CNAvatarImageRenderer_imageForAvatarAccessoryView_scope___block_invoke_2;
  v15[3] = &unk_1E74E31B0;
  v16 = 0;
  v17 = &v21;
  v12 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v18 scope:v7 imageHandler:v15];
  [v12 cancel];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

id __59__CNAvatarImageRenderer_imageForAvatarAccessoryView_scope___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 renderer];
  v6 = [v5 renderedLikenessForBadge:a1[5] scope:v4 workScheduler:a1[6]];

  v7 = [v6 subscribeOn:a1[6]];

  return v7;
}

void __59__CNAvatarImageRenderer_imageForAvatarAccessoryView_scope___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_semaphore_signal(v4);
  }
}

- (id)renderedMonogramObservableForString:(id)a3 scope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarImageRenderer *)self renderer];
  v9 = [MEMORY[0x1E6996798] observableWithResult:v7];

  v10 = [v8 renderedBasicMonogramFromString:v9 scope:v6];

  v11 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v12 = [v11 backgroundScheduler];
  v13 = [v10 subscribeOn:v12];

  return v13;
}

- (id)renderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 placeholder:(BOOL)a6 workScheduler:(id)a7
{
  v8 = a6;
  v28 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a4;
  v16 = [(CNAvatarImageRenderer *)self renderer];
  v17 = [v16 renderedLikenessesForContacts:v12 withBadges:v15 scope:v13 workScheduler:v14];

  v18 = [v17 subscribeOn:v14];

  if (v8)
  {
    v19 = [(CNAvatarImageRenderer *)self renderer];
    v20 = [v19 loadingPlaceholderForContactCount:objc_msgSend(v12 scope:{"count"), v13}];

    if (v20)
    {
      v25 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v22 = [v18 startWith:v21];

      v18 = v22;
    }

    else
    {
      v20 = CNUILogAvatarView();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "Loading placeholder is nil for scope: %@", buf, 0xCu);
      }
    }
  }

  v23 = v18;

  return v18;
}

- (id)runScopeBasedImageObservable:(id)a3 scope:(id)a4 imageHandler:(id)a5
{
  v8 = MEMORY[0x1E69967A0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 observerWithResultBlock:a5 completionBlock:0 failureBlock:&__block_literal_global_72];
  v12 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v10 scope:v9 observer:v11];

  return v12;
}

- (id)runScopeBasedImageObservable:(id)a3 scope:(id)a4 observer:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 conformsToProtocol:&unk_1F0E0EAB8])
  {
    v10 = [v8 likenessRenderingScope];
    v11 = v7[2](v7, v10);
    v12 = [v11 subscribe:v9];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"scope argument is invalid"];
    v12 = objc_alloc_init(MEMORY[0x1E6996668]);
  }

  return v12;
}

- (id)renderMonogramForString:(id)a3 scope:(id)a4 imageHandler:(id)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CNAvatarImageRenderer_renderMonogramForString_scope_imageHandler___block_invoke;
  v12[3] = &unk_1E74E3228;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v12 scope:a4 imageHandler:a5];

  return v10;
}

- (id)renderAvatarsForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 placeholder:(BOOL)a6 workScheduler:(id)a7 imageHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__CNAvatarImageRenderer_renderAvatarsForContacts_withBadges_scope_placeholder_workScheduler_imageHandler___block_invoke;
  v22[3] = &unk_1E74E3200;
  v22[4] = self;
  v23 = v14;
  v26 = a6;
  v24 = v15;
  v25 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v22 scope:a5 imageHandler:a8];

  return v20;
}

- (id)renderAvatarsForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 placeholder:(BOOL)a6 workScheduler:(id)a7 observer:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__CNAvatarImageRenderer_renderAvatarsForContacts_withBadges_scope_placeholder_workScheduler_observer___block_invoke;
  v22[3] = &unk_1E74E3200;
  v22[4] = self;
  v23 = v14;
  v26 = a6;
  v24 = v15;
  v25 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v22 scope:a5 observer:a8];

  return v20;
}

- (id)avatarImageForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v12 = [v11 immediateScheduler];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__21846;
  v35 = __Block_byref_object_dispose__21847;
  v36 = 0;
  v13 = [MEMORY[0x1E69966E8] currentEnvironment];
  v14 = [v13 featureFlags];
  v15 = [v14 isFeatureEnabled:6];

  if ((v15 & 1) != 0 && (v16 = dispatch_semaphore_create(0)) != 0)
  {
    v17 = MEMORY[0x1E69967A0];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke;
    v28[3] = &unk_1E74E31B0;
    v30 = &v31;
    v29 = v16;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke_2;
    v26[3] = &unk_1E74E6A88;
    v27 = v29;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke_3;
    v24[3] = &unk_1E74E5200;
    v18 = v27;
    v25 = v18;
    v19 = [v17 observerWithResultBlock:v28 completionBlock:v26 failureBlock:v24];
    v20 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:v8 withBadges:v9 scope:v10 placeholder:0 workScheduler:v12 observer:v19];

    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke_10;
    v23[3] = &unk_1E74E31D8;
    v23[4] = &v31;
    v20 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:v8 withBadges:v9 scope:v10 placeholder:0 workScheduler:v12 imageHandler:v23];
    v18 = 0;
  }

  [v20 cancel];
  v21 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v21;
}

void __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:6];

  if (v6)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CNUILogAvatarView();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "Failed to render avatars for reason: %@", &v5, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)renderAvatarsForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 includePlaceholder:(BOOL)a6 imageHandler:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v17 = [v16 backgroundScheduler];
  v18 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:v15 withBadges:v14 scope:v13 placeholder:v7 workScheduler:v17 imageHandler:v12];

  return v18;
}

- (id)renderAvatarsForContacts:(id)a3 scope:(id)a4 includePlaceholder:(BOOL)a5 imageHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v14 = [v13 backgroundScheduler];
  v15 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:v12 withBadges:0 scope:v11 placeholder:v6 workScheduler:v14 imageHandler:v10];

  return v15;
}

- (id)renderMonogramForString:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarImageRenderer *)self resolver];
  v9 = [MEMORY[0x1E6996798] observableWithResult:v7];

  v10 = [v8 basicMonogramObservableFromString:v9 color:0];

  v11 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v12 = [v11 backgroundScheduler];
  v13 = [v10 subscribeOn:v12];

  v14 = MEMORY[0x1E69967A0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__CNAvatarImageRenderer_renderMonogramForString_handler___block_invoke;
  v19[3] = &unk_1E74E3188;
  v20 = v6;
  v15 = v6;
  v16 = [v14 observerWithResultBlock:v19];
  v17 = [v13 subscribe:v16];

  return v17;
}

void __57__CNAvatarImageRenderer_renderMonogramForString_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_CNAvatarImageProvider alloc] initWithLikenessProvider:v3];

  (*(*(a1 + 32) + 16))();
}

- (id)renderAvatarsForContacts:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarImageRenderer *)self resolver];
  v9 = [(CNAvatarImageRenderer *)self schedulerProvider];
  v10 = [v9 backgroundScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CNAvatarImageRenderer_renderAvatarsForContacts_handler___block_invoke;
  v14[3] = &unk_1E74E3E20;
  v15 = v6;
  v11 = v6;
  v12 = [v8 resolveLikenessesForContacts:v7 workScheduler:v10 withContentHandler:v14];

  return v12;
}

void __58__CNAvatarImageRenderer_renderAvatarsForContacts_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _cn_map:&__block_literal_global_21863];
  (*(*(a1 + 32) + 16))();
}

_CNAvatarImageProvider *__58__CNAvatarImageRenderer_renderAvatarsForContacts_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[_CNAvatarImageProvider alloc] initWithLikenessProvider:v2];

  return v3;
}

- (CNAvatarImageRenderer)initWithSettings:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNAvatarImageRenderer;
  v5 = [(CNAvatarImageRenderer *)&v13 init];
  if (v5)
  {
    v6 = [v4 likenessResolver];
    resolver = v5->_resolver;
    v5->_resolver = v6;

    v8 = [v4 likenessRenderer];
    renderer = v5->_renderer;
    v5->_renderer = v8;

    v10 = [v4 schedulerProvider];
    schedulerProvider = v5->_schedulerProvider;
    v5->_schedulerProvider = v10;
  }

  return v5;
}

@end