@interface MTLArrayTypeInternal
- (BOOL)isArrayLayoutThreadSafeWith:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MTLArrayTypeInternal)initWithArrayLength:(unint64_t)a3 elementType:(unint64_t)a4 stride:(unint64_t)a5 pixelFormat:(unint64_t)a6 aluType:(unint64_t)a7 details:(id)a8;
- (id)elementArrayType;
- (id)elementPointerType;
- (id)elementStructType;
- (id)elementTensorReferenceType;
- (id)elementTextureReferenceType;
- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4;
- (void)dealloc;
@end

@implementation MTLArrayTypeInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLArrayTypeInternal;
  [(MTLArrayTypeInternal *)&v3 dealloc];
}

- (id)elementStructType
{
  if (self->_elementType == 1)
  {
    return self->_elementTypeInfo;
  }

  else
  {
    return 0;
  }
}

- (MTLArrayTypeInternal)initWithArrayLength:(unint64_t)a3 elementType:(unint64_t)a4 stride:(unint64_t)a5 pixelFormat:(unint64_t)a6 aluType:(unint64_t)a7 details:(id)a8
{
  v11 = a5;
  v13 = a3;
  v17.receiver = self;
  v17.super_class = MTLArrayTypeInternal;
  v18 = a4;
  v14 = [(MTLArrayTypeInternal *)&v17 init];
  v14->_dataType = 2;
  *(v14 + 4) = v13;
  v14->_elementType = a4;
  *(v14 + 5) = v11;
  v14->_pixelFormat = a6;
  v14->_aluType = a7;
  if (a4 == 57)
  {
    v14->_elementTypeInfo = newDataTypeDescriptionForIndirectArgument(a8, &v18);
    v14->_elementType = v18;
    v15 = &OBJC_IVAR___MTLArrayTypeInternal__details;
  }

  else
  {
    v15 = &OBJC_IVAR___MTLArrayTypeInternal__elementTypeInfo;
  }

  *(&v14->super.super.super.isa + *v15) = a8;
  return v14;
}

- (BOOL)isArrayLayoutThreadSafeWith:(id)a3
{
  v5 = [a3 aluType];
  aluType = self->_aluType;
  v7 = [a3 dataType];
  dataType = self->_dataType;
  v9 = [a3 arrayLength];
  v10 = *(self + 4);
  return [a3 pixelFormat] == self->_pixelFormat && v9 == v10 && v7 == dataType && v5 == aluType;
}

- (id)elementArrayType
{
  if (self->_elementType == 2)
  {
    return self->_elementTypeInfo;
  }

  else
  {
    return 0;
  }
}

- (id)elementTextureReferenceType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 58)
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

- (id)elementPointerType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 60)
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

- (id)elementTensorReferenceType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 140)
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
  v27 = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v8 = MEMORY[0x1E696AEC0];
  v13 = v7;
  v14 = @"DataType =";
  v15 = MTLDataTypeString(self->_dataType);
  v16 = v7;
  v17 = @"ArrayLength =";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(self + 4)];
  v19 = v7;
  v20 = @"Stride =";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(self + 5)];
  v22 = v7;
  v23 = @"ArgumentIndexStride =";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_argumentIndexStride];
  v25 = v7;
  elementTypeInfo = self->_elementTypeInfo;
  if (elementTypeInfo)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ElementTypeInfo = %@", -[MTLType formattedDescription:withPrintedTypes:](elementTypeInfo, "formattedDescription:withPrintedTypes:", a3 + 4, a4), v13, v14];
  }

  else
  {
    v10 = MTLDataTypeString(self->_elementType);
  }

  v26 = v10;
  result = [v8 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v13, 14), "componentsJoinedByString:", @" "];
  v12 = *MEMORY[0x1E69E9840];
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
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_dataType != *(a3 + 1) || *(self + 4) != *(a3 + 4) || *(self + 5) != *(a3 + 5))
  {
    goto LABEL_15;
  }

  details = self->_details;
  if (!(details | *(a3 + 3)) || (v6 = [details isEqual:?]) != 0)
  {
    if (self->_elementType != *(a3 + 4) || self->_pixelFormat != *(a3 + 5) || self->_aluType != *(a3 + 6))
    {
      goto LABEL_15;
    }

    elementTypeInfo = self->_elementTypeInfo;
    if (!(elementTypeInfo | *(a3 + 7)) || (v6 = [(MTLType *)elementTypeInfo isEqual:?]) != 0)
    {
      if (self->_isIndirectArgumentBuffer == *(a3 + 64))
      {
        LOBYTE(v6) = self->_argumentIndexStride == *(a3 + 9);
        return v6;
      }

LABEL_15:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end