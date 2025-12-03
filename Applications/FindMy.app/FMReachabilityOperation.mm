@interface FMReachabilityOperation
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
@end

@implementation FMReachabilityOperation

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  statusCopy = status;
  if (status)
  {
    sub_10000905C(0, &qword_1006BEF40);
    statusCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_10048EAA4(statusCopy, error);
}

@end