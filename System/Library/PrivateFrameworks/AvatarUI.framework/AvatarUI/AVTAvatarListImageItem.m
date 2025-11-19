@interface AVTAvatarListImageItem
- (AVTAvatarListImageItem)initWithImage:(id)a3 title:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)downcastWithRecordHandler:(id)a3 imageHandler:(id)a4 viewHandler:(id)a5;
@end

@implementation AVTAvatarListImageItem

- (AVTAvatarListImageItem)initWithImage:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTAvatarListImageItem;
  v9 = [(AVTAvatarListImageItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_image, a3);
    objc_storeStrong(&v10->_title, a4);
  }

  return v10;
}

- (void)downcastWithRecordHandler:(id)a3 imageHandler:(id)a4 viewHandler:(id)a5
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v5}];
    }

    v6 = v5;
    v7 = [v6 image];
    if (v7 || ([(AVTAvatarListImageItem *)self image], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v6 image];
      v9 = [(AVTAvatarListImageItem *)self image];
      v10 = [v8 isEqual:v9];

      if (v7)
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
    v11 = [v6 title];
    if (v11 || ([(AVTAvatarListImageItem *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v6 title];
      v13 = [(AVTAvatarListImageItem *)self title];
      v14 = [v12 isEqual:v13];

      if (v11)
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
  v3 = [(AVTAvatarListImageItem *)self image];
  v4 = [v3 hash];
  v5 = [(AVTAvatarListImageItem *)self image];
  *(&v6 + 1) = v4;
  *&v6 = [v5 hash];
  v7 = [(AVTAvatarListImageItem *)self title];
  v8 = [v7 hash];

  return v8 ^ (v6 >> 32);
}

@end