@interface NSNull
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
@end

@implementation NSNull

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  PathBoundingBox = CGPathGetPathBoundingBox(a3);

  sub_1003ACBB8(a4, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height);
}

@end