@interface _GCButtonEventImpl
- (_GCButtonEventImpl)initWithButtonEvent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _GCButtonEventImpl

- (_GCButtonEventImpl)initWithButtonEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _GCButtonEventImpl;
  v5 = [(_GCButtonEventImpl *)&v7 init];
  if (v5)
  {
    v5->timestamp = [v4 timestamp];
    v5->mask = [v4 mask];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setTimestamp:self->timestamp];
  [v4 setMask:self->mask];
  return v4;
}

@end