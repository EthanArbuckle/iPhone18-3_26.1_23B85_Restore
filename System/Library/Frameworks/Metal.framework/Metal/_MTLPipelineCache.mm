@interface _MTLPipelineCache
- (_MTLPipelineCache)initWithFilePath:(id)path readOnly:(BOOL)only deviceInfo:(const MTLTargetDeviceArch *)info;
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

- (_MTLPipelineCache)initWithFilePath:(id)path readOnly:(BOOL)only deviceInfo:(const MTLTargetDeviceArch *)info
{
  v11.receiver = self;
  v11.super_class = _MTLPipelineCache;
  v8 = [(_MTLPipelineCache *)&v11 init];
  v8->_compilerCache = 0;
  v8->_writable = !only;
  v8->_disableRunTimeCompilation = 0;
  if (path)
  {
    var1 = info->var1;
    [path UTF8String];
    MTLCompilerCache::createPipelineDataCache();
  }

  return v8;
}

@end