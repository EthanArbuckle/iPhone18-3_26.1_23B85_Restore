@interface MTLFunctionDescriptor
+ (MTLFunctionDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLFunctionDescriptor)functionDescriptor;
- ($2772B1D07D29A72E8557B2574C0AE5C1)hashStableWithFunction:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (MTLFunctionDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setBinaryArchives:(NSArray *)binaryArchives;
- (void)setConstantValues:(MTLFunctionConstantValues *)constantValues;
- (void)setName:(NSString *)name;
- (void)setPluginData:(id)a3;
- (void)setPrivateFunctions:(id)a3;
- (void)setSpecializedName:(NSString *)specializedName;
@end

@implementation MTLFunctionDescriptor

- (MTLFunctionDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTLFunctionDescriptor;
  v2 = [(MTLFunctionDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_private.applyFunctionConstants = 1;
    v2->_private.privateFunctions = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionDescriptor;
  [(MTLFunctionDescriptor *)&v3 dealloc];
}

+ (MTLFunctionDescriptor)functionDescriptor
{
  v2 = objc_alloc_init(MTLFunctionDescriptor);

  return v2;
}

+ (MTLFunctionDescriptor)allocWithZone:(_NSZone *)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MTLFunctionDescriptor;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    *(v5 + 8) = [(NSString *)self->_private.name copyWithZone:a3];
    *(v5 + 16) = [(NSString *)self->_private.specializedName copyWithZone:a3];
    v6 = [(MTLFunctionConstantValues *)self->_private.constantValues copyWithZone:a3];
    *(v5 + 24) = self->_private.options;
    *(v5 + 32) = v6;
    *(v5 + 40) = [(NSArray *)self->_private.binaryArchives copy];
    *(v5 + 48) = self->_private.applyFunctionConstants;
    *(v5 + 56) = [(NSArray *)self->_private.privateFunctions copy];
    [v5 setPipelineOptions:self->_pipelineOptions];
    [v5 setPluginData:self->_pluginData];
  }

  return v5;
}

- (void)setName:(NSString *)name
{
  if (name)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLFunctionDescriptor *)isKindOfClass setName:v11, v12, v13, v14, v15, v16, v17, v19];
    }
  }

  else
  {
    [(MTLFunctionDescriptor *)self setName:a2, 0, v3, v4, v5, v6, v7, v19];
  }

  v18 = self->_private.name;
  if (v18 != name)
  {

    self->_private.name = [(NSString *)name copy];
  }
}

- (void)setSpecializedName:(NSString *)specializedName
{
  if (specializedName)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLFunctionDescriptor *)isKindOfClass setSpecializedName:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  v13 = self->_private.specializedName;
  if (v13 != specializedName)
  {

    self->_private.specializedName = [(NSString *)specializedName copy];
  }
}

- (void)setConstantValues:(MTLFunctionConstantValues *)constantValues
{
  if (constantValues)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLFunctionDescriptor *)isKindOfClass setConstantValues:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  v13 = self->_private.constantValues;
  if (v13 != constantValues)
  {

    self->_private.constantValues = [(MTLFunctionConstantValues *)constantValues copy];
  }
}

- (void)setPrivateFunctions:(id)a3
{
  privateFunctions = self->_private.privateFunctions;
  if (privateFunctions != a3)
  {

    self->_private.privateFunctions = [a3 copy];
  }
}

- (void)setBinaryArchives:(NSArray *)binaryArchives
{
  v3 = self->_private.binaryArchives;
  if (v3 != binaryArchives)
  {

    self->_private.binaryArchives = [(NSArray *)binaryArchives copy];
  }
}

- (unint64_t)hash
{
  bzero(v6, 0x38uLL);
  v6[0] = [(NSString *)self->_private.name hash];
  v6[1] = [(NSString *)self->_private.specializedName hash];
  v3 = [(MTLFunctionConstantValues *)self->_private.constantValues hash];
  options = self->_private.options;
  v6[2] = v3;
  v6[3] = options;
  v6[4] = MTLHashArray(self->_private.binaryArchives, 1, 0);
  applyFunctionConstants = self->_private.applyFunctionConstants;
  v6[5] = MTLHashArray(self->_private.privateFunctions, 1, 1);
  return _MTLHashState(v6, 0x38uLL);
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)hashStableWithFunction:(SEL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  bzero(data, 0x10uLL);
  data[0] = [(NSString *)self->_private.name hash];
  data[1] = [(NSString *)self->_private.specializedName hash];
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, data, 0x10u);
  constantValues = self->_private.constantValues;
  if (constantValues)
  {
    *&v21[0] = 0;
    v18 = 0;
    v8 = [(MTLFunctionConstantValues *)constantValues serializedConstantDataForFunction:a4 dataSize:v21 errorMessage:&v18];
    if (v8)
    {
      v9 = v8;
      CC_SHA256_Update(&c, v8, v21[0]);
      free(v9);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MTLFunctionDescriptor hashStableWithFunction:];
    }
  }

  privateFunctions = self->_private.privateFunctions;
  if (privateFunctions && [(NSArray *)privateFunctions count])
  {
    CC_SHA256_Update(&c, "privateFunctions", 0x10u);
    v11 = [-[NSArray objectAtIndexedSubscript:](privateFunctions objectAtIndexedSubscript:{0), "bitCodeHash"}];
    v12 = v11[1];
    v21[0] = *v11;
    v21[1] = v12;
    if ([(NSArray *)privateFunctions count]>= 2)
    {
      v13 = 1;
      do
      {
        v14 = [-[NSArray objectAtIndexedSubscript:](privateFunctions objectAtIndexedSubscript:{v13), "bitCodeHash"}];
        for (i = 0; i != 32; i += 8)
        {
          *(v21 + i) ^= *(v14 + i);
        }

        v13 = (v13 + 1);
      }

      while ([(NSArray *)privateFunctions count]> v13);
    }

    CC_SHA256_Update(&c, v21, 0x20u);
  }

  result = CC_SHA256_Final(retstr->var0, &c);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  name = self->_private.name;
  if (name == *(a3 + 1) || (v6 = [(NSString *)name isEqual:?]) != 0)
  {
    specializedName = self->_private.specializedName;
    if (specializedName == *(a3 + 2) || (v6 = [(NSString *)specializedName isEqual:?]) != 0)
    {
      constantValues = self->_private.constantValues;
      if (constantValues == *(a3 + 4) || (v6 = [(MTLFunctionConstantValues *)constantValues isEqual:?]) != 0)
      {
        if (self->_private.options != *(a3 + 3))
        {
          goto LABEL_3;
        }

        v6 = MTLCompareArray(self->_private.binaryArchives, *(a3 + 5), 1, 0);
        if (!v6)
        {
          return v6;
        }

        if (self->_private.applyFunctionConstants != *(a3 + 48))
        {
LABEL_3:
          LOBYTE(v6) = 0;
          return v6;
        }

        privateFunctions = self->_private.privateFunctions;
        v11 = *(a3 + 7);

        LOBYTE(v6) = MTLCompareArray(privateFunctions, v11, 1, 1);
      }
    }
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)a3
{
  v16[18] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = MTLFunctionDescriptor;
  v6 = [(MTLFunctionDescriptor *)&v15 description];
  v16[0] = v4;
  v16[1] = @"name =";
  name = self->_private.name;
  specializedName = self->_private.specializedName;
  if (!name)
  {
    name = @"<none>";
  }

  v16[2] = name;
  v16[3] = v4;
  if (specializedName)
  {
    v9 = specializedName;
  }

  else
  {
    v9 = @"<none>";
  }

  v16[4] = @"specializedName =";
  v16[5] = v9;
  v16[6] = v4;
  v16[7] = @"constantValues =";
  constantValues = self->_private.constantValues;
  if (!constantValues)
  {
    constantValues = [MEMORY[0x1E695DFB0] null];
  }

  v16[8] = constantValues;
  v16[9] = v4;
  v16[10] = @"options =";
  v16[11] = [MEMORY[0x1E696AD98] numberWithInteger:self->_private.options];
  v16[12] = v4;
  v16[13] = @"binaryArchives =";
  binaryArchives = self->_private.binaryArchives;
  if (!binaryArchives)
  {
    binaryArchives = [MEMORY[0x1E695DFB0] null];
  }

  v16[14] = binaryArchives;
  v16[15] = v4;
  v16[16] = @"privateFunctions =";
  privateFunctions = self->_private.privateFunctions;
  if (!privateFunctions)
  {
    privateFunctions = [MEMORY[0x1E695DFB0] null];
  }

  v16[17] = privateFunctions;
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 18), "componentsJoinedByString:", @" "];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPluginData:(id)a3
{
  pluginData = self->_pluginData;
  if (pluginData != a3)
  {

    self->_pluginData = [a3 copy];
  }
}

@end