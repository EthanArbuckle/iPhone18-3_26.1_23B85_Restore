@interface AECPolicyActivationRunner
- (void)activateWithScratchpad:(id)a3 invalidationHandler:(id)a4 completion:(id)a5;
@end

@implementation AECPolicyActivationRunner

- (void)activateWithScratchpad:(id)a3 invalidationHandler:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a4);
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  swift_unknownObjectRetain();

  sub_236E05DA0(sub_236E05D40, v8, sub_236E05D98, v9);
  swift_unknownObjectRelease();
}

@end