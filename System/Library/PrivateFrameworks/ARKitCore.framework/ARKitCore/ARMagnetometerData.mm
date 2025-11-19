@interface ARMagnetometerData
+ (id)grabNextFromReader:(id)a3 timestamp:(double *)a4;
- ($1AB5FA073B851C12C2339EC22442E995)magneticField;
- (ARMagnetometerData)initWithCoder:(id)a3;
- (ARMagnetometerData)initWithCompassData:(id)a3;
- (ARMagnetometerData)initWithMetadataWrapper:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeToMetadataWrapper;
- (void)appendToWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARMagnetometerData

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeDouble:@"magneticFieldX" forKey:self->_magneticField.x];
  [v5 encodeDouble:@"magneticFieldY" forKey:self->_magneticField.y];
  [v5 encodeDouble:@"magneticFieldZ" forKey:self->_magneticField.z];
}

- (ARMagnetometerData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARMagnetometerData;
  v5 = [(ARMagnetometerData *)&v12 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    [(ARMagnetometerData *)v5 setTimestamp:?];
    [v4 decodeDoubleForKey:@"magneticFieldX"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"magneticFieldY"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"magneticFieldZ"];
    [(ARMagnetometerData *)v5 setMagneticField:v7, v9, v10];
  }

  return v5;
}

- (id)encodeToMetadataWrapper
{
  v3 = objc_opt_new();
  [v3 setTimestamp:self->_timestamp];
  x = self->_magneticField.x;
  v5 = [v3 fieldValues];
  *&v6 = x;
  [v5 setX:v6];

  y = self->_magneticField.y;
  v8 = [v3 fieldValues];
  *&v9 = y;
  [v8 setY:v9];

  z = self->_magneticField.z;
  v11 = [v3 fieldValues];
  *&v12 = z;
  [v11 setZ:v12];

  v13 = [MEMORY[0x1E698BEB0] encodeCompassData:v3];

  return v13;
}

- (ARMagnetometerData)initWithMetadataWrapper:(id)a3
{
  v4 = [MEMORY[0x1E698BEB0] decodeCompass:a3];
  v5 = [(ARMagnetometerData *)self initWithCompassData:v4];

  return v5;
}

- (ARMagnetometerData)initWithCompassData:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ARMagnetometerData;
  v5 = [(ARMagnetometerData *)&v15 init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    v7 = [v4 fieldValues];
    [v7 x];
    v5->_magneticField.x = v8;

    v9 = [v4 fieldValues];
    [v9 y];
    v5->_magneticField.y = v10;

    v11 = [v4 fieldValues];
    [v11 z];
    v5->_magneticField.z = v12;

    v13 = v5;
  }

  return v5;
}

- (void)appendToWriter:(id)a3
{
  v4 = a3;
  v14 = objc_opt_new();
  [v14 setTimestamp:self->_timestamp];
  x = self->_magneticField.x;
  v6 = [v14 fieldValues];
  *&v7 = x;
  [v6 setX:v7];

  y = self->_magneticField.y;
  v9 = [v14 fieldValues];
  *&v10 = y;
  [v9 setY:v10];

  z = self->_magneticField.z;
  v12 = [v14 fieldValues];
  *&v13 = z;
  [v12 setZ:v13];

  [v4 processCompassData:v14];
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
  v9 = [v5 grabNextRawCompassData:&v21 location:0];
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

        v14 = [objc_alloc(objc_opt_class()) initWithCompassData:*(*(&v17 + 1) + 8 * i)];
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
    v5 = *&self->_magneticField.x;
    *(result + 4) = *&self->_magneticField.z;
    *(result + 1) = v5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = vabdd_f64(self->_timestamp, v5[1]) < 0.00000011920929 && vabdd_f64(self->_magneticField.x, v5[2]) < 0.00000011920929 && vabdd_f64(self->_magneticField.y, v5[3]) < 0.00000011920929 && vabdd_f64(self->_magneticField.z, v5[4]) < 0.00000011920929;
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

  [(ARMagnetometerData *)self timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  [(ARMagnetometerData *)self magneticField];
  v9 = v8;
  [(ARMagnetometerData *)self magneticField];
  v11 = v10;
  [(ARMagnetometerData *)self magneticField];
  [v6 appendFormat:@" magneticField=(%f, %f, %f)", v9, v11, v12];
  [v6 appendString:@">"];

  return v6;
}

- ($1AB5FA073B851C12C2339EC22442E995)magneticField
{
  x = self->_magneticField.x;
  y = self->_magneticField.y;
  z = self->_magneticField.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end