@interface ASDAppMetricsEvent
- (ASDAppMetricsEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAppMetricsEvent

- (ASDAppMetricsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASDAppMetricsEvent;
  v5 = [(ASDAppMetricsEvent *)&v17 init];
  if (v5)
  {
    v5->_eventType = [v4 decodeIntegerForKey:@"_eventType"];
    v5->_eventSubtype = [v4 decodeIntegerForKey:@"_eventSubtype"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventTime"];
    eventTime = v5->_eventTime;
    v5->_eventTime = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_payload"];
    payload = v5->_payload;
    v5->_payload = v14;

    v5->_posted = [v4 decodeBoolForKey:@"_posted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v5 = a3;
  [v5 encodeInteger:eventType forKey:@"_eventType"];
  [v5 encodeInteger:self->_eventSubtype forKey:@"_eventSubtype"];
  [v5 encodeObject:self->_eventTime forKey:@"_eventTime"];
  [v5 encodeObject:self->_payload forKey:@"_payload"];
  [v5 encodeBool:self->_posted forKey:@"_posted"];
}

@end