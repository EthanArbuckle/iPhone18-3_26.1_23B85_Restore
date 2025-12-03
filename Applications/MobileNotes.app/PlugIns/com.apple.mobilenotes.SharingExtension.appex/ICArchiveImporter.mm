@interface ICArchiveImporter
- (BOOL)importArchiveAtURL:(id)l intoNoteContainerWithID:(id)d progress:(id)progress error:(id *)error;
- (NSDictionary)errors;
- (_TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter)init;
- (_TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter)initWithContext:(id)context;
- (void)dealloc;
- (void)setErrors:(id)errors;
@end

@implementation ICArchiveImporter

- (_TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter)init
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

- (_TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter)initWithContext:(id)context
{
  swift_getObjectType();
  v4 = objc_opt_self();
  contextCopy = context;
  defaultManager = [v4 defaultManager];
  v9[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v9[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 2;
  v7 = sub_100044128(contextCopy, v9, defaultManager, 0, 0);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_100037D00();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ICArchiveImporter *)&v5 dealloc];
}

- (NSDictionary)errors
{
  v3 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_1000B4DB0();

  sub_100030480(&qword_100106EB8, &qword_1000CAD80);
  sub_100044D20(&unk_100107790, &type metadata accessor for URL);
  v5.super.isa = sub_1000B5570().super.isa;

  return v5.super.isa;
}

- (void)setErrors:(id)errors
{
  sub_1000B4DB0();
  sub_100030480(&qword_100106EB8, &qword_1000CAD80);
  sub_100044D20(&unk_100107790, &type metadata accessor for URL);
  v4 = sub_1000B5580();
  v5 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)importArchiveAtURL:(id)l intoNoteContainerWithID:(id)d progress:(id)progress error:(id *)error
{
  v9 = sub_1000B4DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000B4D50();
  v14 = *(self + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context);
  selfCopy = self;
  dCopy = d;
  v22 = v13;
  progressCopy = progress;
  dCopy2 = d;
  progressCopy2 = progress;
  selfCopy2 = self;
  sub_1000B5A60();

  (*(v10 + 8))(v13, v9);
  return 1;
}

@end