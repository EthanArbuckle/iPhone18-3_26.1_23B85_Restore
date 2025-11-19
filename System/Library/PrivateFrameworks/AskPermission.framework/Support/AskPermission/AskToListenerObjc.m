@interface AskToListenerObjc
+ (void)registerForResponses;
- (_TtC19AskPermissionDaemon17AskToListenerObjc)init;
@end

@implementation AskToListenerObjc

+ (void)registerForResponses
{
  type metadata accessor for ATDispatchCenter();
  v2 = static ATDispatchCenter.shared.getter();
  v3 = *sub_100029BAC();
  type metadata accessor for AskToListener();
  swift_initStaticObject();
  v4 = v3;
  ATDispatchCenter.register(topic:responseListener:)();
}

- (_TtC19AskPermissionDaemon17AskToListenerObjc)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AskToListenerObjc();
  return [(AskToListenerObjc *)&v3 init];
}

@end