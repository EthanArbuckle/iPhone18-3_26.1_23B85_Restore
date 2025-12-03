@interface QueryController
- (NSString)description;
- (_TtC19ExtensionFoundation15QueryController)init;
- (void)dealloc;
- (void)resultDidUpdate:(id)update;
@end

@implementation QueryController

- (void)dealloc
{
  selfCopy = self;
  QueryController.suspend()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for QueryController();
  [(QueryController *)&v3 dealloc];
}

- (void)resultDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  QueryController.resultDidUpdate(_:)(updateCopy);
}

- (NSString)description
{
  selfCopy = self;
  _StringGuts.grow(_:)(21);

  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v3);

  MEMORY[0x1865F37A0](93, 0xE100000000000000);

  v4 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3250);

  return v4;
}

- (_TtC19ExtensionFoundation15QueryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end