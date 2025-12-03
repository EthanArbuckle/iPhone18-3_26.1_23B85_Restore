@interface ARGyroscopeData
+ (id)grabNextFromReader:(id)reader timestamp:(double *)timestamp;
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- (ARGyroscopeData)initWithCoder:(id)coder;
- (ARGyroscopeData)initWithDictionary:(id)dictionary;
- (ARGyroscopeData)initWithGyroData:(id)data;
- (ARGyroscopeData)initWithMetadataWrapper:(id)wrapper;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeToDictionary;
- (id)encodeToMetadataWrapper;
- (void)appendToWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGyroscopeData

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeDouble:@"rotationX" forKey:self->_rotationRate.x];
  [coderCopy encodeDouble:@"rotationY" forKey:self->_rotationRate.y];
  [coderCopy encodeDouble:@"rotationZ" forKey:self->_rotationRate.z];
}

- (ARGyroscopeData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ARGyroscopeData;
  v5 = [(ARGyroscopeData *)&v12 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    [(ARGyroscopeData *)v5 setTimestamp:?];
    [coderCopy decodeDoubleForKey:@"rotationX"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"rotationY"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"rotationZ"];
    [(ARGyroscopeData *)v5 setRotationRate:v7, v9, v10];
  }

  return v5;
}

- (id)encodeToDictionary
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"x";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rotationRate.x];
  v10[0] = v3;
  v9[1] = @"y";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rotationRate.y];
  v10[1] = v4;
  v9[2] = @"z";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rotationRate.z];
  v10[2] = v5;
  v9[3] = @"t";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (ARGyroscopeData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ARGyroscopeData;
  v5 = [(ARGyroscopeData *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"t"];
    [v6 doubleValue];
    v5->_timestamp = v7;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"x"];
    [v8 doubleValue];
    v5->_rotationRate.x = v9;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"y"];
    [v10 doubleValue];
    v5->_rotationRate.y = v11;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"z"];
    [v12 doubleValue];
    v5->_rotationRate.z = v13;
  }

  return v5;
}

- (id)encodeToMetadataWrapper
{
  v3 = objc_opt_new();
  [v3 setTimestamp:self->_timestamp];
  x = self->_rotationRate.x;
  rotationRate = [v3 rotationRate];
  *&v6 = x;
  [rotationRate setX:v6];

  y = self->_rotationRate.y;
  rotationRate2 = [v3 rotationRate];
  *&v9 = y;
  [rotationRate2 setY:v9];

  z = self->_rotationRate.z;
  rotationRate3 = [v3 rotationRate];
  *&v12 = z;
  [rotationRate3 setZ:v12];

  v13 = [MEMORY[0x1E698BEB0] encodeGyroscopeData:v3 andAdditionalData:0];

  return v13;
}

- (ARGyroscopeData)initWithMetadataWrapper:(id)wrapper
{
  v4 = [MEMORY[0x1E698BEB0] decodeGyro:wrapper];
  v5 = [(ARGyroscopeData *)self initWithGyroData:v4];

  return v5;
}

- (ARGyroscopeData)initWithGyroData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ARGyroscopeData;
  v5 = [(ARGyroscopeData *)&v14 init];
  if (v5)
  {
    [dataCopy timestamp];
    v5->_timestamp = v6;
    rotationRate = [dataCopy rotationRate];
    [rotationRate x];
    v5->_rotationRate.x = v8;

    rotationRate2 = [dataCopy rotationRate];
    [rotationRate2 y];
    v5->_rotationRate.y = v10;

    rotationRate3 = [dataCopy rotationRate];
    [rotationRate3 z];
    v5->_rotationRate.z = v12;
  }

  return v5;
}

- (void)appendToWriter:(id)writer
{
  writerCopy = writer;
  v14 = objc_opt_new();
  [v14 setTimestamp:self->_timestamp];
  x = self->_rotationRate.x;
  rotationRate = [v14 rotationRate];
  *&v7 = x;
  [rotationRate setX:v7];

  y = self->_rotationRate.y;
  rotationRate2 = [v14 rotationRate];
  *&v10 = y;
  [rotationRate2 setY:v10];

  z = self->_rotationRate.z;
  rotationRate3 = [v14 rotationRate];
  *&v13 = z;
  [rotationRate3 setZ:v13];

  [writerCopy processGyroscopeData:v14 andAdditionalData:0];
}

+ (id)grabNextFromReader:(id)reader timestamp:(double *)timestamp
{
  v25 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  array = [MEMORY[0x1E695DF70] array];
  v7 = objc_autoreleasePoolPush();
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v21 = *MEMORY[0x1E6960CA8];
  v22 = v8;
  v23 = *(MEMORY[0x1E6960CA8] + 32);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [readerCopy grabNextRawGyroData:&v21 location:0];
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

        v14 = [objc_alloc(objc_opt_class()) initWithGyroData:*(*(&v17 + 1) + 8 * i)];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v11);
  }

  *&v16.value = v21;
  v16.epoch = v22;
  *timestamp = CMTimeGetSeconds(&v16);
  objc_autoreleasePoolPop(v7);

  return array;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  if (result)
  {
    *(result + 1) = *&self->_timestamp;
    v5 = *&self->_rotationRate.x;
    *(result + 4) = *&self->_rotationRate.z;
    *(result + 1) = v5;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = vabdd_f64(self->_timestamp, v5[1]) < 2.22044605e-16 && vabdd_f64(self->_rotationRate.x, v5[2]) < 0.00000011920929 && vabdd_f64(self->_rotationRate.y, v5[3]) < 0.00000011920929 && vabdd_f64(self->_rotationRate.z, v5[4]) < 0.00000011920929;
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

  [(ARGyroscopeData *)self timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  [(ARGyroscopeData *)self rotationRate];
  v9 = v8;
  [(ARGyroscopeData *)self rotationRate];
  v11 = v10;
  [(ARGyroscopeData *)self rotationRate];
  [v6 appendFormat:@" rotationRate=(%f, %f, %f)", v9, v11, v12];
  [v6 appendString:@">"];

  return v6;
}

- ($1AB5FA073B851C12C2339EC22442E995)rotationRate
{
  x = self->_rotationRate.x;
  y = self->_rotationRate.y;
  z = self->_rotationRate.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end