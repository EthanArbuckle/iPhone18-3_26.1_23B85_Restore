@interface ABPKBreakthroughPipeline
- (BOOL)overlayResult:(id)a3 OnImage:(__CVBuffer *)a4 andGenerateOverlayImage:(__CVBuffer *)a5;
- (int)runWithInput:(__CVBuffer *)a3 atTimeStamp:(double)a4 andOutput:(id)a5;
@end

@implementation ABPKBreakthroughPipeline

- (int)runWithInput:(__CVBuffer *)a3 atTimeStamp:(double)a4 andOutput:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v35 = a5;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(ABPKGestureDetectionPipeline *)self->_gestureDetection runWithInput:a3 abpkDeviceOrientation:3 atTimeStamp:v8 andOutput:a4])
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, " Gesture detection failed ", buf, 2u);
    }

    v11 = 1;
  }

  else
  {
    v12 = 0;
    *&v9 = 138412290;
    v34 = v9;
    while ([v8 count] > v12)
    {
      v36 = objc_alloc_init(ABPKBreakthroughResult);
      v13 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v8 objectAtIndexedSubscript:v12];
        v15 = [v14 gestureTypes];
        *buf = v34;
        v38 = v15;
        _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Gestures detected: %@ ", buf, 0xCu);
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = [v8 objectAtIndexedSubscript:v12];
        v21 = [v20 gestureTypes];
        v22 = [v21 count] > v16;

        if (!v22)
        {
          break;
        }

        v23 = [v8 objectAtIndexedSubscript:v12];
        v24 = [v23 gestureTypes];
        v25 = [v24 objectAtIndexedSubscript:v16];
        v26 = [v25 integerValue];

        if (v26)
        {
          if (v26 == 1)
          {
            v18 = 1;
          }

          else if (v26 == 2)
          {
            v17 = 1;
          }
        }

        else
        {
          v19 = 1;
        }

        ++v16;
      }

      v27 = [v8 objectAtIndexedSubscript:v12];
      v28 = [v27 skeleton2D];
      v29 = [v8 objectAtIndexedSubscript:v12];
      v30 = [v29 isPoseValid];
      v31 = [v8 objectAtIndexedSubscript:v12];
      -[ABPKBreakthroughResult set2dSkeleton:isPoseValid:trackingId:isFaceVisible:isRaisingHand:isWavingHand:](v36, "set2dSkeleton:isPoseValid:trackingId:isFaceVisible:isRaisingHand:isWavingHand:", v28, v30, [v31 trackingId], v17 & 1, v18 & 1, v19 & 1);

      [v35 addObject:v36];
      ++v12;
    }

    v11 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)overlayResult:(id)a3 OnImage:(__CVBuffer *)a4 andGenerateOverlayImage:(__CVBuffer *)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  *buf = xmmword_23EE281B0;
  v26 = xmmword_23EE281C0;
  *&v8 = 255;
  *(&v8 + 1) = 255;
  v27 = xmmword_23EE281D0;
  v28 = v8;
  v29 = xmmword_23EE281E0;
  v30 = xmmword_23EE281F0;
  *&v9 = 0xFF000000FFLL;
  *(&v9 + 1) = 0xFF000000FFLL;
  v31 = v9;
  v32 = 0u;
  v33 = xmmword_23EE28200;
  v34 = xmmword_23EE28210;
  v35 = xmmword_23EE28220;
  v36 = xmmword_23EE28230;
  v23 = 0;
  v24 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, v37, 0xCuLL);
  v10 = 0;
  *&v11 = 134217984;
  v21 = v11;
  while (v10 < [v7 count])
  {
    v12 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = v21;
      *&buf[4] = v10;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Person: %lu ", buf, 0xCu);
    }

    v13 = [v7 objectAtIndexedSubscript:v10];
    if ([v13 isFaceVisible])
    {
      if ([v13 isWavingHand])
      {
        v14 = 1;
      }

      else
      {
        v14 = [v13 isRaisingHand];
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [v13 trackingId];
    if (v14)
    {
      v16 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Breakthrough detected ", buf, 2u);
      }

      *&v17 = 0xFF00000000;
    }

    else
    {
      v17 = *(__p + v15 % ((v23 - __p) >> 4));
    }

    if (v10)
    {
      v18 = a5;
    }

    else
    {
      v18 = a4;
    }

    [v13 overlayResultOnImage:v18 withResult:a5 withColor:*&v17];

    ++v10;
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

@end