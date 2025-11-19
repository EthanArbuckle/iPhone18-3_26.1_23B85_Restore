@interface ASAccessoryEvent
- (ASAccessoryEvent)initWithEventType:(int64_t)a3;
- (ASAccessoryEvent)initWithEventType:(int64_t)a3 error:(id)a4;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation ASAccessoryEvent

- (ASAccessoryEvent)initWithEventType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ASAccessoryEvent;
  v4 = [(ASAccessoryEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = a3;
    v6 = v4;
  }

  return v5;
}

- (ASAccessoryEvent)initWithEventType:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v8 = [(ASAccessoryEvent *)self initWithEventType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, a4);
    v10 = v9;
  }

  return v9;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    v10 = ASAccessoryEventTypeToString(eventType);
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  v7 = &stru_28499D698;
  if (v4)
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

@end