@interface ARUICountdownRingsRenderPipelineFactory
- (ARUICountdownRingsRenderPipelineFactory)initWithDevice:(id)a3 library:(id)a4;
- (ARUICountdownRingsRenderPipelineFactory)initWithDeviceSPI:(id)a3 librarySPI:(id)a4;
- (id)pipelineForConfiguration:(id)a3;
@end

@implementation ARUICountdownRingsRenderPipelineFactory

- (ARUICountdownRingsRenderPipelineFactory)initWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ARUICountdownRingsRenderPipelineFactory;
  v8 = [(ARUIPipelineFactory *)&v16 initWithDevice:v6 library:v7];
  if (v8)
  {
    v9 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithDevice:v6 library:v7];
    emptyState = v8->_emptyState;
    v8->_emptyState = v9;

    v11 = [(ARUIRingsRenderState *)[ARUIRingsCountdownState alloc] initWithDevice:v6 library:v7];
    countdownState = v8->_countdownState;
    v8->_countdownState = v11;

    v13 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithDevice:v6 library:v7];
    alphaReductionState = v8->_alphaReductionState;
    v8->_alphaReductionState = v13;
  }

  return v8;
}

- (ARUICountdownRingsRenderPipelineFactory)initWithDeviceSPI:(id)a3 librarySPI:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = ARUICountdownRingsRenderPipelineFactory;
  v7 = [(ARUIPipelineFactory *)&v15 initWithDeviceSPI:a3 librarySPI:v6];
  if (v7)
  {
    v8 = [(ARUIRingsRenderState *)[ARUIRingsEmptyState alloc] initWithPipelineLibrary:v6];
    emptyState = v7->_emptyState;
    v7->_emptyState = v8;

    v10 = [(ARUIRingsRenderState *)[ARUIRingsCountdownState alloc] initWithPipelineLibrary:v6];
    countdownState = v7->_countdownState;
    v7->_countdownState = v10;

    v12 = [(ARUIRingsRenderState *)[ARUIRingsAlphaReductionState alloc] initWithPipelineLibrary:v6];
    alphaReductionState = v7->_alphaReductionState;
    v7->_alphaReductionState = v12;
  }

  return v7;
}

- (id)pipelineForConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 hasVisibleRings])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [v4 hasEmptyRing];
    v7 = &OBJC_IVAR___ARUICountdownRingsRenderPipelineFactory__countdownState;
    if (v6)
    {
      v7 = &OBJC_IVAR___ARUICountdownRingsRenderPipelineFactory__emptyState;
    }

    [v5 addObject:*(&self->super.super.super.isa + *v7)];
    if ([v4 needsAlphaReductionPass])
    {
      [v5 addObject:self->_alphaReductionState];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

@end