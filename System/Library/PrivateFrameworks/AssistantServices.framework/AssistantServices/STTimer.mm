@interface STTimer
- (STTimer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTimer

- (STTimer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = STTimer;
  v5 = [(STSiriModelObject *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimerId"];
    timerId = v5->_timerId;
    v5->_timerId = v6;

    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Duration"];
    duration = v5->_duration;
    v5->_duration = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STTimer;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_timerId forKey:{@"TimerId", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_state forKey:@"State"];
  [coderCopy encodeObject:self->_value forKey:@"Value"];
  [coderCopy encodeObject:self->_fireDate forKey:@"FireDate"];
  [coderCopy encodeObject:self->_duration forKey:@"Duration"];
  [coderCopy encodeObject:self->_label forKey:@"Label"];
}

@end