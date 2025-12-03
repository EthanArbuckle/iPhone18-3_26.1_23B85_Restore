@interface AGXG18PFamilyBinaryFunction
- (AGXG18PFamilyBinaryFunction)initWithDynamicLibrary:(id)library;
- (AGXG18PFamilyBinaryFunction)initWithFunction:(id)function;
- (AGXG18PFamilyBinaryFunction)initWithIntersectionProgram:(id)program;
- (void)dealloc;
@end

@implementation AGXG18PFamilyBinaryFunction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyBinaryFunction;
  [(_MTL4BinaryFunction *)&v3 dealloc];
}

- (AGXG18PFamilyBinaryFunction)initWithFunction:(id)function
{
  v10.receiver = self;
  v10.super_class = AGXG18PFamilyBinaryFunction;
  v4 = [(_MTL4BinaryFunction *)&v10 init];
  if (v4)
  {
    functionCopy = function;
    v4->_function = functionCopy;
    functionType = [(_MTLFunction *)functionCopy functionType];
    function = v4->_function;
    if (functionType == 5)
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

- (AGXG18PFamilyBinaryFunction)initWithIntersectionProgram:(id)program
{
  if (program)
  {
    v7.receiver = self;
    v7.super_class = AGXG18PFamilyBinaryFunction;
    result = [(_MTL4BinaryFunction *)&v7 init];
    if (result)
    {
      v5 = result;
      programCopy = program;
      result = v5;
      v5->_ip = programCopy;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (AGXG18PFamilyBinaryFunction)initWithDynamicLibrary:(id)library
{
  if (library)
  {
    v7.receiver = self;
    v7.super_class = AGXG18PFamilyBinaryFunction;
    result = [(_MTL4BinaryFunction *)&v7 init];
    if (result)
    {
      v5 = result;
      libraryCopy = library;
      result = v5;
      v5->_dylib = libraryCopy;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

@end