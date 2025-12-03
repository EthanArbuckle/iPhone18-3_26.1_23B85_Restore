@interface SKSceneUnarchiveDummy
- (SKSceneUnarchiveDummy)initWithCoder:(id)coder;
@end

@implementation SKSceneUnarchiveDummy

- (SKSceneUnarchiveDummy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SKSceneUnarchiveDummy;
  return [(SKSceneUnarchiveDummy *)&v4 init];
}

@end