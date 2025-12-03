@interface MPSGraphVariableInitializer
+ (id)initializerWithConstant:(double)constant;
+ (id)initializerWithFile:(id)file;
+ (id)initializerWithOnes;
+ (id)initializerWithRandomUniformWithMinimum:(double)minimum maximum:(double)maximum;
+ (id)initializerWithZeros;
- (MPSGraphVariableInitializer)init;
- (id)initializedDataWithNumberOfValues:(unint64_t)values dataType:(unsigned int)type;
@end

@implementation MPSGraphVariableInitializer

- (MPSGraphVariableInitializer)init
{
  v3.receiver = self;
  v3.super_class = MPSGraphVariableInitializer;
  result = [(MPSGraphVariableInitializer *)&v3 init];
  result->_constant = 0.0;
  result->_minimum = -INFINITY;
  result->_maximum = INFINITY;
  return result;
}

+ (id)initializerWithConstant:(double)constant
{
  v4 = objc_alloc_init(MPSGraphVariableInitializer);
  v4->_initializerType = 0;
  v4->_constant = constant;

  return v4;
}

+ (id)initializerWithZeros
{
  v2 = objc_alloc_init(MPSGraphVariableInitializer);
  v2->_initializerType = 0;
  v2->_constant = 0.0;

  return v2;
}

+ (id)initializerWithOnes
{
  v2 = objc_alloc_init(MPSGraphVariableInitializer);
  v2->_initializerType = 0;
  v2->_constant = 1.0;

  return v2;
}

+ (id)initializerWithRandomUniformWithMinimum:(double)minimum maximum:(double)maximum
{
  if (maximum <= minimum && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = objc_alloc_init(MPSGraphVariableInitializer);
  v6->_initializerType = 1;
  v6->_minimum = minimum;
  v6->_maximum = maximum;

  return v6;
}

+ (id)initializerWithFile:(id)file
{
  fileCopy = file;
  v4 = objc_alloc_init(MPSGraphVariableInitializer);
  v4->_initializerType = 2;
  file = v4->_file;
  v4->_file = fileCopy;
  v6 = v4;

  return v6;
}

- (id)initializedDataWithNumberOfValues:(unint64_t)values dataType:(unsigned int)type
{
  if (type != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = 4 * values;
  v7 = malloc_type_malloc(4 * values, 0x100004052888210uLL);
  v8 = v7;
  *&v9 = self->_constant;
  __pattern4 = v9;
  initializerType = self->_initializerType;
  if (initializerType)
  {
    if (initializerType == 2)
    {
      v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self->_file];
      if (!v17 && MTLReportFailureTypeEnabled())
      {
        file = self->_file;
        MTLReportFailure();
      }

      memcpy(v8, [v17 bytes], v6);
    }

    else if (initializerType == 1 && values != 0)
    {
      v12 = v7;
      do
      {
        v13 = rand_r(&__pattern4 + 1);
        minimum = self->_minimum;
        v15 = (self->_maximum - minimum) * vcvts_n_f32_s32(v13, 0x1FuLL);
        ++HIDWORD(__pattern4);
        v16 = v15 - minimum;
        *v12++ = v16;
        --values;
      }

      while (values);
    }
  }

  else
  {
    memset_pattern4(v7, &__pattern4, 4 * values);
  }

  v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:v6 freeWhenDone:{1, file, __pattern4}];

  return v18;
}

@end