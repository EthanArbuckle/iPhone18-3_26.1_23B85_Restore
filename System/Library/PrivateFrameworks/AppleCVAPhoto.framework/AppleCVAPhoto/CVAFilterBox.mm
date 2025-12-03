@interface CVAFilterBox
- (CVAFilterBox)initWithFigMetalContext:(id)context textureSize:(id *)size error:(id *)error;
- (void)encodeBoxHorizontalToCommandBuffer:(id)buffer configBuffer:(const BoxFilterConfig *)configBuffer source:(id)source destination:(id)destination;
- (void)encodeBoxVerticalToCommandBuffer:(id)buffer configBuffer:(const BoxFilterConfig *)configBuffer source:(id)source destination:(id)destination normalize:(int64_t)normalize;
- (void)encodeToCommandBuffer:(id)buffer inTexture:(id)texture outTexture:(id)outTexture radius:(unint64_t)radius normalize:(int64_t)normalize;
@end

@implementation CVAFilterBox

- (void)encodeBoxVerticalToCommandBuffer:(id)buffer configBuffer:(const BoxFilterConfig *)configBuffer source:(id)source destination:(id)destination normalize:(int64_t)normalize
{
  sourceCopy = source;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if ([sourceCopy pixelFormat] == 10 || objc_msgSend(sourceCopy, "pixelFormat") == 25 || objc_msgSend(sourceCopy, "pixelFormat") == 55)
  {
    if (normalize == 1)
    {
      [computeCommandEncoder setLabel:@"_box_norm_float_pass_vert_kernel"];
      v15 = 80;
    }

    else if (normalize == 2)
    {
      [computeCommandEncoder setLabel:@"_box_normValid_float_pass_vert_kernel"];
      v15 = 72;
    }

    else
    {
      [computeCommandEncoder setLabel:@"_box_float_pass_vert_kernel"];
      v15 = 88;
    }
  }

  else if (normalize == 1)
  {
    [computeCommandEncoder setLabel:@"_box_norm_float4_pass_vert_kernel"];
    v15 = 104;
  }

  else if (normalize == 2)
  {
    [computeCommandEncoder setLabel:@"_box_normValid_float4_pass_vert_kernel"];
    v15 = 96;
  }

  else
  {
    [computeCommandEncoder setLabel:@"_box_float4_pass_vert_kernel"];
    v15 = 112;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v15)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBytes:configBuffer length:4 atIndex:0];
  v18[0] = ([sourceCopy width] + 15) >> 4;
  v18[1] = ([sourceCopy height] + 15) >> 4;
  v18[2] = 1;
  v16 = xmmword_1DED747F0;
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)encodeBoxHorizontalToCommandBuffer:(id)buffer configBuffer:(const BoxFilterConfig *)configBuffer source:(id)source destination:(id)destination
{
  sourceCopy = source;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  pixelFormat = [sourceCopy pixelFormat];
  if (pixelFormat > 69)
  {
    if (pixelFormat == 70 || pixelFormat == 115 || pixelFormat == 125)
    {
      [computeCommandEncoder setLabel:@"_box_float4_pass_horiz_kernel"];
      v15 = 64;
      goto LABEL_10;
    }

LABEL_12:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:180 description:{@"Bad output pixel format (%lu) for encodeBoxFilterToBuffer", objc_msgSend(sourceCopy, "pixelFormat")}];

    goto LABEL_11;
  }

  if (pixelFormat != 10 && pixelFormat != 25 && pixelFormat != 55)
  {
    goto LABEL_12;
  }

  [computeCommandEncoder setLabel:@"_box_float_pass_horiz_kernel"];
  v15 = 56;
LABEL_10:
  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v15)];
LABEL_11:
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBytes:configBuffer length:4 atIndex:0];
  v19[0] = ([sourceCopy width] + 15) >> 4;
  v19[1] = ([sourceCopy height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)encodeToCommandBuffer:(id)buffer inTexture:(id)texture outTexture:(id)outTexture radius:(unint64_t)radius normalize:(int64_t)normalize
{
  radiusCopy = radius;
  bufferCopy = buffer;
  textureCopy = texture;
  outTextureCopy = outTexture;
  if (__PAIR128__([textureCopy height], objc_msgSend(textureCopy, "width")) != *&self->_textureSize.width)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:102 description:{@"Texture dimension is not expected (%zux%zu) != (%zux%zu)", objc_msgSend(textureCopy, "width"), objc_msgSend(textureCopy, "height"), self->_textureSize.width, self->_textureSize.height}];
  }

  if ([outTextureCopy width] != self->_textureSize.width || objc_msgSend(outTextureCopy, "height") != self->_textureSize.height)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:108 description:{@"Texture dimension is not expected (%zux%zu) != (%zux%zu)", objc_msgSend(outTextureCopy, "width"), objc_msgSend(outTextureCopy, "height"), self->_textureSize.width, self->_textureSize.height}];
  }

  if ([textureCopy pixelFormat] != 10 && objc_msgSend(textureCopy, "pixelFormat") != 25 && objc_msgSend(textureCopy, "pixelFormat") != 55 && objc_msgSend(textureCopy, "pixelFormat") != 70 && objc_msgSend(textureCopy, "pixelFormat") != 115 && objc_msgSend(textureCopy, "pixelFormat") != 125)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:115 description:{@"Bad input pixel format (%lu) for encodeBoxFilterToBuffer", objc_msgSend(textureCopy, "pixelFormat")}];
  }

  if ([outTextureCopy pixelFormat] != 10 && objc_msgSend(outTextureCopy, "pixelFormat") != 25 && objc_msgSend(outTextureCopy, "pixelFormat") != 55 && objc_msgSend(outTextureCopy, "pixelFormat") != 70 && objc_msgSend(outTextureCopy, "pixelFormat") != 115 && objc_msgSend(outTextureCopy, "pixelFormat") != 125)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:121 description:{@"Bad output pixel format (%lu) for encodeBoxFilterToBuffer", objc_msgSend(outTextureCopy, "pixelFormat")}];
  }

  if ([textureCopy pixelFormat] == 55)
  {
    if (normalize)
    {
LABEL_31:
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"CVAFilterBox.mm" lineNumber:129 description:{@"Unsupported input pixel format (%lu) and normalization type (%ld) for encodeBoxFilterToBuffer", objc_msgSend(textureCopy, "pixelFormat"), normalize}];
    }
  }

  else
  {
    pixelFormat = [textureCopy pixelFormat];
    if (normalize && pixelFormat == 125)
    {
      goto LABEL_31;
    }
  }

  v25 = radiusCopy;
  if ([textureCopy pixelFormat] == 70 || objc_msgSend(textureCopy, "pixelFormat") == 115)
  {
    v17 = 40;
  }

  else
  {
    pixelFormat2 = [textureCopy pixelFormat];
    v17 = 48;
    if (pixelFormat2 == 125)
    {
      v17 = 40;
    }
  }

  v19 = *(&self->super.isa + v17);
  [(CVAFilterBox *)self encodeBoxHorizontalToCommandBuffer:bufferCopy configBuffer:&v25 source:textureCopy destination:v19];
  [(CVAFilterBox *)self encodeBoxVerticalToCommandBuffer:bufferCopy configBuffer:&v25 source:v19 destination:outTextureCopy normalize:normalize];
}

- (CVAFilterBox)initWithFigMetalContext:(id)context textureSize:(id *)size error:(id *)error
{
  contextCopy = context;
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

    objc_storeStrong(&v11->_figMetalContext, context);
    v15 = *&size->var0;
    v11->_textureSize.depth = size->var2;
    *&v11->_textureSize.width = v15;
    device = [contextCopy device];
    v17 = sub_1DED6FDC8(device, 115, size->var0, size->var1, 0, error);
    boxIntermediateTexture_rgba = v11->_boxIntermediateTexture_rgba;
    v11->_boxIntermediateTexture_rgba = v17;

    device2 = [contextCopy device];
    v20 = sub_1DED6FDC8(device2, 25, size->var0, size->var1, 0, error);
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

    sub_1DED422A0(p_box_float_pass_horiz_kernel, contextCopy, v25, v26);
    if (!p_box_float_pass_horiz_kernel)
    {
      goto LABEL_13;
    }

    sub_1DED422A0(p_box_float4_pass_horiz_kernel, contextCopy, v28, v29);
    if (p_box_float4_pass_horiz_kernel && (sub_1DED422A0(p_box_normValid_float_pass_vert_kernel, contextCopy, v31, v32), p_box_normValid_float_pass_vert_kernel) && (sub_1DED422A0(p_box_norm_float_pass_vert_kernel, contextCopy, v34, v35), p_box_norm_float_pass_vert_kernel) && (sub_1DED422A0(p_box_float_pass_vert_kernel, contextCopy, v37, v38), p_box_float_pass_vert_kernel) && (sub_1DED422A0(p_box_normValid_float4_pass_vert_kernel, contextCopy, v40, v41), p_box_normValid_float4_pass_vert_kernel) && (sub_1DED422A0(p_box_norm_float4_pass_vert_kernel, contextCopy, v43, v44), p_box_norm_float4_pass_vert_kernel) && (sub_1DED422A0(p_box_float4_pass_vert_kernel, contextCopy, v46, v47), p_box_float4_pass_vert_kernel))
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