@interface MSServiceRequestLapseEvent
- (MSServiceRequestLapseEvent)initWithServiceID:(id)a3;
@end

@implementation MSServiceRequestLapseEvent

- (MSServiceRequestLapseEvent)initWithServiceID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSServiceRequestLapseEvent;
  v5 = [(MSServiceRequestLapseEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSServiceRequestLapseEvent *)v5 setServiceID:v4];
  }

  return v6;
}

@end