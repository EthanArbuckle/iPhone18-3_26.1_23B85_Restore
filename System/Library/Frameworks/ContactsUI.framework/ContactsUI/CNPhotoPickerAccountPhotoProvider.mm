@interface CNPhotoPickerAccountPhotoProvider
- (CNPhotoPickerAccountPhotoProvider)initWithVisualIdentity:(id)identity includeUnifiedContactImages:(BOOL)images;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
- (id)providerItemForVisualIdentity:(id)identity forSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
@end

@implementation CNPhotoPickerAccountPhotoProvider

- (id)providerItemForVisualIdentity:(id)identity forSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  lCopy = l;
  height = size.height;
  width = size.width;
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  delegateCopy = delegate;
  identityCopy = identity;
  contactImageType = [identityCopy contactImageType];
  if (contactImageType == 4)
  {
    v29 = [CNPhotoPickerEmojiProviderItem alloc];
    imageData = [identityCopy imageData];
    thumbnailImageData = [identityCopy thumbnailImageData];
    fullscreenImageData = [identityCopy fullscreenImageData];
    [identityCopy cropRect];
    v33 = [(CNPhotoPickerProviderItem *)v29 initWithImageData:imageData thumbnailImageData:thumbnailImageData fullscreenImageData:fullscreenImageData cropRect:?];
  }

  else
  {
    if (contactImageType == 3)
    {
      v28 = CNPhotoPickerAnimojiProviderItem;
    }

    else
    {
      if (contactImageType == 2)
      {
        v37 = +[CNAvatarImageRendererSettings defaultSettings];
        v21 = [[CNAvatarImageRenderer alloc] initWithSettings:v37];
        scale = [CNAvatarImageRenderingScope scopeWithPointSize:lCopy scale:0 rightToLeft:0 style:width color:height, scale];
        v23 = [CNPhotoPickerMonogramProviderItem alloc];
        imageData2 = [identityCopy imageData];
        thumbnailImageData2 = [identityCopy thumbnailImageData];
        fullscreenImageData2 = [identityCopy fullscreenImageData];
        v27 = [(CNPhotoPickerProviderItem *)v23 initWithImageData:imageData2 thumbnailImageData:thumbnailImageData2 fullscreenImageData:fullscreenImageData2 imageFilterName:0 cropRect:queueCopy renderingQueue:callbackQueueCopy callbackQueue:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

        [(CNPhotoPickerMonogramProviderItem *)v27 setHasUnknownColor:1];
        [(CNPhotoPickerMonogramProviderItem *)v27 setAvatarRenderer:v21];
        [(CNPhotoPickerMonogramProviderItem *)v27 setRenderingScope:scale];
        [(CNPhotoPickerMonogramProviderItem *)v27 setIsContactImage:1];
        [(CNPhotoPickerMonogramProviderItem *)v27 setVisualIdentity:identityCopy];

        goto LABEL_10;
      }

      v28 = CNPhotoPickerProviderItem;
    }

    v34 = [v28 alloc];
    imageData = [identityCopy imageData];
    thumbnailImageData = [identityCopy thumbnailImageData];
    fullscreenImageData = [identityCopy fullscreenImageData];
    [identityCopy cropRect];
    v33 = [v34 initWithImageData:imageData thumbnailImageData:thumbnailImageData fullscreenImageData:fullscreenImageData imageFilterName:0 cropRect:queueCopy renderingQueue:callbackQueueCopy callbackQueue:?];
  }

  v27 = v33;

  [(CNPhotoPickerProviderItem *)v27 setDelegate:delegateCopy];
LABEL_10:
  imageAllowsEditing = [identityCopy imageAllowsEditing];

  if ((imageAllowsEditing & 1) == 0)
  {
    [(CNPhotoPickerProviderItem *)v27 setAllowsEditing:0];
  }

  return v27;
}

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v42[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  delegateCopy = delegate;
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerAccountPhotoProvider *)self includeUnifiedContactImages])
  {
    visualIdentity = [(CNPhotoPickerAccountPhotoProvider *)self visualIdentity];
    if ([visualIdentity hasLinkedContacts])
    {
      visualIdentity2 = [(CNPhotoPickerAccountPhotoProvider *)self visualIdentity];
      linkedContacts = [visualIdentity2 linkedContacts];
    }

    else
    {
      linkedContacts = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    linkedContacts = MEMORY[0x1E695E0F0];
  }

  v34 = linkedContacts;
  v20 = [linkedContacts _cn_map:&__block_literal_global_37154];
  visualIdentity3 = [(CNPhotoPickerAccountPhotoProvider *)self visualIdentity];
  v42[0] = visualIdentity3;
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
        imageData = [v29 imageData];

        if (imageData)
        {
          scale = [(CNPhotoPickerAccountPhotoProvider *)self providerItemForVisualIdentity:v29 forSize:lCopy scale:queueCopy RTL:callbackQueueCopy renderingQueue:delegateCopy callbackQueue:width itemDelegate:height, scale];
          [array addObject:scale];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v26);
  }

  return array;
}

CNVisualIdentity *__106__CNPhotoPickerAccountPhotoProvider_loadItemsForSize_scale_RTL_renderingQueue_callbackQueue_itemDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNVisualIdentity alloc] initWithContact:v2];

  return v3;
}

- (CNPhotoPickerAccountPhotoProvider)initWithVisualIdentity:(id)identity includeUnifiedContactImages:(BOOL)images
{
  identityCopy = identity;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerAccountPhotoProvider;
  v8 = [(CNPhotoPickerAccountPhotoProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualIdentity, identity);
    v9->_includeUnifiedContactImages = images;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v9->identifier;
    v9->identifier = uUIDString;

    v13 = v9;
  }

  return v9;
}

@end