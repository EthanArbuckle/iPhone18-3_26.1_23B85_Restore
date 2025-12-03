@interface FMDRemoteAssetMIMETypeProvider
- (id)mimeTypeForFileExtension:(id)extension;
@end

@implementation FMDRemoteAssetMIMETypeProvider

- (id)mimeTypeForFileExtension:(id)extension
{
  v3 = [UTType typeWithFilenameExtension:extension];
  preferredMIMEType = [v3 preferredMIMEType];

  return preferredMIMEType;
}

@end