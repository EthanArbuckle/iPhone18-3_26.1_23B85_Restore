@interface FMReachabilityOperation
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
@end

@implementation FMReachabilityOperation

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v7 = a4;
  if (a4)
  {
    sub_10000905C(0, &qword_1006BEF40);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a3;
  v11 = a6;
  v12 = self;
  sub_10048EAA4(v7, a6);
}

@end