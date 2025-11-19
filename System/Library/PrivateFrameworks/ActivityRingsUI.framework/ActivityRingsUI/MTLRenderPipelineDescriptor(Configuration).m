@interface MTLRenderPipelineDescriptor(Configuration)
- (void)configureForAdditiveBlending;
- (void)configureForAlphaReductionBlending;
- (void)configureForSourceOverBlending;
@end

@implementation MTLRenderPipelineDescriptor(Configuration)

- (void)configureForAdditiveBlending
{
  v2 = [a1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 setBlendingEnabled:1];

  v4 = [a1 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setRgbBlendOperation:0];

  v6 = [a1 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setAlphaBlendOperation:0];

  v8 = [a1 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setSourceRGBBlendFactor:1];

  v10 = [a1 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setDestinationRGBBlendFactor:1];

  v12 = [a1 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setSourceAlphaBlendFactor:1];

  v15 = [a1 colorAttachments];
  v14 = [v15 objectAtIndexedSubscript:0];
  [v14 setDestinationAlphaBlendFactor:1];
}

- (void)configureForSourceOverBlending
{
  v2 = [a1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 setBlendingEnabled:1];

  v4 = [a1 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setRgbBlendOperation:0];

  v6 = [a1 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setAlphaBlendOperation:0];

  v8 = [a1 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setSourceRGBBlendFactor:4];

  v10 = [a1 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setDestinationRGBBlendFactor:5];

  v12 = [a1 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setSourceAlphaBlendFactor:1];

  v15 = [a1 colorAttachments];
  v14 = [v15 objectAtIndexedSubscript:0];
  [v14 setDestinationAlphaBlendFactor:5];
}

- (void)configureForAlphaReductionBlending
{
  v2 = [a1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 setBlendingEnabled:1];

  v4 = [a1 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setRgbBlendOperation:0];

  v6 = [a1 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setAlphaBlendOperation:0];

  v8 = [a1 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setSourceRGBBlendFactor:0];

  v10 = [a1 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setDestinationRGBBlendFactor:4];

  v12 = [a1 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setSourceAlphaBlendFactor:0];

  v15 = [a1 colorAttachments];
  v14 = [v15 objectAtIndexedSubscript:0];
  [v14 setDestinationAlphaBlendFactor:4];
}

@end