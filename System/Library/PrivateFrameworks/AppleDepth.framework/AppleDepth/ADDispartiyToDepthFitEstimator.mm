@interface ADDispartiyToDepthFitEstimator
- (ADDispartiyToDepthFitEstimator)init;
- (ADDispartiyToDepthFitEstimator)initWithParameters:(id)parameters;
- (id).cxx_construct;
- (id)estimateWithDisparity:(__n128)disparity calibration:(__n128)calibration pose:(__n128)pose disparityTimestamp:(double)timestamp;
- (id)estimateWithDisparityFile:(id)file disparityWidth:(unsigned int)width disparityHeight:(unsigned int)height calibration:(id)calibration poseArray:(id)array disparityTimestamp:(double)timestamp;
- (id)queryIntermediateResults;
- (void)updateWorldPoints:(ADDisparityToDepthFitWorldPoint *)points pointCount:(unsigned int)count pointsTimestamp:(double)timestamp;
- (void)updateWorldPointsArray:(id)array pointsTimestamp:(double)timestamp;
@end

@implementation ADDispartiyToDepthFitEstimator

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 11) = 0;
  return self;
}

- (id)queryIntermediateResults
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_x.__end_ - self->_x.__begin_];
  begin = self->_x.__begin_;
  for (i = self->_x.__end_; begin != i; ++begin)
  {
    *&v4 = *begin;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 addObject:v7];
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_y.__end_ - self->_y.__begin_];
  v10 = self->_y.__begin_;
  for (j = self->_y.__end_; v10 != j; ++v10)
  {
    *&v9 = *v10;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v8 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:(self->_worldPoints.__end_ - self->_worldPoints.__begin_) >> 5];
  v14 = self->_worldPoints.__begin_;
  for (k = self->_worldPoints.__end_; v14 != k; v14 += 4)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v14[2].var1];
    [v13 addObject:v16];
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  [v17 setValue:v3 forKey:@"ransacX"];
  [v17 setValue:v8 forKey:@"ransacY"];
  [v17 setValue:v13 forKey:@"estimateWorldPointsIds"];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_updateWorldPointsCounter];
  [v17 setValue:v18 forKey:@"updateWorldPointsCounter"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_estimateWithDisparityCounter];
  [v17 setValue:v19 forKey:@"estimateWithDisparityCounter"];

  return v17;
}

- (id)estimateWithDisparityFile:(id)file disparityWidth:(unsigned int)width disparityHeight:(unsigned int)height calibration:(id)calibration poseArray:(id)array disparityTimestamp:(double)timestamp
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  calibrationCopy = calibration;
  arrayCopy = array;
  v20 = fileCopy;
  v14 = fileCopy;
  v15 = PixelBufferUtils::pixelBufferFromRawFile([fileCopy cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}], width, height, 0x68646973u);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = __132__ADDispartiyToDepthFitEstimator_estimateWithDisparityFile_disparityWidth_disparityHeight_calibration_poseArray_disparityTimestamp___block_invoke;
  v24 = &__block_descriptor_40_e5_v8__0l;
  v25 = v15;
  memset(v21, 0, sizeof(v21));
  v16 = arrayCopy;
  if ([v16 countByEnumeratingWithState:v21 objects:v26 count:16])
  {
    [**(&v21[0] + 1) floatValue];
    operator new();
  }

  v23(v22);

  return 0;
}

- (void)updateWorldPointsArray:(id)array pointsTimestamp:(double)timestamp
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  obj = array;
  if ([obj countByEnumeratingWithState:v13 objects:v14 count:16])
  {
    v6 = **(&v13[0] + 1);
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 floatValue];

    v8 = [v6 objectAtIndexedSubscript:1];
    [v8 floatValue];

    v9 = [v6 objectAtIndexedSubscript:2];
    [v9 floatValue];

    v10 = [v6 objectAtIndexedSubscript:3];
    [v10 floatValue];

    v11 = [v6 objectAtIndexedSubscript:4];
    [v11 intValue];

    operator new();
  }

  [(ADDispartiyToDepthFitEstimator *)self updateWorldPoints:0 pointCount:0 pointsTimestamp:timestamp];
}

- (id)estimateWithDisparity:(__n128)disparity calibration:(__n128)calibration pose:(__n128)pose disparityTimestamp:(double)timestamp
{
  v75[4] = *MEMORY[0x277D85DE8];
  v12 = a9;
  ++*(self + 20);
  if (*(self + 8))
  {
    Width = CVPixelBufferGetWidth(a8);
    Height = CVPixelBufferGetHeight(a8);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a8);
    if (PixelFormatType == 1751411059)
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(self + 20);
          *buf = 67109888;
          *&buf[4] = v16;
          *&buf[8] = 2048;
          *&buf[10] = Width;
          *&buf[18] = 2048;
          *&buf[20] = Height;
          *&buf[28] = 2048;
          *&buf[30] = timestamp;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Debug  ] estimateWithDisparity %u with width: %lu height: %lu disparityTimestamp: %f", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v54 = *(self + 20);
        *buf = 67109888;
        *&buf[4] = v54;
        *&buf[8] = 2048;
        *&buf[10] = Width;
        *&buf[18] = 2048;
        *&buf[20] = Height;
        *&buf[28] = 2048;
        *&buf[30] = timestamp;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "DisparityToDepth [Debug  ] estimateWithDisparity %u with width: %lu height: %lu disparityTimestamp: %f", buf, 0x26u);
      }

      CVPixelBufferLockBaseAddress(a8, 1uLL);
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v73[0] = __92__ADDispartiyToDepthFitEstimator_estimateWithDisparity_calibration_pose_disparityTimestamp___block_invoke;
      v73[1] = &__block_descriptor_40_e5_v8__0l;
      v73[2] = a8;
      if (CVPixelBufferGetBaseAddress(a8))
      {
        std::to_string(buf, *(self + 20));
        v19 = std::string::append(buf, "_ad_calibration", 0xFuLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v71 = v19->__r_.__value_.__r.__words[2];
        *v70 = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v71 >= 0)
        {
          v21 = v70;
        }

        else
        {
          v21 = v70[0];
        }

        [*(self + 96) logCalibration:v12 name:v21 priority:0];
        std::to_string(&v63, *(self + 20));
        v22 = std::string::insert(&v63, 0, "frame_", 6uLL);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v64.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v64.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v64, "_disparity_", 0xBuLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v65.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v65.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&v65, "_width_", 7uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v66.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v66.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v62, Width);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v62;
        }

        else
        {
          v28 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v62.__r_.__value_.__l.__size_;
        }

        v30 = std::string::append(&v66, v28, size);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v67.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v67.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v67, "_height_", 8uLL);
        v33 = *&v32->__r_.__value_.__l.__data_;
        *&v59[16] = *(&v32->__r_.__value_.__l + 2);
        *v59 = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v61, Height);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v61;
        }

        else
        {
          v34 = v61.__r_.__value_.__r.__words[0];
        }

        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = v61.__r_.__value_.__l.__size_;
        }

        v36 = std::string::append(v59, v34, v35);
        v37 = *&v36->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v36->__r_.__value_.__l + 2);
        *buf = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = std::string::append(buf, ".bin", 4uLL);
        v39 = *&v38->__r_.__value_.__l.__data_;
        v69 = v38->__r_.__value_.__r.__words[2];
        *__p = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_31:
            if ((v59[23] & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_52;
          }
        }

        else if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        operator delete(v61.__r_.__value_.__l.__data_);
        if ((v59[23] & 0x80000000) == 0)
        {
LABEL_32:
          if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_53;
        }

LABEL_52:
        operator delete(*v59);
        if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_33:
          if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_54;
        }

LABEL_53:
        operator delete(v67.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_34:
          if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_55;
        }

LABEL_54:
        operator delete(v62.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_35:
          if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_56;
        }

LABEL_55:
        operator delete(v66.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_36:
          if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_57;
        }

LABEL_56:
        operator delete(v65.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_37:
          if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

LABEL_58:
          operator delete(v63.__r_.__value_.__l.__data_);
LABEL_38:
          if (v69 >= 0)
          {
            v40 = __p;
          }

          else
          {
            v40 = __p[0];
          }

          [*(self + 96) logPixelBuffer:a8 name:v40 priority:0];
          std::to_string(v59, *(self + 20));
          v41 = std::string::insert(v59, 0, "frame_", 6uLL);
          v42 = *&v41->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v41->__r_.__value_.__l + 2);
          *buf = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          v43 = std::string::append(buf, "_pose", 5uLL);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = calibration.n128_f64[0];
          v46 = pose.n128_f64[0];
          v47 = a2.n128_f64[0];
          v48 = disparity.n128_f64[0];
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
            v47 = a2.n128_f64[0];
            v48 = disparity.n128_f64[0];
            v45 = calibration.n128_f64[0];
            v46 = pose.n128_f64[0];
            if ((v59[23] & 0x80000000) == 0)
            {
              goto LABEL_43;
            }
          }

          else if ((v59[23] & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          operator delete(*v59);
          v47 = a2.n128_f64[0];
          v48 = disparity.n128_f64[0];
          v45 = calibration.n128_f64[0];
          v46 = pose.n128_f64[0];
LABEL_43:
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v67;
          }

          else
          {
            v49 = v67.__r_.__value_.__r.__words[0];
          }

          [*(self + 96) logMatrix4x4:v49 name:0 priority:{v47, v48, v45, v46}];
          v50 = v12;
          *v59 = a2;
          *&v59[16] = disparity;
          calibrationCopy = calibration;
          *&v66.__r_.__value_.__l.__data_ = pose;
          [v50 referenceDimensions];
          [v50 referenceDimensions];
          v51 = v50;
          v75[0] = &unk_2852314C0;
          v75[1] = v51;
          v75[3] = v75;
          DisparityToDepth::VioProjectionFactory::create();
        }

LABEL_57:
        operator delete(v64.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_58;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(self + 20);
        *buf = 67109888;
        *&buf[4] = v52;
        *&buf[8] = 2048;
        *&buf[10] = Width;
        *&buf[18] = 2048;
        *&buf[20] = Height;
        *&buf[28] = 2048;
        *&buf[30] = timestamp;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Always ] estimateWithDisparity %u failed to get the base address of the disparity buffer width: %lu height: %lu disparityTimestamp: %f", buf, 0x26u);
      }

      (v73[0])(v72);
    }

    else
    {
      v17 = PixelFormatType;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(self + 20);
        *buf = 67110144;
        *&buf[4] = v18;
        *&buf[8] = 1024;
        *&buf[10] = v17;
        *&buf[14] = 2048;
        *&buf[16] = Width;
        *&buf[24] = 2048;
        *&buf[26] = Height;
        *&buf[34] = 2048;
        *&buf[36] = timestamp;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Always ] estimateWithDisparity %u is only supported with hdis format (DisparityFloat16). obtained buffer type: %u buffer width: %lu height: %lu disparityTimestamp: %f", buf, 0x2Cu);
      }
    }
  }

  return 0;
}

- (void)updateWorldPoints:(ADDisparityToDepthFitWorldPoint *)points pointCount:(unsigned int)count pointsTimestamp:(double)timestamp
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = self->_updateWorldPointsCounter + 1;
  self->_updateWorldPointsCounter = v5;
  if (self->_impl.__ptr_)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *&buf[4] = v5;
        *&buf[8] = 1024;
        *&buf[10] = count;
        *&buf[14] = 2048;
        timestampCopy2 = timestamp;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Debug  ] updateWorldPoints %u with pointCount: %d pointsTimestamp: %f", buf, 0x18u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *&buf[4] = v5;
      *&buf[8] = 1024;
      *&buf[10] = count;
      *&buf[14] = 2048;
      timestampCopy2 = timestamp;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "DisparityToDepth [Debug  ] updateWorldPoints %u with pointCount: %d pointsTimestamp: %f", buf, 0x18u);
    }

    updateWorldPointsCounter = self->_updateWorldPointsCounter;
    v11 = self->_logger;
    std::to_string(&v15, updateWorldPointsCounter);
    v12 = std::string::insert(&v15, 0, "world_points_frame_", 0x13uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    timestampCopy2 = *&v12->__r_.__value_.__r.__words[2];
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (timestampCopy2 >= 0.0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    [(ADLogManager *)v11 logRawBuffer:points size:32 * count name:v14 priority:0];
    if (SHIBYTE(timestampCopy2) < 0)
    {
      operator delete(*buf);
    }

    DisparityToDepth::WorldPointsContainer::push(self->_impl.__ptr_, points, count);
  }
}

- (ADDispartiyToDepthFitEstimator)initWithParameters:(id)parameters
{
  v17 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  *&self->_updateWorldPointsCounter = 0;
  if (parametersCopy)
  {
    v16.receiver = self;
    v16.super_class = ADDispartiyToDepthFitEstimator;
    v5 = [(ADDispartiyToDepthFitEstimator *)&v16 init];
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      lowercaseString = [v7 lowercaseString];

      if ([lowercaseString hasPrefix:@"ad"])
      {
        v9 = [lowercaseString substringFromIndex:2];

        v10 = v9;
      }

      else
      {
        v10 = lowercaseString;
      }

      v12 = [v10 stringByReplacingOccurrencesOfString:@"parameters" withString:&stru_285231EA0];

      v13 = [ADLogManager defaultLoggerWithName:v12];
      logger = v5->_logger;
      v5->_logger = v13;

      operator new();
    }

    self = 0;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ADDispartiyToDepthFitEstimator)init
{
  v3 = objc_alloc_init(ADDisparityToDepthFitEstimatorParameters);
  v4 = [(ADDispartiyToDepthFitEstimator *)self initWithParameters:v3];

  return v4;
}

@end