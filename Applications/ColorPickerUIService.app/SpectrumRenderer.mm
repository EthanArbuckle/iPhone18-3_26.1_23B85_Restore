@interface SpectrumRenderer
+ (CGPoint)positionForColor:(id)color;
- (SpectrumRenderer)initWithMetal:(id)metal;
- (void)drawInMTKView:(id)view;
- (void)initializeVertexBuffer;
- (void)setupRenderPipeline;
- (void)startCapturing;
- (void)stopCapturing;
@end

@implementation SpectrumRenderer

+ (CGPoint)positionForColor:(id)color
{
  v3 = v2;
  v4 = v2.f32[2];
  v5 = fmaxf(v2.f32[0], fmaxf(v2.f32[1], v2.f32[2]));
  if (v5 >= 1.0)
  {
    v2.f32[0] = fminf(v2.f32[0], fminf(v2.f32[1], v2.f32[2])) + -1.0;
    v18 = v3;
    v19 = *v2.f32;
    v8 = -v2.f32[0];
    *&v21 = sub_100048CD8(flt_100053B90, -v2.f32[0]) + -1.0;
    __asm { FMOV            V2.2D, #1.0 }

    v14.n128_u64[0] = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_f32(vsub_f32(*v18.f32, vdup_lane_s32(v19, 0))), _Q2), vdupq_lane_s64(COERCE__INT64(v8), 0)));
    *&v15 = ((v4 - *v19.i32) + 1.0) / v8;
    v14.n128_u64[1] = __PAIR64__(v18.u32[3], v15);
    v7 = __PAIR64__(COERCE_UNSIGNED_INT(sub_10004909C(v14)), v21);
  }

  else
  {
    v6.n128_u64[0] = vmulq_n_f32(v2, 1.0 / v5).u64[0];
    v6.n128_f32[2] = v3.f32[2] * (1.0 / v5);
    v6.n128_u32[3] = v3.u32[3];
    v20 = sub_10004909C(v6);
    v7.f32[0] = sub_100048CD8(flt_100053B90, 1.0 - v5);
    v7.f32[1] = v20;
  }

  v16 = vcvtq_f64_f32(v7);
  v17 = v16.f64[1];
  result.x = v16.f64[0];
  result.y = v17;
  return result;
}

- (SpectrumRenderer)initWithMetal:(id)metal
{
  metalCopy = metal;
  v12.receiver = self;
  v12.super_class = SpectrumRenderer;
  v6 = [(SpectrumRenderer *)&v12 init];
  if (v6)
  {
    v7 = MTLCreateSystemDefaultDevice();
    device = v6->_device;
    v6->_device = v7;

    newCommandQueue = [(MTLDevice *)v6->_device newCommandQueue];
    commandQueue = v6->_commandQueue;
    v6->_commandQueue = newCommandQueue;

    objc_storeStrong(&v6->_metalView, metal);
    [(MTKView *)v6->_metalView setDevice:v6->_device];
    [(MTKView *)v6->_metalView setDelegate:v6];
    [(SpectrumRenderer *)v6 initializeVertexBuffer];
    [(SpectrumRenderer *)v6 setupRenderPipeline];
  }

  return v6;
}

- (void)setupRenderPipeline
{
  v3 = objc_alloc_init(MTLRenderPipelineDescriptor);
  newDefaultLibrary = [(MTLDevice *)self->_device newDefaultLibrary];
  v5 = [newDefaultLibrary newFunctionWithName:@"vertexShader"];
  [v3 setVertexFunction:v5];

  v6 = [newDefaultLibrary newFunctionWithName:@"fragmentShader"];
  [v3 setFragmentFunction:v6];

  colorPixelFormat = [(MTKView *)self->_metalView colorPixelFormat];
  colorAttachments = [v3 colorAttachments];
  v9 = [colorAttachments objectAtIndexedSubscript:0];
  [v9 setPixelFormat:colorPixelFormat];

  device = self->_device;
  v14 = 0;
  v11 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v3 error:&v14];
  v12 = v14;
  pipelineState = self->_pipelineState;
  self->_pipelineState = v11;
}

- (void)initializeVertexBuffer
{
  v5[0] = xmmword_100053BA0;
  v5[1] = unk_100053BB0;
  v5[2] = xmmword_100053BC0;
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:v5 length:48 options:0];
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = v3;
}

- (void)drawInMTKView:(id)view
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  currentRenderPassDescriptor = [(MTKView *)self->_metalView currentRenderPassDescriptor];
  colorAttachments = [currentRenderPassDescriptor colorAttachments];
  v6 = [colorAttachments objectAtIndexedSubscript:0];
  [v6 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v7 = [commandBuffer renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
  [v7 setRenderPipelineState:self->_pipelineState];
  [v7 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [v7 drawPrimitives:3 vertexStart:0 vertexCount:6];
  [v7 endEncoding];
  currentDrawable = [(MTKView *)self->_metalView currentDrawable];
  [commandBuffer presentDrawable:currentDrawable];

  [commandBuffer commit];
}

- (void)startCapturing
{
  v4 = +[MTLCaptureManager sharedCaptureManager];
  v3 = objc_alloc_init(MTLCaptureDescriptor);
  [v3 setCaptureObject:self->_device];
  [v4 startCaptureWithDescriptor:v3 error:0];
}

- (void)stopCapturing
{
  v2 = +[MTLCaptureManager sharedCaptureManager];
  [v2 stopCapture];
}

@end