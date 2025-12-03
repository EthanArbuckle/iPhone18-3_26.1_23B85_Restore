@interface DEDAttachmentItem
- (BOOL)pointsToReachableDir;
@end

@implementation DEDAttachmentItem

- (BOOL)pointsToReachableDir
{
  attachedPath = [(DEDAttachmentItem *)self attachedPath];
  v8 = 0;
  v4 = [attachedPath getResourceValue:&v8 forKey:NSURLIsDirectoryKey error:0];
  v5 = v8;

  if (v4 && [v5 BOOLValue])
  {
    isLocal = [(DEDAttachmentItem *)self isLocal];
  }

  else
  {
    isLocal = 0;
  }

  return isLocal;
}

@end