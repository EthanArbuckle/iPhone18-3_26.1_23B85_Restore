@interface MTL4SpecializedFunctionDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4SpecializedFunctionDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4SpecializedFunctionDescriptor

- (MTL4SpecializedFunctionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4SpecializedFunctionDescriptor;
  return [(MTL4FunctionDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4SpecializedFunctionDescriptor;
  [(MTL4FunctionDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTL4SpecializedFunctionDescriptor;
  v4 = [(MTL4FunctionDescriptor *)&v6 copyWithZone:zone];
  [v4 setFunctionDescriptor:{-[MTL4SpecializedFunctionDescriptor functionDescriptor](self, "functionDescriptor")}];
  [v4 setSpecializedName:{-[MTL4SpecializedFunctionDescriptor specializedName](self, "specializedName")}];
  [v4 setConstantValues:{-[MTL4SpecializedFunctionDescriptor constantValues](self, "constantValues")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v14 = v3;
    v15 = v4;
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      v13.receiver = self;
      v13.super_class = MTL4SpecializedFunctionDescriptor;
      v8 = [(MTL4FunctionDescriptor *)&v13 isEqual:equal];
      if (v8)
      {
        functionDescriptor = self->_functionDescriptor;
        if (functionDescriptor == *(equal + 2) || (v8 = [(MTL4FunctionDescriptor *)functionDescriptor isEqual:?]) != 0)
        {
          specializedName = self->_specializedName;
          if (specializedName == *(equal + 3) || (v8 = [(NSString *)specializedName isEqual:?]) != 0)
          {
            constantValues = self->_constantValues;
            if (constantValues == *(equal + 4))
            {
              LOBYTE(v8) = 1;
            }

            else
            {
              LOBYTE(v8) = [(MTLFunctionConstantValues *)constantValues isEqual:?];
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v5, 0x20uLL);
  v5[0] = [(MTL4FunctionDescriptor *)self->_functionDescriptor hash];
  v5[1] = [(NSString *)self->_specializedName hash];
  v5[2] = [(MTLFunctionConstantValues *)self->_constantValues hash];
  v4.receiver = self;
  v4.super_class = MTL4SpecializedFunctionDescriptor;
  v5[3] = [(MTL4FunctionDescriptor *)&v4 hash];
  return _MTLHashState(v5, 0x20uLL);
}

@end