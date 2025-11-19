@interface MobileTimerAlarmObject
+ (id)alarmObjectWithDictionary:(id)a3;
- (NSURL)alarmId;
@end

@implementation MobileTimerAlarmObject

+ (id)alarmObjectWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MobileTimerAlarmObject);
  [(MobileTimerAlarmObject *)v4 setDictionary:v3];

  return v4;
}

- (NSURL)alarmId
{
  v2 = [(NSDictionary *)self->_dictionary valueForKey:SAAlarmUpdateAlarmIdPListKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [NSURL URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end