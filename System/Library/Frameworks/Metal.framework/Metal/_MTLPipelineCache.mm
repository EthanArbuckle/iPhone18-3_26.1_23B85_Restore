@interface _MTLPipelineCache
- (_MTLPipelineCache)initWithFilePath:(id)a3 readOnly:(BOOL)a4 deviceInfo:(const MTLTargetDeviceArch *)a5;
- (void)dealloc;
@end

@implementation _MTLPipelineCache

- (void)dealloc
{
  compilerCache = self->_compilerCache;
  if (compilerCache)
  {
    (*(compilerCache->var0 + 1))(compilerCache, a2);
    self->_compilerCache = 0;
  }

  v4.receiver = self;
  v4.super_class = _MTLPipelineCache;
  [(_MTLPipelineCache *)&v4 dealloc];
}

- (_MTLPipelineCache)initWithFilePath:(id)a3 readOnly:(BOOL)a4 deviceInfo:(const MTLTargetDeviceArch *)a5
{
  v11.receiver = self;
  v11.super_class = _MTLPipelineCache;
  v8 = [(_MTLPipelineCache *)&v11 init];
  v8->_compilerCache = 0;
  v8->_writable = !a4;
  v8->_disableRunTimeCompilation = 0;
  if (a3)
  {
    var1 = a5->var1;
    [a3 UTF8String];
    MTLCompilerCache::createPipelineDataCache();
  }

  return v8;
}

@end