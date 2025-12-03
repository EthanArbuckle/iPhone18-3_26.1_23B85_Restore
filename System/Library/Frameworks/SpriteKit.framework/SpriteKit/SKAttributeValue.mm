@interface SKAttributeValue
+ (SKAttributeValue)valueWithFloat:(float)value;
+ (SKAttributeValue)valueWithVectorFloat2:(vector_float2)value;
+ (SKAttributeValue)valueWithVectorFloat3:(vector_float3)value;
+ (SKAttributeValue)valueWithVectorFloat4:(vector_float4)value;
- (BOOL)copyValueTo:(void *)to type:(int64_t)type count:(unsigned int)count;
- (BOOL)isEqualToAttributeValue:(id)value;
- (SKAttributeValue)init;
- (SKAttributeValue)initWithCoder:(id)coder;
- (vector_float3)vectorFloat3Value;
- (void)encodeWithCoder:(id)coder;
- (void)setVectorFloat2Value:(vector_float2)vectorFloat2Value;
- (void)setVectorFloat3Value:(vector_float3)vectorFloat3Value;
- (void)setVectorFloat4Value:(vector_float4)vectorFloat4Value;
@end

@implementation SKAttributeValue

- (BOOL)copyValueTo:(void *)to type:(int64_t)type count:(unsigned int)count
{
  v5 = type - 1;
  if ((type - 1) <= 7)
  {
    countCopy = count;
    if (count)
    {
      v9 = qword_21C4FC470[v5];
      v10 = qword_21C4FC4B0[v5];
      do
      {
        memcpy(to, self + v9, v10);
        to = to + v10;
        --countCopy;
      }

      while (countCopy);
    }
  }

  return v5 < 8;
}

+ (SKAttributeValue)valueWithFloat:(float)value
{
  v4 = objc_alloc_init(SKAttributeValue);
  *&v5 = value;
  [(SKAttributeValue *)v4 setFloatValue:v5];

  return v4;
}

+ (SKAttributeValue)valueWithVectorFloat2:(vector_float2)value
{
  v4 = objc_alloc_init(SKAttributeValue);
  [(SKAttributeValue *)v4 setVectorFloat2Value:*&value];

  return v4;
}

+ (SKAttributeValue)valueWithVectorFloat3:(vector_float3)value
{
  v6 = v3;
  v4 = objc_alloc_init(SKAttributeValue);
  [(SKAttributeValue *)v4 setVectorFloat3Value:v6];

  return v4;
}

+ (SKAttributeValue)valueWithVectorFloat4:(vector_float4)value
{
  v5 = *value.i64;
  v3 = objc_alloc_init(SKAttributeValue);
  [(SKAttributeValue *)v3 setVectorFloat4Value:v5];

  return v3;
}

- (void)setVectorFloat2Value:(vector_float2)vectorFloat2Value
{
  v4 = vectorFloat2Value.f32[1];
  *self->floatValues = vectorFloat2Value;
  self->halfFloatValues[0] = floatToHalfFloat(vectorFloat2Value.f32[0]);
  self->halfFloatValues[1] = floatToHalfFloat(v4);
}

- (vector_float3)vectorFloat3Value
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setVectorFloat3Value:(vector_float3)vectorFloat3Value
{
  v5 = *(&v3 + 1);
  *self->floatValues = v3;
  v6 = *(&v3 + 2);
  self->floatValues[2] = *(&v3 + 2);
  self->halfFloatValues[0] = floatToHalfFloat(*&v3);
  self->halfFloatValues[1] = floatToHalfFloat(v5);
  self->halfFloatValues[2] = floatToHalfFloat(v6);
}

- (void)setVectorFloat4Value:(vector_float4)vectorFloat4Value
{
  v4 = vectorFloat4Value.f32[3];
  v5 = vectorFloat4Value.f32[2];
  v6 = vectorFloat4Value.f32[1];
  *self->floatValues = vectorFloat4Value;
  self->halfFloatValues[0] = floatToHalfFloat(vectorFloat4Value.f32[0]);
  self->halfFloatValues[1] = floatToHalfFloat(v6);
  self->halfFloatValues[2] = floatToHalfFloat(v5);
  self->halfFloatValues[3] = floatToHalfFloat(v4);
}

- (SKAttributeValue)init
{
  v3.receiver = self;
  v3.super_class = SKAttributeValue;
  result = [(SKAttributeValue *)&v3 init];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

- (SKAttributeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SKAttributeValue *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    v5->_type = [v6 integerValue];

    [coderCopy decodeFloatForKey:@"_floatValues0"];
    v11 = v7;
    [coderCopy decodeFloatForKey:@"_floatValues1"];
    v10 = v8;
    [coderCopy decodeFloatForKey:@"_floatValues2"];
    [coderCopy decodeFloatForKey:@"_floatValues3"];
    [(SKAttributeValue *)v5 setVectorFloat4Value:COERCE_DOUBLE(__PAIR64__(v10, v11))];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"_type"];

  *&v5 = self->floatValues[0];
  [coderCopy encodeFloat:@"_floatValues0" forKey:v5];
  *&v6 = self->floatValues[1];
  [coderCopy encodeFloat:@"_floatValues1" forKey:v6];
  *&v7 = self->floatValues[2];
  [coderCopy encodeFloat:@"_floatValues2" forKey:v7];
  *&v8 = self->floatValues[3];
  [coderCopy encodeFloat:@"_floatValues3" forKey:v8];
}

- (BOOL)isEqualToAttributeValue:(id)value
{
  valueCopy = value;
  if (self == valueCopy)
  {
    v13 = 1;
  }

  else if ((COERCE_UNSIGNED_INT(self->floatValues[0] - valueCopy->floatValues[0]) & 0x60000000) != 0 || (COERCE_UNSIGNED_INT(self->floatValues[1] - valueCopy->floatValues[1]) & 0x60000000) != 0 || (COERCE_UNSIGNED_INT(self->floatValues[2] - valueCopy->floatValues[2]) & 0x60000000) != 0 || (v5 = valueCopy->floatValues[3], v6 = self->floatValues[3] - v5, (LODWORD(v6) & 0x60000000) != 0) || (LOWORD(v6) = self->halfFloatValues[0], LOWORD(v5) = valueCopy->halfFloatValues[0], v7 = LODWORD(v5), v8 = LODWORD(v6) - v7, (LODWORD(v8) & 0x60000000) != 0) || (LOWORD(v8) = self->halfFloatValues[1], LOWORD(v7) = valueCopy->halfFloatValues[1], v9 = LODWORD(v7), v10 = LODWORD(v8) - v9, (LODWORD(v10) & 0x60000000) != 0) || (LOWORD(v10) = self->halfFloatValues[2], LOWORD(v9) = valueCopy->halfFloatValues[2], v11 = LODWORD(v9), v12 = LODWORD(v10) - v11, (LODWORD(v12) & 0x60000000) != 0))
  {
    v13 = 0;
  }

  else
  {
    LOWORD(v12) = self->halfFloatValues[3];
    LOWORD(v11) = valueCopy->halfFloatValues[3];
    v13 = (COERCE_UNSIGNED_INT(LODWORD(v12) - LODWORD(v11)) & 0x60000000) == 0;
  }

  return v13;
}

@end