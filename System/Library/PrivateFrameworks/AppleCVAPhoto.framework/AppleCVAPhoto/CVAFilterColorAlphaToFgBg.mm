@interface CVAFilterColorAlphaToFgBg
- (CVAFilterColorAlphaToFgBg)initWithFigMetalContext:(id)a3 error:(id *)a4;
- (void)encodeToCommandBuffer:(id)a3 srcColorTex:(id)a4 srcAlphaTex:(id)a5 dstForegroundTex:(id)a6 dstBackgroundTex:(id)a7;
- (void)encodeToCommandBuffer:(id)a3 srcColorTex:(id)a4 srcAlphaTex:(id)a5 dstForegroundTex:(id)a6 normalizedPrimaryCaptureRect:(CGRect)a7 isAfterPreviewStitcher:(BOOL)a8 applyRotation:(BOOL)a9;
@end

@implementation CVAFilterColorAlphaToFgBg

- (void)encodeToCommandBuffer:(id)a3 srcColorTex:(id)a4 srcAlphaTex:(id)a5 dstForegroundTex:(id)a6 normalizedPrimaryCaptureRect:(CGRect)a7 isAfterPreviewStitcher:(BOOL)a8 applyRotation:(BOOL)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v35 = a8;
  v34 = a9;
  v23 = x;
  v24 = y;
  *v33 = v23;
  *&v33[1] = v24;
  v25 = width;
  v26 = height;
  *&v33[2] = v25;
  *&v33[3] = v26;
  v27 = [v20 width];
  v28 = [v20 height];
  v29 = [v19 computeCommandEncoder];
  [v29 setLabel:@"_splitFgKernel_rgba"];
  [v29 setComputePipelineState:self->_splitFgKernel_rgba];
  [v29 setTexture:v21 atIndex:0];
  [v29 setTexture:v20 atIndex:1];
  [v29 setTexture:v22 atIndex:2];
  [v29 setBytes:v33 length:16 atIndex:0];
  [v29 setBytes:&v35 length:1 atIndex:1];
  [v29 setBytes:&v34 length:1 atIndex:2];
  v32[0] = (v27 + 15) >> 4;
  v32[1] = (v28 + 15) >> 4;
  v32[2] = 1;
  v30 = xmmword_1DED747F0;
  v31 = 1;
  [v29 dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
  [v29 endEncoding];
}

- (void)encodeToCommandBuffer:(id)a3 srcColorTex:(id)a4 srcAlphaTex:(id)a5 dstForegroundTex:(id)a6 dstBackgroundTex:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 width];
  v18 = [v13 height];
  v19 = [v12 computeCommandEncoder];
  [v19 setLabel:@"dstForegroundTex ? _splitFgBgKernel_rgba : _splitBgKernel_rgba"];
  v20 = 8;
  if (!v15)
  {
    v20 = 16;
  }

  [v19 setComputePipelineState:*(&self->super.isa + v20)];
  [v19 setTexture:v14 atIndex:0];
  [v19 setTexture:v13 atIndex:1];
  [v19 setTexture:v15 atIndex:2];
  [v19 setTexture:v16 atIndex:3];
  v23[0] = (v17 + 15) >> 4;
  v23[1] = (v18 + 15) >> 4;
  v23[2] = 1;
  v21 = xmmword_1DED747F0;
  v22 = 1;
  [v19 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [v19 endEncoding];
}

- (CVAFilterColorAlphaToFgBg)initWithFigMetalContext:(id)a3 error:(id *)a4
{
  v5 = a3;
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
  sub_1DED422A0(&v6->_splitFgBgKernel_rgba, v5, @"splitFgBg_rgba", v10);
  splitFgBgKernel_rgba = v6->_splitFgBgKernel_rgba;

  if (!splitFgBgKernel_rgba)
  {
    goto LABEL_6;
  }

  v12 = objc_opt_new();
  v16 = 0;
  [v12 setConstantValue:&v16 type:53 withName:@"kWriteForeground"];
  sub_1DED422A0(&v6->_splitBgKernel_rgba, v5, @"splitFgBg_rgba", v12);
  splitBgKernel_rgba = v6->_splitBgKernel_rgba;

  if (splitBgKernel_rgba && (sub_1DED422A0(&v6->_splitFgKernel_rgba, v5, @"splitFg_rgba", 0), v6->_splitFgKernel_rgba))
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