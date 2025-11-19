@interface ARAccelerometerData
+ (id)grabNextFromReader:(id)a3 timestamp:(double *)a4;
- ($1AB5FA073B851C12C2339EC22442E995)acceleration;
- (ARAccelerometerData)initWithAccelData:(id)a3;
- (ARAccelerometerData)initWithCoder:(id)a3;
- (ARAccelerometerData)initWithDictionary:(id)a3;
- (ARAccelerometerData)initWithMetadataWrapper:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeToDictionary;
- (id)encodeToMetadataWrapper;
- (void)appendToWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARAccelerometerData

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeDouble:@"temperature" forKey:self->_temperature];
  [v5 encodeDouble:@"accelerationX" forKey:self->_acceleration.x];
  [v5 encodeDouble:@"accelerationY" forKey:self->_acceleration.y];
  [v5 encodeDouble:@"accelerationZ" forKey:self->_acceleration.z];
}

- (ARAccelerometerData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARAccelerometerData;
  v5 = [(ARAccelerometerData *)&v12 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    [(ARAccelerometerData *)v5 setTimestamp:?];
    [v4 decodeDoubleForKey:@"temperature"];
    [(ARAccelerometerData *)v5 setTemperature:?];
    [v4 decodeDoubleForKey:@"accelerationX"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"accelerationY"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"accelerationZ"];
    [(ARAccelerometerData *)v5 setAcceleration:v7, v9, v10];
  }

  return v5;
}

- (id)encodeToDictionary
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"x";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_acceleration.x];
  v11[0] = v3;
  v10[1] = @"y";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_acceleration.y];
  v11[1] = v4;
  v10[2] = @"z";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_acceleration.z];
  v11[2] = v5;
  v10[3] = @"t";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v11[3] = v6;
  v10[4] = @"p";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_temperature];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (ARAccelerometerData)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ARAccelerometerData;
  v5 = [(ARAccelerometerData *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"t"];
    [v6 doubleValue];
    v5->_timestamp = v7;

    v8 = [v4 objectForKeyedSubscript:@"p"];
    [v8 doubleValue];
    v5->_temperature = v9;

    v10 = [v4 objectForKeyedSubscript:@"x"];
    [v10 doubleValue];
    v5->_acceleration.x = v11;

    v12 = [v4 objectForKeyedSubscript:@"y"];
    [v12 doubleValue];
    v5->_acceleration.y = v13;

    v14 = [v4 objectForKeyedSubscript:@"z"];
    [v14 doubleValue];
    v5->_acceleration.z = v15;
  }

  return v5;
}

- (id)encodeToMetadataWrapper
{
  v3 = objc_opt_new();
  [v3 setTimestamp:self->_timestamp];
  temperature = self->_temperature;
  *&temperature = temperature;
  [v3 setTemperature:temperature];
  x = self->_acceleration.x;
  v6 = [v3 acceleration];
  *&v7 = x;
  [v6 setX:v7];

  y = self->_acceleration.y;
  v9 = [v3 acceleration];
  *&v10 = y;
  [v9 setY:v10];

  z = self->_acceleration.z;
  v12 = [v3 acceleration];
  *&v13 = z;
  [v12 setZ:v13];

  v14 = [MEMORY[0x1E698BEB0] encodeAccelerometerData:v3 andAdditionalData:0];

  return v14;
}

- (ARAccelerometerData)initWithMetadataWrapper:(id)a3
{
  v4 = [MEMORY[0x1E698BEB0] decodeAccel:a3];
  v5 = [(ARAccelerometerData *)self initWithAccelData:v4];

  return v5;
}

- (ARAccelerometerData)initWithAccelData:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ARAccelerometerData;
  v5 = [(ARAccelerometerData *)&v16 init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    [v4 temperature];
    v5->_temperature = v7;
    v8 = [v4 acceleration];
    [v8 x];
    v5->_acceleration.x = v9;

    v10 = [v4 acceleration];
    [v10 y];
    v5->_acceleration.y = v11;

    v12 = [v4 acceleration];
    [v12 z];
    v5->_acceleration.z = v13;

    v14 = v5;
  }

  return v5;
}

- (void)appendToWriter:(id)a3
{
  v4 = a3;
  v15 = objc_opt_new();
  [v15 setTimestamp:self->_timestamp];
  temperature = self->_temperature;
  *&temperature = temperature;
  [v15 setTemperature:temperature];
  x = self->_acceleration.x;
  v7 = [v15 acceleration];
  *&v8 = x;
  [v7 setX:v8];

  y = self->_acceleration.y;
  v10 = [v15 acceleration];
  *&v11 = y;
  [v10 setY:v11];

  z = self->_acceleration.z;
  v13 = [v15 acceleration];
  *&v14 = z;
  [v13 setZ:v14];

  [v4 processAccelerometerData:v15 andAdditionalData:0];
}

+ (id)grabNextFromReader:(id)a3 timestamp:(double *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = objc_autoreleasePoolPush();
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v21 = *MEMORY[0x1E6960CA8];
  v22 = v8;
  v23 = *(MEMORY[0x1E6960CA8] + 32);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v5 grabNextRawAccelData:&v21 location:0];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_alloc(objc_opt_class()) initWithAccelData:*(*(&v17 + 1) + 8 * i)];
        [v6 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v11);
  }

  *&v16.value = v21;
  v16.epoch = v22;
  *a4 = CMTimeGetSeconds(&v16);
  objc_autoreleasePoolPop(v7);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    *(result + 1) = *&self->_timestamp;
    *(result + 2) = *&self->_temperature;
    v5 = *&self->_acceleration.x;
    *(result + 5) = *&self->_acceleration.z;
    *(result + 24) = v5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = vabdd_f64(self->_timestamp, v5[1]) < 0.00000011920929 && vabdd_f64(self->_acceleration.x, v5[3]) < 0.00000011920929 && vabdd_f64(self->_acceleration.y, v5[4]) < 0.00000011920929 && vabdd_f64(self->_acceleration.z, v5[5]) < 0.00000011920929 && vabdd_f64(self->_temperature, v5[2]) < 0.00000011920929;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [(ARAccelerometerData *)self timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  [(ARAccelerometerData *)self acceleration];
  v9 = v8;
  [(ARAccelerometerData *)self acceleration];
  v11 = v10;
  [(ARAccelerometerData *)self acceleration];
  [v6 appendFormat:@" acceleration=(%f, %f, %f)", v9, v11, v12];
  [v6 appendString:@">"];

  return v6;
}

- ($1AB5FA073B851C12C2339EC22442E995)acceleration
{
  x = self->_acceleration.x;
  y = self->_acceleration.y;
  z = self->_acceleration.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end