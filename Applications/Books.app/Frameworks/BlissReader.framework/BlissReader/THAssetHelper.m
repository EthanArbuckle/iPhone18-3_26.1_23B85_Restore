@interface THAssetHelper
- (AEAsset)asset;
- (THAssetHelper)initWithBookDescription:(id)a3 bookCoverDescription:(id)a4;
- (id)coverArtForSize:(CGSize)a3 source:(int)a4 options:(int)a5;
- (void)dealloc;
@end

@implementation THAssetHelper

- (THAssetHelper)initWithBookDescription:(id)a3 bookCoverDescription:(id)a4
{
  v8.receiver = self;
  v8.super_class = THAssetHelper;
  v6 = [(THAssetHelper *)&v8 init];
  if (v6)
  {
    v6->mBookDescription = a3;
    v6->mBookCoverDescription = a4;
  }

  return v6;
}

- (void)dealloc
{
  self->mBookDescription = 0;

  self->mBookCoverDescription = 0;
  v3.receiver = self;
  v3.super_class = THAssetHelper;
  [(THAssetHelper *)&v3 dealloc];
}

- (AEAsset)asset
{
  result = self->mBookDescription;
  if (result)
  {
    return [(AEAsset *)result asset];
  }

  return result;
}

- (id)coverArtForSize:(CGSize)a3 source:(int)a4 options:(int)a5
{
  result = self->mBookCoverDescription;
  if (result)
  {
    v7 = [result embeddedArtURL];
    result = +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", [v7 path]);
    if (!result)
    {
      result = [(THBookCoverDescription *)self->mBookCoverDescription drmContext];
      if (result)
      {
        result = -[PFDContext dataWithContentsOfFile:error:](-[THBookCoverDescription drmContext](self->mBookCoverDescription, "drmContext"), "dataWithContentsOfFile:error:", [v7 path], 0);
        if (result)
        {

          return [UIImage imageWithData:result];
        }
      }
    }
  }

  return result;
}

@end