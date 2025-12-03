@interface ICArchiveNotesPreviewer
- (_TtC11MobileNotes23ICArchiveNotesPreviewer)init;
- (id)initForArchiveAt:(id)at error:(id *)error;
@end

@implementation ICArchiveNotesPreviewer

- (id)initForArchiveAt:(id)at error:(id *)error
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