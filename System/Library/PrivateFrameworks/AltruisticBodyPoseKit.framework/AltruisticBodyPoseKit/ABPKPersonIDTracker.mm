@interface ABPKPersonIDTracker
- (ABPKPersonIDTracker)init;
- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)a3 withImageRes:(CGSize)a4;
- (int)runWithInput:(__CVBuffer *)a3 atTimeStamp:(double)a4 andOutput:(id)a5;
@end

@implementation ABPKPersonIDTracker

- (ABPKPersonIDTracker)init
{
  v15.receiver = self;
  v15.super_class = ABPKPersonIDTracker;
  v2 = [(ABPKPersonIDTracker *)&v15 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  if ((isANSTPersonTrackerSupportedOnThisDevice() & 1) == 0)
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " ABPKPersonIDTracker not supported on this device ", buf, 2u);
    }

    goto LABEL_11;
  }

  v3 = objc_alloc(MEMORY[0x277CE4A00]);
  v4 = objc_opt_new();
  v5 = [v3 initWithConfiguration:v4];
  anstAlgorithm = v2->_anstAlgorithm;
  v2->_anstAlgorithm = v5;

  v7 = v2->_anstAlgorithm;
  v13 = 0;
  LOBYTE(v3) = [(ANSTISPAlgorithm *)v7 prepareWithError:&v13];
  v8 = v13;
  v9 = v8;
  if ((v3 & 1) == 0)
  {
    v11 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " Failed to initialize ANST algorithm for multi-person tracking ", buf, 2u);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v10 = v2;
LABEL_12:

  return v10;
}

- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)a3 withImageRes:(CGSize)a4
{
  width = a3.size.width;
  v5 = a4.width * 0.5 - (a3.origin.y - a4.width * 0.5);
  v6 = a4.height * 0.5 + a3.origin.x - a4.height * 0.5;
  v7 = v5 - a3.size.height;
  height = a3.size.height;
  v9 = width;
  result.size.height = v9;
  result.size.width = height;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (int)runWithInput:(__CVBuffer *)a3 atTimeStamp:(double)a4 andOutput:(id)a5
{
  v53[1] = *MEMORY[0x277D85DE8];
  v47 = a5;
  if (!a3)
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, " Input image is nil ", buf, 2u);
    }

    goto LABEL_30;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (Height > Width)
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, " ABPKPersonIDTracker: Portrait image is not supported ", buf, 2u);
    }

LABEL_30:

LABEL_43:
    v41 = -6668;
    goto LABEL_44;
  }

  v11 = PixelFormatType;
  if (PixelFormatType != 32 && PixelFormatType != 875704438 && PixelFormatType != 1111970369)
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, " ABPKPersonIDTracker: Input image is of invalid format ", buf, 2u);
    }

    goto LABEL_30;
  }

  pixelBufferOut = 0;
  v52 = *MEMORY[0x277CC4DE8];
  v53[0] = MEMORY[0x277CBEC10];
  pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  if (v11 != 1111970369)
  {
    if (v11 == 875704438)
    {
      v38 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v39 = " \t\t ABPKPersonIDTracker: Converting image format: YCbCr --> BGRA ";
    }

    else
    {
      v38 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v39 = " \t\t ABPKPersonIDTracker: Converting image format: ARGB --> BGRA ";
    }

    _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_DEBUG, v39, buf, 2u);
LABEL_38:

    if (CVPixelBufferCreate(0, Width, Height, 0x42475241u, pixelBufferAttributes, &pixelBufferOut))
    {
      v42 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v43 = " ABPKPersonIDTracker: Could not create imageBGRA buffer ";
LABEL_41:
        _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
      }
    }

    else if (v11 == 875704438)
    {
      if (!convertFormatYCbCrToBGRA(a3, &pixelBufferOut))
      {
        goto LABEL_16;
      }

      v42 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v43 = " ABPKPersonIDTracker: Could not convert Format YCbCr to BGRA. ";
        goto LABEL_41;
      }
    }

    else
    {
      if (!changeChannelsARGB(a3, &pixelBufferOut))
      {
        goto LABEL_16;
      }

      v42 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v43 = " ABPKPersonIDTracker: changeChannelsARGB failed. ";
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " \t\t ABPKPersonIDTracker: Image is already BGRA type ", buf, 2u);
  }

  pixelBufferOut = a3;
LABEL_16:
  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Input image is landscape ", buf, 2u);
  }

  anstAlgorithm = self->_anstAlgorithm;
  v48 = 0;
  v15 = [(ANSTISPAlgorithm *)anstAlgorithm resultForPixelBuffer:pixelBufferOut error:&v48];
  v16 = v48;
  v17 = v16;
  if (!v15 || v16)
  {
    v40 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_ERROR, " No objects found in this image ", buf, 2u);
    }

    goto LABEL_43;
  }

  v18 = [v15 detectedObjectsForCategory:*MEMORY[0x277CE49C8]];
  v19 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v18 count];
    *buf = 134217984;
    v51 = v20;
    _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEBUG, " ABPKPersonIDTracker: Full bodies found in the image: %lu ", buf, 0xCu);
  }

  for (i = 0; [v18 count] > i; ++i)
  {
    v22 = [ABPKTrackedObject alloc];
    v23 = [v18 objectAtIndexedSubscript:i];
    v24 = [v23 objectID];
    v25 = [v18 objectAtIndexedSubscript:i];
    v26 = [v25 category];
    v27 = [v18 objectAtIndexedSubscript:i];
    [v27 boundingBox];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [v18 objectAtIndexedSubscript:i];
    v37 = -[ABPKTrackedObject initWithObjectID:category:boundingBox:confidence:](v22, "initWithObjectID:category:boundingBox:confidence:", v24, v26, [v36 confidence], v29, v31, v33, v35);

    [v47 addObject:v37];
  }

  v41 = 0;
LABEL_44:

  v44 = *MEMORY[0x277D85DE8];
  return v41;
}

@end