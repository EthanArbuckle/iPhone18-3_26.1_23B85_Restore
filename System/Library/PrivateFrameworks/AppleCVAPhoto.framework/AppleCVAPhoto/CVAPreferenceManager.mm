@interface CVAPreferenceManager
+ (id)defaults;
@end

@implementation CVAPreferenceManager

+ (id)defaults
{
  if (qword_1ECDE0FC0 != -1)
  {
    dispatch_once(&qword_1ECDE0FC0, &unk_1F59F9DC0);
  }

  v3 = qword_1ECDE0FB8;

  return v3;
}

@end