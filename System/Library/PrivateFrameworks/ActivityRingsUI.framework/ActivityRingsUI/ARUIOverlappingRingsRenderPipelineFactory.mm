@interface ARUIOverlappingRingsRenderPipelineFactory
- (ARUIOverlappingRingsRenderPipelineFactory)initWithDevice:(id)a3 library:(id)a4;
- (ARUIOverlappingRingsRenderPipelineFactory)initWithDeviceSPI:(id)a3 librarySPI:(id)a4;
- (id)pipelineForConfiguration:(id)a3;
@end

@implementation ARUIOverlappingRingsRenderPipelineFactory

- (ARUIOverlappingRingsRenderPipelineFactory)initWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ARUIOverlappingRingsRenderPipelineFactory;
  v8 = [(ARUIPipelineFactory *)&v18 initWithDevice:v6 library:v7];
  if (v8)
  {
    v9 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithDevice:v6 library:v7];
    emptyState = v8->_emptyState;
    v8->_emptyState = v9;

    v11 = [(ARUIRingsRenderState *)[ARUIRingsFillState alloc] initWithDevice:v6 library:v7];
    fillState = v8->_fillState;
    v8->_fillState = v11;

    v13 = [(ARUIRingsRenderState *)[ARUIRingsEndCapShadowState alloc] initWithDevice:v6 library:v7];
    endCapShadowState = v8->_endCapShadowState;
    v8->_endCapShadowState = v13;

    v15 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithDevice:v6 library:v7];
    alphaReductionState = v8->_alphaReductionState;
    v8->_alphaReductionState = v15;
  }

  return v8;
}

- (ARUIOverlappingRingsRenderPipelineFactory)initWithDeviceSPI:(id)a3 librarySPI:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = ARUIOverlappingRingsRenderPipelineFactory;
  v7 = [(ARUIPipelineFactory *)&v17 initWithDeviceSPI:a3 librarySPI:v6];
  if (v7)
  {
    v8 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithPipelineLibrary:v6];
    emptyState = v7->_emptyState;
    v7->_emptyState = v8;

    v10 = [(ARUIRingsRenderState *)[ARUIRingsFillState alloc] initWithPipelineLibrary:v6];
    fillState = v7->_fillState;
    v7->_fillState = v10;

    v12 = [(ARUIRingsRenderState *)[ARUIRingsEndCapShadowState alloc] initWithPipelineLibrary:v6];
    endCapShadowState = v7->_endCapShadowState;
    v7->_endCapShadowState = v12;

    v14 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithPipelineLibrary:v6];
    alphaReductionState = v7->_alphaReductionState;
    v7->_alphaReductionState = v14;
  }

  return v7;
}

- (id)pipelineForConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 hasVisibleRings])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if ([v4 hasVisibleRings])
    {
      if ([v4 hasEmptyRing])
      {
        [v5 addObject:self->_emptyState];
      }

      if ([v4 hasFilledRing])
      {
        [v5 addObject:self->_fillState];
        if ([v4 hasOverlappingRing])
        {
          [v5 addObject:self->_endCapShadowState];
        }
      }

      if ([v4 needsAlphaReductionPass])
      {
        [v5 addObject:self->_alphaReductionState];
      }
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

@end