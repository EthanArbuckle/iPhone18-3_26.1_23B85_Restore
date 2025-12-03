@interface MTLRenderPipelineDescriptor(Configuration)
- (void)configureForAdditiveBlending;
- (void)configureForAlphaReductionBlending;
- (void)configureForSourceOverBlending;
@end

@implementation MTLRenderPipelineDescriptor(Configuration)

- (void)configureForAdditiveBlending
{
  colorAttachments = [self colorAttachments];
  v3 = [colorAttachments objectAtIndexedSubscript:0];
  [v3 setBlendingEnabled:1];

  colorAttachments2 = [self colorAttachments];
  v5 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v5 setRgbBlendOperation:0];

  colorAttachments3 = [self colorAttachments];
  v7 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v7 setAlphaBlendOperation:0];

  colorAttachments4 = [self colorAttachments];
  v9 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v9 setSourceRGBBlendFactor:1];

  colorAttachments5 = [self colorAttachments];
  v11 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v11 setDestinationRGBBlendFactor:1];

  colorAttachments6 = [self colorAttachments];
  v13 = [colorAttachments6 objectAtIndexedSubscript:0];
  [v13 setSourceAlphaBlendFactor:1];

  colorAttachments7 = [self colorAttachments];
  v14 = [colorAttachments7 objectAtIndexedSubscript:0];
  [v14 setDestinationAlphaBlendFactor:1];
}

- (void)configureForSourceOverBlending
{
  colorAttachments = [self colorAttachments];
  v3 = [colorAttachments objectAtIndexedSubscript:0];
  [v3 setBlendingEnabled:1];

  colorAttachments2 = [self colorAttachments];
  v5 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v5 setRgbBlendOperation:0];

  colorAttachments3 = [self colorAttachments];
  v7 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v7 setAlphaBlendOperation:0];

  colorAttachments4 = [self colorAttachments];
  v9 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v9 setSourceRGBBlendFactor:4];

  colorAttachments5 = [self colorAttachments];
  v11 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v11 setDestinationRGBBlendFactor:5];

  colorAttachments6 = [self colorAttachments];
  v13 = [colorAttachments6 objectAtIndexedSubscript:0];
  [v13 setSourceAlphaBlendFactor:1];

  colorAttachments7 = [self colorAttachments];
  v14 = [colorAttachments7 objectAtIndexedSubscript:0];
  [v14 setDestinationAlphaBlendFactor:5];
}

- (void)configureForAlphaReductionBlending
{
  colorAttachments = [self colorAttachments];
  v3 = [colorAttachments objectAtIndexedSubscript:0];
  [v3 setBlendingEnabled:1];

  colorAttachments2 = [self colorAttachments];
  v5 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v5 setRgbBlendOperation:0];

  colorAttachments3 = [self colorAttachments];
  v7 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v7 setAlphaBlendOperation:0];

  colorAttachments4 = [self colorAttachments];
  v9 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v9 setSourceRGBBlendFactor:0];

  colorAttachments5 = [self colorAttachments];
  v11 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v11 setDestinationRGBBlendFactor:4];

  colorAttachments6 = [self colorAttachments];
  v13 = [colorAttachments6 objectAtIndexedSubscript:0];
  [v13 setSourceAlphaBlendFactor:0];

  colorAttachments7 = [self colorAttachments];
  v14 = [colorAttachments7 objectAtIndexedSubscript:0];
  [v14 setDestinationAlphaBlendFactor:4];
}

@end