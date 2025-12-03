@interface _GCScrollEventImpl
- (_GCScrollEventImpl)initWithScrollEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _GCScrollEventImpl

- (_GCScrollEventImpl)initWithScrollEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = _GCScrollEventImpl;
  v5 = [(_GCScrollEventImpl *)&v9 init];
  if (v5)
  {
    v5->timestamp = [eventCopy timestamp];
    [eventCopy x];
    v5->x = v6;
    [eventCopy y];
    v5->y = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setTimestamp:self->timestamp];
  *&v5 = self->x;
  [v4 setX:v5];
  *&v6 = self->y;
  [v4 setY:v6];
  return v4;
}

@end