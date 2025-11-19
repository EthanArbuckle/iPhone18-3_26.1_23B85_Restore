@interface CVAFilterBox
- (CVAFilterBox)initWithFigMetalContext:(id)a3 textureSize:(id *)a4 error:(id *)a5;
- (void)encodeBoxHorizontalToCommandBuffer:(id)a3 configBuffer:(const BoxFilterConfig *)a4 source:(id)a5 destination:(id)a6;
- (void)encodeBoxVerticalToCommandBuffer:(id)a3 configBuffer:(const BoxFilterConfig *)a4 source:(id)a5 destination:(id)a6 normalize:(int64_t)a7;
- (void)encodeToCommandBuffer:(id)a3 inTexture:(id)a4 outTexture:(id)a5 radius:(unint64_t)a6 normalize:(int64_t)a7;
@end

@implementation CVAFilterBox

- (void)encodeBoxVerticalToCommandBuffer:(id)a3 configBuffer:(const BoxFilterConfig *)a4 source:(id)a5 destination:(id)a6 normalize:(int64_t)a7
{
  v12 = a5;
  v13 = a6;
  v14 = [a3 computeCommandEncoder];
  if ([v12 pixelFormat] == 10 || objc_msgSend(v12, "pixelFormat") == 25 || objc_msgSend(v12, "pixelFormat") == 55)
  {
    if (a7 == 1)
    {
      [v14 setLabel:@"_box_norm_float_pass_vert_kernel"];
      v15 = 80;
    }

    else if (a7 == 2)
    {
      [v14 setLabel:@"_box_normValid_float_pass_vert_kernel"];
      v15 = 72;
    }

    else
    {
      [v14 setLabel:@"_box_float_pass_vert_kernel"];
      v15 = 88;
    }
  }

  else if (a7 == 1)
  {
    [v14 setLabel:@"_box_norm_float4_pass_vert_kernel"];
    v15 = 104;
  }

  else if (a7 == 2)
  {
    [v14 setLabel:@"_box_normValid_float4_pass_vert_kernel"];
    v15 = 96;
  }

  else
  {
    [v14 setLabel:@"_box_float4_pass_vert_kernel"];
    v15 = 112;
  }

  [v14 setComputePipelineState:*(&self->super.isa + v15)];
  [v14 setTexture:v12 atIndex:0];
  [v14 setTexture:v13 atIndex:1];
  [v14 setBytes:a4 length:4 atIndex:0];
  v18[0] = ([v12 width] + 15) >> 4;
  v18[1] = ([v12 height] + 15) >> 4;
  v18[2] = 1;
  v16 = xmmword_1DED747F0;
  v17 = 1;
  [v14 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v14 endEncoding];
}

- (void)encodeBoxHorizontalToCommandBuffer:(id)a3 configBuffer:(const BoxFilterConfig *)a4 source:(id)a5 destination:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  v14 = [v11 pixelFormat];
  if (v14 > 69)
  {
    if (v14 == 70 || v14 == 115 || v14 == 125)
    {
      [v13 setLabel:@"_box_float4_pass_horiz_kernel"];
      v15 = 64;
      goto LABEL_10;
    }

LABEL_12:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:180 description:{@"Bad output pixel format (%lu) for encodeBoxFilterToBuffer", objc_msgSend(v11, "pixelFormat")}];

    goto LABEL_11;
  }

  if (v14 != 10 && v14 != 25 && v14 != 55)
  {
    goto LABEL_12;
  }

  [v13 setLabel:@"_box_float_pass_horiz_kernel"];
  v15 = 56;
LABEL_10:
  [v13 setComputePipelineState:*(&self->super.isa + v15)];
LABEL_11:
  [v13 setTexture:v11 atIndex:0];
  [v13 setTexture:v12 atIndex:1];
  [v13 setBytes:a4 length:4 atIndex:0];
  v19[0] = ([v11 width] + 15) >> 4;
  v19[1] = ([v11 height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [v13 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v13 endEncoding];
}

- (void)encodeToCommandBuffer:(id)a3 inTexture:(id)a4 outTexture:(id)a5 radius:(unint64_t)a6 normalize:(int64_t)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (__PAIR128__([v14 height], objc_msgSend(v14, "width")) != *&self->_textureSize.width)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:102 description:{@"Texture dimension is not expected (%zux%zu) != (%zux%zu)", objc_msgSend(v14, "width"), objc_msgSend(v14, "height"), self->_textureSize.width, self->_textureSize.height}];
  }

  if ([v15 width] != self->_textureSize.width || objc_msgSend(v15, "height") != self->_textureSize.height)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:108 description:{@"Texture dimension is not expected (%zux%zu) != (%zux%zu)", objc_msgSend(v15, "width"), objc_msgSend(v15, "height"), self->_textureSize.width, self->_textureSize.height}];
  }

  if ([v14 pixelFormat] != 10 && objc_msgSend(v14, "pixelFormat") != 25 && objc_msgSend(v14, "pixelFormat") != 55 && objc_msgSend(v14, "pixelFormat") != 70 && objc_msgSend(v14, "pixelFormat") != 115 && objc_msgSend(v14, "pixelFormat") != 125)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:115 description:{@"Bad input pixel format (%lu) for encodeBoxFilterToBuffer", objc_msgSend(v14, "pixelFormat")}];
  }

  if ([v15 pixelFormat] != 10 && objc_msgSend(v15, "pixelFormat") != 25 && objc_msgSend(v15, "pixelFormat") != 55 && objc_msgSend(v15, "pixelFormat") != 70 && objc_msgSend(v15, "pixelFormat") != 115 && objc_msgSend(v15, "pixelFormat") != 125)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:121 description:{@"Bad output pixel format (%lu) for encodeBoxFilterToBuffer", objc_msgSend(v15, "pixelFormat")}];
  }

  if ([v14 pixelFormat] == 55)
  {
    if (a7)
    {
LABEL_31:
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:129 description:{@"Unsupported input pixel format (%lu) and normalization type (%ld) for encodeBoxFilterToBuffer", objc_msgSend(v14, "pixelFormat"), a7}];
    }
  }

  else
  {
    v16 = [v14 pixelFormat];
    if (a7 && v16 == 125)
    {
      goto LABEL_31;
    }
  }

  v25 = v8;
  if ([v14 pixelFormat] == 70 || objc_msgSend(v14, "pixelFormat") == 115)
  {
    v17 = 40;
  }

  else
  {
    v18 = [v14 pixelFormat];
    v17 = 48;
    if (v18 == 125)
    {
      v17 = 40;
    }
  }

  v19 = *(&self->super.isa + v17);
  [(CVAFilterBox *)self encodeBoxHorizontalToCommandBuffer:v13 configBuffer:&v25 source:v14 destination:v19];
  [(CVAFilterBox *)self encodeBoxVerticalToCommandBuffer:v13 configBuffer:&v25 source:v19 destination:v15 normalize:a7];
}

- (CVAFilterBox)initWithFigMetalContext:(id)a3 textureSize:(id *)a4 error:(id *)a5
{
  v9 = a3;
  v48.receiver = self;
  v48.super_class = CVAFilterBox;
  v10 = [(CVAFilterBox *)&v48 init];
  v11 = v10;
  if (v10)
  {
    p_box_float_pass_horiz_kernel = &v10->_box_float_pass_horiz_kernel;
    v25 = @"box_float_pass_horiz";
    v26 = 0;
    p_box_float4_pass_horiz_kernel = &v10->_box_float4_pass_horiz_kernel;
    v28 = @"box_float4_pass_horiz";
    v29 = 0;
    p_box_normValid_float_pass_vert_kernel = &v10->_box_normValid_float_pass_vert_kernel;
    v31 = @"box_normValid_float_pass_vert";
    v32 = 0;
    p_box_norm_float_pass_vert_kernel = &v10->_box_norm_float_pass_vert_kernel;
    v34 = @"box_norm_float_pass_vert";
    v35 = 0;
    p_box_float_pass_vert_kernel = &v10->_box_float_pass_vert_kernel;
    v37 = @"box_float_pass_vert";
    v38 = 0;
    p_box_normValid_float4_pass_vert_kernel = &v10->_box_normValid_float4_pass_vert_kernel;
    v40 = @"box_normValid_float4_pass_vert";
    v41 = 0;
    p_box_norm_float4_pass_vert_kernel = &v10->_box_norm_float4_pass_vert_kernel;
    v43 = @"box_norm_float4_pass_vert";
    v44 = 0;
    p_box_float4_pass_vert_kernel = &v10->_box_float4_pass_vert_kernel;
    v46 = @"box_float4_pass_vert";
    v47 = 0;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    label = v11->_label;
    v11->_label = v13;

    objc_storeStrong(&v11->_figMetalContext, a3);
    v15 = *&a4->var0;
    v11->_textureSize.depth = a4->var2;
    *&v11->_textureSize.width = v15;
    v16 = [v9 device];
    v17 = sub_1DED6FDC8(v16, 115, a4->var0, a4->var1, 0, a5);
    boxIntermediateTexture_rgba = v11->_boxIntermediateTexture_rgba;
    v11->_boxIntermediateTexture_rgba = v17;

    v19 = [v9 device];
    v20 = sub_1DED6FDC8(v19, 25, a4->var0, a4->var1, 0, a5);
    boxIntermediateTexture_r = v11->_boxIntermediateTexture_r;
    v11->_boxIntermediateTexture_r = v20;

    if (!v11->_boxIntermediateTexture_rgba)
    {
      goto LABEL_13;
    }

    if (!v11->_boxIntermediateTexture_r)
    {
      goto LABEL_13;
    }

    sub_1DED422A0(p_box_float_pass_horiz_kernel, v9, v25, v26);
    if (!p_box_float_pass_horiz_kernel)
    {
      goto LABEL_13;
    }

    sub_1DED422A0(p_box_float4_pass_horiz_kernel, v9, v28, v29);
    if (p_box_float4_pass_horiz_kernel && (sub_1DED422A0(p_box_normValid_float_pass_vert_kernel, v9, v31, v32), p_box_normValid_float_pass_vert_kernel) && (sub_1DED422A0(p_box_norm_float_pass_vert_kernel, v9, v34, v35), p_box_norm_float_pass_vert_kernel) && (sub_1DED422A0(p_box_float_pass_vert_kernel, v9, v37, v38), p_box_float_pass_vert_kernel) && (sub_1DED422A0(p_box_normValid_float4_pass_vert_kernel, v9, v40, v41), p_box_normValid_float4_pass_vert_kernel) && (sub_1DED422A0(p_box_norm_float4_pass_vert_kernel, v9, v43, v44), p_box_norm_float4_pass_vert_kernel) && (sub_1DED422A0(p_box_float4_pass_vert_kernel, v9, v46, v47), p_box_float4_pass_vert_kernel))
    {
      v22 = v11;
    }

    else
    {
LABEL_13:
      v22 = 0;
    }

    sub_1DED42348(&p_box_float_pass_horiz_kernel);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end