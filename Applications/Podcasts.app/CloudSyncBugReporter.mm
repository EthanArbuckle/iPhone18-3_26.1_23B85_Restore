@interface CloudSyncBugReporter
- (_TtC8Podcasts20CloudSyncBugReporter)init;
- (void)report:(int64_t)report userInfo:(id)info;
- (void)reportBookmarksSyncIssue:(int64_t)issue bookmarksSyncType:(int64_t)type version:(id)version userInfo:(id)info;
- (void)reportSubscriptionsSyncIssue:(int64_t)issue subscriptionSyncType:(int64_t)type version:(id)version userInfo:(id)info;
- (void)reportSyncAuthenticationErrorFor:(id)for error:(id)error;
@end

@implementation CloudSyncBugReporter

- (_TtC8Podcasts20CloudSyncBugReporter)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter);
  sharedInstance = [objc_opt_self() sharedInstance];
  v4[3] = sub_10000AA38();
  v4[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
  *v4 = sharedInstance;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CloudSyncBugReporter *)&v7 init];
}

- (void)report:(int64_t)report userInfo:(id)info
{
  if (info)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_1002DCB14(report, v6);
}

- (void)reportSubscriptionsSyncIssue:(int64_t)issue subscriptionSyncType:(int64_t)type version:(id)version userInfo:(id)info
{
  infoCopy = info;
  if (version)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (!infoCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  v12 = 0;
  if (info)
  {
LABEL_3:
    infoCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  selfCopy = self;
  if (type <= 1)
  {
    sub_1002DCF58(issue, type, v10, v12, infoCopy);
  }
}

- (void)reportBookmarksSyncIssue:(int64_t)issue bookmarksSyncType:(int64_t)type version:(id)version userInfo:(id)info
{
  infoCopy = info;
  if (version)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (!infoCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v11 = 0;
  if (info)
  {
LABEL_3:
    infoCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (!type)
  {
    v12 = 2;
    goto LABEL_10;
  }

  if (type == 1)
  {
    v12 = 3;
LABEL_10:
    selfCopy = self;
    sub_1002DCF58(issue, v12, v9, v11, infoCopy);
    goto LABEL_12;
  }

  selfCopy2 = self;
LABEL_12:
}

- (void)reportSyncAuthenticationErrorFor:(id)for error:(id)error
{
  forCopy = for;
  errorCopy = error;
  selfCopy = self;
  sub_1002DD81C(forCopy, errorCopy);
}

@end