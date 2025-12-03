@interface UIApplication
+ (void)setSharedPlaybackController:(id)controller;
@end

@implementation UIApplication

+ (void)setSharedPlaybackController:(id)controller
{
  v4 = qword_100593578;
  qword_100593578 = controller;
  controllerCopy = controller;
}

@end