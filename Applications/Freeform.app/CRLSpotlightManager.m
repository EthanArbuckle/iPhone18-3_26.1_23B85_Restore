@interface CRLSpotlightManager
- (_TtC8Freeform19CRLSpotlightManager)init;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation CRLSpotlightManager

- (_TtC8Freeform19CRLSpotlightManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = qword_1019F20F8;
  v13 = a3;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlSpotlight;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v15, "REINDEX ALL", 11, 2, _swiftEmptyArrayStorage);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = self;
  v17[5] = v13;
  v17[6] = sub_100685EBC;
  v17[7] = v11;
  sub_10064191C(0, 0, v9, &unk_1014A8AA0, v17);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v9 = a3;

  sub_100C9B6A4(v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end