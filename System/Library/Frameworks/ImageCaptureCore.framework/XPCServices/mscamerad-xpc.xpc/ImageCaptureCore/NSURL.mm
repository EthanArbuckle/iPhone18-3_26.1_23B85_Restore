@interface NSURL
- (NSString)baseName;
- (id)baseNameKey;
@end

@implementation NSURL

- (NSString)baseName
{
  path = [(NSURL *)self path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  lastPathComponent = [stringByDeletingPathExtension lastPathComponent];

  return lastPathComponent;
}

- (id)baseNameKey
{
  path = [(NSURL *)self path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  lastPathComponent = [stringByDeletingPathExtension lastPathComponent];

  if ([lastPathComponent length] >= 9)
  {
    if ([lastPathComponent hasPrefix:@"IMG_O"])
    {
      v5 = @"IMG_O";
LABEL_6:
      v6 = [lastPathComponent stringByReplacingOccurrencesOfString:v5 withString:@"IMG_"];
      goto LABEL_8;
    }

    if ([lastPathComponent hasPrefix:@"IMG_A"])
    {
      v5 = @"IMG_A";
      goto LABEL_6;
    }
  }

  v6 = lastPathComponent;
LABEL_8:
  v7 = v6;

  return v7;
}

@end