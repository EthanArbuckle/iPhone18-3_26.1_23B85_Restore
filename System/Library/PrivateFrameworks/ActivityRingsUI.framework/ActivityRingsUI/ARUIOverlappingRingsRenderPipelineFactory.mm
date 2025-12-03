@interface ARUIOverlappingRingsRenderPipelineFactory
- (ARUIOverlappingRingsRenderPipelineFactory)initWithDevice:(id)device library:(id)library;
- (ARUIOverlappingRingsRenderPipelineFactory)initWithDeviceSPI:(id)i librarySPI:(id)pI;
- (id)pipelineForConfiguration:(id)configuration;
@end

@implementation ARUIOverlappingRingsRenderPipelineFactory

- (ARUIOverlappingRingsRenderPipelineFactory)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = ARUIOverlappingRingsRenderPipelineFactory;
  v8 = [(ARUIPipelineFactory *)&v18 initWithDevice:deviceCopy library:libraryCopy];
  if (v8)
  {
    v9 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithDevice:deviceCopy library:libraryCopy];
    emptyState = v8->_emptyState;
    v8->_emptyState = v9;

    v11 = [(ARUIRingsRenderState *)[ARUIRingsFillState alloc] initWithDevice:deviceCopy library:libraryCopy];
    fillState = v8->_fillState;
    v8->_fillState = v11;

    v13 = [(ARUIRingsRenderState *)[ARUIRingsEndCapShadowState alloc] initWithDevice:deviceCopy library:libraryCopy];
    endCapShadowState = v8->_endCapShadowState;
    v8->_endCapShadowState = v13;

    v15 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithDevice:deviceCopy library:libraryCopy];
    alphaReductionState = v8->_alphaReductionState;
    v8->_alphaReductionState = v15;
  }

  return v8;
}

- (ARUIOverlappingRingsRenderPipelineFactory)initWithDeviceSPI:(id)i librarySPI:(id)pI
{
  pICopy = pI;
  v17.receiver = self;
  v17.super_class = ARUIOverlappingRingsRenderPipelineFactory;
  v7 = [(ARUIPipelineFactory *)&v17 initWithDeviceSPI:i librarySPI:pICopy];
  if (v7)
  {
    v8 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithPipelineLibrary:pICopy];
    emptyState = v7->_emptyState;
    v7->_emptyState = v8;

    v10 = [(ARUIRingsRenderState *)[ARUIRingsFillState alloc] initWithPipelineLibrary:pICopy];
    fillState = v7->_fillState;
    v7->_fillState = v10;

    v12 = [(ARUIRingsRenderState *)[ARUIRingsEndCapShadowState alloc] initWithPipelineLibrary:pICopy];
    endCapShadowState = v7->_endCapShadowState;
    v7->_endCapShadowState = v12;

    v14 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithPipelineLibrary:pICopy];
    alphaReductionState = v7->_alphaReductionState;
    v7->_alphaReductionState = v14;
  }

  return v7;
}

- (id)pipelineForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy hasVisibleRings])
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([configurationCopy hasVisibleRings])
    {
      if ([configurationCopy hasEmptyRing])
      {
        [array addObject:self->_emptyState];
      }

      if ([configurationCopy hasFilledRing])
      {
        [array addObject:self->_fillState];
        if ([configurationCopy hasOverlappingRing])
        {
          [array addObject:self->_endCapShadowState];
        }
      }

      if ([configurationCopy needsAlphaReductionPass])
      {
        [array addObject:self->_alphaReductionState];
      }
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

@end