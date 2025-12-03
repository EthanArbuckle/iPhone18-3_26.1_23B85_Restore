@interface MTLThreadgroupMemoryBindingInternal
- (BOOL)isEqual:(id)equal;
- (id)formattedDescription:(unint64_t)description;
- (id)threadgroupMemoryStructType;
- (void)setStructType:(id)type doRetain:(BOOL)retain;
@end

@implementation MTLThreadgroupMemoryBindingInternal

- (id)threadgroupMemoryStructType
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

- (void)setStructType:(id)type doRetain:(BOOL)retain
{
  if (type)
  {

    BYTE1(v7) = retain;
    LOBYTE(v7) = 0;
    self->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:1 elementTypeDescription:type access:self->super._access alignment:self->_alignment dataSize:self->_dataSize elementIsIndirectArgumentBuffer:0 isConstantBuffer:v7 doRetain:?];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v11[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLThreadgroupMemoryBindingInternal;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:description];
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

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_alignment != *(equal + 84) || self->_dataSize != *(equal + 43) || self->_dataType != *(equal + 22))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLThreadgroupMemoryBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end