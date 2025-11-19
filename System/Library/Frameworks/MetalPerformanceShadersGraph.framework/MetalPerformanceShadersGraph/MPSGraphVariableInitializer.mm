@interface MPSGraphVariableInitializer
+ (id)initializerWithConstant:(double)a3;
+ (id)initializerWithFile:(id)a3;
+ (id)initializerWithOnes;
+ (id)initializerWithRandomUniformWithMinimum:(double)a3 maximum:(double)a4;
+ (id)initializerWithZeros;
- (MPSGraphVariableInitializer)init;
- (id)initializedDataWithNumberOfValues:(unint64_t)a3 dataType:(unsigned int)a4;
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

+ (id)initializerWithConstant:(double)a3
{
  v4 = objc_alloc_init(MPSGraphVariableInitializer);
  v4->_initializerType = 0;
  v4->_constant = a3;

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

+ (id)initializerWithRandomUniformWithMinimum:(double)a3 maximum:(double)a4
{
  if (a4 <= a3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = objc_alloc_init(MPSGraphVariableInitializer);
  v6->_initializerType = 1;
  v6->_minimum = a3;
  v6->_maximum = a4;

  return v6;
}

+ (id)initializerWithFile:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPSGraphVariableInitializer);
  v4->_initializerType = 2;
  file = v4->_file;
  v4->_file = v3;
  v6 = v4;

  return v6;
}

- (id)initializedDataWithNumberOfValues:(unint64_t)a3 dataType:(unsigned int)a4
{
  if (a4 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = 4 * a3;
  v7 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
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

    else if (initializerType == 1 && a3 != 0)
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
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    memset_pattern4(v7, &__pattern4, 4 * a3);
  }

  v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:v6 freeWhenDone:{1, file, __pattern4}];

  return v18;
}

@end