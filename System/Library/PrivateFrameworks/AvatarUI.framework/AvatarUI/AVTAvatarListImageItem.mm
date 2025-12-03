@interface AVTAvatarListImageItem
- (AVTAvatarListImageItem)initWithImage:(id)image title:(id)title;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)downcastWithRecordHandler:(id)handler imageHandler:(id)imageHandler viewHandler:(id)viewHandler;
@end

@implementation AVTAvatarListImageItem

- (AVTAvatarListImageItem)initWithImage:(id)image title:(id)title
{
  imageCopy = image;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = AVTAvatarListImageItem;
  v9 = [(AVTAvatarListImageItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(&v10->_title, title);
  }

  return v10;
}

- (void)downcastWithRecordHandler:(id)handler imageHandler:(id)imageHandler viewHandler:(id)viewHandler
{
  if (imageHandler)
  {
    (*(imageHandler + 2))(imageHandler, self);
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

    v6 = equalCopy;
    image = [v6 image];
    if (image || ([(AVTAvatarListImageItem *)self image], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      image2 = [v6 image];
      image3 = [(AVTAvatarListImageItem *)self image];
      v10 = [image2 isEqual:image3];

      if (image)
      {

        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_8;
        }
      }

      v14 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_8:
    title = [v6 title];
    if (title || ([(AVTAvatarListImageItem *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      title2 = [v6 title];
      title3 = [(AVTAvatarListImageItem *)self title];
      v14 = [title2 isEqual:title3];

      if (title)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_17;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  image = [(AVTAvatarListImageItem *)self image];
  v4 = [image hash];
  image2 = [(AVTAvatarListImageItem *)self image];
  *(&v6 + 1) = v4;
  *&v6 = [image2 hash];
  title = [(AVTAvatarListImageItem *)self title];
  v8 = [title hash];

  return v8 ^ (v6 >> 32);
}

@end