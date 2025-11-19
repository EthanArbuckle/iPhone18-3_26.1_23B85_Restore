@interface CVPixelBufferARCWrapper
- (CVPixelBufferARCWrapper)initWithPearlDepth:(__CVBuffer *)a3 pearlDx:(__CVBuffer *)a4 pearlDy:(__CVBuffer *)a5 pearlScore:(__CVBuffer *)a6;
- (void)dealloc;
@end

@implementation CVPixelBufferARCWrapper

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  pearlDepth = self->_pearlDepth;
  if (pearlDepth && self->_pearlDx && self->_pearlDy && self->_pearlScore)
  {
    CVPixelBufferRelease(pearlDepth);
    self->_pearlDepth = 0;
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v6 = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: CVPixelBufferARCWrapper: PixelBuffer Released 0x%llX", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v6 = 0;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "JasperPearlInFieldCalibration: CVPixelBufferARCWrapper: PixelBuffer Released 0x%llX", buf, 0xCu);
    }

    CVPixelBufferRelease(self->_pearlDx);
    self->_pearlDx = 0;
    CVPixelBufferRelease(self->_pearlDy);
    self->_pearlDy = 0;
    CVPixelBufferRelease(self->_pearlScore);
    self->_pearlScore = 0;
  }

  v4.receiver = self;
  v4.super_class = CVPixelBufferARCWrapper;
  [(CVPixelBufferARCWrapper *)&v4 dealloc];
}

- (CVPixelBufferARCWrapper)initWithPearlDepth:(__CVBuffer *)a3 pearlDx:(__CVBuffer *)a4 pearlDy:(__CVBuffer *)a5 pearlScore:(__CVBuffer *)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CVPixelBufferARCWrapper;
  v10 = [(CVPixelBufferARCWrapper *)&v17 init];
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  if (!a3)
  {
    v15 = "pearlDepth";
    v16 = 74;
    goto LABEL_17;
  }

  if (!a4)
  {
    v15 = "pearlDx";
    v16 = 75;
    goto LABEL_17;
  }

  if (!a5)
  {
    v15 = "pearlDy";
    v16 = 76;
    goto LABEL_17;
  }

  if (!a6)
  {
    v15 = "pearlScore";
    v16 = 77;
LABEL_17:
    __assert_rtn("[CVPixelBufferARCWrapper initWithPearlDepth:pearlDx:pearlDy:pearlScore:]", "ADJasperPearlInFieldCalibrationExecutor.mm", v16, v15);
  }

  v10->_pearlDepth = a3;
  CVPixelBufferRetain(a3);
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      pearlDepth = v11->_pearlDepth;
      *buf = 134217984;
      v19 = pearlDepth;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: CVPixelBufferARCWrapper: PixelBuffer Retained 0x%llX", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = v11->_pearlDepth;
    *buf = 134217984;
    v19 = v14;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "JasperPearlInFieldCalibration: CVPixelBufferARCWrapper: PixelBuffer Retained 0x%llX", buf, 0xCu);
  }

  v11->_pearlDx = a4;
  CVPixelBufferRetain(a4);
  v11->_pearlDy = a5;
  CVPixelBufferRetain(a5);
  v11->_pearlScore = a6;
  CVPixelBufferRetain(a6);
  return v11;
}

@end