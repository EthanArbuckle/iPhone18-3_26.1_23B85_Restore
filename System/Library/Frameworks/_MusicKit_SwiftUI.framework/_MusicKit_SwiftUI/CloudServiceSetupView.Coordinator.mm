@interface CloudServiceSetupView.Coordinator
- (void)musicKit_cloudServiceSetupViewControllerDidDismiss:(id)dismiss;
@end

@implementation CloudServiceSetupView.Coordinator

- (void)musicKit_cloudServiceSetupViewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_216666690();
}

@end