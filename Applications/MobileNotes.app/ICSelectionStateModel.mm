@interface ICSelectionStateModel
+ (id)dataRepresentationForSelectionStateModels:(id)a3;
+ (id)modelWithData:(id)a3;
+ (id)modelsWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICItemIdentifier)selectedNoteBrowseContainerItemID;
- (ICTagSelection)tagSelection;
- (NSDictionary)currentFirstVisibleObjectIDForContainerObjectID;
- (NSManagedObjectID)selectedInvitationObjectID;
- (NSManagedObjectID)selectedNoteObjectID;
- (NSManagedObjectID)selectedObjectID;
- (NSString)description;
- (id)dataRepresentation;
- (void)setCurrentFirstVisibleObjectIDForContainerObjectID:(id)a3;
- (void)setCurrentSelectedSearchResult:(id)a3;
- (void)setFocusedNoteObjectID:(id)a3;
- (void)setSelectedNoteObjectID:(id)a3;
@end

@implementation ICSelectionStateModel

- (void)setCurrentSelectedSearchResult:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult) = a3;
  v3 = a3;
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

- (void)setCurrentFirstVisibleObjectIDForContainerObjectID:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  *(self + v5) = v3;
}

- (void)setFocusedNoteObjectID:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID);
  *(self + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID) = a3;
  v3 = a3;
}

- (ICTagSelection)tagSelection
{
  v2 = self;
  v3 = sub_100016590();

  return v3;
}

- (ICItemIdentifier)selectedNoteBrowseContainerItemID
{
  v2 = self;
  v3 = sub_1000167F8();

  return v3;
}

- (NSManagedObjectID)selectedNoteObjectID
{
  v2 = self;
  v3 = sub_100013FA4();

  return v3;
}

- (NSManagedObjectID)selectedInvitationObjectID
{
  v2 = self;
  v3 = sub_1001B9EA4();

  return v3;
}

- (NSManagedObjectID)selectedObjectID
{
  v2 = self;
  v3 = sub_100013FA4();
  if (!v3)
  {
    v3 = sub_1001B9EA4();
  }

  return v3;
}

- (void)setSelectedNoteObjectID:(id)a3
{
  v5 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v13 - v6);
  v8 = a3;
  v13 = self;
  if ([v8 ic_isNoteType])
  {
    *v7 = v8;
    v7[1] = 0;
    v9 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    v10 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    v11 = v8;
    sub_10000A49C(v7, v13 + v10, &unk_1006BFEA0);
    swift_endAccess();
  }

  else
  {

    v12 = v13;
  }
}

- (id)dataRepresentation
{
  swift_getObjectType();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v3 = self;
  JSONEncoder.init()();
  sub_1001C275C(&qword_1006BF0E8, type metadata accessor for ICSelectionStateModel);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10019671C(v4, v6);

  return v7.super.isa;
}

+ (id)modelWithData:(id)a3
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = sub_1001BAEF8();
  sub_10019671C(v4, v6);

  return v7;
}

+ (id)dataRepresentationForSelectionStateModels:(id)a3
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

+ (id)modelsWithData:(id)a3
{
  swift_getObjCClassMetadata();
  if (a3)
  {
    v4 = a3;
    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = sub_1001C546C(a3, v6);
  sub_1001C60E4(a3, v6);
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
  v2 = self;
  sub_1001BD4E4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  swift_getObjectType();
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v6 = self;
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