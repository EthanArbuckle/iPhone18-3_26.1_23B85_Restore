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
  v2 = [(FPActionOperationLocator *)self asFPItem];
  v3 = [v2 description];

  return v3;
}

- (id)identifier
{
  v3 = [_FPLocationAgnosticID alloc];
  v4 = [(FPActionOperationLocator *)self asFPItem];
  v5 = [(_FPLocationAgnosticID *)v3 initWithItem:v4];

  return v5;
}

- (id)parentIdentifier
{
  v3 = [_FPLocationAgnosticID alloc];
  v4 = [(FPActionOperationLocator *)self asFPItem];
  v5 = [v4 parentItemID];
  v6 = [(_FPLocationAgnosticID *)v3 initWithItemID:v5];

  return v6;
}

- (id)filename
{
  v2 = [(FPActionOperationLocator *)self asFPItem];
  v3 = [v2 filename];

  return v3;
}

- (unint64_t)size
{
  if ([(FPItemOperationLocator *)self isFolder])
  {
    return 0;
  }

  v4 = [(FPActionOperationLocator *)self asFPItem];
  v5 = [v4 documentSize];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (BOOL)isDownloaded
{
  v2 = [(FPActionOperationLocator *)self asFPItem];
  v3 = [v2 isDownloaded];

  return v3;
}

- (BOOL)isFolder
{
  v2 = [(FPActionOperationLocator *)self asFPItem];
  v3 = [v2 isFolder];

  return v3;
}

- (BOOL)requiresCrossDeviceCopy
{
  v2 = [(FPActionOperationLocator *)self asFPItem];
  v3 = [v2 providerID];

  if ([v3 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];
  }

  return v4;
}

@end