@interface ARUICountdownRingsRenderPipelineFactory
- (ARUICountdownRingsRenderPipelineFactory)initWithDevice:(id)device library:(id)library;
- (ARUICountdownRingsRenderPipelineFactory)initWithDeviceSPI:(id)i librarySPI:(id)pI;
- (id)pipelineForConfiguration:(id)configuration;
@end

@implementation ARUICountdownRingsRenderPipelineFactory

- (ARUICountdownRingsRenderPipelineFactory)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = ARUICountdownRingsRenderPipelineFactory;
  v8 = [(ARUIPipelineFactory *)&v16 initWithDevice:deviceCopy library:libraryCopy];
  if (v8)
  {
    v9 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithDevice:deviceCopy library:libraryCopy];
    emptyState = v8->_emptyState;
    v8->_emptyState = v9;

    v11 = [(ARUIRingsRenderState *)[ARUIRingsCountdownState alloc] initWithDevice:deviceCopy library:libraryCopy];
    countdownState = v8->_countdownState;
    v8->_countdownState = v11;

    v13 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithDevice:deviceCopy library:libraryCopy];
    alphaReductionState = v8->_alphaReductionState;
    v8->_alphaReductionState = v13;
  }

  return v8;
}

- (ARUICountdownRingsRenderPipelineFactory)initWithDeviceSPI:(id)i librarySPI:(id)pI
{
  pICopy = pI;
  v15.receiver = self;
  v15.super_class = ARUICountdownRingsRenderPipelineFactory;
  v7 = [(ARUIPipelineFactory *)&v15 initWithDeviceSPI:i librarySPI:pICopy];
  if (v7)
  {
    v8 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithPipelineLibrary:pICopy];
    emptyState = v7->_emptyState;
    v7->_emptyState = v8;

    v10 = [(ARUIRingsRenderState *)[ARUIRingsCountdownState alloc] initWithPipelineLibrary:pICopy];
    countdownState = v7->_countdownState;
    v7->_countdownState = v10;

    v12 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithPipelineLibrary:pICopy];
    alphaReductionState = v7->_alphaReductionState;
    v7->_alphaReductionState = v12;
  }

  return v7;
}

- (id)pipelineForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy hasVisibleRings])
  {
    array = [MEMORY[0x1E695DF70] array];
    hasEmptyRing = [configurationCopy hasEmptyRing];
    v7 = &OBJC_IVAR___ARUICountdownRingsRenderPipelineFactory__countdownState;
    if (hasEmptyRing)
    {
      v7 = &OBJC_IVAR___ARUICountdownRingsRenderPipelineFactory__emptyState;
    }

    [array addObject:*(&self->super.super.super.isa + *v7)];
    if ([configurationCopy needsAlphaReductionPass])
    {
      [array addObject:self->_alphaReductionState];
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

@end