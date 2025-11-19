@interface MTLPointerTypeInternal
- (BOOL)isEqual:(id)a3;
- (MTLPointerTypeInternal)initWithElementType:(unint64_t)a3 elementTypeDescription:(id)a4 access:(unint64_t)a5 alignment:(unint64_t)a6 dataSize:(unint64_t)a7 elementIsIndirectArgumentBuffer:(BOOL)a8 isConstantBuffer:(BOOL)a9 doRetain:(BOOL)a10;
- (id)elementArrayType;
- (id)elementStructType;
- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4;
- (void)dealloc;
@end

@implementation MTLPointerTypeInternal

- (void)dealloc
{
  if (self->_doRetain)
  {
  }

  v3.receiver = self;
  v3.super_class = MTLPointerTypeInternal;
  [(MTLPointerTypeInternal *)&v3 dealloc];
}

- (MTLPointerTypeInternal)initWithElementType:(unint64_t)a3 elementTypeDescription:(id)a4 access:(unint64_t)a5 alignment:(unint64_t)a6 dataSize:(unint64_t)a7 elementIsIndirectArgumentBuffer:(BOOL)a8 isConstantBuffer:(BOOL)a9 doRetain:(BOOL)a10
{
  v18.receiver = self;
  v18.super_class = MTLPointerTypeInternal;
  v16 = [(MTLPointerTypeInternal *)&v18 init];
  v16->_dataType = 60;
  v16->_elementType = a3;
  v16->_doRetain = a10;
  if (a10)
  {
    a4 = a4;
  }

  v16->_elementTypeInfo = a4;
  v16->_access = a5;
  v16->_alignment = a6;
  v16->_dataSize = a7;
  v16->_elementIsArgumentBuffer = a8;
  v16->_isConstantBuffer = a9;
  return v16;
}

- (id)elementStructType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 1)
    {
      return self->_elementTypeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)elementArrayType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 2)
    {
      return self->_elementTypeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v8 = MEMORY[0x1E696AEC0];
  v15 = v7;
  v16 = @"DataType =";
  v17 = MTLDataTypeString(self->_dataType);
  v18 = v7;
  v19 = @"ElementType =";
  v20 = MTLDataTypeString(self->_elementType);
  elementTypeInfo = self->_elementTypeInfo;
  if (elementTypeInfo)
  {
    v10 = [v8 stringWithFormat:@"%@ ElementTypeDescription = %@", v7, -[MTLType formattedDescription:withPrintedTypes:](elementTypeInfo, "formattedDescription:withPrintedTypes:", a3 + 4, a4), v15, v16, v17, v18, v19, v20];
  }

  else
  {
    v10 = &stru_1EF478240;
  }

  v21 = v10;
  v22 = v7;
  v23 = @"Access =";
  access = self->_access;
  if (access > 2)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_1E6EECDC0[access];
  }

  v24 = v12;
  v25 = v7;
  v26 = @"Alignment =";
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_alignment];
  v28 = v7;
  v29 = @"DataSize =";
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataSize];
  v31 = v7;
  v32 = @"ConstantBuffer = ";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConstantBuffer];
  result = [v8 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v15, 19), "componentsJoinedByString:", @" "];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_dataType != *(a3 + 1) || self->_elementType != *(a3 + 2))
  {
    goto LABEL_12;
  }

  elementTypeInfo = self->_elementTypeInfo;
  if (!(elementTypeInfo | *(a3 + 3)) || (v6 = [(MTLType *)elementTypeInfo isEqual:?]) != 0)
  {
    if (self->_access == *(a3 + 4) && self->_alignment == *(a3 + 5) && self->_dataSize == *(a3 + 6) && self->_elementIsArgumentBuffer == *(a3 + 56))
    {
      LOBYTE(v6) = self->_isConstantBuffer == *(a3 + 57);
      return v6;
    }

LABEL_12:
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end