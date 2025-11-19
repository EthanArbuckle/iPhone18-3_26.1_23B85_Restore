@interface FBAUserDefaultsMigrator
+ (void)run;
- (_TtC18Feedback_Assistant23FBAUserDefaultsMigrator)init;
@end

@implementation FBAUserDefaultsMigrator

- (_TtC18Feedback_Assistant23FBAUserDefaultsMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBAUserDefaultsMigrator();
  return [(FBAUserDefaultsMigrator *)&v3 init];
}

+ (void)run
{
  v28 = [objc_opt_self() sharedUserDefaults];
  v0 = String._bridgeToObjectiveC()();
  v1 = [v28 BOOLForKey:v0];

  if (v1)
  {
    if (qword_100108E38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000466AC(v2, qword_10010AE40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "User defaults migrator already completed, skipping.", v5, 2u);
    }
  }

  else
  {
    v3 = [objc_opt_self() standardUserDefaults];
    if (qword_100108E38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000466AC(v6, qword_10010AE40);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Gathering defaults", v9, 2u);
    }

    v10 = FBKAgreedLegalVersionKey;
    v11 = [v3 integerForKey:FBKAgreedLegalVersionKey];
    v12 = [v3 stringForKey:@"LastSuccessfulLogin"];
    if (v12)
    {
      v13 = v12;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v26 = 0;
      v15 = 0;
    }

    v16 = FBKSuppressPrivacyNoticePreferencesKey;
    v27 = [v3 BOOLForKey:FBKSuppressPrivacyNoticePreferencesKey, v26];
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Migrating defaults to shared domain", v19, 2u);
    }

    if (v11 && ![v28 integerForKey:v10])
    {
      [v28 setInteger:v11 forKey:v10];
    }

    if (v15)
    {
      v20 = [v28 stringForKey:@"LastSuccessfulLogin"];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = String._bridgeToObjectiveC()();

        [v28 setObject:v21 forKey:@"LastSuccessfulLogin"];
      }
    }

    if (v27 && ([v28 BOOLForKey:v16] & 1) == 0)
    {
      [v28 setBool:1 forKey:v16];
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Deleting defaults in app domain", v24, 2u);
    }

    [v3 removeObjectForKey:v10];
    [v3 removeObjectForKey:@"LastSuccessfulLogin"];
    [v3 removeObjectForKey:v16];
    v25 = String._bridgeToObjectiveC()();
    [v28 setBool:1 forKey:v25];

    v28 = v25;
  }
}

@end