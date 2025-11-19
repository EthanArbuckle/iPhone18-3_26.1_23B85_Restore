@interface _GCThumbstickHIDEventParser
- (_GCThumbstickHIDEventParser)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parse:(__IOHIDEvent *)a3 into:(id)a4;
@end

@implementation _GCThumbstickHIDEventParser

- (_GCThumbstickHIDEventParser)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCThumbstickHIDEventParser;
  v3 = a3;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:v3];
  v4->_requiredOrdinal = [v3 decodeIntegerForKey:{@"requiredOrdinal", v7.receiver, v7.super_class}];
  v4->_xAxisKey = [v3 decodeInt64ForKey:@"xAxisKey"];
  v5 = [v3 decodeInt64ForKey:@"yAxisKey"];

  v4->_yAxisKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCThumbstickHIDEventParser;
  v4 = a3;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_requiredOrdinal forKey:{@"requiredOrdinal", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_xAxisKey forKey:@"xAxisKey"];
  [v4 encodeInt64:self->_yAxisKey forKey:@"yAxisKey"];
}

- (void)parse:(__IOHIDEvent *)a3 into:(id)a4
{
  v6 = a4;
  if (IOHIDEventGetType() == 19)
  {
    if (self->_requiredOrdinal)
    {
      v7 = IOHIDEventGetChildren();
      if ([v7 count])
      {
        v8 = 0;
        do
        {
          [v7 objectAtIndexedSubscript:v8];

          if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 10)
          {
            IOHIDEventGetIntegerValue();
          }

          ++v8;
        }

        while (v8 < [v7 count]);
      }
    }

    else
    {
      if (self->_xAxisKey)
      {
        IOHIDEventGetDoubleValue();
        *&v9 = v9;
        [v6 setFloatValue:self->_xAxisKey forKey:v9];
      }

      if (self->_yAxisKey)
      {
        IOHIDEventGetDoubleValue();
        *&v10 = v10;
        [v6 setFloatValue:self->_yAxisKey forKey:v10];
      }

      v11.receiver = self;
      v11.super_class = _GCThumbstickHIDEventParser;
      [(_GCHIDEventParser *)&v11 parse:a3 into:v6];
    }
  }
}

@end