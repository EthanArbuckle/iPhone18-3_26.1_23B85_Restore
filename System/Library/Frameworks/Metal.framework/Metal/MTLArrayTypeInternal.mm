@interface MTLArrayTypeInternal
- (BOOL)isArrayLayoutThreadSafeWith:(id)with;
- (BOOL)isEqual:(id)equal;
- (MTLArrayTypeInternal)initWithArrayLength:(unint64_t)length elementType:(unint64_t)type stride:(unint64_t)stride pixelFormat:(unint64_t)format aluType:(unint64_t)aluType details:(id)details;
- (id)elementArrayType;
- (id)elementPointerType;
- (id)elementStructType;
- (id)elementTensorReferenceType;
- (id)elementTextureReferenceType;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
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

- (MTLArrayTypeInternal)initWithArrayLength:(unint64_t)length elementType:(unint64_t)type stride:(unint64_t)stride pixelFormat:(unint64_t)format aluType:(unint64_t)aluType details:(id)details
{
  strideCopy = stride;
  lengthCopy = length;
  v17.receiver = self;
  v17.super_class = MTLArrayTypeInternal;
  typeCopy = type;
  v14 = [(MTLArrayTypeInternal *)&v17 init];
  v14->_dataType = 2;
  *(v14 + 4) = lengthCopy;
  v14->_elementType = type;
  *(v14 + 5) = strideCopy;
  v14->_pixelFormat = format;
  v14->_aluType = aluType;
  if (type == 57)
  {
    v14->_elementTypeInfo = newDataTypeDescriptionForIndirectArgument(details, &typeCopy);
    v14->_elementType = typeCopy;
    v15 = &OBJC_IVAR___MTLArrayTypeInternal__details;
  }

  else
  {
    v15 = &OBJC_IVAR___MTLArrayTypeInternal__elementTypeInfo;
  }

  *(&v14->super.super.super.isa + *v15) = details;
  return v14;
}

- (BOOL)isArrayLayoutThreadSafeWith:(id)with
{
  aluType = [with aluType];
  aluType = self->_aluType;
  dataType = [with dataType];
  dataType = self->_dataType;
  arrayLength = [with arrayLength];
  v10 = *(self + 4);
  return [with pixelFormat] == self->_pixelFormat && arrayLength == v10 && dataType == dataType && aluType == aluType;
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

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
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
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ElementTypeInfo = %@", -[MTLType formattedDescription:withPrintedTypes:](elementTypeInfo, "formattedDescription:withPrintedTypes:", description + 4, types), v13, v14];
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

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_dataType != *(equal + 1) || *(self + 4) != *(equal + 4) || *(self + 5) != *(equal + 5))
  {
    goto LABEL_15;
  }

  details = self->_details;
  if (!(details | *(equal + 3)) || (v6 = [details isEqual:?]) != 0)
  {
    if (self->_elementType != *(equal + 4) || self->_pixelFormat != *(equal + 5) || self->_aluType != *(equal + 6))
    {
      goto LABEL_15;
    }

    elementTypeInfo = self->_elementTypeInfo;
    if (!(elementTypeInfo | *(equal + 7)) || (v6 = [(MTLType *)elementTypeInfo isEqual:?]) != 0)
    {
      if (self->_isIndirectArgumentBuffer == *(equal + 64))
      {
        LOBYTE(v6) = self->_argumentIndexStride == *(equal + 9);
        return v6;
      }

LABEL_15:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end