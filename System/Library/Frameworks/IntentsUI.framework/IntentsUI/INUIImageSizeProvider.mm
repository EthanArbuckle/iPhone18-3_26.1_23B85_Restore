@interface INUIImageSizeProvider
+ ($F24F406B2B787EFB06265DBA3D28CBD5)imageSizeForImage:(id)image;
+ (id)downscaledPNGImageForImage:(id)image size:(id)size error:(id *)error;
@end

@implementation INUIImageSizeProvider

+ (id)downscaledPNGImageForImage:(id)image size:(id)size error:(id *)error
{
  var1 = size.var1;
  var0 = size.var0;
  v94[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v9 = imageCopy;
  if (var0 == 0.0 || var1 == 0.0)
  {
    if (!error)
    {
      v18 = 0;
      goto LABEL_53;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CD3848];
    v93 = *MEMORY[0x277CCA068];
    _imageData = [MEMORY[0x277CCACA8] stringWithFormat:@"Image size is zero"];
    v94[0] = _imageData;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    [v16 errorWithDomain:v17 code:6009 userInfo:v12];
    *error = v18 = 0;
    goto LABEL_52;
  }

  _imageData = [imageCopy _imageData];
  _uri = [v9 _uri];
  v12 = _uri;
  if (_imageData)
  {
    v13 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(_imageData countStyle:{"length"), 0}];
    v14 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v72 = "+[INUIImageSizeProvider downscaledPNGImageForImage:size:error:]";
      v73 = 2112;
      v74 = v13;
      v75 = 2048;
      v76 = var0;
      v77 = 2048;
      v78 = var1;
      _os_log_impl(&dword_22CA36000, v14, OS_LOG_TYPE_INFO, "%s Creating image source from Data, size: %@, target image size: {%f, %f}", buf, 0x2Au);
    }

    v15 = CGImageSourceCreateWithData(_imageData, 0);
    goto LABEL_14;
  }

  if (_uri)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v12 path];
    v21 = [defaultManager attributesOfItemAtPath:path error:0];
    fileSize = [v21 fileSize];

    v13 = [MEMORY[0x277CCA8E8] stringFromByteCount:fileSize countStyle:0];
    v23 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v72 = "+[INUIImageSizeProvider downscaledPNGImageForImage:size:error:]";
      v73 = 2112;
      v74 = v13;
      v75 = 2048;
      v76 = var0;
      v77 = 2048;
      v78 = var1;
      _os_log_impl(&dword_22CA36000, v23, OS_LOG_TYPE_INFO, "%s Creating image source from URL, size: %@, target image size: {%f, %f}", buf, 0x2Au);
    }

    v15 = CGImageSourceCreateWithURL(v12, 0);
LABEL_14:
    v24 = v15;

    if (v24)
    {
      v89 = *MEMORY[0x277CD3618];
      v90 = MEMORY[0x277CBEC28];
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v26 = CGImageSourceCopyPropertiesAtIndex(v24, 0, v25);
      v27 = v26;
      if (v26)
      {
        v28 = [(__CFDictionary *)v26 objectForKey:*MEMORY[0x277CD3450]];
        v29 = [v27 objectForKey:*MEMORY[0x277CD3448]];
        v30 = v29;
        if (v28 && v29)
        {
          [v28 doubleValue];
          v32 = v31;
          v67 = v30;
          [v30 doubleValue];
          v34 = v33;
          v35 = *MEMORY[0x277CD38C8];
          v36 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
          if (var0 >= v32 || var1 >= v34)
          {
            if (v36)
            {
              v59 = @"data";
              *buf = 136316674;
              v72 = "+[INUIImageSizeProvider downscaledPNGImageForImage:size:error:]";
              if (!_imageData)
              {
                v59 = @"URL";
              }

              v73 = 2112;
              v74 = v59;
              v75 = 2112;
              v76 = *&v9;
              v77 = 2048;
              v78 = v32;
              v79 = 2048;
              v80 = v34;
              v81 = 2048;
              v82 = var0;
              v83 = 2048;
              v84 = var1;
              _os_log_impl(&dword_22CA36000, v35, OS_LOG_TYPE_INFO, "%s Will NOT scale %@ image %@ from size {%f, %f} to size {%f, %f} because imageSize > oldImageSize", buf, 0x48u);
            }

            CFRelease(v24);
            v18 = v9;
          }

          else
          {
            v65 = v28;
            if (v36)
            {
              v37 = @"data";
              *buf = 136316674;
              v72 = "+[INUIImageSizeProvider downscaledPNGImageForImage:size:error:]";
              if (!_imageData)
              {
                v37 = @"URL";
              }

              v73 = 2112;
              v74 = v37;
              v75 = 2112;
              v76 = *&v9;
              v77 = 2048;
              v78 = v32;
              v79 = 2048;
              v80 = v34;
              v81 = 2048;
              v82 = var0;
              v83 = 2048;
              v84 = var1;
              _os_log_impl(&dword_22CA36000, v35, OS_LOG_TYPE_INFO, "%s About to scale %@ image %@ from size {%f, %f} to size {%f, %f}", buf, 0x48u);
            }

            v69[0] = *MEMORY[0x277CD3660];
            if (v32 <= v34)
            {
              v38 = var1;
            }

            else
            {
              v38 = var0;
            }

            v39 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
            v69[1] = *MEMORY[0x277CD3568];
            v40 = *MEMORY[0x277CBED28];
            v70[0] = v39;
            v70[1] = v40;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];

            v64 = v41;
            ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v24, 0, v41);
            v43 = ThumbnailAtIndex;
            if (_imageData)
            {
              v44 = objc_alloc_init(MEMORY[0x277CBEB28]);
              identifier = [*MEMORY[0x277CE1E10] identifier];
              v46 = CGImageDestinationCreateWithData(v44, identifier, 1uLL, 0);

              v47 = v44;
              v48 = v43;
              CGImageDestinationAddImage(v46, v43, 0);
              CGImageDestinationFinalize(v46);
              v18 = [MEMORY[0x277CD3D10] imageWithImageData:v47];
              if (v46)
              {
                CFRelease(v46);
              }
            }

            else if (v12)
            {
              identifier2 = [*MEMORY[0x277CE1E10] identifier];
              v63 = CGImageDestinationCreateWithURL(v12, identifier2, 1uLL, 0);

              v48 = v43;
              CGImageDestinationAddImage(v63, v43, 0);
              CGImageDestinationFinalize(v63);
              v18 = [MEMORY[0x277CD3D10] imageWithURL:v12];
              if (v63)
              {
                CFRelease(v63);
              }
            }

            else
            {
              v48 = ThumbnailAtIndex;
              v18 = 0;
            }

            v28 = v65;
            [v18 _setImageSize:{var0, var1}];
            CGImageRelease(v48);
            CFRelease(v24);
            v49 = *MEMORY[0x277CD38C8];
            if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
            {
              v50 = @"data";
              *buf = 136316674;
              v72 = "+[INUIImageSizeProvider downscaledPNGImageForImage:size:error:]";
              if (!_imageData)
              {
                v50 = @"URL";
              }

              v73 = 2112;
              v74 = v50;
              v75 = 2112;
              v76 = *&v9;
              v77 = 2048;
              v78 = v32;
              v79 = 2048;
              v80 = v34;
              v81 = 2048;
              v82 = var0;
              v83 = 2048;
              v84 = var1;
              _os_log_impl(&dword_22CA36000, v49, OS_LOG_TYPE_INFO, "%s Scaled %@ image %@ from size {%f, %f} to size {%f, %f}", buf, 0x48u);
            }
          }

          v30 = v67;
        }

        else
        {
          CFRelease(v24);
          if (error)
          {
            v66 = MEMORY[0x277CCA9B8];
            v55 = *MEMORY[0x277CD3848];
            v85 = *MEMORY[0x277CCA068];
            [MEMORY[0x277CCACA8] stringWithFormat:@"Current image size unknown"];
            v56 = v68 = v30;
            v86 = v56;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
            v58 = v57 = v28;
            *error = [v66 errorWithDomain:v55 code:6009 userInfo:v58];

            v28 = v57;
            v30 = v68;
          }

          v18 = 0;
        }
      }

      else
      {
        CFRelease(v24);
        if (!error)
        {
          v27 = 0;
          v18 = 0;
          goto LABEL_51;
        }

        v53 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CD3848];
        v87 = *MEMORY[0x277CCA068];
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current image size unknown"];
        v88 = v28;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        [v53 errorWithDomain:v54 code:6009 userInfo:v30];
        *error = v18 = 0;
      }

LABEL_51:
      goto LABEL_52;
    }
  }

  if (error)
  {
    v51 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CD3848];
    v91 = *MEMORY[0x277CCA068];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Image is invalid"];
    v92 = v25;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    [v51 errorWithDomain:v52 code:6009 userInfo:v27];
    *error = v18 = 0;
    goto LABEL_51;
  }

  v18 = 0;
LABEL_52:

LABEL_53:
  v60 = *MEMORY[0x277D85DE8];

  return v18;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)imageSizeForImage:(id)image
{
  v20[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  _imageData = [imageCopy _imageData];
  _uri = [imageCopy _uri];

  if (_imageData)
  {
    v6 = CGImageSourceCreateWithData(_imageData, 0);
  }

  else
  {
    if (!_uri)
    {
LABEL_8:
      v13 = 0.0;
      v15 = 0.0;
      goto LABEL_11;
    }

    v6 = CGImageSourceCreateWithURL(_uri, 0);
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v19 = *MEMORY[0x277CD3618];
  v20[0] = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, v8);
  CFRelease(v7);
  if (v9)
  {
    v10 = [(__CFDictionary *)v9 objectForKey:*MEMORY[0x277CD3450]];
    v11 = [(__CFDictionary *)v9 objectForKey:*MEMORY[0x277CD3448]];
    [v10 doubleValue];
    v13 = v12;
    [v11 doubleValue];
    v15 = v14;
  }

  else
  {
    v13 = 0.0;
    v15 = 0.0;
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  v17 = v13;
  v18 = v15;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

@end