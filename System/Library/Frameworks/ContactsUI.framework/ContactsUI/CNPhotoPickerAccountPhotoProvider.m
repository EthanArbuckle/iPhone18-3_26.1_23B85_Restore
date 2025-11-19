@interface CNPhotoPickerAccountPhotoProvider
- (CNPhotoPickerAccountPhotoProvider)initWithVisualIdentity:(id)a3 includeUnifiedContactImages:(BOOL)a4;
- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8;
- (id)providerItemForVisualIdentity:(id)a3 forSize:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 renderingQueue:(id)a7 callbackQueue:(id)a8 itemDelegate:(id)a9;
@end

@implementation CNPhotoPickerAccountPhotoProvider

- (id)providerItemForVisualIdentity:(id)a3 forSize:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 renderingQueue:(id)a7 callbackQueue:(id)a8 itemDelegate:(id)a9
{
  v11 = a6;
  height = a4.height;
  width = a4.width;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a3;
  v20 = [v19 contactImageType];
  if (v20 == 4)
  {
    v29 = [CNPhotoPickerEmojiProviderItem alloc];
    v30 = [v19 imageData];
    v31 = [v19 thumbnailImageData];
    v32 = [v19 fullscreenImageData];
    [v19 cropRect];
    v33 = [(CNPhotoPickerProviderItem *)v29 initWithImageData:v30 thumbnailImageData:v31 fullscreenImageData:v32 cropRect:?];
  }

  else
  {
    if (v20 == 3)
    {
      v28 = CNPhotoPickerAnimojiProviderItem;
    }

    else
    {
      if (v20 == 2)
      {
        v37 = +[CNAvatarImageRendererSettings defaultSettings];
        v21 = [[CNAvatarImageRenderer alloc] initWithSettings:v37];
        v22 = [CNAvatarImageRenderingScope scopeWithPointSize:v11 scale:0 rightToLeft:0 style:width color:height, a5];
        v23 = [CNPhotoPickerMonogramProviderItem alloc];
        v24 = [v19 imageData];
        v25 = [v19 thumbnailImageData];
        v26 = [v19 fullscreenImageData];
        v27 = [(CNPhotoPickerProviderItem *)v23 initWithImageData:v24 thumbnailImageData:v25 fullscreenImageData:v26 imageFilterName:0 cropRect:v16 renderingQueue:v17 callbackQueue:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

        [(CNPhotoPickerMonogramProviderItem *)v27 setHasUnknownColor:1];
        [(CNPhotoPickerMonogramProviderItem *)v27 setAvatarRenderer:v21];
        [(CNPhotoPickerMonogramProviderItem *)v27 setRenderingScope:v22];
        [(CNPhotoPickerMonogramProviderItem *)v27 setIsContactImage:1];
        [(CNPhotoPickerMonogramProviderItem *)v27 setVisualIdentity:v19];

        goto LABEL_10;
      }

      v28 = CNPhotoPickerProviderItem;
    }

    v34 = [v28 alloc];
    v30 = [v19 imageData];
    v31 = [v19 thumbnailImageData];
    v32 = [v19 fullscreenImageData];
    [v19 cropRect];
    v33 = [v34 initWithImageData:v30 thumbnailImageData:v31 fullscreenImageData:v32 imageFilterName:0 cropRect:v16 renderingQueue:v17 callbackQueue:?];
  }

  v27 = v33;

  [(CNPhotoPickerProviderItem *)v27 setDelegate:v18];
LABEL_10:
  v35 = [v19 imageAllowsEditing];

  if ((v35 & 1) == 0)
  {
    [(CNPhotoPickerProviderItem *)v27 setAllowsEditing:0];
  }

  return v27;
}

- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8
{
  v10 = a5;
  height = a3.height;
  width = a3.width;
  v42[1] = *MEMORY[0x1E69E9840];
  v36 = a6;
  v15 = a7;
  v16 = a8;
  v35 = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerAccountPhotoProvider *)self includeUnifiedContactImages])
  {
    v17 = [(CNPhotoPickerAccountPhotoProvider *)self visualIdentity];
    if ([v17 hasLinkedContacts])
    {
      v18 = [(CNPhotoPickerAccountPhotoProvider *)self visualIdentity];
      v19 = [v18 linkedContacts];
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v34 = v19;
  v20 = [v19 _cn_map:&__block_literal_global_37154];
  v21 = [(CNPhotoPickerAccountPhotoProvider *)self visualIdentity];
  v42[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v33 = v20;
  v23 = [v22 arrayByAddingObjectsFromArray:v20];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        v30 = [v29 imageData];

        if (v30)
        {
          v31 = [(CNPhotoPickerAccountPhotoProvider *)self providerItemForVisualIdentity:v29 forSize:v10 scale:v36 RTL:v15 renderingQueue:v16 callbackQueue:width itemDelegate:height, a4];
          [v35 addObject:v31];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v26);
  }

  return v35;
}

CNVisualIdentity *__106__CNPhotoPickerAccountPhotoProvider_loadItemsForSize_scale_RTL_renderingQueue_callbackQueue_itemDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNVisualIdentity alloc] initWithContact:v2];

  return v3;
}

- (CNPhotoPickerAccountPhotoProvider)initWithVisualIdentity:(id)a3 includeUnifiedContactImages:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerAccountPhotoProvider;
  v8 = [(CNPhotoPickerAccountPhotoProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualIdentity, a3);
    v9->_includeUnifiedContactImages = a4;
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    identifier = v9->identifier;
    v9->identifier = v11;

    v13 = v9;
  }

  return v9;
}

@end