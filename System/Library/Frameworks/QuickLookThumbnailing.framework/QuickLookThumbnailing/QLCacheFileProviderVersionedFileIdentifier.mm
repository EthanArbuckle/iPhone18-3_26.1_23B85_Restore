@interface QLCacheFileProviderVersionedFileIdentifier
- (QLCacheFileProviderVersionedFileIdentifier)initWithFileIdentifier:(id)identifier version:(id)version;
- (QLCacheFileProviderVersionedFileIdentifier)initWithThumbnailRequest:(id)request;
@end

@implementation QLCacheFileProviderVersionedFileIdentifier

- (QLCacheFileProviderVersionedFileIdentifier)initWithFileIdentifier:(id)identifier version:(id)version
{
  v5.receiver = self;
  v5.super_class = QLCacheFileProviderVersionedFileIdentifier;
  return [(QLCacheVersionedFileIdentifier *)&v5 initWithFileIdentifier:identifier version:version];
}

- (QLCacheFileProviderVersionedFileIdentifier)initWithThumbnailRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isFileBased])
  {
    selfCopy = 0;
  }

  else
  {
    fileProviderFileIdentifier = [requestCopy fileProviderFileIdentifier];
    fileIdentifier = [fileProviderFileIdentifier fileIdentifier];
    v8 = [QLThumbnailVersion alloc];
    item = [requestCopy item];
    v10 = [(QLThumbnailVersion *)v8 initWithFPItem:item automaticallyGenerated:1];
    self = [(QLCacheFileProviderVersionedFileIdentifier *)self initWithFileIdentifier:fileIdentifier version:v10];

    selfCopy = self;
  }

  return selfCopy;
}

@end