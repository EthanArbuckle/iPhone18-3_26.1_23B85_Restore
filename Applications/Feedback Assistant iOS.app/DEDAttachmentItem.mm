@interface DEDAttachmentItem
- (BOOL)pointsToReachableDir;
@end

@implementation DEDAttachmentItem

- (BOOL)pointsToReachableDir
{
  v3 = [(DEDAttachmentItem *)self attachedPath];
  v8 = 0;
  v4 = [v3 getResourceValue:&v8 forKey:NSURLIsDirectoryKey error:0];
  v5 = v8;

  if (v4 && [v5 BOOLValue])
  {
    v6 = [(DEDAttachmentItem *)self isLocal];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end