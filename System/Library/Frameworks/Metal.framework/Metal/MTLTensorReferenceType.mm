@interface MTLTensorReferenceType
- (BOOL)isEqual:(id)equal;
- (MTLTensorReferenceType)initWithTensorDataType:(int64_t)type indexType:(unint64_t)indexType dimensions:(id)dimensions access:(unint64_t)access;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLTensorReferenceType

- (MTLTensorReferenceType)initWithTensorDataType:(int64_t)type indexType:(unint64_t)indexType dimensions:(id)dimensions access:(unint64_t)access
{
  v13.receiver = self;
  v13.super_class = MTLTensorReferenceType;
  v10 = [(MTLTensorReferenceType *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_dataType = 140;
    v10->_tensorDataType = type;
    v10->_indexType = indexType;
    v10->_dimensions = [dimensions copy];
    v11->_access = access;
  }

  return v11;
}

- (void)dealloc
{
  dimensions = self->_dimensions;
  if (dimensions)
  {
  }

  v4.receiver = self;
  v4.super_class = MTLTensorReferenceType;
  [(MTLTensorReferenceType *)&v4 dealloc];
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v11[15] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v11[0] = v5;
  v11[1] = @"DataType =";
  v11[2] = MTLDataTypeString([(MTLTensorReferenceType *)self dataType]);
  v11[3] = v5;
  v11[4] = @"TensorDataType =";
  v11[5] = MTLTensorDataTypeString(self->_tensorDataType);
  v11[6] = v5;
  v11[7] = @"IndexType =";
  v11[8] = MTLDataTypeString(self->_indexType);
  v11[9] = v5;
  v11[10] = @"Dimensions =";
  v11[11] = [(MTLTensorExtents *)self->_dimensions formattedDescription:0];
  v11[12] = v5;
  v11[13] = @"Access =";
  access = self->_access;
  if (access > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E6EECDC0[access];
  }

  v11[14] = v8;
  result = [v6 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 15), "componentsJoinedByString:", @" "];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dataType = [(MTLTensorReferenceType *)self dataType];
  if (dataType != [equal dataType] || self->_tensorDataType != *(equal + 2) || self->_indexType != *(equal + 3))
  {
    return 0;
  }

  dimensions = self->_dimensions;
  v7 = *(equal + 4);
  if (dimensions)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ([(MTLTensorExtents *)dimensions isEqual:?])
  {
    return 0;
  }

  return self->_access == *(equal + 5);
}

@end