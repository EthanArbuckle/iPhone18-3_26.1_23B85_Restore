@interface RCComposition
- (BOOL)compositionIsShareable;
@end

@implementation RCComposition

- (BOOL)compositionIsShareable
{
  v2 = [(RCComposition *)self composedAVURL];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

@end