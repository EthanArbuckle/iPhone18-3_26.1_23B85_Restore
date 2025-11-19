@interface ICArchiveNotesPreviewer
- (_TtC11MobileNotes23ICArchiveNotesPreviewer)init;
- (id)initForArchiveAt:(id)a3 error:(id *)a4;
@end

@implementation ICArchiveNotesPreviewer

- (id)initForArchiveAt:(id)a3 error:(id *)a4
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return ICArchiveNotesPreviewer.init(forArchiveAt:)(v6);
}

- (_TtC11MobileNotes23ICArchiveNotesPreviewer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end