@interface CVAFilterColorAlphaToFgBg
- (CVAFilterColorAlphaToFgBg)initWithFigMetalContext:(id)context error:(id *)error;
- (void)encodeToCommandBuffer:(id)buffer srcColorTex:(id)tex srcAlphaTex:(id)alphaTex dstForegroundTex:(id)foregroundTex dstBackgroundTex:(id)backgroundTex;
- (void)encodeToCommandBuffer:(id)buffer srcColorTex:(id)tex srcAlphaTex:(id)alphaTex dstForegroundTex:(id)foregroundTex normalizedPrimaryCaptureRect:(CGRect)rect isAfterPreviewStitcher:(BOOL)stitcher applyRotation:(BOOL)rotation;
@end

@implementation CVAFilterColorAlphaToFgBg

- (void)encodeToCommandBuffer:(id)buffer srcColorTex:(id)tex srcAlphaTex:(id)alphaTex dstForegroundTex:(id)foregroundTex normalizedPrimaryCaptureRect:(CGRect)rect isAfterPreviewStitcher:(BOOL)stitcher applyRotation:(BOOL)rotation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bufferCopy = buffer;
  texCopy = tex;
  alphaTexCopy = alphaTex;
  foregroundTexCopy = foregroundTex;
  stitcherCopy = stitcher;
  rotationCopy = rotation;
  v23 = x;
  v24 = y;
  *v33 = v23;
  *&v33[1] = v24;
  v25 = width;
  v26 = height;
  *&v33[2] = v25;
  *&v33[3] = v26;
  width = [texCopy width];
  height = [texCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_splitFgKernel_rgba"];
  [computeCommandEncoder setComputePipelineState:self->_splitFgKernel_rgba];
  [computeCommandEncoder setTexture:alphaTexCopy atIndex:0];
  [computeCommandEncoder setTexture:texCopy atIndex:1];
  [computeCommandEncoder setTexture:foregroundTexCopy atIndex:2];
  [computeCommandEncoder setBytes:v33 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&stitcherCopy length:1 atIndex:1];
  [computeCommandEncoder setBytes:&rotationCopy length:1 atIndex:2];
  v32[0] = (width + 15) >> 4;
  v32[1] = (height + 15) >> 4;
  v32[2] = 1;
  v30 = xmmword_1DED747F0;
  v31 = 1;
  [computeCommandEncoder dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
  [computeCommandEncoder endEncoding];
}

- (void)encodeToCommandBuffer:(id)buffer srcColorTex:(id)tex srcAlphaTex:(id)alphaTex dstForegroundTex:(id)foregroundTex dstBackgroundTex:(id)backgroundTex
{
  bufferCopy = buffer;
  texCopy = tex;
  alphaTexCopy = alphaTex;
  foregroundTexCopy = foregroundTex;
  backgroundTexCopy = backgroundTex;
  width = [texCopy width];
  height = [texCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"dstForegroundTex ? _splitFgBgKernel_rgba : _splitBgKernel_rgba"];
  v20 = 8;
  if (!foregroundTexCopy)
  {
    v20 = 16;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v20)];
  [computeCommandEncoder setTexture:alphaTexCopy atIndex:0];
  [computeCommandEncoder setTexture:texCopy atIndex:1];
  [computeCommandEncoder setTexture:foregroundTexCopy atIndex:2];
  [computeCommandEncoder setTexture:backgroundTexCopy atIndex:3];
  v23[0] = (width + 15) >> 4;
  v23[1] = (height + 15) >> 4;
  v23[2] = 1;
  v21 = xmmword_1DED747F0;
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
}

- (CVAFilterColorAlphaToFgBg)initWithFigMetalContext:(id)context error:(id *)error
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CVAFilterColorAlphaToFgBg;
  v6 = [(CVAFilterColorAlphaToFgBg *)&v17 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  label = v6->_label;
  v6->_label = v8;

  v10 = objc_opt_new();
  v16 = 1;
  [v10 setConstantValue:&v16 type:53 withName:@"kWriteForeground"];
  sub_1DED422A0(&v6->_splitFgBgKernel_rgba, contextCopy, @"splitFgBg_rgba", v10);
  splitFgBgKernel_rgba = v6->_splitFgBgKernel_rgba;

  if (!splitFgBgKernel_rgba)
  {
    goto LABEL_6;
  }

  v12 = objc_opt_new();
  v16 = 0;
  [v12 setConstantValue:&v16 type:53 withName:@"kWriteForeground"];
  sub_1DED422A0(&v6->_splitBgKernel_rgba, contextCopy, @"splitFgBg_rgba", v12);
  splitBgKernel_rgba = v6->_splitBgKernel_rgba;

  if (splitBgKernel_rgba && (sub_1DED422A0(&v6->_splitFgKernel_rgba, contextCopy, @"splitFg_rgba", 0), v6->_splitFgKernel_rgba))
  {
    v14 = v6;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

@end