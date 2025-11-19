@interface STTimer
- (STTimer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTimer

- (STTimer)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STTimer;
  v5 = [(STSiriModelObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimerId"];
    timerId = v5->_timerId;
    v5->_timerId = v6;

    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Duration"];
    duration = v5->_duration;
    v5->_duration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STTimer;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_timerId forKey:{@"TimerId", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_state forKey:@"State"];
  [v4 encodeObject:self->_value forKey:@"Value"];
  [v4 encodeObject:self->_fireDate forKey:@"FireDate"];
  [v4 encodeObject:self->_duration forKey:@"Duration"];
  [v4 encodeObject:self->_label forKey:@"Label"];
}

@end