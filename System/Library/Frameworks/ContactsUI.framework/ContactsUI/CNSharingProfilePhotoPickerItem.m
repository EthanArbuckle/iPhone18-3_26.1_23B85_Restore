@interface CNSharingProfilePhotoPickerItem
- (id)compositeImageWithSize:(CGSize)a3;
- (id)originalImageWithSize:(CGSize)a3;
@end

@implementation CNSharingProfilePhotoPickerItem

- (id)compositeImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNSharingProfileAvatarItem *)self->_avatarItem imageProvider];
  v6 = v5[2](width, height);

  return v6;
}

- (id)originalImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CNSharingProfileAvatarItem *)self->_avatarItem originalImageProvider];

  if (v6)
  {
    v7 = [(CNSharingProfileAvatarItem *)self->_avatarItem originalImageProvider];
    v8 = v7[2](width, height);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end