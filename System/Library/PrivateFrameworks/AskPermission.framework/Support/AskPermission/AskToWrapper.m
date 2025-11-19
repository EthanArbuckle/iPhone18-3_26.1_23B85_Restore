@interface AskToWrapper
+ (_TtC19AskPermissionDaemon12AskToWrapper)shared;
+ (void)canAskWithCompletionHandler:(id)a3;
- (_TtC19AskPermissionDaemon12AskToWrapper)init;
- (void)askWithUuid:(NSUUID *)a3 type:(int64_t)a4 title:(NSString *)a5 message:(NSString *)a6 bundleIdentifier:(NSString *)a7 preApprove:(NSString *)a8 postApprove:(NSString *)a9 preDecline:(NSString *)a10 postDecline:(NSString *)a11 responseBundleIdentifier:(NSString *)a12 metadata:(APAskToAgeRestrictionMetadata *)a13 fallbackURL:(NSURL *)a14 delegateCallback:(id)a15 completionHandler:;
@end

@implementation AskToWrapper

+ (_TtC19AskPermissionDaemon12AskToWrapper)shared
{
  if (qword_100063D70 != -1)
  {
    swift_once();
  }

  v3 = qword_100063E58;

  return v3;
}

+ (void)canAskWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_10002D464(&qword_100063AD8, &qword_100042A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000429B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000429B8;
  v12[5] = v11;
  sub_10002C91C(0, 0, v7, &unk_1000429C0, v12);
}

- (void)askWithUuid:(NSUUID *)a3 type:(int64_t)a4 title:(NSString *)a5 message:(NSString *)a6 bundleIdentifier:(NSString *)a7 preApprove:(NSString *)a8 postApprove:(NSString *)a9 preDecline:(NSString *)a10 postDecline:(NSString *)a11 responseBundleIdentifier:(NSString *)a12 metadata:(APAskToAgeRestrictionMetadata *)a13 fallbackURL:(NSURL *)a14 delegateCallback:(id)a15 completionHandler:
{
  v51 = a6;
  v52 = a8;
  v44 = a4;
  v45 = self;
  v49 = a7;
  v50 = a14;
  v48 = a10;
  v46 = a3;
  v47 = a9;
  v17 = (*(*(sub_10002D464(&qword_100063AD8, &qword_100042A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v43 = &v43 - v18;
  v19 = _Block_copy(a15);
  v20 = _Block_copy(v53);
  v21 = swift_allocObject();
  v22 = v44;
  v21[2] = a3;
  v21[3] = v22;
  v23 = v51;
  v21[4] = a5;
  v21[5] = v23;
  v24 = v52;
  v21[6] = v49;
  v21[7] = v24;
  v21[8] = a9;
  v21[9] = a10;
  v21[10] = a11;
  v21[11] = a12;
  v25 = v50;
  v21[12] = a13;
  v21[13] = v25;
  v21[14] = v19;
  v21[15] = v20;
  v26 = v45;
  v21[16] = v45;
  v27 = type metadata accessor for TaskPriority();
  v28 = v43;
  (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_100042968;
  v29[5] = v21;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_100042978;
  v30[5] = v29;
  v31 = v46;
  v32 = a5;
  v33 = v51;
  v34 = v49;
  v35 = v52;
  v36 = v47;
  v37 = v48;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  v41 = v50;
  v42 = v26;
  sub_10002C91C(0, 0, v28, &unk_100042988, v30);
}

- (_TtC19AskPermissionDaemon12AskToWrapper)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC19AskPermissionDaemon12AskToWrapper_completionHandler);
  v4 = type metadata accessor for AskToWrapper();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(AskToWrapper *)&v6 init];
}

@end