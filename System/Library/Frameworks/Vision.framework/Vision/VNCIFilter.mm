@interface VNCIFilter
- (VNCIFilter)initWithKernelName:(id)name;
- (VNCIFilter)initWithKernelName:(id)name inputParameters:(id)parameters;
- (id)applyWithArguments:(id *)arguments;
@end

@implementation VNCIFilter

- (VNCIFilter)initWithKernelName:(id)name inputParameters:(id)parameters
{
  nameCopy = name;
  parametersCopy = parameters;
  v8 = [(VNCIFilter *)self initWithKernelName:nameCopy];
  v9 = v8;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__VNCIFilter_initWithKernelName_inputParameters___block_invoke;
    v13[3] = &unk_1E77B64E8;
    v10 = v8;
    v14 = v10;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v13];
    v11 = v10;
  }

  return v9;
}

- (VNCIFilter)initWithKernelName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = VNCIFilter;
  v5 = [(VNCIFilter *)&v13 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = nameCopy;
  objc_opt_self();
  if (getVNBundle(void)::onceToken != -1)
  {
    dispatch_once(&getVNBundle(void)::onceToken, &__block_literal_global_14854);
  }

  v7 = [getVNBundle(void)::bundle URLForResource:@"ImageFilters" withExtension:@"metallib"];
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v7];
  v9 = [MEMORY[0x1E695F618] kernelWithFunctionName:v6 fromMetalLibraryData:v8 error:0];

  kernel = v5->_kernel;
  v5->_kernel = v9;

  if (v5->_kernel)
  {
    v11 = v5;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (id)applyWithArguments:(id *)arguments
{
  v3 = a2;
  if (arguments)
  {
    inputImage = [arguments inputImage];
    if (inputImage)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v5 addObject:inputImage];
      if (v3)
      {
        [v5 addObjectsFromArray:v3];
      }

      imageByUnpremultiplyingAlpha = [inputImage imageByUnpremultiplyingAlpha];

      v7 = arguments[10];
      [imageByUnpremultiplyingAlpha extent];
      v8 = [v7 applyWithExtent:v5 arguments:?];

      arguments = [v8 imageByPremultiplyingAlpha];
    }

    else
    {
      arguments = 0;
    }
  }

  return arguments;
}

@end