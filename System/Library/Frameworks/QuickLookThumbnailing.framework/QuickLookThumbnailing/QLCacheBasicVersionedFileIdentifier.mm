@interface QLCacheBasicVersionedFileIdentifier
- (QLCacheBasicVersionedFileIdentifier)initWithFileIdentifier:(id)identifier version:(id)version;
- (QLCacheBasicVersionedFileIdentifier)initWithThumbnailRequest:(id)request;
@end

@implementation QLCacheBasicVersionedFileIdentifier

- (QLCacheBasicVersionedFileIdentifier)initWithFileIdentifier:(id)identifier version:(id)version
{
  v5.receiver = self;
  v5.super_class = QLCacheBasicVersionedFileIdentifier;
  return [(QLCacheVersionedFileIdentifier *)&v5 initWithFileIdentifier:identifier version:version];
}

- (QLCacheBasicVersionedFileIdentifier)initWithThumbnailRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isUbiquitous])
  {
    selfCopy = 0;
  }

  else
  {
    basicFileIdentifier = [requestCopy basicFileIdentifier];
    fileIdentifier = [basicFileIdentifier fileIdentifier];
    v8 = [QLThumbnailVersion alloc];
    quicklookSandboxWrapper = [requestCopy quicklookSandboxWrapper];
    v10 = [quicklookSandboxWrapper url];
    v11 = [(QLThumbnailVersion *)v8 initWithFileURL:v10 automaticallyGenerated:1];
    self = [(QLCacheBasicVersionedFileIdentifier *)self initWithFileIdentifier:fileIdentifier version:v11];

    selfCopy = self;
  }

  return selfCopy;
}

@end