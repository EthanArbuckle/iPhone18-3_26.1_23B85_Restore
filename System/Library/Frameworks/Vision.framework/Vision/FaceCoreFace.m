@interface FaceCoreFace
- (void)dealloc;
@end

@implementation FaceCoreFace

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FaceCoreFace;
  [(FaceCoreFace *)&v2 dealloc];
}

@end