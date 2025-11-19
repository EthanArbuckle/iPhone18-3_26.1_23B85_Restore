@interface QLCacheBasicVersionedFileIdentifier
- (QLCacheBasicVersionedFileIdentifier)initWithFileIdentifier:(id)a3 version:(id)a4;
- (QLCacheBasicVersionedFileIdentifier)initWithThumbnailRequest:(id)a3;
@end

@implementation QLCacheBasicVersionedFileIdentifier

- (QLCacheBasicVersionedFileIdentifier)initWithFileIdentifier:(id)a3 version:(id)a4
{
  v5.receiver = self;
  v5.super_class = QLCacheBasicVersionedFileIdentifier;
  return [(QLCacheVersionedFileIdentifier *)&v5 initWithFileIdentifier:a3 version:a4];
}

- (QLCacheBasicVersionedFileIdentifier)initWithThumbnailRequest:(id)a3
{
  v4 = a3;
  if ([v4 isUbiquitous])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 basicFileIdentifier];
    v7 = [v6 fileIdentifier];
    v8 = [QLThumbnailVersion alloc];
    v9 = [v4 quicklookSandboxWrapper];
    v10 = [v9 url];
    v11 = [(QLThumbnailVersion *)v8 initWithFileURL:v10 automaticallyGenerated:1];
    self = [(QLCacheBasicVersionedFileIdentifier *)self initWithFileIdentifier:v7 version:v11];

    v5 = self;
  }

  return v5;
}

@end