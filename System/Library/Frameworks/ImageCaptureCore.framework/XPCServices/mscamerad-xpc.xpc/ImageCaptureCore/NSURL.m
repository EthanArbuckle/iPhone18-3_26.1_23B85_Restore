@interface NSURL
- (NSString)baseName;
- (id)baseNameKey;
@end

@implementation NSURL

- (NSString)baseName
{
  v2 = [(NSURL *)self path];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = [v3 lastPathComponent];

  return v4;
}

- (id)baseNameKey
{
  v2 = [(NSURL *)self path];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = [v3 lastPathComponent];

  if ([v4 length] >= 9)
  {
    if ([v4 hasPrefix:@"IMG_O"])
    {
      v5 = @"IMG_O";
LABEL_6:
      v6 = [v4 stringByReplacingOccurrencesOfString:v5 withString:@"IMG_"];
      goto LABEL_8;
    }

    if ([v4 hasPrefix:@"IMG_A"])
    {
      v5 = @"IMG_A";
      goto LABEL_6;
    }
  }

  v6 = v4;
LABEL_8:
  v7 = v6;

  return v7;
}

@end