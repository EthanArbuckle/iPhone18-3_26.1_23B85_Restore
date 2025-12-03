@interface ChannelLinkActionImplementation
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation ChannelLinkActionImplementation

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_87770();
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_CACC(0, &qword_19E038);
  v6 = sub_13BB04();
  controllerCopy = controller;
  selfCopy = self;
  sub_87A30(controllerCopy, v6);
}

@end