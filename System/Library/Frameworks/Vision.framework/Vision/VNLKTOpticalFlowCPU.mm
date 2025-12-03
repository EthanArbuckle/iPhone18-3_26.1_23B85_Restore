@interface VNLKTOpticalFlowCPU
- (BOOL)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target error:(id *)error;
- (BOOL)estimateFlowStream:(__CVBuffer *)stream error:(id *)error;
- (BOOL)setOutputUV:(__CVBuffer *)v error:(id *)error;
- (VNLKTOpticalFlowCPU)initWithWidth:(int)width height:(int)height numScales:(int)scales;
@end

@implementation VNLKTOpticalFlowCPU

- (BOOL)estimateFlowStream:(__CVBuffer *)stream error:(id *)error
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    LODWORD(v7) = [(VNLKTOpticalFlow *)self _validateInputImage:stream error:error];
    if (v7)
    {
      v17[0] = [(VNLKTOpticalFlow *)self numScales];
      v17[1] = [(VNLKTOpticalFlow *)self numWarpings];
      useNonLocalRegularization = [(VNLKTOpticalFlow *)self useNonLocalRegularization];
      nlreg_radius = [(VNLKTOpticalFlow *)self nlreg_radius];
      nlreg_padding = [(VNLKTOpticalFlow *)self nlreg_padding];
      [(VNLKTOpticalFlow *)self nlreg_sigma_l];
      v21 = v8;
      [(VNLKTOpticalFlow *)self nlreg_sigma_c];
      v22 = v9;
      [(VNLKTOpticalFlow *)self nlreg_sigma_w];
      v23 = v10;
      ptr = self->_opticalFlow.__ptr_;
      streamCopy = stream;
      if (stream)
      {
        CVPixelBufferRetain(stream);
      }

      uv_user_ref = self->_uv_user_ref;
      v15 = uv_user_ref;
      if (uv_user_ref)
      {
        CVPixelBufferRetain(uv_user_ref);
      }

      (*(*ptr + 24))(ptr, &streamCopy, &v15, v17);
      apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v15);
      apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&streamCopy);
      LOBYTE(v7) = 1;
    }
  }

  else if (error)
  {
    v13 = [VNError errorWithCode:15 message:@"CPU optical flow not properly initialized"];
    v7 = v13;
    LOBYTE(v7) = 0;
    *error = v13;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target error:(id *)error
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    LODWORD(v9) = [(VNLKTOpticalFlow *)self _validateInputImage:reference error:error];
    if (v9)
    {
      LODWORD(v9) = [(VNLKTOpticalFlow *)self _validateInputImage:target error:error];
      if (v9)
      {
        v20[0] = [(VNLKTOpticalFlow *)self numScales];
        v20[1] = [(VNLKTOpticalFlow *)self numWarpings];
        useNonLocalRegularization = [(VNLKTOpticalFlow *)self useNonLocalRegularization];
        nlreg_radius = [(VNLKTOpticalFlow *)self nlreg_radius];
        nlreg_padding = [(VNLKTOpticalFlow *)self nlreg_padding];
        [(VNLKTOpticalFlow *)self nlreg_sigma_l];
        v24 = v10;
        [(VNLKTOpticalFlow *)self nlreg_sigma_c];
        v25 = v11;
        [(VNLKTOpticalFlow *)self nlreg_sigma_w];
        v26 = v12;
        ptr = self->_opticalFlow.__ptr_;
        referenceCopy = reference;
        if (reference)
        {
          CVPixelBufferRetain(reference);
        }

        targetCopy = target;
        if (target)
        {
          CVPixelBufferRetain(target);
        }

        uv_user_ref = self->_uv_user_ref;
        v17 = uv_user_ref;
        if (uv_user_ref)
        {
          CVPixelBufferRetain(uv_user_ref);
        }

        (*(*ptr + 16))(ptr, &referenceCopy, &targetCopy, &v17, v20);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v17);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&targetCopy);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&referenceCopy);
        LOBYTE(v9) = 1;
      }
    }
  }

  else if (error)
  {
    v15 = [VNError errorWithCode:15 message:@"CPU optical flow not properly initialized"];
    v9 = v15;
    LOBYTE(v9) = 0;
    *error = v15;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)setOutputUV:(__CVBuffer *)v error:(id *)error
{
  [(VNLKTOpticalFlow *)self setIsValid:0];
  if (v)
  {
    if ([(VNLKTOpticalFlow *)self _validateOutputImage:v error:error])
    {
      self->_uv_user_ref = v;
      v7 = 1;
      [(VNLKTOpticalFlow *)self setIsValid:1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    self->_uv_user_ref = 0;
    return 1;
  }

  return v7;
}

- (VNLKTOpticalFlowCPU)initWithWidth:(int)width height:(int)height numScales:(int)scales
{
  v9.receiver = self;
  v9.super_class = VNLKTOpticalFlowCPU;
  v5 = [(VNLKTOpticalFlow *)&v9 initWithWidth:*&width height:*&height numScales:*&scales];
  v6 = v5;
  if (v5)
  {
    [(VNLKTOpticalFlow *)v5 width];
    [(VNLKTOpticalFlow *)v6 height];
    operator new();
  }

  v7 = 0;

  return v7;
}

@end