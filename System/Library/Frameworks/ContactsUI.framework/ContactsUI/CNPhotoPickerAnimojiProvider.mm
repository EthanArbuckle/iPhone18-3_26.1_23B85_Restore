@interface CNPhotoPickerAnimojiProvider
+ (id)providerItemForAvatarRecord:(id)record;
+ (id)providerItemForAvatarRecord:(id)record imageProvider:(id)provider renderingQueue:(id)queue callbackQueue:(id)callbackQueue;
- (BOOL)canCreateMemoji;
- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)identity;
- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)identity avatarStore:(id)store;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
@end

@implementation CNPhotoPickerAnimojiProvider

- (BOOL)canCreateMemoji
{
  avatarStore = [(CNPhotoPickerAnimojiProvider *)self avatarStore];
  canCreateAvatar = [avatarStore canCreateAvatar];

  return canCreateAvatar;
}

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  v42 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  delegateCopy = delegate;
  requestForPredefinedAvatars = [getAVTAvatarFetchRequestClass() requestForPredefinedAvatars];
  avatarStore = [(CNPhotoPickerAnimojiProvider *)self avatarStore];
  v40 = 0;
  v15 = [avatarStore avatarsForFetchRequest:requestForPredefinedAvatars error:&v40];
  v16 = v40;

  v33 = requestForPredefinedAvatars;
  if (+[CNPhotoPickerCapabilities allowsAvatarStoreAccess])
  {
    requestForCustomAvatars = [getAVTAvatarFetchRequestClass() requestForCustomAvatars];
    avatarStore2 = [(CNPhotoPickerAnimojiProvider *)self avatarStore];
    v39 = v16;
    v19 = [avatarStore2 avatarsForFetchRequest:requestForCustomAvatars error:&v39];
    v20 = v39;

    _cn_reversed = [v19 _cn_reversed];

    v22 = [_cn_reversed arrayByAddingObjectsFromArray:v15];

    v15 = v22;
    v32 = v20;
  }

  else
  {
    v32 = v16;
  }

  array = [MEMORY[0x1E695DF70] array];
  v24 = objc_alloc_init(getAVTAvatarRecordImageProviderClass());
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [objc_opt_class() providerItemForAvatarRecord:*(*(&v35 + 1) + 8 * i) imageProvider:v24 renderingQueue:queueCopy callbackQueue:callbackQueueCopy];
        [v30 setDelegate:delegateCopy];
        [array addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v27);
  }

  return array;
}

- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)identity avatarStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = CNPhotoPickerAnimojiProvider;
  v7 = [(CNPhotoPickerAnimojiProvider *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_avatarStore, store);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v8->identifier;
    v8->identifier = uUIDString;

    v12 = v8;
  }

  return v8;
}

- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getAVTAvatarStoreClass_softClass_16216;
  v14 = getAVTAvatarStoreClass_softClass_16216;
  if (!getAVTAvatarStoreClass_softClass_16216)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getAVTAvatarStoreClass_block_invoke_16217;
    v10[3] = &unk_1E74E7518;
    v10[4] = &v11;
    __getAVTAvatarStoreClass_block_invoke_16217(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [[v5 alloc] initWithDomainIdentifier:@"CNAvatarStoreDomainContacts"];
  v8 = [(CNPhotoPickerAnimojiProvider *)self initWithVisualIdentity:identityCopy avatarStore:v7];

  return v8;
}

+ (id)providerItemForAvatarRecord:(id)record imageProvider:(id)provider renderingQueue:(id)queue callbackQueue:(id)callbackQueue
{
  recordCopy = record;
  providerCopy = provider;
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v13 = getAVTRenderingScopeClass_softClass;
  v22 = getAVTRenderingScopeClass_softClass;
  if (!getAVTRenderingScopeClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getAVTRenderingScopeClass_block_invoke;
    v18[3] = &unk_1E74E7518;
    v18[4] = &v19;
    __getAVTRenderingScopeClass_block_invoke(v18);
    v13 = v20[3];
  }

  v14 = v13;
  _Block_object_dispose(&v19, 8);
  gridThumbnailScope = [v13 gridThumbnailScope];
  v16 = [[CNPhotoPickerAnimojiProviderItem alloc] initWithAvatarRecord:recordCopy imageProvider:providerCopy renderingScope:gridThumbnailScope renderingQueue:queueCopy callbackQueue:callbackQueueCopy];

  return v16;
}

+ (id)providerItemForAvatarRecord:(id)record
{
  recordCopy = record;
  v5 = objc_alloc_init(getAVTAvatarRecordImageProviderClass());
  v6 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v6 defaultSchedulerProvider];
  v8 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerAnimojiProvider.renderingQueue"];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
  v10 = [self providerItemForAvatarRecord:recordCopy imageProvider:v5 renderingQueue:v8 callbackQueue:mainThreadScheduler];

  return v10;
}

@end