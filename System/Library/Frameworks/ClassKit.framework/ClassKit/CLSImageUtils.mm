@interface CLSImageUtils
+ (CGImage)CGImageFromJPEGData:(id)data error:(id *)error;
+ (CGSize)sizeOfImageAtURL:(id)l;
+ (id)JPEGDataForThumbnailForFileAtURL:(id)l maxSize:(CGSize)size scaleFactor:(double)factor error:(id *)error;
+ (id)JPEGDataFromCGImage:(CGImage *)image desiredMinimumDimension:(unint64_t)dimension desiredMaximumDimension:(unint64_t)maximumDimension error:(id *)error;
+ (id)JPEGDataFromCGImage:(CGImage *)image error:(id *)error;
@end

@implementation CLSImageUtils

+ (id)JPEGDataFromCGImage:(CGImage *)image error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  if (image)
  {
    v6 = objc_opt_new();
    v7 = CGImageDestinationCreateWithData(v6, @"public.jpeg", 1uLL, 0);
    if (v7)
    {
      v9 = v7;
      CGImageDestinationAddImage(v7, image, 0);
      if (CGImageDestinationFinalize(v9) && objc_msgSend_length(v6, v10, v11))
      {
        v12 = 0;
      }

      else
      {
        v17 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v10, 100, @"CGImageDestinationFinalize failed");
        v12 = v17;
        if (error)
        {
          v18 = v17;
          *error = v12;
        }

        if (qword_280B2A720 != -1)
        {
          dispatch_once(&qword_280B2A720, &unk_284A07B28);
        }

        v19 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          v25 = 138543362;
          v26 = v12;
          _os_log_error_impl(&dword_236F71000, v19, OS_LOG_TYPE_ERROR, "ERROR: Error occurred in'_JPEGDataFromCGImage' %{public}@", &v25, 0xCu);
        }

        v6 = 0;
      }

      CFRelease(v9);
      v6 = v6;
      v16 = v6;
    }

    else
    {
      v20 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v8, 100, @"CGImageDestinationCreateWithData failed");
      v12 = v20;
      if (error)
      {
        v21 = v20;
        *error = v12;
      }

      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v22 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v25 = 138543362;
        v26 = v12;
        _os_log_error_impl(&dword_236F71000, v22, OS_LOG_TYPE_ERROR, "ERROR: Error occurred in'_JPEGDataFromCGImage' %{public}@", &v25, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    v13 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], a2, 2, @"Input image is NULL");
    v12 = v13;
    if (error)
    {
      v14 = v13;
      *error = v12;
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v15 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = v12;
      _os_log_error_impl(&dword_236F71000, v15, OS_LOG_TYPE_ERROR, "ERROR: Error occurred in'_JPEGDataFromCGImage' %{public}@", &v25, 0xCu);
    }

    v16 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (CGImage)CGImageFromJPEGData:(id)data error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy)
  {
    v17 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v6, 2, @"Input data is NULL");
    v13 = v17;
    if (error)
    {
      v18 = v17;
      *error = v13;
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v19 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v24 = 138543362;
    v25 = v13;
    goto LABEL_25;
  }

  v8 = CGImageSourceCreateWithData(dataCopy, 0);
  if (!v8)
  {
    v20 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v9, 100, @"CGImageSourceCreateWithData failed");
    v13 = v20;
    if (error)
    {
      v21 = v20;
      *error = v13;
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v19 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v24 = 138543362;
    v25 = v13;
LABEL_25:
    _os_log_error_impl(&dword_236F71000, v19, OS_LOG_TYPE_ERROR, "ERROR: Error occurred in'_CreateImageFromJPEGData' %{public}@", &v24, 0xCu);
LABEL_22:
    ImageAtIndex = 0;
    goto LABEL_23;
  }

  v10 = v8;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, 0);
  v13 = 0;
  if (!ImageAtIndex)
  {
    v14 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v11, 100, @"CGImageSourceCreateImageAtIndex failed");
    v13 = v14;
    if (error)
    {
      v15 = v14;
      *error = v13;
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v16 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_236F71000, v16, OS_LOG_TYPE_ERROR, "ERROR: Error occurred in'_CreateImageFromJPEGData' %{public}@", &v24, 0xCu);
    }
  }

  CFRelease(v10);
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
  return ImageAtIndex;
}

+ (id)JPEGDataFromCGImage:(CGImage *)image desiredMinimumDimension:(unint64_t)dimension desiredMaximumDimension:(unint64_t)maximumDimension error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    v9 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], a2, 2, @"Input image is NULL", maximumDimension);
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v10 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v23 = 138543362;
    v24 = v9;
    goto LABEL_27;
  }

  if (maximumDimension < dimension)
  {
    v9 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], a2, 2, @"desiredMaxDimension < desiredMinDimension");
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v10 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v23 = 138543362;
    v24 = v9;
    goto LABEL_27;
  }

  Height = CGImageGetHeight(image);
  Width = CGImageGetWidth(image);
  if (Height < dimension && Width < dimension)
  {
    v9 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v15, 2, @"Input image dimension is less than desiredMinDimension");
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v10 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v23 = 138543362;
    v24 = v9;
    goto LABEL_27;
  }

  if (Width > maximumDimension || Height > maximumDimension)
  {
    Thumb = CGImageCreateThumb();
  }

  else
  {
    Thumb = CGImageRetain(image);
  }

  v18 = Thumb;
  if (Thumb)
  {
    v19 = objc_msgSend_JPEGDataFromCGImage_error_(self, v17, Thumb, error);
    CGImageRelease(v18);
    goto LABEL_31;
  }

  v9 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v17, 2, @"Failed to create thumbnail image from input image");
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v10 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    v23 = 138543362;
    v24 = v9;
LABEL_27:
    _os_log_error_impl(&dword_236F71000, v10, OS_LOG_TYPE_ERROR, "ERROR: Error occurred in 'JPEGThumbnailDataFromCGImage:...' %{public}@", &v23, 0xCu);
  }

LABEL_28:
  if (error)
  {
    v20 = v9;
    *error = v9;
  }

  v19 = 0;
LABEL_31:
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)JPEGDataForThumbnailForFileAtURL:(id)l maxSize:(CGSize)size scaleFactor:(double)factor error:(id *)error
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_236FCF370;
  v48 = sub_236FCF380;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_236FCF370;
  v42 = sub_236FCF380;
  v43 = 0;
  v12 = objc_alloc(MEMORY[0x277CDAAD8]);
  v14 = objc_msgSend_initWithFileAtURL_size_scale_representationTypes_(v12, v13, lCopy, 4, width, height, factor);
  objc_msgSend_setBadgeType_(v14, v15, 0);
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_284A079A8);
  v19 = objc_msgSend_sharedGenerator(MEMORY[0x277CDAAE0], v17, v18);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = sub_236FCF38C;
  v33 = &unk_278A19050;
  v35 = &v38;
  v20 = v16;
  v34 = v20;
  v36 = &v44;
  selfCopy = self;
  objc_msgSend_generateBestRepresentationForRequest_completionHandler_(v19, v21, v14, &v30);

  v22 = dispatch_time(0, 60000000000);
  if (dispatch_block_wait(v20, v22))
  {
    v24 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v23, 320, @"Timed out JPEGDataForThumbnailForFileAtURL!", v30, v31, v32, v33);
    v25 = v39[5];
    v39[5] = v24;

    objc_msgSend_cls_log_(v39[5], v26, CLSLogDefault);
  }

  if (error)
  {
    v27 = v39[5];
    if (v27)
    {
      *error = v27;
    }
  }

  v28 = v45[5];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v28;
}

+ (CGSize)sizeOfImageAtURL:(id)l
{
  v3 = CGImageSourceCreateWithURL(l, 0);
  if (v3)
  {
    v4 = v3;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, 0);
    if (ImageAtIndex)
    {
      v6 = ImageAtIndex;
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(v6);
      CGImageRelease(v6);
    }

    else
    {
      Height = 0.0;
      Width = 0.0;
    }

    CFRelease(v4);
  }

  else
  {
    Height = 0.0;
    Width = 0.0;
  }

  v9 = Width;
  v10 = Height;
  result.height = v10;
  result.width = v9;
  return result;
}

@end