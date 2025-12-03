@interface AVTAvatarListRecordItem
- (AVTAvatarListRecordItem)initWithAvatar:(id)avatar;
- (BOOL)isEqual:(id)equal;
- (UIImage)cachedImage;
- (unint64_t)hash;
- (void)downcastWithRecordHandler:(id)handler imageHandler:(id)imageHandler viewHandler:(id)viewHandler;
@end

@implementation AVTAvatarListRecordItem

- (AVTAvatarListRecordItem)initWithAvatar:(id)avatar
{
  avatarCopy = avatar;
  v9.receiver = self;
  v9.super_class = AVTAvatarListRecordItem;
  v6 = [(AVTAvatarListRecordItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatar, avatar);
  }

  return v7;
}

- (void)downcastWithRecordHandler:(id)handler imageHandler:(id)imageHandler viewHandler:(id)viewHandler
{
  if (handler)
  {
    (*(handler + 2))(handler, self);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", equalCopy}];
    }

    avatar = [equalCopy avatar];
    avatar2 = [(AVTAvatarListRecordItem *)self avatar];
    v7 = [avatar isEqual:avatar2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  avatar = [(AVTAvatarListRecordItem *)self avatar];
  v3 = [avatar hash];

  return v3;
}

- (UIImage)cachedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedImage);

  return WeakRetained;
}

@end