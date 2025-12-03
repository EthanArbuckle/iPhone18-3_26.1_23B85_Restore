@interface MTLFunctionVariant
- (MTLFunctionVariant)initWithCompilerOutput:(id)output;
- (const)inputInfoAndSize:(unint64_t *)size;
- (void)dealloc;
- (void)setDebugInstrumentationData:(id)data;
- (void)setInputInfo:(const void *)info size:(unint64_t)size;
@end

@implementation MTLFunctionVariant

- (MTLFunctionVariant)initWithCompilerOutput:(id)output
{
  v4.receiver = self;
  v4.super_class = MTLFunctionVariant;
  return [(MTLFunctionVariant *)&v4 init];
}

- (void)dealloc
{
  inputInfo = self->_inputInfo;
  if (inputInfo)
  {
    free(inputInfo);
    self->_inputInfo = 0;
  }

  self->_inputInfoSize = 0;
  debugInstrumentationData = self->_debugInstrumentationData;
  if (debugInstrumentationData)
  {
    dispatch_release(debugInstrumentationData);
  }

  v5.receiver = self;
  v5.super_class = MTLFunctionVariant;
  [(MTLFunctionVariant *)&v5 dealloc];
}

- (void)setDebugInstrumentationData:(id)data
{
  if (data)
  {
    dispatch_retain(data);
  }

  debugInstrumentationData = self->_debugInstrumentationData;
  if (debugInstrumentationData)
  {
    dispatch_release(debugInstrumentationData);
  }

  self->_debugInstrumentationData = data;
}

- (const)inputInfoAndSize:(unint64_t *)size
{
  p_inputInfo = &self->_inputInfo;
  result = self->_inputInfo;
  *size = p_inputInfo[1];
  return result;
}

- (void)setInputInfo:(const void *)info size:(unint64_t)size
{
  v7 = malloc_type_malloc(size, 0x51344E27uLL);
  self->_inputInfo = v7;
  memcpy(v7, info, size);
  self->_inputInfoSize = size;
}

@end