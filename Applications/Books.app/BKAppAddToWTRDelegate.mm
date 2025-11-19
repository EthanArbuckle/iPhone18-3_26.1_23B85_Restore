@interface BKAppAddToWTRDelegate
- (BKAppAddToWTRDelegate)init;
- (BKAppAddToWTRDelegate)initWithPriceTracker:(id)a3;
- (void)addToWTR:(Class)a3 didAcceptPriceTrackingOptInWithCompletion:(id)a4;
- (void)addToWTR:(Class)a3 didShowPriceTrackingOptInWithCompletion:(id)a4;
- (void)addToWTR:(Class)a3 priceTrackingOptInTypeWithCompletion:(id)a4;
@end

@implementation BKAppAddToWTRDelegate

- (BKAppAddToWTRDelegate)initWithPriceTracker:(id)a3
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();

  v5 = [v4 sharedInstance];
  v6 = objc_allocWithZone(ObjectType);
  swift_weakInit();
  swift_weakAssign();
  *&v6[OBJC_IVAR___BKAppAddToWTRDelegate_notifications] = v5;
  v9.receiver = v6;
  v9.super_class = ObjectType;
  v7 = [(BKAppAddToWTRDelegate *)&v9 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)addToWTR:(Class)a3 priceTrackingOptInTypeWithCompletion:(id)a4
{
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1007A2744();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10083D5C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10083D5C8;
  v14[5] = v13;
  v15 = self;
  sub_10069E794(0, 0, v9, &unk_10083D5D0, v14);
}

- (void)addToWTR:(Class)a3 didShowPriceTrackingOptInWithCompletion:(id)a4
{
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1007A2744();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10083D5A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10083D5A8;
  v14[5] = v13;
  v15 = self;
  sub_10069E794(0, 0, v9, &unk_10083D5B0, v14);
}

- (void)addToWTR:(Class)a3 didAcceptPriceTrackingOptInWithCompletion:(id)a4
{
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1007A2744();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10083D548;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10081C0F0;
  v14[5] = v13;
  v15 = self;
  sub_10069E794(0, 0, v9, &unk_1008344D0, v14);
}

- (BKAppAddToWTRDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end