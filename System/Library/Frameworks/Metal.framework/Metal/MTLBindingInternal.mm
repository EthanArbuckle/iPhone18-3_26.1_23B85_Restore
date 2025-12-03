@interface MTLBindingInternal
- (BOOL)isEqual:(id)equal;
- (MTLBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access index:(unint64_t)index active:(BOOL)active arrayLength:(unint64_t)length;
- (MTLBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access index:(unint64_t)index active:(BOOL)active arrayLength:(unint64_t)length typeDescription:(id)description;
- (NSString)description;
- (id)formattedDescription:(unint64_t)description;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLBindingInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLBindingInternal;
  [(MTLBindingInternal *)&v3 dealloc];
}

- (MTLBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access index:(unint64_t)index active:(BOOL)active arrayLength:(unint64_t)length
{
  v17.receiver = self;
  v17.super_class = MTLBindingInternal;
  v14 = [(MTLBindingInternal *)&v17 init];
  v14->_name = name;
  nameCopy = name;
  v14->_type = type;
  v14->_access = access;
  v14->_index = index;
  v14->_isUsed = active;
  v14->_arrayLength = length;
  v14->_typeInfo = 0;
  return v14;
}

- (MTLBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access index:(unint64_t)index active:(BOOL)active arrayLength:(unint64_t)length typeDescription:(id)description
{
  v18.receiver = self;
  v18.super_class = MTLBindingInternal;
  v15 = [(MTLBindingInternal *)&v18 init];
  v15->_name = name;
  nameCopy = name;
  v15->_type = type;
  v15->_access = access;
  v15->_index = index;
  v15->_isUsed = active;
  v15->_arrayLength = length;
  v15->_typeInfo = description;
  return v15;
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v21[22] = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v8 = MEMORY[0x1E696AEC0];
  v20.receiver = self;
  v20.super_class = MTLBindingInternal;
  v9 = [(MTLBindingInternal *)&v20 description];
  v21[0] = v7;
  v21[1] = @"Name =";
  name = self->_name;
  if (!name)
  {
    name = @"<none>";
  }

  v21[2] = name;
  v21[3] = v7;
  v21[4] = @"Type =";
  type = self->_type;
  if (type > 23)
  {
    if (type <= 26)
    {
      if (type == 24)
      {
        v12 = @"MTLBindingTypeVisibleFunctionTable";
      }

      else if (type == 25)
      {
        v12 = @"MTLBindingTypePrimitiveAccelerationStructure";
      }

      else
      {
        v12 = @"MTLBindingTypeInstanceAccelerationStructure";
      }

      goto LABEL_30;
    }

    switch(type)
    {
      case 27:
        v12 = @"MTLBindingTypeIntersectionFunctionTable";
        goto LABEL_30;
      case 34:
        v12 = @"MTLBindingTypeObjectPayload";
        goto LABEL_30;
      case 37:
        v12 = @"MTLBindingTypeTensor";
        goto LABEL_30;
    }
  }

  else if (type > 2)
  {
    switch(type)
    {
      case 3:
        v12 = @"MTLBindingTypeSampler";
        goto LABEL_30;
      case 16:
        v12 = @"MTLBindingTypeImageblockData";
        goto LABEL_30;
      case 17:
        v12 = @"MTLBindingTypeImageblock";
        goto LABEL_30;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        v12 = @"MTLBindingTypeBuffer";
        goto LABEL_30;
      case 1:
        v12 = @"MTLBindingTypeThreadgroupMemory";
        goto LABEL_30;
      case 2:
        v12 = @"MTLBindingTypeTexture";
        goto LABEL_30;
    }
  }

  v12 = @"Unknown";
LABEL_30:
  v21[5] = v12;
  v21[6] = v7;
  v21[7] = @"Access =";
  access = self->_access;
  if (access > 2)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_1E6EECDC0[access];
  }

  v21[8] = v14;
  v21[9] = v7;
  v21[10] = @"LocationIndex =";
  if (self->_index == 0xFFFFFFFF)
  {
    v15 = @"Non-Bindable";
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  }

  v21[11] = v15;
  v21[12] = v7;
  v21[13] = @"Used =";
  v21[14] = [MEMORY[0x1E696AD98] numberWithBool:self->_isUsed];
  v21[15] = v7;
  v21[16] = @"Argument =";
  v21[17] = [MEMORY[0x1E696AD98] numberWithBool:self->_argument];
  v21[18] = v7;
  v21[19] = @"ArrayLength =";
  v21[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_arrayLength];
  typeInfo = self->_typeInfo;
  if (typeInfo)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ TypeInfo = %@", v7, -[MTLType formattedDescription:withPrintedTypes:](typeInfo, "formattedDescription:withPrintedTypes:", description + 4, types)];
  }

  else
  {
    v17 = &stru_1EF478240;
  }

  v21[21] = v17;
  result = [v8 stringWithFormat:@"%@%@", v9, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 22), "componentsJoinedByString:", @" "];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MTLBindingInternal *)self formattedDescription:description withPrintedTypes:v5];

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MTLBindingInternal *)self formattedDescription:0 withPrintedTypes:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = [(NSString *)self->_name isEqual:*(equal + 5)];
  if (!v5)
  {
    return v5;
  }

  if (self->_type != *(equal + 6) || self->_access != *(equal + 7) || self->_index != *(equal + 8) || self->_isUsed != *(equal + 72) || self->_arrayLength != *(equal + 10))
  {
LABEL_11:
    LOBYTE(v5) = 0;
    return v5;
  }

  typeInfo = self->_typeInfo;
  if (typeInfo | *(equal + 11))
  {

    LOBYTE(v5) = [(MTLType *)typeInfo isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end