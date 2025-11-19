@interface AVTAvatarListRecordItem
- (AVTAvatarListRecordItem)initWithAvatar:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIImage)cachedImage;
- (unint64_t)hash;
- (void)downcastWithRecordHandler:(id)a3 imageHandler:(id)a4 viewHandler:(id)a5;
@end

@implementation AVTAvatarListRecordItem

- (AVTAvatarListRecordItem)initWithAvatar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarListRecordItem;
  v6 = [(AVTAvatarListRecordItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatar, a3);
  }

  return v7;
}

- (void)downcastWithRecordHandler:(id)a3 imageHandler:(id)a4 viewHandler:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, self);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
    }

    v5 = [v4 avatar];
    v6 = [(AVTAvatarListRecordItem *)self avatar];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(AVTAvatarListRecordItem *)self avatar];
  v3 = [v2 hash];

  return v3;
}

- (UIImage)cachedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedImage);

  return WeakRetained;
}

@end