@interface PDClassKitServiceOperationsObjC
- (PDClassKitServiceOperationsObjC)init;
- (void)checkConnectionStatusWithCompletion:(id)completion;
@end

@implementation PDClassKitServiceOperationsObjC

- (void)checkConnectionStatusWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  _s9progressd25ClassKitServiceOperationsC21checkConnectionStatus10completionyySSSg_s5Error_pSgtc_tF_0(sub_100011364, v5);
}

- (PDClassKitServiceOperationsObjC)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClassKitServiceOperations();
  return [(PDClassKitServiceOperationsObjC *)&v3 init];
}

@end