@interface ICArchiveImporter
- (BOOL)importArchiveAtURL:(id)l intoNoteContainerWithID:(id)d progress:(id)progress error:(id *)error;
- (NSDictionary)errors;
- (_TtC11MobileNotes17ICArchiveImporter)init;
- (_TtC11MobileNotes17ICArchiveImporter)initWithContext:(id)context;
- (void)dealloc;
- (void)setErrors:(id)errors;
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

- (_TtC11MobileNotes17ICArchiveImporter)initWithContext:(id)context
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
  v7 = sub_1002A9A74(contextCopy, v9, defaultManager, 0, 0);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_1002A06E0();
  v5.receiver = selfCopy;
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

- (void)setErrors:(id)errors
{
  type metadata accessor for URL();
  sub_10015DA04(&unk_1006C9B40);
  sub_1002AA814(&qword_1006C07C0, &type metadata accessor for URL);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)importArchiveAtURL:(id)l intoNoteContainerWithID:(id)d progress:(id)progress error:(id *)error
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  dCopy = d;
  v20 = v12;
  progressCopy = progress;
  dCopy2 = d;
  progressCopy2 = progress;
  selfCopy2 = self;
  NSManagedObjectContext.performAndWait<A>(_:)();

  (*(v10 + 8))(v12, v9);
  return 1;
}

@end