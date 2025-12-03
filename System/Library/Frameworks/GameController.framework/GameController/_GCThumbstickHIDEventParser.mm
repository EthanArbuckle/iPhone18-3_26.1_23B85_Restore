@interface _GCThumbstickHIDEventParser
- (_GCThumbstickHIDEventParser)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)parse:(__IOHIDEvent *)parse into:(id)into;
@end

@implementation _GCThumbstickHIDEventParser

- (_GCThumbstickHIDEventParser)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _GCThumbstickHIDEventParser;
  coderCopy = coder;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:coderCopy];
  v4->_requiredOrdinal = [coderCopy decodeIntegerForKey:{@"requiredOrdinal", v7.receiver, v7.super_class}];
  v4->_xAxisKey = [coderCopy decodeInt64ForKey:@"xAxisKey"];
  v5 = [coderCopy decodeInt64ForKey:@"yAxisKey"];

  v4->_yAxisKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _GCThumbstickHIDEventParser;
  coderCopy = coder;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_requiredOrdinal forKey:{@"requiredOrdinal", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_xAxisKey forKey:@"xAxisKey"];
  [coderCopy encodeInt64:self->_yAxisKey forKey:@"yAxisKey"];
}

- (void)parse:(__IOHIDEvent *)parse into:(id)into
{
  intoCopy = into;
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
        [intoCopy setFloatValue:self->_xAxisKey forKey:v9];
      }

      if (self->_yAxisKey)
      {
        IOHIDEventGetDoubleValue();
        *&v10 = v10;
        [intoCopy setFloatValue:self->_yAxisKey forKey:v10];
      }

      v11.receiver = self;
      v11.super_class = _GCThumbstickHIDEventParser;
      [(_GCHIDEventParser *)&v11 parse:parse into:intoCopy];
    }
  }
}

@end