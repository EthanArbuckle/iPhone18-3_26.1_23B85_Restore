@interface MTL4RenderPipelineBinaryFunctionsDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4RenderPipelineBinaryFunctionsDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSArray *)self->_vertexAdditionalBinaryFunctions copyWithZone:a3];
  v5[2] = [(NSArray *)self->_fragmentAdditionalBinaryFunctions copyWithZone:a3];
  v5[3] = [(NSArray *)self->_tileAdditionalBinaryFunctions copyWithZone:a3];
  v5[4] = [(NSArray *)self->_objectAdditionalBinaryFunctions copyWithZone:a3];
  v5[5] = [(NSArray *)self->_meshAdditionalBinaryFunctions copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v6 = MTLCompareArray(self->_vertexAdditionalBinaryFunctions, *(a3 + 1), 1, 0);
      if (v6)
      {
        v6 = MTLCompareArray(self->_fragmentAdditionalBinaryFunctions, *(a3 + 2), 1, 0);
        if (v6)
        {
          v6 = MTLCompareArray(self->_tileAdditionalBinaryFunctions, *(a3 + 3), 1, 0);
          if (v6)
          {
            v6 = MTLCompareArray(self->_objectAdditionalBinaryFunctions, *(a3 + 4), 1, 0);
            if (v6)
            {
              meshAdditionalBinaryFunctions = self->_meshAdditionalBinaryFunctions;
              v8 = *(a3 + 5);

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