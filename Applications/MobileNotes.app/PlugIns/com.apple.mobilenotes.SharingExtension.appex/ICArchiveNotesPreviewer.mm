@interface ICArchiveNotesPreviewer
- (_TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer)init;
- (id)initForArchiveAt:(id)a3 error:(id *)a4;
@end

@implementation ICArchiveNotesPreviewer

- (id)initForArchiveAt:(id)a3 error:(id *)a4
{
  v4 = sub_1000B4DB0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B4D50();
  return ICArchiveNotesPreviewer.init(forArchiveAt:)(v7);
}

- (_TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end