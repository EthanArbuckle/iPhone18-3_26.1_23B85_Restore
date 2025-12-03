@interface THAssetHelper
- (AEAsset)asset;
- (THAssetHelper)initWithBookDescription:(id)description bookCoverDescription:(id)coverDescription;
- (id)coverArtForSize:(CGSize)size source:(int)source options:(int)options;
- (void)dealloc;
@end

@implementation THAssetHelper

- (THAssetHelper)initWithBookDescription:(id)description bookCoverDescription:(id)coverDescription
{
  v8.receiver = self;
  v8.super_class = THAssetHelper;
  v6 = [(THAssetHelper *)&v8 init];
  if (v6)
  {
    v6->mBookDescription = description;
    v6->mBookCoverDescription = coverDescription;
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

- (id)coverArtForSize:(CGSize)size source:(int)source options:(int)options
{
  result = self->mBookCoverDescription;
  if (result)
  {
    embeddedArtURL = [result embeddedArtURL];
    result = +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", [embeddedArtURL path]);
    if (!result)
    {
      result = [(THBookCoverDescription *)self->mBookCoverDescription drmContext];
      if (result)
      {
        result = -[PFDContext dataWithContentsOfFile:error:](-[THBookCoverDescription drmContext](self->mBookCoverDescription, "drmContext"), "dataWithContentsOfFile:error:", [embeddedArtURL path], 0);
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