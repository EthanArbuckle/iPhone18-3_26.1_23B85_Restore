@interface CNAvatarImageRenderer
+ (id)descriptorForRequiredKeys;
- (CNAvatarImageRenderer)init;
- (CNAvatarImageRenderer)initWithSettings:(id)settings;
- (id)avatarImageForContacts:(id)contacts withBadges:(id)badges scope:(id)scope;
- (id)imageForAvatarAccessoryView:(id)view scope:(id)scope;
- (id)loadingPlaceholderImageProvider;
- (id)placeholderImageProvider;
- (id)renderAvatarsForContacts:(id)contacts handler:(id)handler;
- (id)renderAvatarsForContacts:(id)contacts scope:(id)scope includePlaceholder:(BOOL)placeholder imageHandler:(id)handler;
- (id)renderAvatarsForContacts:(id)contacts withBadges:(id)badges scope:(id)scope includePlaceholder:(BOOL)placeholder imageHandler:(id)handler;
- (id)renderAvatarsForContacts:(id)contacts withBadges:(id)badges scope:(id)scope placeholder:(BOOL)placeholder workScheduler:(id)scheduler imageHandler:(id)handler;
- (id)renderAvatarsForContacts:(id)contacts withBadges:(id)badges scope:(id)scope placeholder:(BOOL)placeholder workScheduler:(id)scheduler observer:(id)observer;
- (id)renderMonogramForContact:(id)contact color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources;
- (id)renderMonogramForString:(id)string color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources;
- (id)renderMonogramForString:(id)string handler:(id)handler;
- (id)renderMonogramForString:(id)string scope:(id)scope imageHandler:(id)handler;
- (id)renderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope placeholder:(BOOL)placeholder workScheduler:(id)scheduler;
- (id)renderedMonogramObservableForString:(id)string scope:(id)scope;
- (id)runScopeBasedImageObservable:(id)observable scope:(id)scope imageHandler:(id)handler;
- (id)runScopeBasedImageObservable:(id)observable scope:(id)scope observer:(id)observer;
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
  resolver = [(CNAvatarImageRenderer *)self resolver];
  placeholderProviderFactory = [resolver placeholderProviderFactory];
  placeholderProvider = [placeholderProviderFactory placeholderProvider];
  v7 = [(_CNAvatarImageProvider *)v3 initWithLikenessProvider:placeholderProvider];

  return v7;
}

- (id)loadingPlaceholderImageProvider
{
  v3 = [_CNAvatarImageProvider alloc];
  resolver = [(CNAvatarImageRenderer *)self resolver];
  placeholderProviderFactory = [resolver placeholderProviderFactory];
  loadingPlaceholderProvider = [placeholderProviderFactory loadingPlaceholderProvider];
  v7 = [(_CNAvatarImageProvider *)v3 initWithLikenessProvider:loadingPlaceholderProvider];

  return v7;
}

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  descriptorForRequiredKeys = [MEMORY[0x1E6996BB8] descriptorForRequiredKeys];
  v8[0] = descriptorForRequiredKeys;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNAvatarImageRenderer descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (id)renderMonogramForContact:(id)contact color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources
{
  v10 = MEMORY[0x1E695CD80];
  scopeCopy = scope;
  colorCopy = color;
  v13 = [v10 stringFromContact:contact style:1002];
  v14 = [(CNAvatarImageRenderer *)self renderMonogramForString:v13 color:colorCopy scope:scopeCopy prohibitedSources:sources];

  return v14;
}

- (id)renderMonogramForString:(id)string color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources
{
  colorCopy = color;
  stringCopy = string;
  likenessRenderingScope = [scope likenessRenderingScope];
  renderer = [(CNAvatarImageRenderer *)self renderer];
  v14 = [renderer renderedBasicMonogramForString:stringCopy color:colorCopy scope:likenessRenderingScope prohibitedSources:sources];

  return v14;
}

- (id)imageForAvatarAccessoryView:(id)view scope:(id)scope
{
  viewCopy = view;
  scopeCopy = scope;
  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  immediateScheduler = [schedulerProvider immediateScheduler];

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
  v10 = viewCopy;
  v19 = v10;
  v11 = immediateScheduler;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__CNAvatarImageRenderer_imageForAvatarAccessoryView_scope___block_invoke_2;
  v15[3] = &unk_1E74E31B0;
  v16 = 0;
  v17 = &v21;
  v12 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v18 scope:scopeCopy imageHandler:v15];
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

- (id)renderedMonogramObservableForString:(id)string scope:(id)scope
{
  scopeCopy = scope;
  stringCopy = string;
  renderer = [(CNAvatarImageRenderer *)self renderer];
  v9 = [MEMORY[0x1E6996798] observableWithResult:stringCopy];

  v10 = [renderer renderedBasicMonogramFromString:v9 scope:scopeCopy];

  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v13 = [v10 subscribeOn:backgroundScheduler];

  return v13;
}

- (id)renderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope placeholder:(BOOL)placeholder workScheduler:(id)scheduler
{
  placeholderCopy = placeholder;
  v28 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  scopeCopy = scope;
  schedulerCopy = scheduler;
  badgesCopy = badges;
  renderer = [(CNAvatarImageRenderer *)self renderer];
  v17 = [renderer renderedLikenessesForContacts:contactsCopy withBadges:badgesCopy scope:scopeCopy workScheduler:schedulerCopy];

  v18 = [v17 subscribeOn:schedulerCopy];

  if (placeholderCopy)
  {
    renderer2 = [(CNAvatarImageRenderer *)self renderer];
    v20 = [renderer2 loadingPlaceholderForContactCount:objc_msgSend(contactsCopy scope:{"count"), scopeCopy}];

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
        v27 = scopeCopy;
        _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "Loading placeholder is nil for scope: %@", buf, 0xCu);
      }
    }
  }

  v23 = v18;

  return v18;
}

- (id)runScopeBasedImageObservable:(id)observable scope:(id)scope imageHandler:(id)handler
{
  v8 = MEMORY[0x1E69967A0];
  scopeCopy = scope;
  observableCopy = observable;
  v11 = [v8 observerWithResultBlock:handler completionBlock:0 failureBlock:&__block_literal_global_72];
  v12 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:observableCopy scope:scopeCopy observer:v11];

  return v12;
}

- (id)runScopeBasedImageObservable:(id)observable scope:(id)scope observer:(id)observer
{
  observableCopy = observable;
  scopeCopy = scope;
  observerCopy = observer;
  if ([scopeCopy conformsToProtocol:&unk_1F0E0EAB8])
  {
    likenessRenderingScope = [scopeCopy likenessRenderingScope];
    v11 = observableCopy[2](observableCopy, likenessRenderingScope);
    v12 = [v11 subscribe:observerCopy];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"scope argument is invalid"];
    v12 = objc_alloc_init(MEMORY[0x1E6996668]);
  }

  return v12;
}

- (id)renderMonogramForString:(id)string scope:(id)scope imageHandler:(id)handler
{
  stringCopy = string;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CNAvatarImageRenderer_renderMonogramForString_scope_imageHandler___block_invoke;
  v12[3] = &unk_1E74E3228;
  v12[4] = self;
  v13 = stringCopy;
  v9 = stringCopy;
  v10 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v12 scope:scope imageHandler:handler];

  return v10;
}

- (id)renderAvatarsForContacts:(id)contacts withBadges:(id)badges scope:(id)scope placeholder:(BOOL)placeholder workScheduler:(id)scheduler imageHandler:(id)handler
{
  contactsCopy = contacts;
  badgesCopy = badges;
  schedulerCopy = scheduler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__CNAvatarImageRenderer_renderAvatarsForContacts_withBadges_scope_placeholder_workScheduler_imageHandler___block_invoke;
  v22[3] = &unk_1E74E3200;
  v22[4] = self;
  v23 = contactsCopy;
  placeholderCopy = placeholder;
  v24 = badgesCopy;
  v25 = schedulerCopy;
  v17 = schedulerCopy;
  v18 = badgesCopy;
  v19 = contactsCopy;
  v20 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v22 scope:scope imageHandler:handler];

  return v20;
}

- (id)renderAvatarsForContacts:(id)contacts withBadges:(id)badges scope:(id)scope placeholder:(BOOL)placeholder workScheduler:(id)scheduler observer:(id)observer
{
  contactsCopy = contacts;
  badgesCopy = badges;
  schedulerCopy = scheduler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__CNAvatarImageRenderer_renderAvatarsForContacts_withBadges_scope_placeholder_workScheduler_observer___block_invoke;
  v22[3] = &unk_1E74E3200;
  v22[4] = self;
  v23 = contactsCopy;
  placeholderCopy = placeholder;
  v24 = badgesCopy;
  v25 = schedulerCopy;
  v17 = schedulerCopy;
  v18 = badgesCopy;
  v19 = contactsCopy;
  v20 = [(CNAvatarImageRenderer *)self runScopeBasedImageObservable:v22 scope:scope observer:observer];

  return v20;
}

- (id)avatarImageForContacts:(id)contacts withBadges:(id)badges scope:(id)scope
{
  contactsCopy = contacts;
  badgesCopy = badges;
  scopeCopy = scope;
  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  immediateScheduler = [schedulerProvider immediateScheduler];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__21846;
  v35 = __Block_byref_object_dispose__21847;
  v36 = 0;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v15 = [featureFlags isFeatureEnabled:6];

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
    v20 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:contactsCopy withBadges:badgesCopy scope:scopeCopy placeholder:0 workScheduler:immediateScheduler observer:v19];

    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__CNAvatarImageRenderer_avatarImageForContacts_withBadges_scope___block_invoke_10;
    v23[3] = &unk_1E74E31D8;
    v23[4] = &v31;
    v20 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:contactsCopy withBadges:badgesCopy scope:scopeCopy placeholder:0 workScheduler:immediateScheduler imageHandler:v23];
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

- (id)renderAvatarsForContacts:(id)contacts withBadges:(id)badges scope:(id)scope includePlaceholder:(BOOL)placeholder imageHandler:(id)handler
{
  placeholderCopy = placeholder;
  handlerCopy = handler;
  scopeCopy = scope;
  badgesCopy = badges;
  contactsCopy = contacts;
  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v18 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:contactsCopy withBadges:badgesCopy scope:scopeCopy placeholder:placeholderCopy workScheduler:backgroundScheduler imageHandler:handlerCopy];

  return v18;
}

- (id)renderAvatarsForContacts:(id)contacts scope:(id)scope includePlaceholder:(BOOL)placeholder imageHandler:(id)handler
{
  placeholderCopy = placeholder;
  handlerCopy = handler;
  scopeCopy = scope;
  contactsCopy = contacts;
  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v15 = [(CNAvatarImageRenderer *)self renderAvatarsForContacts:contactsCopy withBadges:0 scope:scopeCopy placeholder:placeholderCopy workScheduler:backgroundScheduler imageHandler:handlerCopy];

  return v15;
}

- (id)renderMonogramForString:(id)string handler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  resolver = [(CNAvatarImageRenderer *)self resolver];
  v9 = [MEMORY[0x1E6996798] observableWithResult:stringCopy];

  v10 = [resolver basicMonogramObservableFromString:v9 color:0];

  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v13 = [v10 subscribeOn:backgroundScheduler];

  v14 = MEMORY[0x1E69967A0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__CNAvatarImageRenderer_renderMonogramForString_handler___block_invoke;
  v19[3] = &unk_1E74E3188;
  v20 = handlerCopy;
  v15 = handlerCopy;
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

- (id)renderAvatarsForContacts:(id)contacts handler:(id)handler
{
  handlerCopy = handler;
  contactsCopy = contacts;
  resolver = [(CNAvatarImageRenderer *)self resolver];
  schedulerProvider = [(CNAvatarImageRenderer *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CNAvatarImageRenderer_renderAvatarsForContacts_handler___block_invoke;
  v14[3] = &unk_1E74E3E20;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = [resolver resolveLikenessesForContacts:contactsCopy workScheduler:backgroundScheduler withContentHandler:v14];

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

- (CNAvatarImageRenderer)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = CNAvatarImageRenderer;
  v5 = [(CNAvatarImageRenderer *)&v13 init];
  if (v5)
  {
    likenessResolver = [settingsCopy likenessResolver];
    resolver = v5->_resolver;
    v5->_resolver = likenessResolver;

    likenessRenderer = [settingsCopy likenessRenderer];
    renderer = v5->_renderer;
    v5->_renderer = likenessRenderer;

    schedulerProvider = [settingsCopy schedulerProvider];
    schedulerProvider = v5->_schedulerProvider;
    v5->_schedulerProvider = schedulerProvider;
  }

  return v5;
}

@end