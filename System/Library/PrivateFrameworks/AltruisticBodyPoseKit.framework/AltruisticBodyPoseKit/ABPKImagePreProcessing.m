@interface ABPKImagePreProcessing
- (ABPKImagePreProcessing)initWithPreProcessingParams:(id)a3;
- (int)preprocessColorImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (int)preprocessData:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (int)preprocessGrayscaleImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (void)dealloc;
- (void)logProfilingDetails;
@end

@implementation ABPKImagePreProcessing

- (ABPKImagePreProcessing)initWithPreProcessingParams:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ABPKImagePreProcessing;
  v5 = [(ABPKImagePreProcessing *)&v14 init];
  if (v5)
  {
    v6 = [v4 paddingParams];
    paddingParameters = v5->_paddingParameters;
    v5->_paddingParameters = v6;

    if (!v5->_paddingParameters)
    {
      v8 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, " Padding parameters not specified. Cannot run image pre-processing pipeline ", v13, 2u);
      }
    }

    if (!VTPixelTransferSessionCreate(0, &v5->_vtPixelTransferSession))
    {
      v11 = v5;
      goto LABEL_14;
    }

    vtPixelTransferSession = v5->_vtPixelTransferSession;
    if (vtPixelTransferSession)
    {
      CFRelease(vtPixelTransferSession);
    }

    v5->_vtPixelTransferSession = 0;
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, " Unable to create pixel transfer session for image downscaling ", v13, 2u);
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)dealloc
{
  vtPixelTransferSession = self->_vtPixelTransferSession;
  if (vtPixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtPixelTransferSession);
    CFRelease(self->_vtPixelTransferSession);
    self->_vtPixelTransferSession = 0;
  }

  v4.receiver = self;
  v4.super_class = ABPKImagePreProcessing;
  [(ABPKImagePreProcessing *)&v4 dealloc];
}

- (int)preprocessData:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType != 32 && PixelFormatType != 875704422)
    {
LABEL_13:
      v9 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Input image is of invalid format ", v10, 2u);
      }

      return -6660;
    }
  }

  else if (PixelFormatType != 875704438 && PixelFormatType != 1111970369)
  {
    if (PixelFormatType == 1278226488)
    {

      return [(ABPKImagePreProcessing *)self preprocessGrayscaleImage:a3 outputBuffer:a4];
    }

    goto LABEL_13;
  }

  return [(ABPKImagePreProcessing *)self preprocessColorImage:a3 outputBuffer:a4];
}

- (int)preprocessGrayscaleImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v27 = a4;
  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t\t Preprocessing GrayscaleImage ", buf, 2u);
  }

  v28 = *MEMORY[0x277CC4DE8];
  v29[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  self->_startScale = CFAbsoluteTimeGetCurrent();
  v9 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " \t\t Scaling image ", buf, 2u);
  }

  [(ABPKImagePreProcessing *)self _startScaleSignpost];
  *buf = 0;
  v10 = [(ABPKPaddingParams *)self->_paddingParameters width];
  v11 = [(ABPKPaddingParams *)self->_paddingParameters height];
  v12 = *MEMORY[0x277CBECE8];
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v10, v11, 0x4C303038u, v8, buf))
  {
    v13 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_ERROR, " Could not create scaledImage buffer ", v25, 2u);
    }

    goto LABEL_9;
  }

  v14 = VTPixelTransferSessionTransferImage(self->_vtPixelTransferSession, a3, *buf);
  [(ABPKImagePreProcessing *)self _endScaleSignpost];
  if (!v14)
  {
    self->_timeScale = CFAbsoluteTimeGetCurrent() - self->_startScale;
    self->_startPadding = CFAbsoluteTimeGetCurrent();
    v18 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " \t\t Padding image ", v25, 2u);
    }

    [(ABPKImagePreProcessing *)self _startPaddingSignpost];
    *v25 = 0;
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    if (CVPixelBufferCreate(v12, Width, Height, 0x4C303038u, v8, v25))
    {
      v21 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        v22 = " Could not create scaledImage buffer ";
LABEL_28:
        _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_ERROR, v22, v24, 2u);
      }
    }

    else
    {
      if (!padImage(*buf, v25, [(ABPKPaddingParams *)self->_paddingParameters offsetHeight], [(ABPKPaddingParams *)self->_paddingParameters offsetWidth]))
      {
        [(ABPKImagePreProcessing *)self _endPaddingSignpost];
        self->_timePadding = CFAbsoluteTimeGetCurrent() - self->_startPadding;
        v23 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *v24 = 0;
          _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " Convert Format GrayScale To ARGB_BGRA ", v24, 2u);
        }

        self->_startConvertGrayScaleToBGRA = CFAbsoluteTimeGetCurrent();
        [(ABPKImagePreProcessing *)self _startGrayToBGRASignpost];
        if (!convertFormatGrayScaleToARGB_BGRA(*v25, &v27))
        {
          [(ABPKImagePreProcessing *)self _endGrayToBGRASignpost];
          self->_timeConvertGrayScaleToBGRA = CFAbsoluteTimeGetCurrent() - self->_startConvertGrayScaleToBGRA;
          CVPixelBufferRelease(*buf);
          CVPixelBufferRelease(*v25);
          v14 = 0;
          goto LABEL_14;
        }

        v21 = __ABPKLogSharedInstance();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *v24 = 0;
        v22 = " Could not convert Grayscale to BGRA buffer ";
        goto LABEL_28;
      }

      v21 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        v22 = " Could not pad buffer ";
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_9:
    v14 = -6660;
    goto LABEL_14;
  }

  v15 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v25 = 0;
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, " Could not scale Image ", v25, 2u);
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)preprocessColorImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v29 = a4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v9 = PixelFormatType;
  if (PixelFormatType > 875704437)
  {
    if (PixelFormatType == 875704438)
    {
      goto LABEL_7;
    }

    v10 = 1111970369;
  }

  else
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_7;
    }

    v10 = 875704422;
  }

  if (PixelFormatType == v10)
  {
LABEL_7:
    v11 = PixelFormatType == 1111970369;
    *v28 = 0;
    v30 = *MEMORY[0x277CC4DE8];
    v31[0] = MEMORY[0x277CBEC10];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    if (v11)
    {
      *v28 = a3;
      goto LABEL_9;
    }

    if ((v9 & 0x76777267) == 0x34323066)
    {
      v19 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEBUG, " \t\t Converting image format: YCbCr --> BGRA ", buf, 2u);
      }

      self->_startConvertYCbCrToBGRA = CFAbsoluteTimeGetCurrent();
      [(ABPKImagePreProcessing *)self _startYCbCrToARGBSignpost];
    }

    else
    {
      v21 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " \t\t Converting image format: ARGB --> BGRA ", buf, 2u);
      }

      self->_startConvertARGBToBGRA = CFAbsoluteTimeGetCurrent();
      [(ABPKImagePreProcessing *)self _startARGBToBGRASignpost];
    }

    if (CVPixelBufferCreate(0, Width, Height, 0x42475241u, v12, v28))
    {
      v22 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_ERROR, " Could not create imageBGRA buffer ", buf, 2u);
      }

LABEL_30:

      v18 = -6660;
      goto LABEL_31;
    }

    if ((v9 & 0x76777267) == 0x34323066)
    {
      if (convertFormatYCbCrToBGRA(a3, v28))
      {
        v22 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_ERROR, " Could not convert Format YCbCr to BGRA. ", buf, 2u);
        }

        goto LABEL_30;
      }

      [(ABPKImagePreProcessing *)self _endYCbCrToARGBSignpost];
      self->_timeConvertYCbCrToBGRA = CFAbsoluteTimeGetCurrent() - self->_startConvertYCbCrToBGRA;
    }

    else
    {
      if (changeChannelsARGB(a3, v28))
      {
        v22 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_ERROR, " changeChannelsARGB failed. ", buf, 2u);
        }

        goto LABEL_30;
      }

      [(ABPKImagePreProcessing *)self _endARGBToBGRASignpost];
      self->_timeConvertARGBToBGRA = CFAbsoluteTimeGetCurrent() - self->_startConvertARGBToBGRA;
    }

LABEL_9:
    self->_startScale = CFAbsoluteTimeGetCurrent();
    v13 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \t\t Scaling image ", buf, 2u);
    }

    [(ABPKImagePreProcessing *)self _startScaleSignpost];
    *buf = 0;
    v14 = [(ABPKPaddingParams *)self->_paddingParameters width];
    v15 = [(ABPKPaddingParams *)self->_paddingParameters height];
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v14, v15, 0x42475241u, v12, buf))
    {
      v16 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        v17 = " Could not create scaledImage buffer ";
LABEL_14:
        _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, v17, v26, 2u);
      }
    }

    else
    {
      v18 = VTPixelTransferSessionTransferImage(self->_vtPixelTransferSession, *v28, *buf);
      [(ABPKImagePreProcessing *)self _endScaleSignpost];
      if (v18)
      {
        v16 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v26 = 0;
          _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, " Could not scale Image ", v26, 2u);
        }

        goto LABEL_16;
      }

      self->_timeScale = CFAbsoluteTimeGetCurrent() - self->_startScale;
      self->_startPadding = CFAbsoluteTimeGetCurrent();
      v25 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *v26 = 0;
        _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t\t Padding image ", v26, 2u);
      }

      [(ABPKImagePreProcessing *)self _startPaddingSignpost];
      if (!padImage(*buf, &v29, [(ABPKPaddingParams *)self->_paddingParameters offsetHeight], [(ABPKPaddingParams *)self->_paddingParameters offsetWidth]))
      {
        [(ABPKImagePreProcessing *)self _endPaddingSignpost];
        self->_timePadding = CFAbsoluteTimeGetCurrent() - self->_startPadding;
        CVPixelBufferRelease(*buf);
        if (v9 != 1111970369)
        {
          CVPixelBufferRelease(*v28);
        }

        v18 = 0;
        goto LABEL_31;
      }

      v16 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        v17 = " Could not pad buffer ";
        goto LABEL_14;
      }
    }

    v18 = -6660;
LABEL_16:

LABEL_31:
    goto LABEL_32;
  }

  v20 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_ERROR, " Input image is of invalid format ", v28, 2u);
  }

  v18 = -6660;
LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)logProfilingDetails
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    timeConvertYCbCrToBGRA = self->_timeConvertYCbCrToBGRA;
    v16 = 134217984;
    v17 = timeConvertYCbCrToBGRA;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ConvertYCbCrToBGRA: %f ", &v16, 0xCu);
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    timeConvertARGBToBGRA = self->_timeConvertARGBToBGRA;
    v16 = 134217984;
    v17 = timeConvertARGBToBGRA;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " ConvertARGBToBGRA: %f ", &v16, 0xCu);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    timeConvertGrayScaleToBGRA = self->_timeConvertGrayScaleToBGRA;
    v16 = 134217984;
    v17 = timeConvertGrayScaleToBGRA;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " ConvertGrayScaleToBGRA: %f ", &v16, 0xCu);
  }

  v9 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    timeScale = self->_timeScale;
    v16 = 134217984;
    v17 = timeScale;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " Scale: %f ", &v16, 0xCu);
  }

  v11 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    timePadding = self->_timePadding;
    v16 = 134217984;
    v17 = timePadding;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " Padding: %f ", &v16, 0xCu);
  }

  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = self->_timeConvertARGBToBGRA + self->_timeConvertYCbCrToBGRA + self->_timeConvertGrayScaleToBGRA + self->_timeScale + self->_timePadding;
    v16 = 134217984;
    v17 = v14;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Total: %f ", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end