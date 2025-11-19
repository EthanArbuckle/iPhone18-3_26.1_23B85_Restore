@interface ADAggregatedPointCloudRefiner
- (ADAggregatedPointCloudRefiner)init;
- (BOOL)isSpotPixelOccluded:(CGPoint)a3 prevSpotPixel:(CGPoint)a4;
- (BOOL)prepareUsingPointCloud:(id)a3;
- (CGPoint)invalidSpotPixel;
- (id)pointCloudByRemovingPeridotShortRangeOccludedPoints:(id)a3;
- (void)clear;
@end

@implementation ADAggregatedPointCloudRefiner

- (id)pointCloudByRemovingPeridotShortRangeOccludedPoints:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 pointCloudByApplyingFilter:self->_filter];

    if (self->_prepared || [(ADAggregatedPointCloudRefiner *)self prepareUsingPointCloud:v6])
    {
      [v6 bankIds];
      [v6 spotIds];
      v36[0] = 0;
      v36[1] = 0;
      *v35 = v36;
      if ([v6 length])
      {
        operator new();
      }

      v7 = [(ADJasperPointCloud *)[ADMutableJasperPointCloud alloc] initWithPointCloud:v6];
      v8 = 0;
      for (i = 0; i != 14; ++i)
      {
        [(ADAggregatedPointCloudRefiner *)self invalidSpotPixel];
        v11 = v10;
        v13 = v12;
        v14 = 7;
        do
        {
          v15 = v14;
          v16 = v36[0];
          if (v36[0])
          {
            v17 = &peridotSensorMap + 16 * i + 2 * v14;
            v18 = *v17;
            v19 = v17[1];
            v20 = v36;
            do
            {
              v21 = *(v16 + 32);
              if (v21 >= v18)
              {
                if (v18 >= v21)
                {
                  v22 = *(v16 + 33);
                  v23 = v22 >= v19;
                  v24 = v22 < v19;
                  if (v23)
                  {
                    v20 = v16;
                  }

                  v16 += v24;
                }

                else
                {
                  v20 = v16;
                }
              }

              else
              {
                ++v16;
              }

              v16 = *v16;
            }

            while (v16);
            if (v20 != v36)
            {
              v25 = *(v20 + 32);
              if (v18 >= v25 && (v25 < v18 || v19 >= *(v20 + 33)))
              {
                v26 = v20[5];
                v27 = [v6 cameraPixels] + 16 * v26;
                v28 = *v27;
                v29 = *(v27 + 8);
                if ([(ADAggregatedPointCloudRefiner *)self isSpotPixelOccluded:*v27 prevSpotPixel:v29, v11, v13])
                {
                  [(ADMutableJasperPointCloud *)v7 mutableConfidences][4 * v26] = -1.0;
                  ++v8;
                }

                else
                {
                  v13 = v29;
                  v11 = v28;
                }
              }
            }
          }

          v14 = v15 - 1;
        }

        while (v15);
      }

      if (v8 > 0)
      {
        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v38 = v8;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADAggregatedPointCloudRefiner: filtered %d spots", buf, 8u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v38 = v8;
          _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADAggregatedPointCloudRefiner: filtered %d spots", buf, 8u);
        }
      }

      v30 = +[ADJasperPointCloudFilterParameters emptyFilter];
      LODWORD(v31) = -1082130434;
      [v30 setConfidenceThreshold:v31];
      v32 = [(ADJasperPointCloud *)v7 pointCloudByApplyingFilter:v30];

      std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(v36[0]);
      v6 = v32;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADAggregatedPointCloudRefiner failed removing short range points", v35, 2u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGPoint)invalidSpotPixel
{
  v2 = INFINITY;
  if (self->_mainIterationCameraAxisIncreasing)
  {
    v2 = -INFINITY;
  }

  v3 = v2;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)isSpotPixelOccluded:(CGPoint)a3 prevSpotPixel:(CGPoint)a4
{
  if (self->_mainIterationCameraAxisIsY)
  {
    a3.x = a3.y;
  }

  x = a3.x;
  if (self->_mainIterationCameraAxisIsY)
  {
    y = a4.y;
  }

  else
  {
    y = a4.x;
  }

  v6 = y;
  if (self->_mainIterationCameraAxisIncreasing)
  {
    return v6 > x;
  }

  else
  {
    return v6 < x;
  }
}

- (void)clear
{
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADAggregatedPointCloudRefiner cleared point cloud assumptions", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADAggregatedPointCloudRefiner cleared point cloud assumptions", v3, 2u);
  }

  self->_prepared = 0;
}

- (BOOL)prepareUsingPointCloud:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pointCloudByApplyingFilter:self->_filter];
    v7 = [v6 length];
    v8 = v7 > 19;
    if (v7 > 19)
    {
      v9 = [v6 bankIds];
      v10 = [v6 spotIds];
      v11 = [v6 length];
      v35 = v8;
      v36 = self;
      if (v11)
      {
        v12 = 0;
        v13 = 0xFFFFFFFFLL;
        v14 = 255;
        v15 = 255;
        v16 = -1;
        v17 = -1;
        v18 = 0xFFFFFFFFLL;
        do
        {
          v19 = *(v10 + v12);
          v20 = *(v9 + v12);
          if (v14 > v19 || (v14 == v19 ? (v21 = v15 <= v20) : (v21 = 1), !v21))
          {
            v13 = v12;
            v15 = *(v9 + v12);
            v14 = *(v10 + v12);
          }

          if (v16 < v19 || (v16 == v19 ? (v22 = v15 < v20) : (v22 = 0), v22))
          {
            v18 = v12;
            v17 = *(v9 + v12);
            v16 = *(v10 + v12);
          }

          ++v12;
        }

        while (v11 != v12);
      }

      else
      {
        v15 = 255;
        v18 = 0xFFFFFFFFLL;
        v17 = -1;
        v16 = -1;
        v13 = 0xFFFFFFFFLL;
        v14 = 255;
      }

      v23 = [v6 cameraPixels];
      v24 = (v23 + 16 * v13);
      v26 = *v24;
      v25 = v24[1];
      v27 = (v23 + 16 * v18);
      v29 = *v27;
      v28 = v27[1];
      v30 = *v27 - v26;
      v31 = v28 - v25;
      LODWORD(v27) = v30 > 0.0;
      v32 = v31 <= 0.0;
      v33 = v27 ^ v32;
      v36->_mainIterationCameraAxisIsY = v27 ^ v32;
      v36->_mainIterationCameraAxisIncreasing = v27;
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67112448;
          v38 = v14;
          v39 = 1024;
          v40 = v15;
          v41 = 2048;
          v42 = v13;
          v43 = 2048;
          v44 = v26;
          v45 = 2048;
          v46 = v25;
          v47 = 1024;
          v48 = v16;
          v49 = 1024;
          v50 = v17;
          v51 = 2048;
          v52 = v18;
          v53 = 2048;
          v54 = v29;
          v55 = 2048;
          v56 = v28;
          v57 = 2048;
          v58 = v30;
          v59 = 2048;
          v60 = v31;
          v61 = 1024;
          v62 = v33;
          v63 = 1024;
          v64 = v30 > 0.0;
          _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADAggregatedPointCloudRefiner picked spots for assumptions adjustment. topLeft (%u,%u,%lu):(%.2f,%.2f) bottomRight (%u,%u,%lu):(%.2f,%.2f) dist(%.2f,%.2f). cameraAxisY=%d, axisIncreasing=%d", buf, 0x76u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67112448;
        v38 = v14;
        v39 = 1024;
        v40 = v15;
        v41 = 2048;
        v42 = v13;
        v43 = 2048;
        v44 = v26;
        v45 = 2048;
        v46 = v25;
        v47 = 1024;
        v48 = v16;
        v49 = 1024;
        v50 = v17;
        v51 = 2048;
        v52 = v18;
        v53 = 2048;
        v54 = v29;
        v55 = 2048;
        v56 = v28;
        v57 = 2048;
        v58 = v30;
        v59 = 2048;
        v60 = v31;
        v61 = 1024;
        v62 = v33;
        v63 = 1024;
        v64 = v30 > 0.0;
        _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADAggregatedPointCloudRefiner picked spots for assumptions adjustment. topLeft (%u,%u,%lu):(%.2f,%.2f) bottomRight (%u,%u,%lu):(%.2f,%.2f) dist(%.2f,%.2f). cameraAxisY=%d, axisIncreasing=%d", buf, 0x76u);
      }

      v36->_prepared = 1;
      v8 = v35;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ADAggregatedPointCloudRefiner)init
{
  v7.receiver = self;
  v7.super_class = ADAggregatedPointCloudRefiner;
  v2 = [(ADAggregatedPointCloudRefiner *)&v7 init];
  if (v2)
  {
    v3 = +[ADJasperPointCloudFilterParameters emptyFilter];
    filter = v2->_filter;
    v2->_filter = v3;

    LODWORD(v5) = 1036831949;
    [(ADJasperPointCloudFilterParameters *)v2->_filter setConfidenceThreshold:v5];
    [(ADJasperPointCloudFilterParameters *)v2->_filter setEchoMode:2];
  }

  return v2;
}

@end