@interface VNCIFilter
- (VNCIFilter)initWithKernelName:(id)a3;
- (VNCIFilter)initWithKernelName:(id)a3 inputParameters:(id)a4;
- (id)applyWithArguments:(id *)a1;
@end

@implementation VNCIFilter

- (VNCIFilter)initWithKernelName:(id)a3 inputParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VNCIFilter *)self initWithKernelName:v6];
  v9 = v8;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__VNCIFilter_initWithKernelName_inputParameters___block_invoke;
    v13[3] = &unk_1E77B64E8;
    v10 = v8;
    v14 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v11 = v10;
  }

  return v9;
}

- (VNCIFilter)initWithKernelName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNCIFilter;
  v5 = [(VNCIFilter *)&v13 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v4;
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

- (id)applyWithArguments:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 inputImage];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v5 addObject:v4];
      if (v3)
      {
        [v5 addObjectsFromArray:v3];
      }

      v6 = [v4 imageByUnpremultiplyingAlpha];

      v7 = a1[10];
      [v6 extent];
      v8 = [v7 applyWithExtent:v5 arguments:?];

      a1 = [v8 imageByPremultiplyingAlpha];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

@end