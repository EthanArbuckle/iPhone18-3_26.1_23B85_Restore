@interface ICSelectionStateModel
+ (id)dataRepresentationForSelectionStateModels:(id)models;
+ (id)modelWithData:(id)data;
+ (id)modelsWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (ICItemIdentifier)selectedNoteBrowseContainerItemID;
- (ICTagSelection)tagSelection;
- (NSDictionary)currentFirstVisibleObjectIDForContainerObjectID;
- (NSManagedObjectID)selectedInvitationObjectID;
- (NSManagedObjectID)selectedNoteObjectID;
- (NSManagedObjectID)selectedObjectID;
- (NSString)description;
- (id)dataRepresentation;
- (void)setCurrentFirstVisibleObjectIDForContainerObjectID:(id)d;
- (void)setCurrentSelectedSearchResult:(id)result;
- (void)setFocusedNoteObjectID:(id)d;
- (void)setSelectedNoteObjectID:(id)d;
@end

@implementation ICSelectionStateModel

- (void)setCurrentSelectedSearchResult:(id)result
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult) = result;
  resultCopy = result;
}

- (NSDictionary)currentFirstVisibleObjectIDForContainerObjectID
{
  v3 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();

    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setCurrentFirstVisibleObjectIDForContainerObjectID:(id)d
{
  dCopy = d;
  if (d)
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();
    dCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  *(self + v5) = dCopy;
}

- (void)setFocusedNoteObjectID:(id)d
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID);
  *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID) = d;
  dCopy = d;
}

- (ICTagSelection)tagSelection
{
  selfCopy = self;
  v3 = sub_100016590();

  return v3;
}

- (ICItemIdentifier)selectedNoteBrowseContainerItemID
{
  selfCopy = self;
  v3 = sub_1000167F8();

  return v3;
}

- (NSManagedObjectID)selectedNoteObjectID
{
  selfCopy = self;
  v3 = sub_100013FA4();

  return v3;
}

- (NSManagedObjectID)selectedInvitationObjectID
{
  selfCopy = self;
  v3 = sub_1001B9EA4();

  return v3;
}

- (NSManagedObjectID)selectedObjectID
{
  selfCopy = self;
  v3 = sub_100013FA4();
  if (!v3)
  {
    v3 = sub_1001B9EA4();
  }

  return v3;
}

- (void)setSelectedNoteObjectID:(id)d
{
  v5 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v5 - 8);
  v7 = (&selfCopy - v6);
  dCopy = d;
  selfCopy = self;
  if ([dCopy ic_isNoteType])
  {
    *v7 = dCopy;
    v7[1] = 0;
    v9 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    v10 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    v11 = dCopy;
    sub_10000A49C(v7, selfCopy + v10, &unk_1006BFEA0);
    swift_endAccess();
  }

  else
  {

    v12 = selfCopy;
  }
}

- (id)dataRepresentation
{
  swift_getObjectType();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  selfCopy = self;
  JSONEncoder.init()();
  sub_1001C275C(&qword_1006BF0E8, type metadata accessor for ICSelectionStateModel);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10019671C(v4, v6);

  return v7.super.isa;
}

+ (id)modelWithData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = sub_1001BAEF8();
  sub_10019671C(v4, v6);

  return v7;
}

+ (id)dataRepresentationForSelectionStateModels:(id)models
{
  swift_getObjCClassMetadata();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10015DA04(&unk_1006C42C0);
  sub_1001C61AC();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10019671C(v3, v5);

  return v6.super.isa;
}

+ (id)modelsWithData:(id)data
{
  swift_getObjCClassMetadata();
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = sub_1001C546C(data, v6);
  sub_1001C60E4(data, v6);
  if (v7)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

- (NSString)description
{
  selfCopy = self;
  sub_1001BD4E4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  sub_100006038(v12, v10, &qword_1006BE7A0);
  if (!v11)
  {
    sub_1000073B4(v10, &qword_1006BE7A0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = sub_1001C57E8(self, v9);

LABEL_9:
  sub_1000073B4(v12, &qword_1006BE7A0);
  return v7 & 1;
}

@end