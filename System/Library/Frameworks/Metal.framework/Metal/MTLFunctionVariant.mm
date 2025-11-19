@interface MTLFunctionVariant
- (MTLFunctionVariant)initWithCompilerOutput:(id)a3;
- (const)inputInfoAndSize:(unint64_t *)a3;
- (void)dealloc;
- (void)setDebugInstrumentationData:(id)a3;
- (void)setInputInfo:(const void *)a3 size:(unint64_t)a4;
@end

@implementation MTLFunctionVariant

- (MTLFunctionVariant)initWithCompilerOutput:(id)a3
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

- (void)setDebugInstrumentationData:(id)a3
{
  if (a3)
  {
    dispatch_retain(a3);
  }

  debugInstrumentationData = self->_debugInstrumentationData;
  if (debugInstrumentationData)
  {
    dispatch_release(debugInstrumentationData);
  }

  self->_debugInstrumentationData = a3;
}

- (const)inputInfoAndSize:(unint64_t *)a3
{
  p_inputInfo = &self->_inputInfo;
  result = self->_inputInfo;
  *a3 = p_inputInfo[1];
  return result;
}

- (void)setInputInfo:(const void *)a3 size:(unint64_t)a4
{
  v7 = malloc_type_malloc(a4, 0x51344E27uLL);
  self->_inputInfo = v7;
  memcpy(v7, a3, a4);
  self->_inputInfoSize = a4;
}

@end