@interface MTL4PipelineStageDynamicLinkingDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4PipelineStageDynamicLinkingDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setMaxCallStackDepth:self->_maxCallStackDepth];
  [v4 setBinaryLinkedFunctions:self->_binaryLinkedFunctions];
  [v4 setPreloadedLibraries:self->_preloadedLibraries];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal) && (maxCallStackDepth = self->_maxCallStackDepth, maxCallStackDepth == [equal maxCallStackDepth]))
    {
      v7 = MTLCompareArray(self->_binaryLinkedFunctions, [equal binaryLinkedFunctions], 1, 0);
      if (v7)
      {
        preloadedLibraries = self->_preloadedLibraries;
        preloadedLibraries = [equal preloadedLibraries];

        LOBYTE(v7) = MTLCompareArray(preloadedLibraries, preloadedLibraries, 1, 0);
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