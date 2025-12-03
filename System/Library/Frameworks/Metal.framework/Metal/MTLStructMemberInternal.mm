@interface MTLStructMemberInternal
- (BOOL)isEqual:(id)equal;
- (BOOL)isMemberLayoutThreadSafeWith:(id)with;
- (MTLStructMemberInternal)initWithName:(id)name offset:(unint64_t)offset dataType:(unint64_t)type pixelFormat:(unint64_t)format aluType:(unint64_t)aluType indirectArgumentIndex:(unint64_t)index render_target:(unint64_t)render_target raster_order_group:(unint64_t)self0 details:(id)self1;
- (id)arrayType;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (id)pointerType;
- (id)structType;
- (id)tensorReferenceType;
- (id)textureReferenceType;
- (void)dealloc;
@end

@implementation MTLStructMemberInternal

- (id)structType
{
  if (*(self + 12) == 1)
  {
    return self->_typeInfo;
  }

  else
  {
    return 0;
  }
}

- (id)arrayType
{
  if (*(self + 12) == 2)
  {
    return self->_typeInfo;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLStructMemberInternal;
  [(MTLStructMemberInternal *)&v3 dealloc];
}

- (MTLStructMemberInternal)initWithName:(id)name offset:(unint64_t)offset dataType:(unint64_t)type pixelFormat:(unint64_t)format aluType:(unint64_t)aluType indirectArgumentIndex:(unint64_t)index render_target:(unint64_t)render_target raster_order_group:(unint64_t)self0 details:(id)self1
{
  v20.receiver = self;
  v20.super_class = MTLStructMemberInternal;
  typeCopy = type;
  v17 = [(MTLStructMemberInternal *)&v20 init];
  v17->_name = [name copy];
  v17->_offset = offset;
  *(v17 + 12) = type;
  v17->_pixelFormat = format;
  v17->_aluType = aluType;
  v17->_argumentIndex = index;
  v17->_render_target = render_target;
  v17->_raster_order_group = raster_order_group;
  if (type == 57)
  {
    v17->_typeInfo = newDataTypeDescriptionForIndirectArgument(details, &typeCopy);
    *(v17 + 12) = typeCopy;
    v18 = &OBJC_IVAR___MTLStructMemberInternal__details;
  }

  else
  {
    v18 = &OBJC_IVAR___MTLStructMemberInternal__typeInfo;
  }

  *(&v17->super.super.isa + *v18) = details;
  return v17;
}

- (id)textureReferenceType
{
  result = self->_typeInfo;
  if (result)
  {
    if ([result dataType] == 58)
    {
      return self->_typeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)pointerType
{
  result = self->_typeInfo;
  if (result)
  {
    if ([result dataType] == 60)
    {
      return self->_typeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)tensorReferenceType
{
  result = self->_typeInfo;
  if (result)
  {
    if ([result dataType] == 140)
    {
      return self->_typeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isMemberLayoutThreadSafeWith:(id)with
{
  aluType = [with aluType];
  aluType = self->_aluType;
  dataType = [with dataType];
  v7 = *(self + 12);
  offset = [with offset];
  offset = self->_offset;
  pixelFormat = [with pixelFormat];
  pixelFormat = self->_pixelFormat;
  arrayType = [with arrayType];
  arrayType2 = [(MTLStructMemberInternal *)self arrayType];
  v14 = arrayType != 0;
  v15 = arrayType == 0;
  if (arrayType2)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1;
  }

  v16 = v14 && v15;
  if (pixelFormat != pixelFormat)
  {
    v16 = 0;
  }

  if (offset != offset)
  {
    v16 = 0;
  }

  if (dataType != v7)
  {
    v16 = 0;
  }

  if (aluType == aluType)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (arrayType && arrayType2)
  {
    v17 &= [arrayType2 isArrayLayoutThreadSafeWith:arrayType];
  }

  if (-[MTLStructMemberInternal structType](self, "structType") && [with structType])
  {
    return v17 & [-[MTLStructMemberInternal structType](self "structType")];
  }

  else
  {
    structType = [(MTLStructMemberInternal *)self structType];
    if (structType != [with structType])
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v16[15] = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v8 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = MTLStructMemberInternal;
  v9 = [(MTLStructMemberInternal *)&v15 description];
  name = self->_name;
  v16[0] = v7;
  v16[1] = @"Name =";
  v16[2] = name;
  v16[3] = v7;
  v16[4] = @"Offset =";
  v16[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_offset];
  v16[6] = v7;
  v16[7] = @"DataType =";
  v16[8] = MTLDataTypeString(*(self + 12));
  v16[9] = v7;
  v16[10] = @"ArgumentIndex =";
  v16[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_argumentIndex];
  v16[12] = v7;
  v16[13] = @"TypeInfo =";
  typeInfo = self->_typeInfo;
  if (typeInfo)
  {
    v12 = [(MTLType *)typeInfo formattedDescription:description + 4 withPrintedTypes:types];
  }

  else
  {
    v12 = @" nil";
  }

  v16[14] = v12;
  result = [v8 stringWithFormat:@"%@%@", v9, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 15), "componentsJoinedByString:", @" "];
  v14 = *MEMORY[0x1E69E9840];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  name = self->_name;
  if (name | *(equal + 1))
  {
    v6 = [(NSString *)name isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_offset != *(equal + 2) || *(self + 12) != *(equal + 12))
  {
    goto LABEL_17;
  }

  details = self->_details;
  if (details | *(equal + 4))
  {
    v6 = [details isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_pixelFormat != *(equal + 5) || self->_aluType != *(equal + 6) || self->_argumentIndex != *(equal + 7) || self->_render_target != *(equal + 8) || self->_raster_order_group != *(equal + 9))
  {
LABEL_17:
    LOBYTE(v6) = 0;
    return v6;
  }

  typeInfo = self->_typeInfo;
  if (!(typeInfo | *(equal + 10)) || (v6 = [(MTLType *)typeInfo isEqual:?]) != 0)
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

@end