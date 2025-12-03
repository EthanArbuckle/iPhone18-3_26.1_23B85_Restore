@interface NavAudioControlFactory
+ (NSString)audioTypeNotification;
+ (id)accessibilityIdentifierForAudioType:(unint64_t)type;
+ (id)imageForNavAudioType:(unint64_t)type;
+ (id)imageForNavAudioType:(unint64_t)type imageConfiguration:(id)configuration;
+ (id)imageNameForNavAudioType:(unint64_t)type;
+ (unint64_t)guidanceLevelForNavAudioType:(unint64_t)type;
+ (unint64_t)navAudioTypeForGuidanceLevel:(unint64_t)level;
- (_TtC4Maps22NavAudioControlFactory)init;
@end

@implementation NavAudioControlFactory

+ (unint64_t)navAudioTypeForGuidanceLevel:(unint64_t)level
{
  if (level + 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1011EAC60[level + 1];
  }
}

+ (NSString)audioTypeNotification
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (unint64_t)guidanceLevelForNavAudioType:(unint64_t)type
{
  v3 = 1;
  if (type != 1)
  {
    v3 = 2;
  }

  if (type == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (id)imageForNavAudioType:(unint64_t)type
{
  v3 = sub_100176E44(type);

  return v3;
}

+ (id)imageForNavAudioType:(unint64_t)type imageConfiguration:(id)configuration
{
  v4 = sub_100176E44(type);

  return v4;
}

+ (id)imageNameForNavAudioType:(unint64_t)type
{
  if (!type || type == 2)
  {
    goto LABEL_5;
  }

  if (type == 1)
  {
    _UISolariumEnabled();
LABEL_5:
    v3 = String._bridgeToObjectiveC()();

    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

+ (id)accessibilityIdentifierForAudioType:(unint64_t)type
{
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC4Maps22NavAudioControlFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavAudioControlFactory();
  return [(NavAudioControlFactory *)&v3 init];
}

@end