@interface PKMetalPencilShadowRenderer
+ (CGSize)maxBlurSize;
+ (CGSize)pixelSize;
- (CGRect)renderInto:(id)a3 commandBuffer:(id)a4 position:(CGPoint)a5 azimuth:(double)a6 altitude:(double)a7 height:(double)a8 alpha:(double)a9 scale:(double)a10 clearFramebuffer:(BOOL)a11 grayscale:(double)a12;
- (PKMetalPencilShadowRenderer)initWithDevice:(id)a3;
- (PKMetalPencilShadowRenderer)initWithDevice:(id)a3 library:(id)a4;
- (id)current3DModel;
- (id)grayscaleTextureFromCIImage:(void *)a3 context:(double)a4 extent:(double)a5;
- (id)objectForModel:(uint64_t)a1;
- (void)render3DModel:(void *)a3 oldObject:(double)a4 rollAngle:(double)a5 altitudeAngle:(double)a6 blendFactor:;
- (void)updateInk:(id)a3 oldInk:(id)a4 rollAngle:(double)a5 altitudeAngle:(double)a6 progress:(double)a7;
- (void)updateRoll:(double)a3 altitudeAngle:(double)a4;
@end

@implementation PKMetalPencilShadowRenderer

- (PKMetalPencilShadowRenderer)initWithDevice:(id)a3 library:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v47.receiver = self;
  v47.super_class = PKMetalPencilShadowRenderer;
  v9 = [(PKMetalPencilShadowRenderer *)&v47 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    objectsCache = v9->_objectsCache;
    v9->_objectsCache = v10;

    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v9->_library, a4);
    v9->_currentPixelFormat = 0;
    v12 = [(MTLDevice *)v9->_device newCommandQueue];
    commandQueue = v9->_commandQueue;
    v9->_commandQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69741E0]);
    v15 = [v14 attributes];
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 setFormat:29];

    v17 = [v14 attributes];
    v18 = [v17 objectAtIndexedSubscript:0];
    [v18 setOffset:0];

    v19 = [v14 attributes];
    v20 = [v19 objectAtIndexedSubscript:0];
    [v20 setBufferIndex:0];

    v21 = [v14 attributes];
    v22 = [v21 objectAtIndexedSubscript:1];
    [v22 setFormat:29];

    v23 = [v14 attributes];
    v24 = [v23 objectAtIndexedSubscript:1];
    [v24 setOffset:8];

    v25 = [v14 attributes];
    v26 = [v25 objectAtIndexedSubscript:1];
    [v26 setBufferIndex:0];

    v27 = [v14 layouts];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setStride:16];

    v29 = [v14 layouts];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 setStepRate:1];

    v31 = [v14 layouts];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setStepFunction:1];

    objc_storeStrong(&v9->_vertexDescriptor, v14);
    v33 = [(MTLLibrary *)v9->_library newFunctionWithName:@"shadowBlurVertex"];
    v34 = [(MTLLibrary *)v9->_library newFunctionWithName:@"shadowBlurFragment"];
    v35 = objc_alloc_init(MEMORY[0x1E6974148]);
    [v35 setLabel:@"Blur"];
    [v35 setRasterSampleCount:1];
    [v35 setVertexFunction:v33];
    [v35 setFragmentFunction:v34];
    [v35 setVertexDescriptor:v9->_vertexDescriptor];
    v36 = [v35 colorAttachments];
    v37 = [v36 objectAtIndexedSubscript:0];
    [v37 setPixelFormat:10];

    device = v9->_device;
    v48 = 0;
    v39 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v35 error:&v48];
    v40 = v48;
    blurPipelineState = v9->_blurPipelineState;
    v9->_blurPipelineState = v39;

    if (!v9->_blurPipelineState)
    {
      v42 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        v46 = [v40 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_fault_impl(&dword_1C7CCA000, v42, OS_LOG_TYPE_FAULT, "Failed to create pipeline state: %@", buf, 0xCu);
      }
    }

    v51 = xmmword_1C801F804;
    v52 = unk_1C801F814;
    *buf = xmmword_1C801F7E4;
    v50 = unk_1C801F7F4;
    v43 = [(MTLDevice *)v9->_device newBufferWithBytes:buf length:64 options:0];
    blurVertexBuffer = v9->_blurVertexBuffer;
    v9->_blurVertexBuffer = v43;
  }

  return v9;
}

- (PKMetalPencilShadowRenderer)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v4];
  v6 = [(PKMetalResourceHandler *)v5 shaderLibrary];
  v7 = [(PKMetalPencilShadowRenderer *)self initWithDevice:v4 library:v6];

  return v7;
}

+ (CGSize)maxBlurSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)pixelSize
{
  v2 = 172.0;
  v3 = 950.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)grayscaleTextureFromCIImage:(void *)a3 context:(double)a4 extent:(double)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v45 = v13;
  v46 = v14;
  if (*(a1 + 216))
  {
    v15 = v14;
    v16 = 0;
  }

  else
  {
    *buf = xmmword_1C801F824;
    v54 = unk_1C801F834;
    v55 = xmmword_1C801F844;
    v56 = unk_1C801F854;
    v17 = [*(a1 + 16) newBufferWithBytes:buf length:64 options:0];
    v18 = *(a1 + 208);
    *(a1 + 208) = v17;

    v19 = [*(a1 + 24) newFunctionWithName:@"pencilShadowVertex"];
    v20 = [*(a1 + 24) newFunctionWithName:@"alphaToGrayscale"];
    v21 = objc_alloc_init(MEMORY[0x1E6974148]);
    [v21 setLabel:@"GrayscalePipeline"];
    [v21 setRasterSampleCount:1];
    [v21 setVertexFunction:v19];
    [v21 setFragmentFunction:v20];
    [v21 setVertexDescriptor:*(a1 + 8)];
    v22 = [v21 colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 setPixelFormat:10];

    v24 = *(a1 + 16);
    v48 = 0;
    v25 = [v24 newRenderPipelineStateWithDescriptor:v21 error:&v48];
    v16 = v48;
    v26 = *(a1 + 216);
    *(a1 + 216) = v25;

    if (!*(a1 + 216))
    {
      v27 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v43 = [v16 localizedDescription];
        *v51 = 138412290;
        v52 = v43;
        _os_log_fault_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_FAULT, "Failed to create pipeline state: %@", v51, 0xCu);
      }
    }

    v13 = v45;
    v15 = v46;
  }

  v28 = [v15 createCGImage:v13 fromRect:{a4, a5, a6, a7}];
  if (v28)
  {
    v29 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(a1 + 16)];
    v30 = *MEMORY[0x1E6974400];
    v49[0] = *MEMORY[0x1E6974408];
    v49[1] = v30;
    v50[0] = &unk_1F47C1880;
    v50[1] = &unk_1F47C1898;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v47 = v16;
    v32 = [v29 newTextureWithCGImage:v28 options:v31 error:&v47];
    v44 = v47;

    if (!v32)
    {
      v33 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        v42 = [v44 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v42;
        _os_log_fault_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_FAULT, "Failed to create texture: %@", buf, 0xCu);
      }
    }

    CGImageRelease(v28);
    v34 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:a6 height:a7 mipmapped:0];
    [v34 setTextureType:2];
    [v34 setSampleCount:1];
    [v34 setUsage:5];
    [v34 setStorageMode:2];
    v35 = [*(a1 + 16) newTextureWithDescriptor:v34];
    v36 = objc_alloc_init(MEMORY[0x1E6974128]);
    v37 = [v36 colorAttachments];
    v38 = [v37 objectAtIndexedSubscript:0];

    [v38 setTexture:v35];
    [v38 setLoadAction:0];
    [v38 setStoreAction:1];
    v39 = [*(a1 + 168) commandBuffer];
    v40 = [v39 renderCommandEncoderWithDescriptor:v36];
    [v40 setRenderPipelineState:*(a1 + 216)];
    *buf = xmmword_1C801DE50;
    v54 = xmmword_1C801E950;
    v55 = xmmword_1C801E960;
    v56 = xmmword_1C801E970;
    [v40 setVertexBuffer:*(a1 + 208) offset:0 atIndex:0];
    [v40 setVertexBytes:buf length:64 atIndex:1];
    [v40 setFragmentTexture:v32 atIndex:0];
    [v40 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v40 endEncoding];
    [v39 commit];

    v16 = v44;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)render3DModel:(void *)a3 oldObject:(double)a4 rollAngle:(double)a5 altitudeAngle:(double)a6 blendFactor:
{
  v69 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v51 = a3;
  if (a1)
  {
    v12 = (a1 + 32);
    v11 = *(a1 + 32);
    *(a1 + 176) = a4;
    *(a1 + 184) = a5;
    v53 = v11;
    v55 = a1;
    if (!v53 || [v53 width] != 172 || objc_msgSend(v53, "height") != 950)
    {
      v13 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:172 height:950 mipmapped:0];
      [v13 setTextureType:2];
      [v13 setSampleCount:1];
      [v13 setUsage:23];
      [v13 setStorageMode:2];
      v14 = [*(a1 + 16) newTextureWithDescriptor:v13];

      objc_storeStrong(v12, v14);
      v53 = v14;
      a1 = v55;
    }

    v15 = [*(a1 + 168) commandBuffer];
    _ZF = a6 >= 0.99 || v51 == 0;
    v17 = _ZF;
    if (_ZF)
    {
      *(a1 + 248) = a4;
      *(a1 + 256) = a5;
      a6 = 1.0;
      v18 = v53;
    }

    else
    {
      *(a1 + 248) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v18 = v53;
      [(PKMetal3DObject *)v51 renderIntoTexture:v53 commandBuffer:v15 rollAngle:1 altitudeAngle:a4 blendFactor:a5 clear:1.0 - a6];
    }

    [(PKMetal3DObject *)v50 renderIntoTexture:v18 commandBuffer:v15 rollAngle:v17 altitudeAngle:a4 blendFactor:a5 clear:a6];
    v49 = v18;
    v54 = v15;
    objc_storeStrong(v12, v18);
    v19 = [v49 width];
    v20 = [v49 height];
    v21 = v49;
    v22 = (v55 + 40);
    *&v23 = 1.0;
    *v56 = v23;
    v24 = 4;
    v52 = v21;
    do
    {
      v25 = *v22;
      v26 = v25;
      v57 = v20 / 2;
      if (v25 && [v25 width] == v19 / 2 && objc_msgSend(v26, "height") == v57)
      {
        v27 = v26;
      }

      else
      {
        v28 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v19 / 2 height:v57 mipmapped:0];
        [v28 setTextureType:2];
        [v28 setSampleCount:1];
        [v28 setUsage:7];
        [v28 setStorageMode:2];
        v27 = [*(v55 + 16) newTextureWithDescriptor:v28];

        objc_storeStrong(v22, v27);
      }

      v29 = objc_alloc_init(MEMORY[0x1E6974128]);
      v30 = [v29 colorAttachments];
      v31 = [v30 objectAtIndexedSubscript:0];
      [v31 setTexture:v27];

      v32 = [v29 colorAttachments];
      v33 = [v32 objectAtIndexedSubscript:0];
      [v33 setLoadAction:0];

      v34 = [v29 colorAttachments];
      v35 = [v34 objectAtIndexedSubscript:0];
      [v35 setStoreAction:1];

      v36 = [v54 renderCommandEncoderWithDescriptor:v29];
      [v36 setRenderPipelineState:*(v55 + 200)];
      v37.i64[0] = v19;
      v37.i64[1] = v20;
      *v58 = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(*&v56[0], 0), vcvtq_f64_s64(v37)));
      *&v58[8] = 1065353216;
      [v36 setFragmentBytes:v58 length:16 atIndex:0];
      [v36 setVertexBuffer:*(v55 + 192) offset:0 atIndex:0];
      [v36 setFragmentTexture:v21 atIndex:0];
      [v36 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v36 endEncoding];

      ++v22;
      *(&v38 + 1) = v56[1];
      *&v38 = v56[0] * 1.2;
      *v56 = v38;
      v19 /= 2;
      v20 /= 2;
      v21 = v27;
      --v24;
    }

    while (v24);
    v39 = [v52 width];
    v40 = [v52 height];
    v41 = v39 * 0.8;
    *v58 = v41 * -0.5;
    v42 = v40 * 0.8;
    *&v58[4] = 3259498496;
    v59 = 0;
    v60 = v41 * 0.5;
    v61 = -1035468800;
    v62 = 1065353216;
    v63 = v41 * -0.5;
    v64 = v42 + -50.0;
    v65 = 0x3F80000000000000;
    v66 = v41 * 0.5;
    v67 = v42 + -50.0;
    __asm { FMOV            V2.2S, #1.0 }

    v68 = _D2;
    *(v55 + 88) = (v41 * -0.5);
    *(v55 + 96) = 0xC049000000000000;
    *(v55 + 104) = v41;
    *(v55 + 112) = v42;
    v47 = [*(v55 + 16) newBufferWithBytes:v58 length:64 options:0];
    v48 = *(v55 + 80);
    *(v55 + 80) = v47;

    [v54 commit];
  }
}

- (id)objectForModel:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 232) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v5 = [PKMetal3DObject alloc];
      v6 = *(a1 + 168);
      v7 = *(a1 + 24);
      +[PKMetalPencilShadowRenderer pixelSize];
      v4 = [(PKMetal3DObject *)v5 initWithCommandQueue:v6 modelFile:v3 library:v7 pixelSize:v8 maxTextureBlur:v9, 50.0];
      [*(a1 + 232) setObject:v4 forKeyedSubscript:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateInk:(id)a3 oldInk:(id)a4 rollAngle:(double)a5 altitudeAngle:(double)a6 progress:(double)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v12 = a4;
  if (v53)
  {
    v13 = [v53 _shadowModel];
    if (v12)
    {
LABEL_3:
      v52 = [v12 _shadowModel];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = @"BallpointPen3";
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v52 = @"BallpointPen3";
LABEL_6:
  v14 = [(__CFString *)v13 isEqual:self->_currentModel]^ 1;
  if (v12)
  {
    LOBYTE(v14) = 1;
  }

  if ((v14 & 1) != 0 || self->_currentRenderedRoll != a5 || self->_currentRenderedAltitude != a6)
  {
    objc_storeStrong(&self->_currentModel, v13);
    if ([(__CFString *)v13 length]&& [(__CFString *)v52 length])
    {
      v15 = [(PKMetalPencilShadowRenderer *)self objectForModel:v13];
      if (a7 >= 1.0)
      {
        v16 = 0;
      }

      else
      {
        v16 = [(PKMetalPencilShadowRenderer *)self objectForModel:v52];
      }

      [(PKMetalPencilShadowRenderer *)self render3DModel:v15 oldObject:v16 rollAngle:a5 altitudeAngle:a6 blendFactor:a7];
    }

    else
    {
      genericShadowImage = self->_genericShadowImage;
      if (!genericShadowImage)
      {
        v18 = @"Outline Default";
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [MEMORY[0x1E69DCAB8] imageNamed:@"Outline Default" inBundle:v19];
        v21 = [v20 CGImage];
        if (v21)
        {
          v22 = [MEMORY[0x1E695F658] imageWithCGImage:v21];
        }

        else
        {
          v23 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_FAULT, "Unable to load pencil shadow texture", buf, 2u);
          }

          v22 = 0;
        }

        v24 = self->_genericShadowImage;
        self->_genericShadowImage = v22;

        genericShadowImage = self->_genericShadowImage;
      }

      v51 = genericShadowImage;
      v25 = objc_alloc_init(MEMORY[0x1E695F620]);
      v26 = v51;
      v27 = [(CIImage *)v26 imageByApplyingGaussianBlurWithSigma:20.0];
      [v27 extent];
      v69 = CGRectInset(v68, -20.0, -20.0);
      x = v69.origin.x;
      y = v69.origin.y;
      width = v69.size.width;
      height = v69.size.height;
      v32 = [(PKMetalPencilShadowRenderer *)self grayscaleTextureFromCIImage:v26 context:v25 extent:v69.origin.x, v69.origin.y, v69.size.width, v69.size.height];
      v33 = [(PKMetalPencilShadowRenderer *)self grayscaleTextureFromCIImage:v27 context:v25 extent:x, y, width, height];
      v34 = v33;
      if (v32 && v33)
      {
        objc_storeStrong(self->_textures, v32);
        objc_storeStrong(&self->_textures[4], v34);
        v35 = 5;
        while (1)
        {
          v36 = [(CIImage *)v26 imageByApplyingGaussianBlurWithSigma:(v35 - 4) * 20.0 * 0.25];
          v37 = [(PKMetalPencilShadowRenderer *)self grayscaleTextureFromCIImage:v36 context:v25 extent:x, y, width, height];
          v38 = *(&self->super.isa + v35);
          *(&self->super.isa + v35) = v37;

          if (!*(&self->super.isa + v35))
          {
            break;
          }

          if (++v35 == 8)
          {
            v39 = width;
            v40 = y;
            *buf = v39 * -0.5;
            v55 = v40;
            v41 = height;
            v56 = 0;
            v57 = v39 * 0.5;
            v58 = v40;
            v59 = 1065353216;
            v60 = v39 * -0.5;
            v61 = v40 + v41;
            v62 = 0x3F80000000000000;
            v63 = v39 * 0.5;
            v64 = v40 + v41;
            __asm { FMOV            V4.2S, #1.0 }

            v65 = _D4;
            self->_imageMaxBlurredExtent.origin.x = x;
            self->_imageMaxBlurredExtent.origin.y = y;
            self->_imageMaxBlurredExtent.size.width = width;
            self->_imageMaxBlurredExtent.size.height = height;
            self->_vertexBufferBounds.origin.x = (v39 * -0.5);
            self->_vertexBufferBounds.origin.y = v40;
            self->_vertexBufferBounds.size.width = v39;
            self->_vertexBufferBounds.size.height = v41;
            v47 = [(MTLDevice *)self->_device newBufferWithBytes:buf length:64 options:0];
            vertexBuffer = self->_vertexBuffer;
            self->_vertexBuffer = v47;

            goto LABEL_36;
          }
        }

        v50 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v50, OS_LOG_TYPE_FAULT, "Unable to create intermediate texture", buf, 2u);
        }
      }

      else
      {
        v49 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_FAULT, "Unable to create initial textures", buf, 2u);
        }
      }

LABEL_36:
    }
  }
}

- (id)current3DModel
{
  if (a1)
  {
    v2 = a1;
    a1 = [a1[30] length];
    if (a1)
    {
      a1 = [v2[29] objectForKeyedSubscript:v2[30]];
    }

    v1 = vars8;
  }

  return a1;
}

- (void)updateRoll:(double)a3 altitudeAngle:(double)a4
{
  self->_currentRoll = a3;
  self->_currentAltitude = a4;
  v7 = [(PKMetalPencilShadowRenderer *)&self->super.isa current3DModel];
  if (v7 && (self->_currentRenderedRoll != a3 || self->_currentRenderedAltitude != a4))
  {
    [(PKMetalPencilShadowRenderer *)self render3DModel:v7 oldObject:0 rollAngle:a3 altitudeAngle:a4 blendFactor:1.0];
  }
}

- (CGRect)renderInto:(id)a3 commandBuffer:(id)a4 position:(CGPoint)a5 azimuth:(double)a6 altitude:(double)a7 height:(double)a8 alpha:(double)a9 scale:(double)a10 clearFramebuffer:(BOOL)a11 grayscale:(double)a12
{
  v13 = a11;
  y = a5.y;
  x = a5.x;
  v114 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v93 = a4;
  v94 = v23;
  if (!self->_vertexBuffer || !self->_textures[0])
  {
    v71 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v108.a) = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v71, OS_LOG_TYPE_FAULT, "Shadow Renderer not set up", &v108, 2u);
    }

    goto LABEL_31;
  }

  v24 = 1.57079633 - a7;
  if (1.57079633 - a7 < 0.3)
  {
    v24 = pow(v24 * 3.33333333, 4.0);
    a9 = v24 * a9;
  }

  v25 = [v23 pixelFormat];
  v26 = v25;
  currentPipelineState = self->_currentPipelineState;
  if (self->_currentPixelFormat != v25 || !currentPipelineState)
  {
    self->_currentPixelFormat = v25;
    self->_currentPipelineState = 0;

    v28 = objc_alloc_init(MEMORY[0x1E6974148]);
    v29 = [v28 colorAttachments];
    v30 = [v29 objectAtIndexedSubscript:0];

    [v30 setPixelFormat:v26];
    [v30 setBlendingEnabled:1];
    [v30 setRgbBlendOperation:0];
    [v30 setAlphaBlendOperation:0];
    [v30 setSourceRGBBlendFactor:1];
    [v30 setSourceAlphaBlendFactor:1];
    [v30 setDestinationRGBBlendFactor:5];
    [v30 setDestinationAlphaBlendFactor:5];
    [v28 setVertexDescriptor:self->_vertexDescriptor];
    v31 = [(MTLLibrary *)self->_library newFunctionWithName:@"pencilShadowVertex"];
    v32 = [(MTLLibrary *)self->_library newFunctionWithName:@"pencilShadowFragment"];
    v33 = v32;
    if (v31 && v32)
    {
      [v28 setVertexFunction:v31];
      [v28 setFragmentFunction:v33];
      device = self->_device;
      v106 = 0;
      v35 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v28 error:&v106];
      v36 = v106;
      v37 = self->_currentPipelineState;
      self->_currentPipelineState = v35;

      if (!self->_currentPipelineState)
      {
        v38 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          v90 = [v36 localizedDescription];
          LODWORD(v108.a) = 138412290;
          *(&v108.a + 4) = v90;
          _os_log_fault_impl(&dword_1C7CCA000, v38, OS_LOG_TYPE_FAULT, "Unable to create pipeline state: %@", &v108, 0xCu);
        }
      }
    }

    if (!self->_currentPipelineState)
    {
LABEL_31:
      v72 = *MEMORY[0x1E695F050];
      v73 = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_38;
    }
  }

  v39 = objc_alloc_init(MEMORY[0x1E6974128]);
  v40 = [v39 colorAttachments];
  v92 = a8;
  v41 = [v40 objectAtIndexedSubscript:0];

  [v41 setTexture:v94];
  if (v13)
  {
    v42 = 2;
  }

  else
  {
    v42 = 1;
  }

  [v41 setLoadAction:v42];
  [v41 setStoreAction:1];
  if (v13)
  {
    [v41 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  }

  v43 = [v93 renderCommandEncoderWithDescriptor:v39];
  [v43 setRenderPipelineState:self->_currentPipelineState];
  v44 = [v94 width];
  v45 = a12;
  v46 = [v94 height];
  v47.f32[0] = x;
  v48 = v46 - y;
  v47.f32[1] = v48;
  v47.i32[2] = 0;
  v47.i32[3] = 1.0;
  v91 = v47;
  v49 = __sincos_stret(3.14159265 - a6);
  v50 = 0;
  *&v51 = v49.__cosval;
  *&v52 = v49.__sinval;
  *&v53 = -*&v52;
  HIDWORD(v53) = v51;
  *&v107.m11 = __PAIR64__(v52, v51);
  *&v107.m13 = v53;
  *&v107.m21 = xmmword_1C801E960;
  *&v107.m23 = xmmword_1C801E970;
  do
  {
    *(&v108.a + v50) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C801DE50, COERCE_FLOAT(*(&v107.m11 + v50))), xmmword_1C801E950, *(&v107.m11 + v50), 1), xmmword_1C801E960, *(&v107.m11 + v50), 2), v91, *(&v107.m11 + v50), 3);
    v50 += 16;
  }

  while (v50 != 64);
  v55 = 0;
  LODWORD(v56) = 0;
  *(&v56 + 1) = a10;
  v57 = *&v108.a;
  v58 = *&v108.c;
  v59 = *&v108.tx;
  v60 = v109;
  *&v54 = a10;
  *&v107.m11 = v54;
  *&v107.m13 = v56;
  *&v107.m21 = xmmword_1C801E960;
  *&v107.m23 = xmmword_1C801E970;
  do
  {
    *(&v108.a + v55) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v107.m11 + v55))), v58, *(&v107.m11 + v55), 1), v59, *(&v107.m11 + v55), 2), v60, *(&v107.m11 + v55), 3);
    v55 += 16;
  }

  while (v55 != 64);
  v61 = 0;
  v62.i32[1] = 0;
  v62.i64[1] = 0;
  v63.i32[0] = 0;
  v63.i64[1] = 0;
  v104 = v108;
  v105 = v109;
  *&v107.m11 = *&v108.a;
  *&v107.m13 = *&v108.c;
  *&v107.m21 = *&v108.tx;
  *&v107.m23 = v109;
  do
  {
    v62.f32[0] = 2.0 / v44;
    v63.f32[1] = 2.0 / v46;
    *(&v108.a + v61) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&v107.m11 + v61))), v63, *(&v107.m11 + v61), 1), xmmword_1C801E960, *(&v107.m11 + v61), 2), xmmword_1C801F7D0, *(&v107.m11 + v61), 3);
    v61 += 16;
  }

  while (v61 != 64);
  v102 = v108;
  v103 = v109;
  v64 = [(PKMetalPencilShadowRenderer *)&self->super.isa current3DModel];
  v65 = v64 == 0;

  v66 = +[PKHoverSettings sharedSettings];
  [v66 toolPreviewMaxZDistance];
  if (v65)
  {
    v76 = v92 / v67;
    v98 = v76;

    v77 = a7 * 10.0 / 1.57079633;
    v99 = v77;
    v70 = -self->_imageMaxBlurredExtent.origin.y / self->_imageMaxBlurredExtent.size.height;
  }

  else
  {
    v68 = v92 / v67 * 1.5;
    v98 = v68;

    v69 = a7 * 32.0 / 1.57079633;
    v99 = v69;
    v70 = 0.094737;
  }

  v100 = v70;
  v78 = v45;
  v79 = v78;
  v80 = a9;
  v81 = vmulq_n_f32(LODWORD(v79), v80);
  v81.f32[3] = v80;
  v101 = v81;
  [v43 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:{0, *&v91}];
  [v43 setVertexBytes:&v102 length:64 atIndex:1];
  for (i = 0; i != 5; ++i)
  {
    [v43 setFragmentTexture:self->_textures[i] atIndex:i];
  }

  [v43 setFragmentBytes:&v98 length:32 atIndex:1];
  [v43 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v43 endEncoding];
  v83 = 0;
  memset(&v97, 0, sizeof(v97));
  v84 = &v108;
  do
  {
    v85 = *(&v104.a + v83);
    *v84 = vcvtq_f64_f32(*v85.f32);
    v84[1] = vcvt_hight_f64_f32(v85);
    v84 += 2;
    v83 += 16;
  }

  while (v83 != 64);
  *&v107.m31 = v110;
  *&v107.m33 = v111;
  *&v107.m41 = v112;
  *&v107.m43 = v113;
  *&v107.m11 = *&v108.a;
  *&v107.m13 = *&v108.c;
  *&v107.m21 = *&v108.tx;
  *&v107.m23 = v109;
  CATransform3DGetAffineTransform(&v97, &v107);
  memset(&v108, 0, sizeof(v108));
  CGAffineTransformMakeScale(&v107, 1.0, -1.0);
  CGAffineTransformMakeTranslation(&t2, 0.0, [v94 height]);
  CGAffineTransformConcat(&v108, &v107, &t2);
  memset(&v107, 0, 48);
  t2 = v97;
  v95 = v108;
  CGAffineTransformConcat(&v107, &t2, &v95);
  vertexBufferBounds = self->_vertexBufferBounds;
  *&t2.a = *&v107.m11;
  *&t2.c = *&v107.m13;
  *&t2.tx = *&v107.m21;
  v116 = CGRectApplyAffineTransform(vertexBufferBounds, &t2);
  v72 = v116.origin.x;
  v73 = v116.origin.y;
  width = v116.size.width;
  height = v116.size.height;

LABEL_38:
  v86 = v72;
  v87 = v73;
  v88 = width;
  v89 = height;
  result.size.height = v89;
  result.size.width = v88;
  result.origin.y = v87;
  result.origin.x = v86;
  return result;
}

@end