@interface MTLObjectPayloadBindingInternal
- (BOOL)isEqual:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)objectPayloadStructType;
- (void)setStructType:(id)a3 doRetain:(BOOL)a4;
@end

@implementation MTLObjectPayloadBindingInternal

- (id)objectPayloadStructType
{
  if (self->_dataType == 1)
  {
    return [(MTLType *)self->super._typeInfo elementStructType];
  }

  else
  {
    return 0;
  }
}

- (void)setStructType:(id)a3 doRetain:(BOOL)a4
{
  if (a3)
  {

    BYTE1(v7) = a4;
    LOBYTE(v7) = 0;
    self->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:1 elementTypeDescription:a3 access:self->super._access alignment:self->_alignment dataSize:self->_dataSize elementIsIndirectArgumentBuffer:0 isConstantBuffer:v7 doRetain:?];
  }
}

- (id)formattedDescription:(unint64_t)a3
{
  v11[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLObjectPayloadBindingInternal;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:a3];
  v11[0] = v5;
  v11[1] = @"Alignment =";
  v11[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_alignment];
  v11[3] = v5;
  v11[4] = @"DataSize =";
  v11[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataSize];
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 6), "componentsJoinedByString:", @" "];
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
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_alignment != *(a3 + 84) || self->_dataSize != *(a3 + 43) || self->_dataType != *(a3 + 22))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLObjectPayloadBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:a3];
}

@end