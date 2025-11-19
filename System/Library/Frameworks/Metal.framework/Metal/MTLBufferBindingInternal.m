@interface MTLBufferBindingInternal
- (BOOL)isEqual:(id)a3;
- (MTLPointerType)bufferPointerType;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)bufferDataSize;
- (void)dealloc;
- (void)setStructType:(id)a3 doRetain:(BOOL)a4;
- (void)setVertexDescriptorBuffer:(BOOL)a3;
@end

@implementation MTLBufferBindingInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLBufferBindingInternal;
  [(MTLBindingInternal *)&v2 dealloc];
}

- (void)setVertexDescriptorBuffer:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 169) = v3 & 0x80 | *(self + 169) & 0x7F;
}

- (void)setStructType:(id)a3 doRetain:(BOOL)a4
{
  if (a3)
  {
    IsIndirectArgumentBuffer = structIsIndirectArgumentBuffer(a3);
    v8 = [(MTLType *)self->super._typeInfo isConstantBuffer];

    BYTE1(v9) = a4;
    LOBYTE(v9) = v8;
    self->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:1 elementTypeDescription:a3 access:self->super._access alignment:self->_alignment dataSize:self->_dataSize elementIsIndirectArgumentBuffer:IsIndirectArgumentBuffer isConstantBuffer:v9 doRetain:?];
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

- (id)formattedDescription:(unint64_t)a3
{
  v11[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLBufferBindingInternal;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((*(a3 + 84) ^ *(self + 84)) & 0x7FFF) != 0 || ((*(a3 + 169) ^ *(self + 169)) & 0x80) != 0 || self->_alignment != *(a3 + 85) || self->_dataSize != *(a3 + 43) || self->_pixelFormat != *(a3 + 22) || self->_aluType != *(a3 + 23))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLBufferBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:a3];
}

@end