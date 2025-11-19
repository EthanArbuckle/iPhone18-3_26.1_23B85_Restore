@interface CNSharingProfileAvatarItem
- (CNSharingProfileAvatarItem)initWithImageProvider:(id)a3 originalImageProvider:(id)a4 type:(int64_t)a5;
@end

@implementation CNSharingProfileAvatarItem

- (CNSharingProfileAvatarItem)initWithImageProvider:(id)a3 originalImageProvider:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CNSharingProfileAvatarItem;
  v10 = [(CNSharingProfileAvatarItem *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    imageProvider = v10->_imageProvider;
    v10->_imageProvider = v11;

    v13 = [v9 copy];
    originalImageProvider = v10->_originalImageProvider;
    v10->_originalImageProvider = v13;

    v10->_type = a5;
    v15 = v10;
  }

  return v10;
}

@end