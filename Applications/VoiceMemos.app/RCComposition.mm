@interface RCComposition
- (BOOL)compositionIsShareable;
@end

@implementation RCComposition

- (BOOL)compositionIsShareable
{
  composedAVURL = [(RCComposition *)self composedAVURL];
  v3 = +[NSFileManager defaultManager];
  path = [composedAVURL path];
  v5 = [v3 fileExistsAtPath:path];

  return v5;
}

@end