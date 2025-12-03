@interface UGCPhotoFeedHeaderTitleModel
- (BOOL)isEqual:(id)equal;
@end

@implementation UGCPhotoFeedHeaderTitleModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    titleText = [v5 titleText];
    titleText2 = [(UGCPhotoFeedHeaderTitleModel *)self titleText];
    v8 = titleText;
    v9 = titleText2;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      showPunchoutSymbol = [v5 showPunchoutSymbol];
      v12 = showPunchoutSymbol ^ [(UGCPhotoFeedHeaderTitleModel *)self showPunchoutSymbol]^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end