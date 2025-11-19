@interface AGXG18PFamilyBinaryFunction
- (AGXG18PFamilyBinaryFunction)initWithDynamicLibrary:(id)a3;
- (AGXG18PFamilyBinaryFunction)initWithFunction:(id)a3;
- (AGXG18PFamilyBinaryFunction)initWithIntersectionProgram:(id)a3;
- (void)dealloc;
@end

@implementation AGXG18PFamilyBinaryFunction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyBinaryFunction;
  [(_MTL4BinaryFunction *)&v3 dealloc];
}

- (AGXG18PFamilyBinaryFunction)initWithFunction:(id)a3
{
  v10.receiver = self;
  v10.super_class = AGXG18PFamilyBinaryFunction;
  v4 = [(_MTL4BinaryFunction *)&v10 init];
  if (v4)
  {
    v5 = a3;
    v4->_function = v5;
    v6 = [(_MTLFunction *)v5 functionType];
    function = v4->_function;
    if (v6 == 5)
    {
      v8 = &OBJC_IVAR___AGXG18PFamilyBinaryFunction__dylib;
LABEL_6:
      *(&v4->super.super.super.isa + *v8) = [(_MTLFunction *)function vendorPrivate];
      return v4;
    }

    if ([(_MTLFunction *)function functionType]== 6)
    {
      function = v4->_function;
      v8 = &OBJC_IVAR___AGXG18PFamilyBinaryFunction__ip;
      goto LABEL_6;
    }
  }

  return v4;
}

- (AGXG18PFamilyBinaryFunction)initWithIntersectionProgram:(id)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = AGXG18PFamilyBinaryFunction;
    result = [(_MTL4BinaryFunction *)&v7 init];
    if (result)
    {
      v5 = result;
      v6 = a3;
      result = v5;
      v5->_ip = v6;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (AGXG18PFamilyBinaryFunction)initWithDynamicLibrary:(id)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = AGXG18PFamilyBinaryFunction;
    result = [(_MTL4BinaryFunction *)&v7 init];
    if (result)
    {
      v5 = result;
      v6 = a3;
      result = v5;
      v5->_dylib = v6;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

@end