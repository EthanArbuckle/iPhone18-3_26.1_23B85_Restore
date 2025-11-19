@interface CRLBoardLibraryCommandCreateFolder
- (NSSet)itemIdentifiersToReparent;
- (NSString)title;
- (_TtC8Freeform34CRLBoardLibraryCommandCreateFolder)init;
- (id)userFacingCommandName;
@end

@implementation CRLBoardLibraryCommandCreateFolder

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSSet)itemIdentifiersToReparent
{
  type metadata accessor for UUID();
  sub_100B02420(&qword_1019FB870, &type metadata accessor for UUID);

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)userFacingCommandName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC8Freeform34CRLBoardLibraryCommandCreateFolder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end