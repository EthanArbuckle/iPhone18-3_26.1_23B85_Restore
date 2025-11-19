@interface CloudSyncBugReporter
- (_TtC8Podcasts20CloudSyncBugReporter)init;
- (void)report:(int64_t)a3 userInfo:(id)a4;
- (void)reportBookmarksSyncIssue:(int64_t)a3 bookmarksSyncType:(int64_t)a4 version:(id)a5 userInfo:(id)a6;
- (void)reportSubscriptionsSyncIssue:(int64_t)a3 subscriptionSyncType:(int64_t)a4 version:(id)a5 userInfo:(id)a6;
- (void)reportSyncAuthenticationErrorFor:(id)a3 error:(id)a4;
@end

@implementation CloudSyncBugReporter

- (_TtC8Podcasts20CloudSyncBugReporter)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter);
  v5 = [objc_opt_self() sharedInstance];
  v4[3] = sub_10000AA38();
  v4[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
  *v4 = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CloudSyncBugReporter *)&v7 init];
}

- (void)report:(int64_t)a3 userInfo:(id)a4
{
  if (a4)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_1002DCB14(a3, v6);
}

- (void)reportSubscriptionsSyncIssue:(int64_t)a3 subscriptionSyncType:(int64_t)a4 version:(id)a5 userInfo:(id)a6
{
  v6 = a6;
  if (a5)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  v12 = 0;
  if (a6)
  {
LABEL_3:
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v13 = self;
  if (a4 <= 1)
  {
    sub_1002DCF58(a3, a4, v10, v12, v6);
  }
}

- (void)reportBookmarksSyncIssue:(int64_t)a3 bookmarksSyncType:(int64_t)a4 version:(id)a5 userInfo:(id)a6
{
  v6 = a6;
  if (a5)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v11 = 0;
  if (a6)
  {
LABEL_3:
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (!a4)
  {
    v12 = 2;
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v12 = 3;
LABEL_10:
    v13 = self;
    sub_1002DCF58(a3, v12, v9, v11, v6);
    goto LABEL_12;
  }

  v14 = self;
LABEL_12:
}

- (void)reportSyncAuthenticationErrorFor:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002DD81C(v6, v7);
}

@end