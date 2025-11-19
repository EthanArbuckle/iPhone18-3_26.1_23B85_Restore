@interface ICQuotaExceededAlertController
- (BOOL)showIfNeededFromWindow:(id)a3;
- (ICQuotaExceededAlertController)init;
- (ICQuotaExceededAlertController)initWithRecordID:(id)a3 accountID:(id)a4 date:(id)a5;
- (NSDate)date;
- (NSDate)lastShowDate;
- (NSString)accountID;
- (id)makeAlert;
- (void)setCloudContext:(id)a3;
- (void)setDidShowForRecord:(BOOL)a3;
- (void)setLastShowDate:(id)a3;
- (void)setManagedObjectContext:(id)a3;
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

- (void)setDidShowForRecord:(BOOL)a3
{
  v3 = a3;
  *(self + OBJC_IVAR___ICQuotaExceededAlertController_didShowForRecord) = a3;
  v4 = *(self + OBJC_IVAR___ICQuotaExceededAlertController_recordID);
  v5 = self;
  v6 = [v4 recordName];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() setDidShowExceededStorageQuotaAlert:v3 forNoteWithIdentifier:v6];
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

- (void)setLastShowDate:(id)a3
{
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a3)
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

  v10 = self;
  sub_100238588(v7);
}

- (void)setCloudContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICQuotaExceededAlertController_cloudContext);
  *(self + OBJC_IVAR___ICQuotaExceededAlertController_cloudContext) = a3;
  v3 = a3;
}

- (void)setManagedObjectContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICQuotaExceededAlertController_managedObjectContext);
  *(self + OBJC_IVAR___ICQuotaExceededAlertController_managedObjectContext) = a3;
  v3 = a3;
}

- (ICQuotaExceededAlertController)initWithRecordID:(id)a3 accountID:(id)a4 date:(id)a5
{
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = sub_100239B90(v12, v9, v11, v8);

  return v13;
}

- (BOOL)showIfNeededFromWindow:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100238810();
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    v12[4] = sub_100239F90;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10028DCE8;
    v12[3] = &unk_100651500;
    v8 = _Block_copy(v12);
    v9 = v4;
    v10 = v5;

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
  v2 = self;
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