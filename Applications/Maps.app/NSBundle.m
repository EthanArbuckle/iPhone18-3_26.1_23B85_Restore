@interface NSBundle
+ (id)mapsInternalExtrasBundle;
@end

@implementation NSBundle

+ (id)mapsInternalExtrasBundle
{
  if (qword_10195F6C8 != -1)
  {
    dispatch_once(&qword_10195F6C8, &stru_10165CDD0);
  }

  v3 = qword_10195F6D0;

  return v3;
}

@end