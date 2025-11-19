@interface _GCPointerEventImpl
- (_GCPointerEventImpl)initWithPointerEvent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _GCPointerEventImpl

- (_GCPointerEventImpl)initWithPointerEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCPointerEventImpl;
  v5 = [(_GCPointerEventImpl *)&v9 init];
  if (v5)
  {
    v5->timestamp = [v4 timestamp];
    [v4 x];
    v5->x = v6;
    [v4 y];
    v5->y = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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