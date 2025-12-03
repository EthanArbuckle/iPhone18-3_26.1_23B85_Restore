@interface SRPhotoplethysmogramAccelerometerSample
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccelSample:(id)sample;
- (NSMeasurement)samplingFrequency;
- (NSMeasurement)x;
- (NSMeasurement)y;
- (NSMeasurement)z;
- (SRPhotoplethysmogramAccelerometerSample)initWithCoder:(id)coder;
- (SRPhotoplethysmogramAccelerometerSample)initWithHAPPGAccelSample:(id)sample;
- (SRPhotoplethysmogramAccelerometerSample)initWithTimestamp:(int64_t)timestamp frequency:(double)frequency x:(double)x y:(double)y z:(double)z;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRPhotoplethysmogramAccelerometerSample

- (SRPhotoplethysmogramAccelerometerSample)initWithTimestamp:(int64_t)timestamp frequency:(double)frequency x:(double)x y:(double)y z:(double)z
{
  v13.receiver = self;
  v13.super_class = SRPhotoplethysmogramAccelerometerSample;
  result = [(SRPhotoplethysmogramAccelerometerSample *)&v13 init];
  if (result)
  {
    result->_nanosecondsSinceStart = timestamp;
    result->_rawFrequency = frequency;
    result->_rawX = x;
    result->_rawY = y;
    result->_rawZ = z;
  }

  return result;
}

- (SRPhotoplethysmogramAccelerometerSample)initWithHAPPGAccelSample:(id)sample
{
  timestamp = [sample timestamp];
  samplingFrequency = [sample samplingFrequency];
  [sample x];
  v8 = v7;
  [sample y];
  v10 = v9;
  [sample z];

  return [(SRPhotoplethysmogramAccelerometerSample *)self initWithTimestamp:timestamp frequency:samplingFrequency x:v8 y:v10 z:v11];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRPhotoplethysmogramAccelerometerSample *)self isEqualToAccelSample:equal];
}

- (BOOL)isEqualToAccelSample:(id)sample
{
  nanosecondsSinceStart = [(SRPhotoplethysmogramAccelerometerSample *)self nanosecondsSinceStart];
  if (nanosecondsSinceStart != [sample nanosecondsSinceStart] || !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramAccelerometerSample samplingFrequency](self, "samplingFrequency"), "isEqual:", objc_msgSend(sample, "samplingFrequency")) || !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramAccelerometerSample x](self, "x"), "isEqual:", objc_msgSend(sample, "x")) || !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramAccelerometerSample y](self, "y"), "isEqual:", objc_msgSend(sample, "y")))
  {
    return 0;
  }

  v6 = [(SRPhotoplethysmogramAccelerometerSample *)self z];
  v7 = [sample z];

  return [(NSMeasurement *)v6 isEqual:v7];
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{self->_nanosecondsSinceStart), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawFrequency), "hash"}] ^ v3;
  v5 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawX), "hash"}];
  v6 = v4 ^ v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawY), "hash"}];
  return v6 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawZ), "hash"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): nanosecondsSinceStart: %lld, frequency: %f, x: %f, y: %f, z: %f", NSStringFromClass(v4), self, -[SRPhotoplethysmogramAccelerometerSample nanosecondsSinceStart](self, "nanosecondsSinceStart"), *&self->_rawFrequency, *&self->_rawX, *&self->_rawY, *&self->_rawZ];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeInt64:self->_nanosecondsSinceStart forKey:@"nanosecondsSinceStart"];
  [coder encodeDouble:@"frequency" forKey:self->_rawFrequency];
  [coder encodeDouble:@"x" forKey:self->_rawX];
  [coder encodeDouble:@"y" forKey:self->_rawY];
  rawZ = self->_rawZ;

  [coder encodeDouble:@"z" forKey:rawZ];
}

- (SRPhotoplethysmogramAccelerometerSample)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeInt64ForKey:@"nanosecondsSinceStart"];
  [coder decodeDoubleForKey:@"frequency"];
  v8 = v7;
  [coder decodeDoubleForKey:@"x"];
  v10 = v9;
  [coder decodeDoubleForKey:@"y"];
  v12 = v11;
  [coder decodeDoubleForKey:@"z"];

  return [(SRPhotoplethysmogramAccelerometerSample *)self initWithTimestamp:v6 frequency:v8 x:v10 y:v12 z:v13];
}

- (NSMeasurement)samplingFrequency
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B038] unit:{"hertz"), self->_rawFrequency}];

  return v4;
}

- (NSMeasurement)x
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696AFD8] unit:{"gravity"), self->_rawX}];

  return v4;
}

- (NSMeasurement)y
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696AFD8] unit:{"gravity"), self->_rawY}];

  return v4;
}

- (NSMeasurement)z
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696AFD8] unit:{"gravity"), self->_rawZ}];

  return v4;
}

@end