@interface ADAnalyticsIdentifiersUtils
+ (BOOL)isPartOfHome:(id)a3;
+ (id)idWhenNotPartOfHome;
+ (id)logger;
@end

@implementation ADAnalyticsIdentifiersUtils

+ (id)logger
{
  if (qword_100590448 != -1)
  {
    dispatch_once(&qword_100590448, &stru_1005148C8);
  }

  v3 = qword_100590440;

  return v3;
}

+ (BOOL)isPartOfHome:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = +[ADAnalyticsIdentifiersUtils idWhenNotPartOfHome];
  v5 = [v3 isEqual:v4];

  v6 = v5 ^ 1;
  return v6;
}

+ (id)idWhenNotPartOfHome
{
  if (qword_100590458 != -1)
  {
    dispatch_once(&qword_100590458, &stru_1005148E8);
  }

  v3 = qword_100590450;

  return v3;
}

@end