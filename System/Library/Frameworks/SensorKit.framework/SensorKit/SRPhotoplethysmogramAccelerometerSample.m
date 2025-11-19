@interface SRPhotoplethysmogramAccelerometerSample
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccelSample:(id)a3;
- (NSMeasurement)samplingFrequency;
- (NSMeasurement)x;
- (NSMeasurement)y;
- (NSMeasurement)z;
- (SRPhotoplethysmogramAccelerometerSample)initWithCoder:(id)a3;
- (SRPhotoplethysmogramAccelerometerSample)initWithHAPPGAccelSample:(id)a3;
- (SRPhotoplethysmogramAccelerometerSample)initWithTimestamp:(int64_t)a3 frequency:(double)a4 x:(double)a5 y:(double)a6 z:(double)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRPhotoplethysmogramAccelerometerSample

- (SRPhotoplethysmogramAccelerometerSample)initWithTimestamp:(int64_t)a3 frequency:(double)a4 x:(double)a5 y:(double)a6 z:(double)a7
{
  v13.receiver = self;
  v13.super_class = SRPhotoplethysmogramAccelerometerSample;
  result = [(SRPhotoplethysmogramAccelerometerSample *)&v13 init];
  if (result)
  {
    result->_nanosecondsSinceStart = a3;
    result->_rawFrequency = a4;
    result->_rawX = a5;
    result->_rawY = a6;
    result->_rawZ = a7;
  }

  return result;
}

- (SRPhotoplethysmogramAccelerometerSample)initWithHAPPGAccelSample:(id)a3
{
  v5 = [a3 timestamp];
  v6 = [a3 samplingFrequency];
  [a3 x];
  v8 = v7;
  [a3 y];
  v10 = v9;
  [a3 z];

  return [(SRPhotoplethysmogramAccelerometerSample *)self initWithTimestamp:v5 frequency:v6 x:v8 y:v10 z:v11];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRPhotoplethysmogramAccelerometerSample *)self isEqualToAccelSample:a3];
}

- (BOOL)isEqualToAccelSample:(id)a3
{
  v5 = [(SRPhotoplethysmogramAccelerometerSample *)self nanosecondsSinceStart];
  if (v5 != [a3 nanosecondsSinceStart] || !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramAccelerometerSample samplingFrequency](self, "samplingFrequency"), "isEqual:", objc_msgSend(a3, "samplingFrequency")) || !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramAccelerometerSample x](self, "x"), "isEqual:", objc_msgSend(a3, "x")) || !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramAccelerometerSample y](self, "y"), "isEqual:", objc_msgSend(a3, "y")))
  {
    return 0;
  }

  v6 = [(SRPhotoplethysmogramAccelerometerSample *)self z];
  v7 = [a3 z];

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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInt64:self->_nanosecondsSinceStart forKey:@"nanosecondsSinceStart"];
  [a3 encodeDouble:@"frequency" forKey:self->_rawFrequency];
  [a3 encodeDouble:@"x" forKey:self->_rawX];
  [a3 encodeDouble:@"y" forKey:self->_rawY];
  rawZ = self->_rawZ;

  [a3 encodeDouble:@"z" forKey:rawZ];
}

- (SRPhotoplethysmogramAccelerometerSample)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeInt64ForKey:@"nanosecondsSinceStart"];
  [a3 decodeDoubleForKey:@"frequency"];
  v8 = v7;
  [a3 decodeDoubleForKey:@"x"];
  v10 = v9;
  [a3 decodeDoubleForKey:@"y"];
  v12 = v11;
  [a3 decodeDoubleForKey:@"z"];

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