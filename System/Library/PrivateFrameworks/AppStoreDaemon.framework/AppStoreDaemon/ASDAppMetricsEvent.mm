@interface ASDAppMetricsEvent
- (ASDAppMetricsEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAppMetricsEvent

- (ASDAppMetricsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ASDAppMetricsEvent;
  v5 = [(ASDAppMetricsEvent *)&v17 init];
  if (v5)
  {
    v5->_eventType = [coderCopy decodeIntegerForKey:@"_eventType"];
    v5->_eventSubtype = [coderCopy decodeIntegerForKey:@"_eventSubtype"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventTime"];
    eventTime = v5->_eventTime;
    v5->_eventTime = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_payload"];
    payload = v5->_payload;
    v5->_payload = v14;

    v5->_posted = [coderCopy decodeBoolForKey:@"_posted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeInteger:eventType forKey:@"_eventType"];
  [coderCopy encodeInteger:self->_eventSubtype forKey:@"_eventSubtype"];
  [coderCopy encodeObject:self->_eventTime forKey:@"_eventTime"];
  [coderCopy encodeObject:self->_payload forKey:@"_payload"];
  [coderCopy encodeBool:self->_posted forKey:@"_posted"];
}

@end