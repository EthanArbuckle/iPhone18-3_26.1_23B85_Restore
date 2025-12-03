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
  sharedUserDefaults = [objc_opt_self() sharedUserDefaults];
  v0 = String._bridgeToObjectiveC()();
  v1 = [sharedUserDefaults BOOLForKey:v0];

  if (v1)
  {
    if (qword_100108E38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000466AC(v2, qword_10010AE40);
    standardUserDefaults = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(standardUserDefaults, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, standardUserDefaults, v4, "User defaults migrator already completed, skipping.", v5, 2u);
    }
  }

  else
  {
    standardUserDefaults = [objc_opt_self() standardUserDefaults];
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
    v11 = [standardUserDefaults integerForKey:FBKAgreedLegalVersionKey];
    v12 = [standardUserDefaults stringForKey:@"LastSuccessfulLogin"];
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
    v27 = [standardUserDefaults BOOLForKey:FBKSuppressPrivacyNoticePreferencesKey, v26];
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Migrating defaults to shared domain", v19, 2u);
    }

    if (v11 && ![sharedUserDefaults integerForKey:v10])
    {
      [sharedUserDefaults setInteger:v11 forKey:v10];
    }

    if (v15)
    {
      v20 = [sharedUserDefaults stringForKey:@"LastSuccessfulLogin"];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = String._bridgeToObjectiveC()();

        [sharedUserDefaults setObject:v21 forKey:@"LastSuccessfulLogin"];
      }
    }

    if (v27 && ([sharedUserDefaults BOOLForKey:v16] & 1) == 0)
    {
      [sharedUserDefaults setBool:1 forKey:v16];
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Deleting defaults in app domain", v24, 2u);
    }

    [standardUserDefaults removeObjectForKey:v10];
    [standardUserDefaults removeObjectForKey:@"LastSuccessfulLogin"];
    [standardUserDefaults removeObjectForKey:v16];
    v25 = String._bridgeToObjectiveC()();
    [sharedUserDefaults setBool:1 forKey:v25];

    sharedUserDefaults = v25;
  }
}

@end