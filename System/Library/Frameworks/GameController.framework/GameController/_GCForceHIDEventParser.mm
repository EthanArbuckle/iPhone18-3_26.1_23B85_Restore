@interface _GCForceHIDEventParser
- (_GCForceHIDEventParser)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parse:(__IOHIDEvent *)a3 into:(id)a4;
@end

@implementation _GCForceHIDEventParser

- (_GCForceHIDEventParser)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCForceHIDEventParser;
  v3 = a3;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:v3];
  v5 = [v3 decodeInt64ForKey:{@"_forceKey", v7.receiver, v7.super_class}];

  v4->_forceKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCForceHIDEventParser;
  v4 = a3;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_forceKey forKey:{@"_forceKey", v5.receiver, v5.super_class}];
}

- (void)parse:(__IOHIDEvent *)a3 into:(id)a4
{
  v6 = a4;
  if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 32 && IOHIDEventGetIntegerValue() == 1172)
  {
    if (self->_forceKey)
    {
      v7 = *IOHIDEventGetDataValue();
      *&v7 = v7;
      [v6 setFloatValue:self->_forceKey forKey:v7];
    }

    v8.receiver = self;
    v8.super_class = _GCForceHIDEventParser;
    [(_GCHIDEventParser *)&v8 parse:a3 into:v6];
  }
}

@end