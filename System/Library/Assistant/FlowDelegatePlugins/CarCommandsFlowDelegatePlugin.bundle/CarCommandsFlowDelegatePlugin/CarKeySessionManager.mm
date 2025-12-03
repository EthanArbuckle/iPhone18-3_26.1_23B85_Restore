@interface CarKeySessionManager
- (void)sesSession:(id)session event:(id)event;
@end

@implementation CarKeySessionManager

- (void)sesSession:(id)session event:(id)event
{
  v6 = sub_16A5B4();
  sessionCopy = session;
  selfCopy = self;
  sub_B46D8(selfCopy, v6);
}

@end