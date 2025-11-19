@interface ICFeatureFlags
+ (BOOL)callRecordingEnabled;
- (_TtC38com_apple_mobilenotes_IntentsExtension14ICFeatureFlags)init;
@end

@implementation ICFeatureFlags

+ (BOOL)callRecordingEnabled
{
  v8 = &type metadata for NotesFeature;
  v9 = sub_1000124BC();
  v5 = "AudioTranscription";
  v6 = 18;
  v7 = 2;
  v2 = sub_100013B10();
  sub_100012510(&v5);
  if (v2)
  {
    v8 = &type metadata for TelephonyUtilitiesFeature;
    v9 = sub_100012658();
    v5 = "CallRecording";
    v6 = 13;
    v7 = 2;
    v3 = sub_100013B10();
    sub_100012510(&v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (_TtC38com_apple_mobilenotes_IntentsExtension14ICFeatureFlags)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICFeatureFlags *)&v3 init];
}

@end