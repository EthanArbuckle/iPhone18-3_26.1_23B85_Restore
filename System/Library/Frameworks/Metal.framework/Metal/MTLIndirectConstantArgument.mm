@interface MTLIndirectConstantArgument
- (BOOL)isEqual:(id)equal;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLIndirectConstantArgument

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLIndirectConstantArgument;
  [(MTLBindingInternal *)&v2 dealloc];
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v12[9] = *MEMORY[0x1E69E9840];
  v6 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v7 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLIndirectConstantArgument;
  v8 = [(MTLBindingInternal *)&v11 formattedDescription:description];
  v12[0] = v6;
  v12[1] = @"Alignment =";
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_alignment];
  v12[3] = v6;
  v12[4] = @"DataSize =";
  v12[5] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_dataSize];
  v12[6] = v6;
  v12[7] = @"DataType =";
  v12[8] = MTLDataTypeString(self->_dataType);
  result = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 9), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_dataType != *(equal + 84) || self->_alignment != *(equal + 85) || self->_dataSize != *(equal + 86) || self->_pixelFormat != *(equal + 22) || self->_aluType != *(equal + 23))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLIndirectConstantArgument;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end