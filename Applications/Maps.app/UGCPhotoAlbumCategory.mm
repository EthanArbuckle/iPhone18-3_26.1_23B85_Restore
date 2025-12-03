@interface UGCPhotoAlbumCategory
- (BOOL)isEqual:(id)equal;
- (UGCPhotoAlbumCategory)initWithTitle:(id)title categoryType:(unint64_t)type;
@end

@implementation UGCPhotoAlbumCategory

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    albumTitle = [v5 albumTitle];
    albumTitle2 = [(UGCPhotoAlbumCategory *)self albumTitle];
    v8 = albumTitle;
    v9 = albumTitle2;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      v12 = 0;
    }

    else
    {
      categoryType = [v5 categoryType];
      v12 = categoryType == [(UGCPhotoAlbumCategory *)self categoryType];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (UGCPhotoAlbumCategory)initWithTitle:(id)title categoryType:(unint64_t)type
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = UGCPhotoAlbumCategory;
  v8 = [(UGCPhotoAlbumCategory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_albumTitle, title);
    v9->_categoryType = type;
  }

  return v9;
}

@end