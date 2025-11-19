@interface AFCreateAlarmResponse
- (AFCreateAlarmResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFCreateAlarmResponse

- (AFCreateAlarmResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFCreateAlarmResponse;
  v5 = [(AFSiriResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlarmIdentifier"];
    alarmIdentifier = v5->_alarmIdentifier;
    v5->_alarmIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFCreateAlarmResponse;
  v4 = a3;
  [(AFSiriResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_alarmIdentifier forKey:{@"AlarmIdentifier", v5.receiver, v5.super_class}];
}

@end