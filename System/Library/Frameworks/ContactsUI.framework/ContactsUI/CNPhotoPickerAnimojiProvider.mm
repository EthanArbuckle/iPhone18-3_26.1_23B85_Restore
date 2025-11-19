@interface CNPhotoPickerAnimojiProvider
+ (id)providerItemForAvatarRecord:(id)a3;
+ (id)providerItemForAvatarRecord:(id)a3 imageProvider:(id)a4 renderingQueue:(id)a5 callbackQueue:(id)a6;
- (BOOL)canCreateMemoji;
- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)a3;
- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)a3 avatarStore:(id)a4;
- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8;
@end

@implementation CNPhotoPickerAnimojiProvider

- (BOOL)canCreateMemoji
{
  v2 = [(CNPhotoPickerAnimojiProvider *)self avatarStore];
  v3 = [v2 canCreateAvatar];

  return v3;
}

- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = a6;
  v11 = a7;
  v12 = a8;
  v13 = [getAVTAvatarFetchRequestClass() requestForPredefinedAvatars];
  v14 = [(CNPhotoPickerAnimojiProvider *)self avatarStore];
  v40 = 0;
  v15 = [v14 avatarsForFetchRequest:v13 error:&v40];
  v16 = v40;

  v33 = v13;
  if (+[CNPhotoPickerCapabilities allowsAvatarStoreAccess])
  {
    v17 = [getAVTAvatarFetchRequestClass() requestForCustomAvatars];
    v18 = [(CNPhotoPickerAnimojiProvider *)self avatarStore];
    v39 = v16;
    v19 = [v18 avatarsForFetchRequest:v17 error:&v39];
    v20 = v39;

    v21 = [v19 _cn_reversed];

    v22 = [v21 arrayByAddingObjectsFromArray:v15];

    v15 = v22;
    v32 = v20;
  }

  else
  {
    v32 = v16;
  }

  v23 = [MEMORY[0x1E695DF70] array];
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

        v30 = [objc_opt_class() providerItemForAvatarRecord:*(*(&v35 + 1) + 8 * i) imageProvider:v24 renderingQueue:v34 callbackQueue:v11];
        [v30 setDelegate:v12];
        [v23 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v27);
  }

  return v23;
}

- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)a3 avatarStore:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CNPhotoPickerAnimojiProvider;
  v7 = [(CNPhotoPickerAnimojiProvider *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_avatarStore, a4);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    identifier = v8->identifier;
    v8->identifier = v10;

    v12 = v8;
  }

  return v8;
}

- (CNPhotoPickerAnimojiProvider)initWithVisualIdentity:(id)a3
{
  v4 = a3;
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
  v8 = [(CNPhotoPickerAnimojiProvider *)self initWithVisualIdentity:v4 avatarStore:v7];

  return v8;
}

+ (id)providerItemForAvatarRecord:(id)a3 imageProvider:(id)a4 renderingQueue:(id)a5 callbackQueue:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
  v15 = [v13 gridThumbnailScope];
  v16 = [[CNPhotoPickerAnimojiProviderItem alloc] initWithAvatarRecord:v9 imageProvider:v10 renderingScope:v15 renderingQueue:v11 callbackQueue:v12];

  return v16;
}

+ (id)providerItemForAvatarRecord:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(getAVTAvatarRecordImageProviderClass());
  v6 = +[CNUIContactsEnvironment currentEnvironment];
  v7 = [v6 defaultSchedulerProvider];
  v8 = [v7 newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerAnimojiProvider.renderingQueue"];
  v9 = [v7 mainThreadScheduler];
  v10 = [a1 providerItemForAvatarRecord:v4 imageProvider:v5 renderingQueue:v8 callbackQueue:v9];

  return v10;
}

@end