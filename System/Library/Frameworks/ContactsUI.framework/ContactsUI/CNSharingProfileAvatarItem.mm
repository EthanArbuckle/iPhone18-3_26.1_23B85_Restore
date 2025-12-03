@interface CNSharingProfileAvatarItem
- (CNSharingProfileAvatarItem)initWithImageProvider:(id)provider originalImageProvider:(id)imageProvider type:(int64_t)type;
@end

@implementation CNSharingProfileAvatarItem

- (CNSharingProfileAvatarItem)initWithImageProvider:(id)provider originalImageProvider:(id)imageProvider type:(int64_t)type
{
  providerCopy = provider;
  imageProviderCopy = imageProvider;
  v17.receiver = self;
  v17.super_class = CNSharingProfileAvatarItem;
  v10 = [(CNSharingProfileAvatarItem *)&v17 init];
  if (v10)
  {
    v11 = [providerCopy copy];
    imageProvider = v10->_imageProvider;
    v10->_imageProvider = v11;

    v13 = [imageProviderCopy copy];
    originalImageProvider = v10->_originalImageProvider;
    v10->_originalImageProvider = v13;

    v10->_type = type;
    v15 = v10;
  }

  return v10;
}

@end