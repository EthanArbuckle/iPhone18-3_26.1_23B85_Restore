@interface UGCPhotoFeedHeaderTitleModel
- (BOOL)isEqual:(id)a3;
@end

@implementation UGCPhotoFeedHeaderTitleModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 titleText];
    v7 = [(UGCPhotoFeedHeaderTitleModel *)self titleText];
    v8 = v6;
    v9 = v7;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v11 = [v5 showPunchoutSymbol];
      v12 = v11 ^ [(UGCPhotoFeedHeaderTitleModel *)self showPunchoutSymbol]^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end