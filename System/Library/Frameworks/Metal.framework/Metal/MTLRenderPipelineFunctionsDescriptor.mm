@interface MTLRenderPipelineFunctionsDescriptor
- (BOOL)isEqual:(id)equal;
- (MTLRenderPipelineFunctionsDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLRenderPipelineFunctionsDescriptor

- (MTLRenderPipelineFunctionsDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTLRenderPipelineFunctionsDescriptor;
  v2 = [(MTLRenderPipelineFunctionsDescriptor *)&v4 init];
  if (v2)
  {
    v2->_vertexAdditionalBinaryFunctions = objc_opt_new();
    v2->_fragmentAdditionalBinaryFunctions = objc_opt_new();
    v2->_tileAdditionalBinaryFunctions = objc_opt_new();
    v2->_objectAdditionalBinaryFunctions = objc_opt_new();
    v2->_meshAdditionalBinaryFunctions = objc_opt_new();
    *&v2->_vertexAdditionalBinaryFunctionResourceIndices = 0u;
    *&v2->_tileAdditionalBinaryFunctionResourceIndices = 0u;
    v2->_meshAdditionalBinaryFunctionResourceIndices = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLRenderPipelineFunctionsDescriptor;
  [(MTLRenderPipelineFunctionsDescriptor *)&v3 dealloc];
}

- (unint64_t)hash
{
  bzero(v9, 0x28uLL);
  vertexAdditionalBinaryFunctions = self->_vertexAdditionalBinaryFunctions;
  if (vertexAdditionalBinaryFunctions)
  {
    v9[0] = [(NSArray *)vertexAdditionalBinaryFunctions hash];
  }

  fragmentAdditionalBinaryFunctions = self->_fragmentAdditionalBinaryFunctions;
  if (fragmentAdditionalBinaryFunctions)
  {
    v9[1] = [(NSArray *)fragmentAdditionalBinaryFunctions hash];
  }

  tileAdditionalBinaryFunctions = self->_tileAdditionalBinaryFunctions;
  if (tileAdditionalBinaryFunctions)
  {
    v9[2] = [(NSArray *)tileAdditionalBinaryFunctions hash];
  }

  objectAdditionalBinaryFunctions = self->_objectAdditionalBinaryFunctions;
  if (objectAdditionalBinaryFunctions)
  {
    v9[3] = [(NSArray *)objectAdditionalBinaryFunctions hash];
  }

  meshAdditionalBinaryFunctions = self->_meshAdditionalBinaryFunctions;
  if (meshAdditionalBinaryFunctions)
  {
    v9[4] = [(NSArray *)meshAdditionalBinaryFunctions hash];
  }

  return _MTLHashState(v9, 0x28uLL);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  if (v5)
  {
    v5[1] = [(NSArray *)self->_vertexAdditionalBinaryFunctions copyWithZone:zone];
    v5[2] = [(NSArray *)self->_fragmentAdditionalBinaryFunctions copyWithZone:zone];
    v5[3] = [(NSArray *)self->_tileAdditionalBinaryFunctions copyWithZone:zone];
    v5[4] = [(NSArray *)self->_objectAdditionalBinaryFunctions copyWithZone:zone];
    v5[5] = [(NSArray *)self->_meshAdditionalBinaryFunctions copyWithZone:zone];
  }

  return v5;
}

@end