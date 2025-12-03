@interface MTLDepthStencilDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLDepthStencilDescriptorInternal)init;
- (id)backFaceStencil;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (id)frontFaceStencil;
- (unint64_t)hash;
- (void)dealloc;
- (void)setBackFaceStencil:(id)stencil;
- (void)setFrontFaceStencil:(id)stencil;
- (void)setLabel:(id)label;
@end

@implementation MTLDepthStencilDescriptorInternal

- (MTLDepthStencilDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLDepthStencilDescriptorInternal;
  result = [(MTLDepthStencilDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_private.depthCompareFunction = 7;
    result->_private.depthWriteEnabled = 0;
    result->_private.label = 0;
    result->_private.resourceIndex = 0;
  }

  return result;
}

- (id)frontFaceStencil
{
  result = self->_private.frontFaceStencil;
  if (!result)
  {
    result = objc_alloc_init(MTLStencilDescriptorInternal);
    self->_private.frontFaceStencil = result;
  }

  return result;
}

- (id)backFaceStencil
{
  p_private = &self->_private;
  result = self->_private.backFaceStencil;
  if (!result)
  {
    result = objc_alloc_init(MTLStencilDescriptorInternal);
    p_private->backFaceStencil = result;
  }

  return result;
}

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLDepthStencilDescriptorInternal;
  [(MTLDepthStencilDescriptorInternal *)&v4 dealloc];
}

- (unint64_t)hash
{
  p_private = &self->_private;
  v8[0] = [(MTLStencilDescriptorInternal *)self->_private.frontFaceStencil hash];
  v3 = [(MTLStencilDescriptorInternal *)p_private->backFaceStencil hash];
  v4 = p_private->depthWriteEnabled | (2 * p_private->depthCompareFunction);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [(NSString *)p_private->label hash];
  resourceIndex = p_private->resourceIndex;
  v8[3] = v5;
  v8[4] = resourceIndex;
  return _MTLHashState(v8, 0x28uLL);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v16 = v8;
  v17 = v7;
  v18 = v6;
  v19 = v5;
  v20 = v4;
  v21 = v3;
  Class = object_getClass(self);
  result = 0;
  if (Class == object_getClass(equal) && (!self->_private.frontFaceStencil && !*(equal + 1) || [-[MTLDepthStencilDescriptorInternal frontFaceStencil](self frontFaceStencil]) && (!self->_private.backFaceStencil && !*(equal + 2) || objc_msgSend(-[MTLDepthStencilDescriptorInternal backFaceStencil](self, "backFaceStencil", v16, v17, v18, v19, v20, v21), "isEqual:", objc_msgSend(equal, "backFaceStencil"))) && self->_private.depthCompareFunction == *(equal + 3) && self->_private.depthWriteEnabled == *(equal + 32))
  {
    label = self->_private.label;
    if ((label == *(equal + 5) || [(NSString *)label isEqual:?]) && self->_private.resourceIndex == *(equal + 6))
    {
      return 1;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    if (self->_private.frontFaceStencil)
    {
      *(v5 + 8) = [(MTLStencilDescriptorInternal *)self->_private.frontFaceStencil copyWithZone:zone];
    }

    backFaceStencil = self->_private.backFaceStencil;
    if (backFaceStencil)
    {
      *(v6 + 16) = [(MTLStencilDescriptorInternal *)backFaceStencil copyWithZone:zone];
    }

    *(v6 + 24) = self->_private.depthCompareFunction;
    *(v6 + 32) = self->_private.depthWriteEnabled;
    v8 = [(NSString *)self->_private.label copyWithZone:zone];
    resourceIndex = self->_private.resourceIndex;
    *(v6 + 40) = v8;
    *(v6 + 48) = resourceIndex;
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)description
{
  v17[12] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v17[0] = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v17[1] = @"stencilCompareFunction        = MTLCompareFunctionAlways";
  v17[2] = v17[0];
  v17[3] = @"stencilFailOperation          = MTLStencilOperationKeep";
  v17[4] = v17[0];
  v17[5] = @"stencilPassDepthFailOperation = MTLStencilOperationKeep";
  v17[6] = v17[0];
  v17[7] = @"stencilPassDepthPassOperation = MTLStencilOperationKeep";
  v17[8] = v17[0];
  v17[9] = @"stencilReadMask               = 0xffffffff";
  v17[10] = v17[0];
  v17[11] = @"stencilWriteMask              = 0xffffffff";
  v6 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{12), "componentsJoinedByString:", @" "}];
  v7 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = MTLDepthStencilDescriptorInternal;
  v8 = [(MTLDepthStencilDescriptorInternal *)&v15 description];
  v16[0] = v5;
  v16[1] = @"label =";
  p_private = &self->_private;
  label = p_private->label;
  if (!label)
  {
    label = @"<none>";
  }

  v16[2] = label;
  v16[3] = v5;
  v16[4] = @"depthCompareFunction =";
  v16[5] = MTLCompareFunctionString(p_private->depthCompareFunction);
  v16[6] = v5;
  v16[7] = @"depthWriteEnabled =";
  v16[8] = [MEMORY[0x1E696AD98] numberWithBool:p_private->depthWriteEnabled];
  v16[9] = v5;
  v16[10] = @"frontFace:";
  v11 = v6;
  if (p_private->frontFaceStencil)
  {
    v11 = [(MTLStencilDescriptorInternal *)p_private->frontFaceStencil formattedDescription:description + 4];
  }

  v16[11] = v11;
  v16[12] = v5;
  v16[13] = @"backFace:";
  backFaceStencil = p_private->backFaceStencil;
  if (backFaceStencil)
  {
    v6 = [(MTLStencilDescriptorInternal *)backFaceStencil formattedDescription:description + 4];
  }

  v16[14] = v6;
  v16[15] = v5;
  v16[16] = @"resourceIndex =";
  v16[17] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:p_private->resourceIndex];
  result = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 18), "componentsJoinedByString:", @" "];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setFrontFaceStencil:(id)stencil
{
  if (self->_private.frontFaceStencil != stencil)
  {
    if (stencil)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        [(MTLDepthStencilDescriptorInternal *)isKindOfClass setFrontFaceStencil:v6, v7, v8, v9, v10, v11, v12, v14];
      }
    }

    v13 = [stencil copy];

    self->_private.frontFaceStencil = v13;
  }
}

- (void)setBackFaceStencil:(id)stencil
{
  p_private = &self->_private;
  if (self->_private.backFaceStencil != stencil)
  {
    if (stencil)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        [(MTLDepthStencilDescriptorInternal *)isKindOfClass setBackFaceStencil:v6, v7, v8, v9, v10, v11, v12, v14];
      }
    }

    v13 = [stencil copy];

    p_private->backFaceStencil = v13;
  }
}

- (void)setLabel:(id)label
{
  if (label)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLDepthStencilDescriptorInternal *)isKindOfClass setLabel:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLDepthStencilDescriptorInternal *)self setLabel:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  p_private = &self->_private;
  label = p_private->label;
  if (label != label)
  {

    p_private->label = [label copy];
  }
}

@end