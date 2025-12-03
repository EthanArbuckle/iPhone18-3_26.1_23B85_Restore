@interface ICArchiveNotesPreviewer
- (_TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer)init;
- (id)initForArchiveAt:(id)at error:(id *)error;
@end

@implementation ICArchiveNotesPreviewer

- (id)initForArchiveAt:(id)at error:(id *)error
{
  v4 = sub_1000847C8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084768();
  return ICArchiveNotesPreviewer.init(forArchiveAt:)(v7);
}

- (_TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end