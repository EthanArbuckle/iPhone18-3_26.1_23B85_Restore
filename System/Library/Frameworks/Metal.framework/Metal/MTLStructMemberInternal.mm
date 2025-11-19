@interface MTLStructMemberInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)isMemberLayoutThreadSafeWith:(id)a3;
- (MTLStructMemberInternal)initWithName:(id)a3 offset:(unint64_t)a4 dataType:(unint64_t)a5 pixelFormat:(unint64_t)a6 aluType:(unint64_t)a7 indirectArgumentIndex:(unint64_t)a8 render_target:(unint64_t)a9 raster_order_group:(unint64_t)a10 details:(id)a11;
- (id)arrayType;
- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4;
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

- (MTLStructMemberInternal)initWithName:(id)a3 offset:(unint64_t)a4 dataType:(unint64_t)a5 pixelFormat:(unint64_t)a6 aluType:(unint64_t)a7 indirectArgumentIndex:(unint64_t)a8 render_target:(unint64_t)a9 raster_order_group:(unint64_t)a10 details:(id)a11
{
  v20.receiver = self;
  v20.super_class = MTLStructMemberInternal;
  v21 = a5;
  v17 = [(MTLStructMemberInternal *)&v20 init];
  v17->_name = [a3 copy];
  v17->_offset = a4;
  *(v17 + 12) = a5;
  v17->_pixelFormat = a6;
  v17->_aluType = a7;
  v17->_argumentIndex = a8;
  v17->_render_target = a9;
  v17->_raster_order_group = a10;
  if (a5 == 57)
  {
    v17->_typeInfo = newDataTypeDescriptionForIndirectArgument(a11, &v21);
    *(v17 + 12) = v21;
    v18 = &OBJC_IVAR___MTLStructMemberInternal__details;
  }

  else
  {
    v18 = &OBJC_IVAR___MTLStructMemberInternal__typeInfo;
  }

  *(&v17->super.super.isa + *v18) = a11;
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

- (BOOL)isMemberLayoutThreadSafeWith:(id)a3
{
  v20 = [a3 aluType];
  aluType = self->_aluType;
  v6 = [a3 dataType];
  v7 = *(self + 12);
  v8 = [a3 offset];
  offset = self->_offset;
  v10 = [a3 pixelFormat];
  pixelFormat = self->_pixelFormat;
  v12 = [a3 arrayType];
  v13 = [(MTLStructMemberInternal *)self arrayType];
  v14 = v12 != 0;
  v15 = v12 == 0;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1;
  }

  v16 = v14 && v15;
  if (v10 != pixelFormat)
  {
    v16 = 0;
  }

  if (v8 != offset)
  {
    v16 = 0;
  }

  if (v6 != v7)
  {
    v16 = 0;
  }

  if (v20 == aluType)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v12 && v13)
  {
    v17 &= [v13 isArrayLayoutThreadSafeWith:v12];
  }

  if (-[MTLStructMemberInternal structType](self, "structType") && [a3 structType])
  {
    return v17 & [-[MTLStructMemberInternal structType](self "structType")];
  }

  else
  {
    v18 = [(MTLStructMemberInternal *)self structType];
    if (v18 != [a3 structType])
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4
{
  v16[15] = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
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
    v12 = [(MTLType *)typeInfo formattedDescription:a3 + 4 withPrintedTypes:a4];
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

- (BOOL)isEqual:(id)a3
{
  if (!a3)
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
  if (name | *(a3 + 1))
  {
    v6 = [(NSString *)name isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_offset != *(a3 + 2) || *(self + 12) != *(a3 + 12))
  {
    goto LABEL_17;
  }

  details = self->_details;
  if (details | *(a3 + 4))
  {
    v6 = [details isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_pixelFormat != *(a3 + 5) || self->_aluType != *(a3 + 6) || self->_argumentIndex != *(a3 + 7) || self->_render_target != *(a3 + 8) || self->_raster_order_group != *(a3 + 9))
  {
LABEL_17:
    LOBYTE(v6) = 0;
    return v6;
  }

  typeInfo = self->_typeInfo;
  if (!(typeInfo | *(a3 + 10)) || (v6 = [(MTLType *)typeInfo isEqual:?]) != 0)
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

@end