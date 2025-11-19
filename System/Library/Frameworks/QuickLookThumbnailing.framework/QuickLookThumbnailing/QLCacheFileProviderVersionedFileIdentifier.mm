@interface QLCacheFileProviderVersionedFileIdentifier
- (QLCacheFileProviderVersionedFileIdentifier)initWithFileIdentifier:(id)a3 version:(id)a4;
- (QLCacheFileProviderVersionedFileIdentifier)initWithThumbnailRequest:(id)a3;
@end

@implementation QLCacheFileProviderVersionedFileIdentifier

- (QLCacheFileProviderVersionedFileIdentifier)initWithFileIdentifier:(id)a3 version:(id)a4
{
  v5.receiver = self;
  v5.super_class = QLCacheFileProviderVersionedFileIdentifier;
  return [(QLCacheVersionedFileIdentifier *)&v5 initWithFileIdentifier:a3 version:a4];
}

- (QLCacheFileProviderVersionedFileIdentifier)initWithThumbnailRequest:(id)a3
{
  v4 = a3;
  if ([v4 isFileBased])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 fileProviderFileIdentifier];
    v7 = [v6 fileIdentifier];
    v8 = [QLThumbnailVersion alloc];
    v9 = [v4 item];
    v10 = [(QLThumbnailVersion *)v8 initWithFPItem:v9 automaticallyGenerated:1];
    self = [(QLCacheFileProviderVersionedFileIdentifier *)self initWithFileIdentifier:v7 version:v10];

    v5 = self;
  }

  return v5;
}

@end