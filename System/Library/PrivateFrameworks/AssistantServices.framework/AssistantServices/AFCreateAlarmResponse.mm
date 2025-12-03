@interface AFCreateAlarmResponse
- (AFCreateAlarmResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFCreateAlarmResponse

- (AFCreateAlarmResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFCreateAlarmResponse;
  v5 = [(AFSiriResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AlarmIdentifier"];
    alarmIdentifier = v5->_alarmIdentifier;
    v5->_alarmIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFCreateAlarmResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alarmIdentifier forKey:{@"AlarmIdentifier", v5.receiver, v5.super_class}];
}

@end