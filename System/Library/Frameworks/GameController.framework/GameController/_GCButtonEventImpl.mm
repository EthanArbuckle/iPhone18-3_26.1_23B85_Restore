@interface _GCButtonEventImpl
- (_GCButtonEventImpl)initWithButtonEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _GCButtonEventImpl

- (_GCButtonEventImpl)initWithButtonEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = _GCButtonEventImpl;
  v5 = [(_GCButtonEventImpl *)&v7 init];
  if (v5)
  {
    v5->timestamp = [eventCopy timestamp];
    v5->mask = [eventCopy mask];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setTimestamp:self->timestamp];
  [v4 setMask:self->mask];
  return v4;
}

@end