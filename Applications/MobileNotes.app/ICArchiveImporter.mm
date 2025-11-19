@interface ICArchiveImporter
- (BOOL)importArchiveAtURL:(id)a3 intoNoteContainerWithID:(id)a4 progress:(id)a5 error:(id *)a6;
- (NSDictionary)errors;
- (_TtC11MobileNotes17ICArchiveImporter)init;
- (_TtC11MobileNotes17ICArchiveImporter)initWithContext:(id)a3;
- (void)dealloc;
- (void)setErrors:(id)a3;
@end

@implementation ICArchiveImporter

- (_TtC11MobileNotes17ICArchiveImporter)init
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

- (_TtC11MobileNotes17ICArchiveImporter)initWithContext:(id)a3
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
  v7 = sub_1002A9A74(v5, v9, v6, 0, 0);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_1002A06E0();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(ICArchiveImporter *)&v5 dealloc];
}

- (NSDictionary)errors
{
  swift_beginAccess();
  type metadata accessor for URL();

  sub_10015DA04(&unk_1006C9B40);
  sub_1002AA814(&qword_1006C07C0, &type metadata accessor for URL);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setErrors:(id)a3
{
  type metadata accessor for URL();
  sub_10015DA04(&unk_1006C9B40);
  sub_1002AA814(&qword_1006C07C0, &type metadata accessor for URL);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)importArchiveAtURL:(id)a3 intoNoteContainerWithID:(id)a4 progress:(id)a5 error:(id *)a6
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = self;
  v19 = a4;
  v20 = v12;
  v21 = a5;
  v13 = a4;
  v14 = a5;
  v15 = self;
  NSManagedObjectContext.performAndWait<A>(_:)();

  (*(v10 + 8))(v12, v9);
  return 1;
}

@end