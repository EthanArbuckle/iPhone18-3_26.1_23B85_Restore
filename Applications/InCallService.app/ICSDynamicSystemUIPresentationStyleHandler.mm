@interface ICSDynamicSystemUIPresentationStyleHandler
- (void)handlePresentationModeChanged:(int64_t)changed scene:(id)scene;
@end

@implementation ICSDynamicSystemUIPresentationStyleHandler

- (void)handlePresentationModeChanged:(int64_t)changed scene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  sub_1001F2AC0(changed, sceneCopy);
}

@end