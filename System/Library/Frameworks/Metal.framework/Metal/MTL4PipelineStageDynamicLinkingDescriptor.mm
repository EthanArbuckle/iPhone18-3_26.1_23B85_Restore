@interface MTL4PipelineStageDynamicLinkingDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4PipelineStageDynamicLinkingDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4PipelineStageDynamicLinkingDescriptor

- (MTL4PipelineStageDynamicLinkingDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineStageDynamicLinkingDescriptor;
  result = [(MTL4PipelineStageDynamicLinkingDescriptor *)&v3 init];
  result->_binaryLinkedFunctions = 0;
  result->_preloadedLibraries = 0;
  result->_maxCallStackDepth = 1;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineStageDynamicLinkingDescriptor;
  [(MTL4PipelineStageDynamicLinkingDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMaxCallStackDepth:self->_maxCallStackDepth];
  [v4 setBinaryLinkedFunctions:self->_binaryLinkedFunctions];
  [v4 setPreloadedLibraries:self->_preloadedLibraries];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3) && (maxCallStackDepth = self->_maxCallStackDepth, maxCallStackDepth == [a3 maxCallStackDepth]))
    {
      v7 = MTLCompareArray(self->_binaryLinkedFunctions, [a3 binaryLinkedFunctions], 1, 0);
      if (v7)
      {
        preloadedLibraries = self->_preloadedLibraries;
        v9 = [a3 preloadedLibraries];

        LOBYTE(v7) = MTLCompareArray(preloadedLibraries, v9, 1, 0);
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  bzero(v5, 0x18uLL);
  binaryLinkedFunctions = self->_binaryLinkedFunctions;
  v5[0] = self->_maxCallStackDepth;
  v5[1] = [(NSArray *)binaryLinkedFunctions hash];
  v5[2] = [(NSArray *)self->_preloadedLibraries hash];
  return _MTLHashState(v5, 0x18uLL);
}

@end