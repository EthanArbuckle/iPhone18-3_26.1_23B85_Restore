@interface ICArchiveImporter
- (BOOL)importArchiveAtURL:(id)a3 intoNoteContainerWithID:(id)a4 progress:(id)a5 error:(id *)a6;
- (NSDictionary)errors;
- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)init;
- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)initWithContext:(id)a3;
- (void)dealloc;
- (void)setErrors:(id)a3;
@end

@implementation ICArchiveImporter

- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)init
{
  result = [objc_opt_self() sharedContext];
  if (result && (v4 = result, v5 = [(ICArchiveImporter *)result snapshotManagedObjectContext], v4, v5))
  {
    v6 = [(ICArchiveImporter *)self initWithContext:v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)initWithContext:(id)a3
{
  swift_getObjectType();
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 defaultManager];
  v9[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v9[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 2;
  v7 = sub_10003D07C(v5, v9, v6, 0, 0);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_100044ED4();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(ICArchiveImporter *)&v5 dealloc];
}

- (NSDictionary)errors
{
  v3 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_1000847C8();

  sub_100005740(&qword_1000A5B98, &unk_10008B760);
  sub_10004F178(&qword_1000A5C70, &type metadata accessor for URL);
  v5.super.isa = sub_100084FF8().super.isa;

  return v5.super.isa;
}

- (void)setErrors:(id)a3
{
  sub_1000847C8();
  sub_100005740(&qword_1000A5B98, &unk_10008B760);
  sub_10004F178(&qword_1000A5C70, &type metadata accessor for URL);
  v4 = sub_100085008();
  v5 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)importArchiveAtURL:(id)a3 intoNoteContainerWithID:(id)a4 progress:(id)a5 error:(id *)a6
{
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100084768();
  v14 = *(self + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context);
  v20 = self;
  v21 = a4;
  v22 = v13;
  v23 = a5;
  v15 = a4;
  v16 = a5;
  v17 = self;
  sub_100085488();

  (*(v10 + 8))(v13, v9);
  return 1;
}

@end