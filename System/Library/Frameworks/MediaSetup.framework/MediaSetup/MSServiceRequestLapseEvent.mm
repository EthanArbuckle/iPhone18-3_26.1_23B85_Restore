@interface MSServiceRequestLapseEvent
- (MSServiceRequestLapseEvent)initWithServiceID:(id)d;
@end

@implementation MSServiceRequestLapseEvent

- (MSServiceRequestLapseEvent)initWithServiceID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = MSServiceRequestLapseEvent;
  v5 = [(MSServiceRequestLapseEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSServiceRequestLapseEvent *)v5 setServiceID:dCopy];
  }

  return v6;
}

@end