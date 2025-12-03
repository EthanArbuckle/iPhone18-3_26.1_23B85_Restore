@interface CNSharingProfilePhotoPickerItem
- (id)compositeImageWithSize:(CGSize)size;
- (id)originalImageWithSize:(CGSize)size;
@end

@implementation CNSharingProfilePhotoPickerItem

- (id)compositeImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageProvider = [(CNSharingProfileAvatarItem *)self->_avatarItem imageProvider];
  v6 = imageProvider[2](width, height);

  return v6;
}

- (id)originalImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  originalImageProvider = [(CNSharingProfileAvatarItem *)self->_avatarItem originalImageProvider];

  if (originalImageProvider)
  {
    originalImageProvider2 = [(CNSharingProfileAvatarItem *)self->_avatarItem originalImageProvider];
    v8 = originalImageProvider2[2](width, height);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end