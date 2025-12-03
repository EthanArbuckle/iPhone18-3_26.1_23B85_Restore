@interface MTLBufferBindingInternal
- (BOOL)isEqual:(id)equal;
- (MTLPointerType)bufferPointerType;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)bufferDataSize;
- (void)dealloc;
- (void)setStructType:(id)type doRetain:(BOOL)retain;
- (void)setVertexDescriptorBuffer:(BOOL)buffer;
@end

@implementation MTLBufferBindingInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLBufferBindingInternal;
  [(MTLBindingInternal *)&v2 dealloc];
}

- (void)setVertexDescriptorBuffer:(BOOL)buffer
{
  if (buffer)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 169) = v3 & 0x80 | *(self + 169) & 0x7F;
}

- (void)setStructType:(id)type doRetain:(BOOL)retain
{
  if (type)
  {
    IsIndirectArgumentBuffer = structIsIndirectArgumentBuffer(type);
    isConstantBuffer = [(MTLType *)self->super._typeInfo isConstantBuffer];

    BYTE1(v9) = retain;
    LOBYTE(v9) = isConstantBuffer;
    self->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:1 elementTypeDescription:type access:self->super._access alignment:self->_alignment dataSize:self->_dataSize elementIsIndirectArgumentBuffer:IsIndirectArgumentBuffer isConstantBuffer:v9 doRetain:?];
  }
}

- (unint64_t)bufferDataSize
{
  if (self->_dataSize == -1)
  {
    return -1;
  }

  else
  {
    return self->_dataSize;
  }
}

- (MTLPointerType)bufferPointerType
{
  result = self->super._typeInfo;
  if (result)
  {
    if ([(MTLPointerType *)result dataType]== 60)
    {
      return self->super._typeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v11[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLBufferBindingInternal;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:description];
  v11[0] = v5;
  v11[1] = @"Alignment =";
  v11[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_alignment];
  v11[3] = v5;
  v11[4] = @"DataSize =";
  v11[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataSize];
  v11[6] = v5;
  v11[7] = @"DataType =";
  v11[8] = MTLDataTypeString(*(self + 84) & 0x7FFF);
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 9), "componentsJoinedByString:", @" "];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((*(equal + 84) ^ *(self + 84)) & 0x7FFF) != 0 || ((*(equal + 169) ^ *(self + 169)) & 0x80) != 0 || self->_alignment != *(equal + 85) || self->_dataSize != *(equal + 43) || self->_pixelFormat != *(equal + 22) || self->_aluType != *(equal + 23))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLBufferBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end