@interface _QueryController
- (NSString)description;
- (_TtC19ExtensionFoundation16_QueryController)init;
- (void)queryControllerDidUpdate:(id)update;
@end

@implementation _QueryController

- (void)queryControllerDidUpdate:(id)update
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_handler);
  v4 = *&self->controller[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_handler];
  updateCopy = update;
  selfCopy = self;
  extensionIdentities = [updateCopy extensionIdentities];
  type metadata accessor for _EXExtensionIdentity();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5(v8);
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller);
  selfCopy = self;
  v4 = [v2 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = MEMORY[0x1865F36D0](v5, v7);

  return v8;
}

- (_TtC19ExtensionFoundation16_QueryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end