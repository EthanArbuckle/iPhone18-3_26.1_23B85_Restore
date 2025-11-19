@interface MTLStencilDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (MTLStencilDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
@end

@implementation MTLStencilDescriptorInternal

- (MTLStencilDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLStencilDescriptorInternal;
  result = [(MTLStencilDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_private.stencilCompareFunction = 7;
    result->_private.stencilFailureOperation = 0;
    *&result->_private.depthFailureOperation = 0u;
    *&result->_private.readMask = -1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && self->_private.stencilCompareFunction == *(a3 + 1) && self->_private.stencilFailureOperation == *(a3 + 2) && self->_private.depthFailureOperation == *(a3 + 3) && self->_private.depthStencilPassOperation == *(a3 + 4) && self->_private.readMask == *(a3 + 10) && self->_private.writeMask == *(a3 + 11);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    v5 = *&self->_private.readMask;
    v6 = *&self->_private.depthFailureOperation;
    *(result + 8) = *&self->_private.stencilCompareFunction;
    *(result + 24) = v6;
    *(result + 5) = v5;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v10[18] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLStencilDescriptorInternal;
  v6 = [(MTLStencilDescriptorInternal *)&v9 description];
  v10[0] = v4;
  v10[1] = @"stencilCompareFunction        =";
  v10[2] = MTLCompareFunctionString(self->_private.stencilCompareFunction);
  v10[3] = v4;
  v10[4] = @"stencilFailureOperation       =";
  v10[5] = MTLStencilOperationString(self->_private.stencilFailureOperation);
  v10[6] = v4;
  v10[7] = @"stencilPassDepthFailOperation =";
  v10[8] = MTLStencilOperationString(self->_private.depthFailureOperation);
  v10[9] = v4;
  v10[10] = @"stencilPassDepthPassOperation =";
  v10[11] = MTLStencilOperationString(self->_private.depthStencilPassOperation);
  v10[12] = v4;
  v10[13] = @"stencilReadMask               =";
  v10[14] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", self->_private.readMask];
  v10[15] = v4;
  v10[16] = @"stencilWriteMask              =";
  v10[17] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", self->_private.writeMask];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 18), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end