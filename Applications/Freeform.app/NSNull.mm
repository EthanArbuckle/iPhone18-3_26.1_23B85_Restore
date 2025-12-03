@interface NSNull
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
@end

@implementation NSNull

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  PathBoundingBox = CGPathGetPathBoundingBox(path);

  sub_1003ACBB8(context, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height);
}

@end