@interface FMDRemoteAssetMIMETypeProvider
- (id)mimeTypeForFileExtension:(id)a3;
@end

@implementation FMDRemoteAssetMIMETypeProvider

- (id)mimeTypeForFileExtension:(id)a3
{
  v3 = [UTType typeWithFilenameExtension:a3];
  v4 = [v3 preferredMIMEType];

  return v4;
}

@end