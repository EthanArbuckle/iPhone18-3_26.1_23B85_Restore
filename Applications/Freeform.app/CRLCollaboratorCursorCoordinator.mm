@interface CRLCollaboratorCursorCoordinator
- (_TtC8Freeform32CRLCollaboratorCursorCoordinator)init;
- (id)collaboratorCursorSelectionPathForRenderer:(id)renderer collaboratorPresence:(id)presence;
- (void)dispatchSelectionPath:withFlags:;
- (void)invalidateCursorWithCollaboratorPresence:(id)presence;
- (void)registerCursorRenderer:(id)renderer;
- (void)setShouldShowCollaboratorCursors:(BOOL)cursors;
- (void)unregisterCursorRenderer:(id)renderer;
- (void)updateCollaboratorOwnershipWithPresenceUUID:(id)d;
- (void)updateCursorInformationWithSelectionPath:(id)path collaboratorPresence:(id)presence;
- (void)validateSelectionStateUsing:(id)using;
- (void)willTeardownRenderer:(id)renderer;
@end

@implementation CRLCollaboratorCursorCoordinator

- (void)setShouldShowCollaboratorCursors:(BOOL)cursors
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) = cursors;
  selfCopy = self;
  sub_100D56F68();
}

- (void)registerCursorRenderer:(id)renderer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100D57260(renderer);
  swift_unknownObjectRelease();
}

- (void)unregisterCursorRenderer:(id)renderer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [renderer setCollaboratorCursorDelegate:0];
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorCursorRenderers);
  [v5 removeObject:renderer];

  swift_unknownObjectRelease();
}

- (void)updateCursorInformationWithSelectionPath:(id)path collaboratorPresence:(id)presence
{
  pathCopy = path;
  presenceCopy = presence;
  selfCopy = self;
  sub_100D576AC(path, presenceCopy);
}

- (void)updateCollaboratorOwnershipWithPresenceUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100D57988(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)invalidateCursorWithCollaboratorPresence:(id)presence
{
  presenceCopy = presence;
  selfCopy = self;
  sub_100D57E74(presenceCopy);
}

- (_TtC8Freeform32CRLCollaboratorCursorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collaboratorCursorSelectionPathForRenderer:(id)renderer collaboratorPresence:(id)presence
{
  swift_unknownObjectRetain();
  presenceCopy = presence;
  selfCopy = self;
  v9 = sub_100D59A04(renderer, presenceCopy);
  swift_unknownObjectRelease();

  return v9;
}

- (void)willTeardownRenderer:(id)renderer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10098EABC(&_mh_execute_header, "willTeardownRenderer(_:)", 24, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorCoordinator.swift", 102, 2, 195);
  [renderer setCollaboratorCursorDelegate:0];
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorCursorRenderers);
  [v5 removeObject:renderer];

  swift_unknownObjectRelease();
}

- (void)validateSelectionStateUsing:(id)using
{
  usingCopy = using;
  selfCopy = self;
  sub_100D5A078();
}

- (void)dispatchSelectionPath:withFlags:
{
  v0 = objc_opt_self();
  _atomicIncrementAssertCount = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  lastPathComponent = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = _atomicIncrementAssertCount;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 204;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "This should never be sent a real selection path", 47, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "This should never be sent a real selection path");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:204 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

@end