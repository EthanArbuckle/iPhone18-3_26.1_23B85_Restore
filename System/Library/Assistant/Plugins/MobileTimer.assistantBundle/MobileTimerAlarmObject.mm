@interface MobileTimerAlarmObject
+ (id)alarmObjectWithDictionary:(id)dictionary;
- (NSURL)alarmId;
@end

@implementation MobileTimerAlarmObject

+ (id)alarmObjectWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MobileTimerAlarmObject);
  [(MobileTimerAlarmObject *)v4 setDictionary:dictionaryCopy];

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