@interface PregateFeatureBuilder
- (PregateFeatureBuilder)init;
- (id).cxx_construct;
- (int)fillVector:(void *)a3 withPerFrameStats:(id)a4;
- (int)processBlurVectors;
- (int)processFullDictionary:(BOOL)a3;
- (int)processMovieMetadata;
- (int)processOffsetVectors;
- (int)processPresentationTimes;
- (int)processStandardPerFrameKeys;
- (int)processStill;
- (int)processStillImageFaceData;
- (int)processStillImageMetadata;
- (int)processStillInternal;
- (int)processVidTrackMetadata;
- (int)processVideo;
- (int)processVideoFaceInfo;
- (int)processVideoInternal;
- (int)readPerFrameMetadataToArrays;
- (int)standardProcessKey:(id)a3 addToDictionary:(id)a4;
- (void)buildFullDictionary;
@end

@implementation PregateFeatureBuilder

- (int)fillVector:(void *)a3 withPerFrameStats:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  *(a3 + 1) = *a3;
  movieMetadata = self->_movieMetadata;
  if (movieMetadata)
  {
    sub_2418F052C(a3, [(NSArray *)movieMetadata count]);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->_movieMetadata;
    v8 = 0;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = *v32;
      v29 = v6;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"InterpolatedFrame", v29}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 BOOLValue];
          }

          else
          {
            v14 = 0;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v12 objectForKeyedSubscript:v6];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 floatValue];
              v18 = *(a3 + 1);
              v17 = *(a3 + 2);
              if (v18 >= v17)
              {
                v20 = *a3;
                v21 = v18 - *a3;
                v22 = v21 >> 2;
                v23 = (v21 >> 2) + 1;
                if (v23 >> 62)
                {
                  sub_2418D3940();
                }

                v24 = v17 - v20;
                if (v24 >> 1 > v23)
                {
                  v23 = v24 >> 1;
                }

                v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
                v26 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v25)
                {
                  v26 = v23;
                }

                if (v26)
                {
                  sub_2418DB6FC(a3, v26);
                }

                *(4 * v22) = v16;
                v19 = 4 * v22 + 4;
                memcpy(0, v20, v21);
                v27 = *a3;
                *a3 = 0;
                *(a3 + 1) = v19;
                *(a3 + 2) = 0;
                if (v27)
                {
                  operator delete(v27);
                }

                v6 = v29;
              }

              else
              {
                *v18 = v16;
                v19 = (v18 + 1);
              }

              *(a3 + 1) = v19;
            }

            else if (!v14)
            {
              v8 = -4443998;
            }
          }

          else
          {
            NSLog(&cfstr_ArrayEntryForF.isa);
            v8 = -4444005;
          }
        }

        v9 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v8 = -4444007;
  }

  return v8;
}

- (int)standardProcessKey:(id)a3 addToDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  __p = 0;
  v30 = 0;
  v31 = 0;
  v8 = [(PregateFeatureBuilder *)self fillVector:&__p withPerFrameStats:v6];
  v9 = __p;
  if (!v8 && v30 != __p)
  {
    v27 = 0;
    v28 = 0;
    sub_2418F005C(&__p, &v27, &v28 + 1, &v28, &v27 + 1);
    v10 = [@"pregate_" stringByAppendingString:v6];
    v11 = [v10 stringByAppendingString:@"_mean"];

    LODWORD(v12) = v27;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v7 setObject:v13 forKeyedSubscript:v11];

    v14 = [@"pregate_" stringByAppendingString:v6];
    v15 = [v14 stringByAppendingString:@"_max"];

    LODWORD(v16) = v28;
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    [v7 setObject:v17 forKeyedSubscript:v15];

    v18 = [@"pregate_" stringByAppendingString:v6];
    v19 = [v18 stringByAppendingString:@"_min"];

    LODWORD(v20) = HIDWORD(v28);
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v7 setObject:v21 forKeyedSubscript:v19];

    v22 = [@"pregate_" stringByAppendingString:v6];
    v23 = [v22 stringByAppendingString:@"_sd"];

    LODWORD(v24) = HIDWORD(v27);
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v7 setObject:v25 forKeyedSubscript:v23];

    v9 = __p;
  }

  if (v9)
  {
    v30 = v9;
    operator delete(v9);
  }

  return v8;
}

- (int)processStandardPerFrameKeys
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->stdProcessInputKeysArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = [(PregateFeatureBuilder *)self standardProcessKey:*(*(&v9 + 1) + 8 * v6) addToDictionary:self->featuresDict, v9];
      if (v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  return v7;
}

- (int)processVideoFaceInfo
{
  v44 = *MEMORY[0x277D85DE8];
  movieMetadata = self->_movieMetadata;
  if (movieMetadata)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = movieMetadata;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v4)
    {
      v31 = 0;
      v5 = 0;
      v29 = *v39;
      v30 = v4;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [*(*(&v38 + 1) + 8 * i) objectForKeyedSubscript:@"privDFArray"];
          v8 = v7;
          v32 = v7;
          if (v7)
          {
            v9 = [v7 count];
            v10 = v31;
            if (v31 <= v9)
            {
              v10 = v9;
            }

            v31 = v10;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v11 = v8;
            v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v12)
            {
              v13 = *v35;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v35 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = [*(*(&v34 + 1) + 8 * j) objectForKeyedSubscript:@"Rect"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = [v15 objectForKeyedSubscript:@"Width"];
                    objc_opt_class();
                    v17 = 0.0;
                    v18 = 4290523293;
                    if (objc_opt_isKindOfClass())
                    {
                      [v16 floatValue];
                      v17 = v19;
                      v18 = v5;
                    }

                    v20 = [v15 objectForKeyedSubscript:@"Height"];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();
                    v22 = 0.0;
                    v5 = 4290523293;
                    if (isKindOfClass)
                    {
                      [v20 floatValue];
                      v5 = v18;
                    }

                    v23 = v17 * v22;
                    if (v6 < v23)
                    {
                      v6 = v23;
                    }
                  }

                  else
                  {
                    v5 = 4290523293;
                  }
                }

                v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v12);
            }
          }
        }

        v30 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v30);
    }

    else
    {
      v31 = 0;
      LODWORD(v5) = 0;
      v6 = 0.0;
    }
  }

  else
  {
    v31 = 0;
    LODWORD(v5) = -4444007;
    v6 = 0.0;
  }

  *&v2 = v6;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  [(NSMutableDictionary *)self->featuresDict setObject:v24 forKeyedSubscript:@"PREGATE_VIDEO_FACE_MAX_SIZE"];

  v25 = [MEMORY[0x277CCABB0] numberWithInt:v31];
  [(NSMutableDictionary *)self->featuresDict setObject:v25 forKeyedSubscript:@"PREGATE_VIDEO_FACE_MAX_COUNT"];

  return v5;
}

- (int)processPresentationTimes
{
  v32 = **&MEMORY[0x277CC08F0];
  begin = self->_frameTimes.__begin_;
  v4 = self->_frameTimes.__end_ - begin;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v6 = 0;
  if (v4)
  {
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    }

    v8 = (begin + 12);
    do
    {
      v9 = *v8;
      v8 += 6;
      if ((v9 & 0x1D) != 1)
      {
        v6 = -4443999;
      }

      --v7;
    }

    while (v7);
  }

  if (v5 > 1)
  {
    memset(&time, 0, sizeof(time));
    lhs = *(begin + 1);
    v10 = *begin;
    v29.epoch = *(begin + 2);
    *&v29.value = v10;
    CMTimeSubtract(&time, &lhs, &v29);
    v32 = time;
    v33 = time;
    v34 = time;
    v11 = self->_frameTimes.__begin_;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((self->_frameTimes.__end_ - v11) >> 3);
    if (v12 >= 3)
    {
      v13 = 0;
      v14 = 2;
      do
      {
        memset(&time, 0, sizeof(time));
        v15 = v11 + v13;
        v16 = *(v15 + 3);
        lhs.epoch = *(v15 + 8);
        *&lhs.value = v16;
        v17 = *(v15 + 24);
        v29.epoch = *(v15 + 5);
        *&v29.value = v17;
        CMTimeSubtract(&time, &lhs, &v29);
        lhs = time;
        v29 = v34;
        if (CMTimeCompare(&lhs, &v29) < 0)
        {
          v34 = time;
        }

        lhs = time;
        v29 = v33;
        if (CMTimeCompare(&lhs, &v29) >= 1)
        {
          v33 = time;
        }

        lhs = v32;
        v29 = time;
        CMTimeAdd(&v32, &lhs, &v29);
        ++v14;
        v11 = self->_frameTimes.__begin_;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((self->_frameTimes.__end_ - v11) >> 3);
        v13 += 24;
      }

      while (v12 > v14);
    }

    time = v32;
    CMTimeMultiplyByRatio(&v32, &time, 1, v12 - 1);
    v18 = MEMORY[0x277CCABB0];
    time = v33;
    Seconds = CMTimeGetSeconds(&time);
    *&Seconds = Seconds;
    v20 = [v18 numberWithFloat:Seconds];
    [(NSMutableDictionary *)self->featuresDict setObject:v20 forKeyedSubscript:@"PREGATE_GAP_MAX"];

    v21 = MEMORY[0x277CCABB0];
    time = v34;
    v22 = CMTimeGetSeconds(&time);
    *&v22 = v22;
    v23 = [v21 numberWithFloat:v22];
    [(NSMutableDictionary *)self->featuresDict setObject:v23 forKeyedSubscript:@"PREGATE_GAP_MIN"];

    v24 = MEMORY[0x277CCABB0];
    time = v32;
    v25 = CMTimeGetSeconds(&time);
    *&v25 = v25;
    v26 = [v24 numberWithFloat:v25];
    [(NSMutableDictionary *)self->featuresDict setObject:v26 forKeyedSubscript:@"PREGATE_GAP_MEAN"];

    v5 = 0xAAAAAAAAAAAAAAABLL * ((self->_frameTimes.__end_ - self->_frameTimes.__begin_) >> 3);
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  [(NSMutableDictionary *)self->featuresDict setObject:v27 forKeyedSubscript:@"PREGATE_NUM_FRAMES"];

  return v6;
}

- (int)processOffsetVectors
{
  v59 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v3 = self->_frameOffsets.__end_ - self->_frameOffsets.__begin_;
  if ((v3 >> 3) >= 1)
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v3 >> 3) != 1)
    {
      v9 = (v3 >> 3) - 1;
      sub_2418DD410(v52, v9);
      sub_2418F315C(__p, v9);
      begin = self->_frameOffsets.__begin_;
      v13 = *begin;
      v12 = *(begin + 1);
      v11 = (begin + 12);
      v14 = (__p[0] + 4);
      v15 = ((v3 >> 3) & 0x7FFFFFFF) - 1;
      v16 = v52[0];
      v8 = v12;
      v7 = v12;
      v6 = v13;
      v5 = v13;
      do
      {
        v17 = *(v11 - 1);
        v18 = *v11;
        if (v5 < v17)
        {
          v5 = *(v11 - 1);
        }

        if (v7 < v18)
        {
          v7 = *v11;
        }

        if (v17 < v6)
        {
          v6 = *(v11 - 1);
        }

        v19 = v17 - v13;
        v20 = v18 - v12;
        *(v14 - 1) = v19;
        *v14 = v20;
        *v16++ = sqrtf((v20 * v20) + (v19 * v19));
        if (v18 < v8)
        {
          v8 = v18;
        }

        v13 = *(v11 - 1);
        v12 = *v11;
        v11 += 2;
        v14 += 2;
        --v15;
      }

      while (v15);
      sub_2418F005C(v52, &v55 + 1, &v54 + 1, &v55, &v54);
      sub_2418EFEBC(__p, &v53, &v57, &v56);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v52[0])
      {
        v52[1] = v52[0];
        operator delete(v52[0]);
      }
    }

    *&v2 = v5;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    [(NSMutableDictionary *)self->featuresDict setObject:v21 forKeyedSubscript:@"PREGATE_MOTION_OFFSET_MAX_X"];

    *&v22 = v7;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    [(NSMutableDictionary *)self->featuresDict setObject:v23 forKeyedSubscript:@"PREGATE_MOTION_OFFSET_MAX_Y"];

    *&v24 = v6;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [(NSMutableDictionary *)self->featuresDict setObject:v25 forKeyedSubscript:@"PREGATE_MOTION_OFFSET_MIN_X"];

    *&v26 = v8;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    [(NSMutableDictionary *)self->featuresDict setObject:v27 forKeyedSubscript:@"PREGATE_MOTION_OFFSET_MIN_Y"];

    LODWORD(v28) = v53.i32[0];
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    [(NSMutableDictionary *)self->featuresDict setObject:v29 forKeyedSubscript:@"PREGATE_MOTION_DELTA_MEAN_X"];

    LODWORD(v30) = v53.i32[1];
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    [(NSMutableDictionary *)self->featuresDict setObject:v31 forKeyedSubscript:@"PREGATE_MOTION_DELTA_MEAN_Y"];

    LODWORD(v32) = v57.i32[0];
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    [(NSMutableDictionary *)self->featuresDict setObject:v33 forKeyedSubscript:@"PREGATE_MOTION_DELTA_COVAR_X"];

    LODWORD(v34) = HIDWORD(v58);
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
    [(NSMutableDictionary *)self->featuresDict setObject:v35 forKeyedSubscript:@"PREGATE_MOTION_DELTA_COVAR_Y"];

    LODWORD(v36) = v57.i32[1];
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    [(NSMutableDictionary *)self->featuresDict setObject:v37 forKeyedSubscript:@"PREGATE_MOTION_DELTA_COVAR_XY"];

    LODWORD(v38) = v56;
    v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    [(NSMutableDictionary *)self->featuresDict setObject:v39 forKeyedSubscript:@"PREGATE_MOTION_DELTA_EIGEN_1"];

    LODWORD(v40) = HIDWORD(v56);
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    [(NSMutableDictionary *)self->featuresDict setObject:v41 forKeyedSubscript:@"PREGATE_MOTION_DELTA_EIGEN_2"];

    LODWORD(v42) = HIDWORD(v55);
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    [(NSMutableDictionary *)self->featuresDict setObject:v43 forKeyedSubscript:@"PREGATE_MOTION_DELTA_MAG_MEAN"];

    LODWORD(v44) = HIDWORD(v54);
    v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
    [(NSMutableDictionary *)self->featuresDict setObject:v45 forKeyedSubscript:@"PREGATE_MOTION_DELTA_MAG_MIN"];

    LODWORD(v46) = v55;
    v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
    [(NSMutableDictionary *)self->featuresDict setObject:v47 forKeyedSubscript:@"PREGATE_MOTION_DELTA_MAG_MAX"];

    LODWORD(v48) = v54;
    v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
    [(NSMutableDictionary *)self->featuresDict setObject:v49 forKeyedSubscript:@"PREGATE_MOTION_DELTA_MAG_STDDEV"];
  }

  return 0;
}

- (int)processBlurVectors
{
  begin = self->_frameBlurVectors.__begin_;
  end = self->_frameBlurVectors.__end_;
  p_frameBlurVectors = &self->_frameBlurVectors;
  if (end != begin)
  {
    v15 = 0;
    v16 = 0;
    sub_2418F0120(p_frameBlurVectors, &v16 + 1, &v16, &v15 + 1, &v15);
    LODWORD(v6) = v16;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    [(NSMutableDictionary *)self->featuresDict setObject:v7 forKeyedSubscript:@"PREGATE_BLUR_MIN"];

    LODWORD(v8) = HIDWORD(v15);
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    [(NSMutableDictionary *)self->featuresDict setObject:v9 forKeyedSubscript:@"PREGATE_BLUR_MAX"];

    LODWORD(v10) = HIDWORD(v16);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    [(NSMutableDictionary *)self->featuresDict setObject:v11 forKeyedSubscript:@"PREGATE_BLUR_MEAN"];

    LODWORD(v12) = v15;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [(NSMutableDictionary *)self->featuresDict setObject:v13 forKeyedSubscript:@"PREGATE_BLUR_STDDEV"];
  }

  return 0;
}

- (int)readPerFrameMetadataToArrays
{
  v42 = *MEMORY[0x277D85DE8];
  p_frameTimes = &self->_frameTimes;
  self->_frameTimes.__end_ = self->_frameTimes.__begin_;
  p_frameOffsets = &self->_frameOffsets;
  self->_frameOffsets.__end_ = self->_frameOffsets.__begin_;
  p_frameBlurVectors = &self->_frameBlurVectors;
  self->_frameBlurVectors.__end_ = self->_frameBlurVectors.__begin_;
  movieMetadata = self->_movieMetadata;
  if (!movieMetadata)
  {
    return -4444007;
  }

  v32 = p_frameTimes;
  sub_2418D5768(p_frameTimes, [(NSArray *)movieMetadata count]);
  sub_2418E2504(p_frameOffsets, [(NSArray *)self->_movieMetadata count]);
  sub_2418E2504(p_frameBlurVectors, [(NSArray *)self->_movieMetadata count]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = self->_movieMetadata;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v8)
  {
    v33 = p_frameBlurVectors;
    v34 = p_frameOffsets;
    v35 = 0;
    v9 = *v38;
    v31 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"InterpolatedFrame", v31}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 BOOLValue] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v11 objectForKeyedSubscript:@"PresentationTime"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              CMTimeMakeFromDictionary(&v36, v13);
              end = self->_frameTimes.__end_;
              cap = self->_frameTimes.__cap_;
              if (end >= cap)
              {
                v18 = 0xAAAAAAAAAAAAAAABLL * ((end - v32->__begin_) >> 3);
                v19 = v18 + 1;
                if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2418D3940();
                }

                v20 = 0xAAAAAAAAAAAAAAABLL * ((cap - v32->__begin_) >> 3);
                if (2 * v20 > v19)
                {
                  v19 = 2 * v20;
                }

                if (v20 >= 0x555555555555555)
                {
                  v21 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v21 = v19;
                }

                if (v21)
                {
                  sub_2418D39E8(v32, v21);
                }

                v22 = 24 * v18;
                v23 = *&v36.value;
                *(v22 + 16) = v36.epoch;
                *v22 = v23;
                v17 = (24 * v18 + 24);
                begin = self->_frameTimes.__begin_;
                v25 = (self->_frameTimes.__end_ - begin);
                v26 = (24 * v18 - v25);
                memcpy((v22 - v25), begin, v25);
                v27 = self->_frameTimes.__begin_;
                self->_frameTimes.__begin_ = v26;
                self->_frameTimes.__end_ = v17;
                self->_frameTimes.__cap_ = 0;
                if (v27)
                {
                  operator delete(v27);
                }

                v7 = v31;
              }

              else
              {
                v16 = *&v36.value;
                *(end + 2) = v36.epoch;
                *end = v16;
                v17 = (end + 24);
              }

              self->_frameTimes.__end_ = v17;
            }

            else
            {
              v35 = -4444002;
            }

            v28 = [v11 objectForKeyedSubscript:@"privECMVct"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v28 getBytes:&v36 length:8];
              sub_2418F1BF8(v34, &v36);
            }

            else
            {
              v35 = -4444001;
            }

            v29 = [v11 objectForKeyedSubscript:@"privEMBVct"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v29 getBytes:&v36 length:8];
              sub_2418F1BF8(v33, &v36);
            }

            else
            {
              v35 = -4444000;
            }
          }

          else
          {
            v35 = -4444005;
          }
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (int)processVidTrackMetadata
{
  videoTrackMetadataDict = self->_videoTrackMetadataDict;
  if (!videoTrackMetadataDict)
  {
    return -4444006;
  }

  v4 = [(NSDictionary *)videoTrackMetadataDict objectForKeyedSubscript:@"vidTrackTotalDur"];
  [(NSMutableDictionary *)self->featuresDict setObject:v4 forKeyedSubscript:@"vidTrackTotalDur"];

  v5 = [(NSDictionary *)self->_videoTrackMetadataDict objectForKeyedSubscript:@"vidTrackNaturalW"];
  [(NSMutableDictionary *)self->featuresDict setObject:v5 forKeyedSubscript:@"vidTrackNaturalW"];

  v6 = [(NSDictionary *)self->_videoTrackMetadataDict objectForKeyedSubscript:@"vidTrackNaturalH"];
  [(NSMutableDictionary *)self->featuresDict setObject:v6 forKeyedSubscript:@"vidTrackNaturalH"];

  v7 = [(NSDictionary *)self->_videoTrackMetadataDict objectForKeyedSubscript:@"vidTrackCleanW"];
  [(NSMutableDictionary *)self->featuresDict setObject:v7 forKeyedSubscript:@"vidTrackCleanW"];

  v8 = [(NSDictionary *)self->_videoTrackMetadataDict objectForKeyedSubscript:@"vidTrackCleanH"];
  [(NSMutableDictionary *)self->featuresDict setObject:v8 forKeyedSubscript:@"vidTrackCleanH"];

  v9 = [(NSDictionary *)self->_videoTrackMetadataDict objectForKeyedSubscript:@"vidTrackStillFrameTime"];
  [(NSMutableDictionary *)self->featuresDict setObject:v9 forKeyedSubscript:@"vidTrackStillFrameTime"];

  return 0;
}

- (int)processMovieMetadata
{
  result = [(PregateFeatureBuilder *)self processStandardPerFrameKeys];
  if (!result)
  {
    result = [(PregateFeatureBuilder *)self readPerFrameMetadataToArrays];
    if (!result)
    {
      result = [(PregateFeatureBuilder *)self processBlurVectors];
      if (!result)
      {
        result = [(PregateFeatureBuilder *)self processOffsetVectors];
        if (!result)
        {
          result = [(PregateFeatureBuilder *)self processPresentationTimes];
          if (!result)
          {

            return MEMORY[0x2821F9670](self, sel_processVideoFaceInfo);
          }
        }
      }
    }
  }

  return result;
}

- (int)processStillImageFaceData
{
  v50 = *MEMORY[0x277D85DE8];
  facesArray = self->_facesArray;
  v3 = 0.0;
  if (facesArray && (v4 = [(NSArray *)facesArray count], v4))
  {
    v37 = v4;
    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = self->_facesArray;
    v6 = 0;
    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v7)
    {
      v8 = *v45;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v44 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 objectForKeyedSubscript:@"Width"];
            objc_opt_class();
            v13 = 0.0;
            v14 = 4290523292;
            if (objc_opt_isKindOfClass())
            {
              [v12 floatValue];
              v13 = v15;
              v14 = v6;
            }

            v16 = [v11 objectForKeyedSubscript:@"Height"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v18 = 0.0;
            v6 = 4290523292;
            if (isKindOfClass)
            {
              [v16 floatValue];
              v6 = v14;
            }

            v19 = v13 * *&v18;
            if (v9 <= v19)
            {
              v9 = v19;
            }

            *&v18 = v19;
            v20 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
            [v39 addObject:v20];

            v3 = v3 + v19;
          }

          else
          {
            v6 = 4290523292;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = v39;
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
    v22 = v3 / v37;
    if (v24)
    {
      v25 = *v41;
      v26 = 0.0;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v40 + 1) + 8 * j) floatValue];
          v26 = v26 + ((v22 - v28) * (v22 - v28));
        }

        v24 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
    }

    v3 = sqrtf(v26 / v37);
    v21 = v37;
  }

  else
  {
    LODWORD(v6) = 0;
    v21 = 0;
    v22 = 0.0;
    v9 = 0.0;
  }

  v29 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  [(NSMutableDictionary *)self->featuresDict setObject:v29 forKeyedSubscript:@"PREGATE_STILL_FACECOUNT"];

  *&v30 = v22;
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  [(NSMutableDictionary *)self->featuresDict setObject:v31 forKeyedSubscript:@"PREGATE_STILL_FACEMEANSIZE"];

  *&v32 = v3;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  [(NSMutableDictionary *)self->featuresDict setObject:v33 forKeyedSubscript:@"PREGATE_STILL_FACESTDDEV"];

  *&v34 = v9;
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  [(NSMutableDictionary *)self->featuresDict setObject:v35 forKeyedSubscript:@"PREGATE_STILL_FACEMAXSIZE"];

  return v6;
}

- (int)processStillImageMetadata
{
  v3 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:@"AEAverage"];
  [(NSMutableDictionary *)self->featuresDict setObject:v3 forKeyedSubscript:@"PREGATE_STILL_AEAVERAGE"];
  v4 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:@"AESTable"];

  [(NSMutableDictionary *)self->featuresDict setObject:v4 forKeyedSubscript:@"PREGATE_STILL_AESTABLE"];
  v5 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:@"AFStable"];

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = -4444008;
  if (v6 || v5 == 0)
  {
    v9 = -4444008;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableDictionary *)self->featuresDict setObject:v5 forKeyedSubscript:@"PREGATE_STILL_AFSTABLE"];
  v10 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:*MEMORY[0x277CD30B0]];

  v11 = -4444008;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      if ([v12 count])
      {
        v13 = [v12 objectAtIndex:0];
        [(NSMutableDictionary *)self->featuresDict setObject:v13 forKeyedSubscript:@"PREGATE_STILL_ISO"];

        v11 = v9;
      }
    }
  }

  v14 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:*MEMORY[0x277CD2FF0]];

  [(NSMutableDictionary *)self->featuresDict setObject:v14 forKeyedSubscript:@"PREGATE_STILL_BRIGHTNESS"];
  v15 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:*MEMORY[0x277CD3060]];

  [(NSMutableDictionary *)self->featuresDict setObject:v15 forKeyedSubscript:@"PREGATE_STILL_EXPOSURETIME"];
  v16 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:*MEMORY[0x277CD3040]];

  [(NSMutableDictionary *)self->featuresDict setObject:v16 forKeyedSubscript:@"PREGATE_STILL_DIGITALZOOM"];
  v17 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:*MEMORY[0x277CD3070]];

  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v16 == 0 || v17 == 0)
  {
    v21 = -4444008;
  }

  else
  {
    v21 = v11;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "integerValue") & 1}];
  [(NSMutableDictionary *)self->featuresDict setObject:v22 forKeyedSubscript:@"PREGATE_STILL_DIDFLASH"];

  v23 = [(NSDictionary *)self->_stillImageMetadata objectForKeyedSubscript:*MEMORY[0x277CD30C8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v23 rangeOfString:@"front" options:1] != 0x7FFFFFFFFFFFFFFFLL;
    v25 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    [(NSMutableDictionary *)self->featuresDict setObject:v25 forKeyedSubscript:@"PREGATE_STILL_IS_FRONT_FACING_CAMERA"];

    v7 = v21;
  }

  return v7;
}

- (PregateFeatureBuilder)init
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = PregateFeatureBuilder;
  v2 = [(PregateFeatureBuilder *)&v6 init];
  v7[0] = @"privET";
  v7[1] = @"privTZF";
  v7[2] = @"privImgG";
  v7[3] = @"privAFS";
  v7[4] = @"privAFSt";
  v7[5] = @"privFM";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  stdProcessInputKeysArray = v2->stdProcessInputKeysArray;
  v2->stdProcessInputKeysArray = v3;

  return v2;
}

- (int)processStillInternal
{
  irisStillExtractor = self->irisStillExtractor;
  if (!irisStillExtractor)
  {
    return -4443997;
  }

  result = [(ExifMetadataExtractor *)irisStillExtractor processFile];
  if (!result)
  {
    v5 = [(ExifMetadataExtractor *)self->irisStillExtractor metadataDictionary];
    stillImageMetadata = self->_stillImageMetadata;
    self->_stillImageMetadata = v5;

    if (self->_stillImageMetadata)
    {
      result = [(PregateFeatureBuilder *)self processStillImageMetadata];
      if (!result)
      {
        v7 = [(ExifMetadataExtractor *)self->irisStillExtractor facesArray];
        facesArray = self->_facesArray;
        self->_facesArray = v7;

        return MEMORY[0x2821F9670](self, sel_processStillImageFaceData);
      }
    }

    else
    {
      return -4444008;
    }
  }

  return result;
}

- (int)processVideoInternal
{
  irisVideoExtractor = self->irisVideoExtractor;
  if (!irisVideoExtractor)
  {
    return -4443997;
  }

  result = [(IrisVideoMetadataExtractor *)irisVideoExtractor processFile];
  if (!result)
  {
    v5 = [(IrisVideoMetadataExtractor *)self->irisVideoExtractor framesMetadataArray];
    movieMetadata = self->_movieMetadata;
    self->_movieMetadata = v5;

    if (self->_movieMetadata)
    {
      result = [(PregateFeatureBuilder *)self processMovieMetadata];
      if (!result)
      {
        v7 = [(IrisVideoMetadataExtractor *)self->irisVideoExtractor videoTrackMetadataDict];
        videoTrackMetadataDict = self->_videoTrackMetadataDict;
        self->_videoTrackMetadataDict = v7;

        if (self->_videoTrackMetadataDict)
        {

          return MEMORY[0x2821F9670](self, sel_processVidTrackMetadata);
        }

        else
        {
          return -4444006;
        }
      }
    }

    else
    {
      return -4444007;
    }
  }

  return result;
}

- (int)processStill
{
  if (!self->featuresDict)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    featuresDict = self->featuresDict;
    self->featuresDict = v3;
  }

  if (!self->irisStillExtractor)
  {
    return 0;
  }

  return [(PregateFeatureBuilder *)self processStillInternal];
}

- (int)processVideo
{
  if (!self->featuresDict)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    featuresDict = self->featuresDict;
    self->featuresDict = v3;
  }

  if (!self->irisVideoExtractor)
  {
    return -4443997;
  }

  return [(PregateFeatureBuilder *)self processVideoInternal];
}

- (void)buildFullDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v4 = [(IrisVideoMetadataExtractor *)self->irisVideoExtractor allMetadata];
  [v12 setObject:v4 forKeyedSubscript:@"FullMetadata"];

  v5 = [(IrisVideoMetadataExtractor *)self->irisVideoExtractor framesMetadataArray];
  [v12 setObject:v5 forKeyedSubscript:@"framesMetadata"];

  v6 = [(IrisVideoMetadataExtractor *)self->irisVideoExtractor videoTrackMetadataDict];
  [v12 setObject:v6 forKeyedSubscript:@"videoTrackMetadata"];

  [(NSMutableDictionary *)v3 setObject:v12 forKeyedSubscript:@"videoMetadata"];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v8 = [(ExifMetadataExtractor *)self->irisStillExtractor allMetadata];
  [v7 setObject:v8 forKeyedSubscript:@"fullMetadata"];

  v9 = [(ExifMetadataExtractor *)self->irisStillExtractor metadataDictionary];
  [v7 setObject:v9 forKeyedSubscript:@"stillFrameData"];

  v10 = [(ExifMetadataExtractor *)self->irisStillExtractor facesArray];
  [v7 setObject:v10 forKeyedSubscript:@"facesArray"];

  [(NSMutableDictionary *)v3 setObject:v7 forKeyedSubscript:@"stillMetadata"];
  fullFeaturesDict = self->fullFeaturesDict;
  self->fullFeaturesDict = v3;
}

- (int)processFullDictionary:(BOOL)a3
{
  v3 = a3;
  fullFeaturesDict = self->fullFeaturesDict;
  self->fullFeaturesDict = 0;

  if (!self->featuresDict)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    featuresDict = self->featuresDict;
    self->featuresDict = v6;
  }

  irisStillExtractor = self->irisStillExtractor;
  if (irisStillExtractor)
  {
    [(ExifMetadataExtractor *)irisStillExtractor setSaveAllMetadata:1];
    v9 = [(PregateFeatureBuilder *)self processStillInternal];
    if (v9 && !v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  irisVideoExtractor = self->irisVideoExtractor;
  if (irisVideoExtractor)
  {
    [(IrisVideoMetadataExtractor *)irisVideoExtractor setSaveAllMetadata:1];
    v9 = [(PregateFeatureBuilder *)self processVideoInternal];
  }

LABEL_10:
  [(PregateFeatureBuilder *)self buildFullDictionary];
  return v9;
}

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  return self;
}

@end