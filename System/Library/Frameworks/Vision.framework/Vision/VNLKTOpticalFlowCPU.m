@interface VNLKTOpticalFlowCPU
- (BOOL)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4 error:(id *)a5;
- (BOOL)estimateFlowStream:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)setOutputUV:(__CVBuffer *)a3 error:(id *)a4;
- (VNLKTOpticalFlowCPU)initWithWidth:(int)a3 height:(int)a4 numScales:(int)a5;
@end

@implementation VNLKTOpticalFlowCPU

- (BOOL)estimateFlowStream:(__CVBuffer *)a3 error:(id *)a4
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    LODWORD(v7) = [(VNLKTOpticalFlow *)self _validateInputImage:a3 error:a4];
    if (v7)
    {
      v17[0] = [(VNLKTOpticalFlow *)self numScales];
      v17[1] = [(VNLKTOpticalFlow *)self numWarpings];
      v18 = [(VNLKTOpticalFlow *)self useNonLocalRegularization];
      v19 = [(VNLKTOpticalFlow *)self nlreg_radius];
      v20 = [(VNLKTOpticalFlow *)self nlreg_padding];
      [(VNLKTOpticalFlow *)self nlreg_sigma_l];
      v21 = v8;
      [(VNLKTOpticalFlow *)self nlreg_sigma_c];
      v22 = v9;
      [(VNLKTOpticalFlow *)self nlreg_sigma_w];
      v23 = v10;
      ptr = self->_opticalFlow.__ptr_;
      v16 = a3;
      if (a3)
      {
        CVPixelBufferRetain(a3);
      }

      uv_user_ref = self->_uv_user_ref;
      v15 = uv_user_ref;
      if (uv_user_ref)
      {
        CVPixelBufferRetain(uv_user_ref);
      }

      (*(*ptr + 24))(ptr, &v16, &v15, v17);
      apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v15);
      apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v16);
      LOBYTE(v7) = 1;
    }
  }

  else if (a4)
  {
    v13 = [VNError errorWithCode:15 message:@"CPU optical flow not properly initialized"];
    v7 = v13;
    LOBYTE(v7) = 0;
    *a4 = v13;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4 error:(id *)a5
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    LODWORD(v9) = [(VNLKTOpticalFlow *)self _validateInputImage:a3 error:a5];
    if (v9)
    {
      LODWORD(v9) = [(VNLKTOpticalFlow *)self _validateInputImage:a4 error:a5];
      if (v9)
      {
        v20[0] = [(VNLKTOpticalFlow *)self numScales];
        v20[1] = [(VNLKTOpticalFlow *)self numWarpings];
        v21 = [(VNLKTOpticalFlow *)self useNonLocalRegularization];
        v22 = [(VNLKTOpticalFlow *)self nlreg_radius];
        v23 = [(VNLKTOpticalFlow *)self nlreg_padding];
        [(VNLKTOpticalFlow *)self nlreg_sigma_l];
        v24 = v10;
        [(VNLKTOpticalFlow *)self nlreg_sigma_c];
        v25 = v11;
        [(VNLKTOpticalFlow *)self nlreg_sigma_w];
        v26 = v12;
        ptr = self->_opticalFlow.__ptr_;
        v19 = a3;
        if (a3)
        {
          CVPixelBufferRetain(a3);
        }

        v18 = a4;
        if (a4)
        {
          CVPixelBufferRetain(a4);
        }

        uv_user_ref = self->_uv_user_ref;
        v17 = uv_user_ref;
        if (uv_user_ref)
        {
          CVPixelBufferRetain(uv_user_ref);
        }

        (*(*ptr + 16))(ptr, &v19, &v18, &v17, v20);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v17);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v18);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v19);
        LOBYTE(v9) = 1;
      }
    }
  }

  else if (a5)
  {
    v15 = [VNError errorWithCode:15 message:@"CPU optical flow not properly initialized"];
    v9 = v15;
    LOBYTE(v9) = 0;
    *a5 = v15;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)setOutputUV:(__CVBuffer *)a3 error:(id *)a4
{
  [(VNLKTOpticalFlow *)self setIsValid:0];
  if (a3)
  {
    if ([(VNLKTOpticalFlow *)self _validateOutputImage:a3 error:a4])
    {
      self->_uv_user_ref = a3;
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

- (VNLKTOpticalFlowCPU)initWithWidth:(int)a3 height:(int)a4 numScales:(int)a5
{
  v9.receiver = self;
  v9.super_class = VNLKTOpticalFlowCPU;
  v5 = [(VNLKTOpticalFlow *)&v9 initWithWidth:*&a3 height:*&a4 numScales:*&a5];
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