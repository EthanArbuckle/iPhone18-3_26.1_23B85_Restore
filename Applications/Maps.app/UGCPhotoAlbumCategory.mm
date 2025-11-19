@interface UGCPhotoAlbumCategory
- (BOOL)isEqual:(id)a3;
- (UGCPhotoAlbumCategory)initWithTitle:(id)a3 categoryType:(unint64_t)a4;
@end

@implementation UGCPhotoAlbumCategory

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 albumTitle];
    v7 = [(UGCPhotoAlbumCategory *)self albumTitle];
    v8 = v6;
    v9 = v7;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      v12 = 0;
    }

    else
    {
      v11 = [v5 categoryType];
      v12 = v11 == [(UGCPhotoAlbumCategory *)self categoryType];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (UGCPhotoAlbumCategory)initWithTitle:(id)a3 categoryType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UGCPhotoAlbumCategory;
  v8 = [(UGCPhotoAlbumCategory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_albumTitle, a3);
    v9->_categoryType = a4;
  }

  return v9;
}

@end