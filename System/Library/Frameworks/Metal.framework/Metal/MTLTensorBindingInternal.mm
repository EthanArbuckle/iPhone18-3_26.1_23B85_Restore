@interface MTLTensorBindingInternal
- (BOOL)isEqual:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLTensorBindingInternal

- (void)dealloc
{
  dimensions = self->_dimensions;
  if (dimensions)
  {
  }

  v4.receiver = self;
  v4.super_class = MTLTensorBindingInternal;
  [(MTLBindingInternal *)&v4 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v11[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLTensorBindingInternal;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:a3];
  v11[0] = v5;
  v11[1] = @"TensorDataType =";
  v11[2] = MTLTensorDataTypeString(self->_tensorDataType);
  v11[3] = v5;
  v11[4] = @"IndexType =";
  v11[5] = MTLDataTypeString(self->_indexType);
  v11[6] = v5;
  v11[7] = @"Dimensions =";
  v11[8] = [(MTLTensorExtents *)self->_dimensions formattedDescription:0];
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 9), "componentsJoinedByString:", @" "];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_tensorDataType == *(a3 + 21) && self->_indexType == *(a3 + 22))
    {
      dimensions = self->_dimensions;
      v6 = *(a3 + 23);
      if (dimensions)
      {
        if (v6)
        {
          v7 = [(MTLTensorExtents *)dimensions isEqual:?];
          if (!v7)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }

      else if (!v6)
      {
LABEL_13:
        v9.receiver = self;
        v9.super_class = MTLTensorBindingInternal;
        LOBYTE(v7) = [(MTLBindingInternal *)&v9 isEqual:a3];
        return v7;
      }
    }

    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

@end