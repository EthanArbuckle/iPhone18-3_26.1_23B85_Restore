@interface FPItemOperationLocator
- (BOOL)isDownloaded;
- (BOOL)isFolder;
- (BOOL)requiresCrossDeviceCopy;
- (id)description;
- (id)filename;
- (id)identifier;
- (id)parentIdentifier;
- (unint64_t)size;
@end

@implementation FPItemOperationLocator

- (id)description
{
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  v3 = [asFPItem description];

  return v3;
}

- (id)identifier
{
  v3 = [_FPLocationAgnosticID alloc];
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  v5 = [(_FPLocationAgnosticID *)v3 initWithItem:asFPItem];

  return v5;
}

- (id)parentIdentifier
{
  v3 = [_FPLocationAgnosticID alloc];
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  parentItemID = [asFPItem parentItemID];
  v6 = [(_FPLocationAgnosticID *)v3 initWithItemID:parentItemID];

  return v6;
}

- (id)filename
{
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  filename = [asFPItem filename];

  return filename;
}

- (unint64_t)size
{
  if ([(FPItemOperationLocator *)self isFolder])
  {
    return 0;
  }

  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  documentSize = [asFPItem documentSize];
  unsignedIntegerValue = [documentSize unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isDownloaded
{
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  isDownloaded = [asFPItem isDownloaded];

  return isDownloaded;
}

- (BOOL)isFolder
{
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  isFolder = [asFPItem isFolder];

  return isFolder;
}

- (BOOL)requiresCrossDeviceCopy
{
  asFPItem = [(FPActionOperationLocator *)self asFPItem];
  providerID = [asFPItem providerID];

  if ([providerID isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [providerID isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];
  }

  return v4;
}

@end