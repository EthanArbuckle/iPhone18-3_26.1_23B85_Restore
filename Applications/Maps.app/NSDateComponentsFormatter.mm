@interface NSDateComponentsFormatter
+ (id)_maps_stringFromTimeInterval:(double)a3;
+ (id)_maps_stringLongFromTimeInterval:(double)a3;
@end

@implementation NSDateComponentsFormatter

+ (id)_maps_stringLongFromTimeInterval:(double)a3
{
  if (qword_10195DBE0 != -1)
  {
    dispatch_once(&qword_10195DBE0, &stru_10162D0F0);
  }

  v4 = qword_10195DBD8;

  return [v4 stringFromTimeInterval:a3];
}

+ (id)_maps_stringFromTimeInterval:(double)a3
{
  if (qword_10195DBD0 != -1)
  {
    dispatch_once(&qword_10195DBD0, &stru_10162D0D0);
  }

  v4 = qword_10195DBC8;

  return [v4 stringFromTimeInterval:a3];
}

@end