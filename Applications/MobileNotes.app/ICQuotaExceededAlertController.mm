@interface ICQuotaExceededAlertController
- (BOOL)showIfNeededFromWindow:(id)window;
- (ICQuotaExceededAlertController)init;
- (ICQuotaExceededAlertController)initWithRecordID:(id)d accountID:(id)iD date:(id)date;
- (NSDate)date;
- (NSDate)lastShowDate;
- (NSString)accountID;
- (id)makeAlert;
- (void)setCloudContext:(id)context;
- (void)setDidShowForRecord:(BOOL)record;
- (void)setLastShowDate:(id)date;
- (void)setManagedObjectContext:(id)context;
@end

@implementation ICQuotaExceededAlertController

- (NSString)accountID
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___ICQuotaExceededAlertController_date, v3);
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (void)setDidShowForRecord:(BOOL)record
{
  recordCopy = record;
  *(self + OBJC_IVAR___ICQuotaExceededAlertController_didShowForRecord) = record;
  v4 = *(self + OBJC_IVAR___ICQuotaExceededAlertController_recordID);
  selfCopy = self;
  recordName = [v4 recordName];
  if (!recordName)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    recordName = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() setDidShowExceededStorageQuotaAlert:recordCopy forNoteWithIdentifier:recordName];
}

- (NSDate)lastShowDate
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___ICQuotaExceededAlertController_lastShowDate;
  swift_beginAccess();
  sub_100239F98(self + v6, v5);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setLastShowDate:(id)date
{
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_100238588(v7);
}

- (void)setCloudContext:(id)context
{
  v4 = *(self + OBJC_IVAR___ICQuotaExceededAlertController_cloudContext);
  *(self + OBJC_IVAR___ICQuotaExceededAlertController_cloudContext) = context;
  contextCopy = context;
}

- (void)setManagedObjectContext:(id)context
{
  v4 = *(self + OBJC_IVAR___ICQuotaExceededAlertController_managedObjectContext);
  *(self + OBJC_IVAR___ICQuotaExceededAlertController_managedObjectContext) = context;
  contextCopy = context;
}

- (ICQuotaExceededAlertController)initWithRecordID:(id)d accountID:(id)iD date:(id)date
{
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  dCopy = d;
  v13 = sub_100239B90(dCopy, v9, v11, v8);

  return v13;
}

- (BOOL)showIfNeededFromWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  v6 = sub_100238810();
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = selfCopy;
    *(v7 + 24) = windowCopy;
    v12[4] = sub_100239F90;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10028DCE8;
    v12[3] = &unk_100651500;
    v8 = _Block_copy(v12);
    v9 = windowCopy;
    v10 = selfCopy;

    performBlockOnMainThread();

    _Block_release(v8);
  }

  else
  {
  }

  return v6 & 1;
}

- (id)makeAlert
{
  selfCopy = self;
  v3 = sub_1002390E8();

  return v3;
}

- (ICQuotaExceededAlertController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end