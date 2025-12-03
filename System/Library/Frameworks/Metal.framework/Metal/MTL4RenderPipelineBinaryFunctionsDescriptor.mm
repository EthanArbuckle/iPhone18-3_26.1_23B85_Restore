@interface MTL4RenderPipelineBinaryFunctionsDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4RenderPipelineBinaryFunctionsDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
@end

@implementation MTL4RenderPipelineBinaryFunctionsDescriptor

- (MTL4RenderPipelineBinaryFunctionsDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4RenderPipelineBinaryFunctionsDescriptor;
  return [(MTL4RenderPipelineBinaryFunctionsDescriptor *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSArray *)self->_vertexAdditionalBinaryFunctions copyWithZone:zone];
  v5[2] = [(NSArray *)self->_fragmentAdditionalBinaryFunctions copyWithZone:zone];
  v5[3] = [(NSArray *)self->_tileAdditionalBinaryFunctions copyWithZone:zone];
  v5[4] = [(NSArray *)self->_objectAdditionalBinaryFunctions copyWithZone:zone];
  v5[5] = [(NSArray *)self->_meshAdditionalBinaryFunctions copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      v6 = MTLCompareArray(self->_vertexAdditionalBinaryFunctions, *(equal + 1), 1, 0);
      if (v6)
      {
        v6 = MTLCompareArray(self->_fragmentAdditionalBinaryFunctions, *(equal + 2), 1, 0);
        if (v6)
        {
          v6 = MTLCompareArray(self->_tileAdditionalBinaryFunctions, *(equal + 3), 1, 0);
          if (v6)
          {
            v6 = MTLCompareArray(self->_objectAdditionalBinaryFunctions, *(equal + 4), 1, 0);
            if (v6)
            {
              meshAdditionalBinaryFunctions = self->_meshAdditionalBinaryFunctions;
              v8 = *(equal + 5);

              LOBYTE(v6) = MTLCompareArray(meshAdditionalBinaryFunctions, v8, 1, 0);
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(MTL4RenderPipelineBinaryFunctionsDescriptor *)self reset];
  v3.receiver = self;
  v3.super_class = MTL4RenderPipelineBinaryFunctionsDescriptor;
  [(MTL4RenderPipelineBinaryFunctionsDescriptor *)&v3 dealloc];
}

- (unint64_t)hash
{
  bzero(v4, 0x28uLL);
  v4[0] = [(NSArray *)self->_vertexAdditionalBinaryFunctions hash];
  v4[1] = [(NSArray *)self->_fragmentAdditionalBinaryFunctions hash];
  v4[2] = [(NSArray *)self->_tileAdditionalBinaryFunctions hash];
  v4[3] = [(NSArray *)self->_objectAdditionalBinaryFunctions hash];
  v4[4] = [(NSArray *)self->_meshAdditionalBinaryFunctions hash];
  return _MTLHashState(v4, 0x28uLL);
}

- (void)reset
{
  self->_meshAdditionalBinaryFunctions = 0;
  *&self->_tileAdditionalBinaryFunctions = 0u;
  *&self->_vertexAdditionalBinaryFunctions = 0u;
}

@end