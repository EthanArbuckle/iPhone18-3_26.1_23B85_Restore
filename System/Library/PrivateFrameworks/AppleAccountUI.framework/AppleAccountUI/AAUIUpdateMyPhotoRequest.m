@interface AAUIUpdateMyPhotoRequest
+ (id)_downsampleImage:(id)a3 fromStartingQuality:(double)a4 toEndingQuality:(double)a5 increment:(double)a6 maxLength:(unint64_t)a7;
+ (id)_fullScreen2ImageFromImage:(id)a3 cropRect:(id)a4 fullScreenCropRect:(id *)a5;
- (AAUIUpdateMyPhotoRequest)initWithAccount:(id)a3 photo:(id)a4 cropRect:(id)a5;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUIUpdateMyPhotoRequest

- (AAUIUpdateMyPhotoRequest)initWithAccount:(id)a3 photo:(id)a4 cropRect:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AAUIUpdateMyPhotoRequest;
  v12 = [(AAUIUpdateMyPhotoRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    objc_storeStrong(&v13->_photo, a4);
    objc_storeStrong(&v13->_cropRect, a5);
  }

  return v13;
}

- (id)urlString
{
  v2 = [MEMORY[0x1E698B9C0] urlConfiguration];
  v3 = [v2 updateMyPhotoURL];

  return v3;
}

- (id)urlRequest
{
  v32 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AAUIUpdateMyPhotoRequest;
  v3 = [(AARequest *)&v27 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  [v4 setValue:@"text/plain" forHTTPHeaderField:@"Content-Type"];
  v5 = self->_cropRect;
  v6 = [AAUIUpdateMyPhotoRequest _downsampleImage:self->_photo fromStartingQuality:86016 toEndingQuality:1.0 increment:0.59 maxLength:0.2];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (v5)
    {
      photo = self->_photo;
      v26 = 0;
      v9 = [AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage:photo cropRect:v5 fullScreenCropRect:&v26];
      v10 = v26;
      v11 = v10;
      if (v10)
      {
        v11 = v10;

        v5 = v11;
      }
    }

    else
    {
      v12 = _AAUILogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest: Both photoData and cropRect are nil i.e photo is nil. Setting the picture as the default monogram.", buf, 2u);
      }

      v11 = objc_alloc_init(AAUIProfilePictureStore);
      v9 = [(AAUIProfilePictureStore *)v11 monogramForCurrentAccount];
      v5 = 0;
    }

    v7 = [AAUIUpdateMyPhotoRequest _downsampleImage:v9 fromStartingQuality:86016 toEndingQuality:1.0 increment:0.19 maxLength:0.2];
  }

  v13 = [v7 base64EncodedDataWithOptions:0];
  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
    *buf = 138412546;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest setting HTTPBody to base64 data of length %@ from photo data of length %@", buf, 0x16u);
  }

  [v4 setHTTPBody:v13];
  v17 = MEMORY[0x1E696AEC0];
  v18 = [v4 HTTPBody];
  v19 = [v17 stringWithFormat:@"%lu", objc_msgSend(v18, "length")];

  [v4 setValue:v19 forHTTPHeaderField:@"Content-Length"];
  if (v7 && v5)
  {
    [(NSValue *)v5 CGRectValue];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu, %lu, %lu, %lu", v22, v23, v20, v21];
    [v4 setValue:v24 forHTTPHeaderField:@"X-MMe-Setup-Family-Photo"];
  }

  return v4;
}

+ (id)_downsampleImage:(id)a3 fromStartingQuality:(double)a4 toEndingQuality:(double)a5 increment:(double)a6 maxLength:(unint64_t)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (a4 > a5)
  {
    v13 = 0;
    *&v12 = 138412546;
    v20 = v12;
    do
    {
      v14 = v13;
      v13 = UIImageJPEGRepresentation(v11, a4);

      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
        *buf = v20;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest compressed image to quality %@ down to length %@", buf, 0x16u);
      }

      if ([v13 length] <= a7)
      {
        break;
      }

      a4 = a4 - a6;
    }

    while (a4 > a5);
    if ([v13 length] <= a7)
    {
      if (v13)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if ([0 length] > a7)
  {
LABEL_11:
  }

LABEL_12:
  v18 = _AAUILogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [AAUIUpdateMyPhotoRequest _downsampleImage:v18 fromStartingQuality:? toEndingQuality:? increment:? maxLength:?];
  }

  v13 = 0;
LABEL_15:

  return v13;
}

+ (id)_fullScreen2ImageFromImage:(id)a3 cropRect:(id)a4 fullScreenCropRect:(id *)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696B098];
    [v7 size];
    v11 = [v10 valueWithCGSize:?];
    *buf = 138412546;
    v79 = v11;
    v80 = 2112;
    v81 = v8;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage: of size %@ cropRect: %@", buf, 0x16u);
  }

  if (v8)
  {
    [v8 CGRectValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [v7 size];
    v17 = v20;
    [v7 size];
    v19 = v21;
    v13 = 0.0;
    v15 = 0.0;
  }

  v22 = _AAUILogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, v19}];
    *buf = 138412290;
    v79 = v23;
    _os_log_impl(&dword_1C5355000, v22, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using importantArea %@", buf, 0xCu);
  }

  v24 = _AAUILogSystem();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  v75 = v13;
  v76 = v17;
  v73 = v15;
  v74 = v19;
  if (v17 / v19 <= 0.666666667)
  {
    if (v25)
    {
      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v17 / v19];
      *buf = 138412290;
      v79 = v44;
      _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage detected narrow importantAreaAspectRatio %@", buf, 0xCu);
    }

    v77 = 960.0 / v19;
    v45 = _AAUILogSystem();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:v77];
      *buf = 138412290;
      v79 = v46;
      _os_log_impl(&dword_1C5355000, v45, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using scale %@", buf, 0xCu);
    }

    [v7 size];
    if (v19 * 0.666666667 >= v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = v19 * 0.666666667;
    }

    v43 = v13 - floor((v48 - v17) * 0.5);
    v49 = _AAUILogSystem();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [MEMORY[0x1E696B098] valueWithCGRect:{v43, v15, v48, v19}];
      *buf = 138412290;
      v79 = v50;
      _os_log_impl(&dword_1C5355000, v49, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage got preliminary sourcePortionOfBaseImage %@", buf, 0xCu);
    }

    if (v43 < 0.0)
    {
      v51 = _AAUILogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, v15, v48, v19}];
        *buf = 138412290;
        v79 = v52;
        _os_log_impl(&dword_1C5355000, v51, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage left => %@", buf, 0xCu);
      }

      v43 = 0.0;
    }

    [v7 size];
    if (v48 + v43 > v53)
    {
      [v7 size];
      v43 = v54 - v48;
      v55 = _AAUILogSystem();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [MEMORY[0x1E696B098] valueWithCGRect:{v43, v15, v48, v19}];
        *buf = 138412290;
        v79 = v56;
        _os_log_impl(&dword_1C5355000, v55, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage right => %@", buf, 0xCu);
      }
    }

    v40 = 960.0;
    v39 = floor(v48 * 960.0 / v19);
    v41 = _AAUILogSystem();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 960.0;
      v57 = [MEMORY[0x1E696B098] valueWithCGSize:{v39, 960.0}];
      *buf = 138412290;
      v79 = v57;
      _os_log_impl(&dword_1C5355000, v41, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using contextSize %@", buf, 0xCu);
    }
  }

  else
  {
    if (v25)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:v17 / v19];
      *buf = 138412290;
      v79 = v26;
      _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage detected squat importantAreaAspectRatio %@", buf, 0xCu);
    }

    v77 = 640.0 / v17;
    v27 = _AAUILogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [MEMORY[0x1E696AD98] numberWithDouble:v77];
      *buf = 138412290;
      v79 = v28;
      _os_log_impl(&dword_1C5355000, v27, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using scale %@", buf, 0xCu);
    }

    [v7 size];
    if (v17 / 0.666666667 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v17 / 0.666666667;
    }

    v15 = v15 - floor((v30 - v19) * 0.5);
    v31 = _AAUILogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, v30}];
      *buf = 138412290;
      v79 = v32;
      _os_log_impl(&dword_1C5355000, v31, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage got preliminary sourcePortionOfBaseImage %@", buf, 0xCu);
    }

    if (v15 < 0.0)
    {
      v33 = _AAUILogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, 0.0, v17, v30}];
        *buf = 138412290;
        v79 = v34;
        _os_log_impl(&dword_1C5355000, v33, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage top => %@", buf, 0xCu);
      }

      v15 = 0.0;
    }

    [v7 size];
    if (v30 + v15 > v35)
    {
      [v7 size];
      v15 = v36 - v30;
      v37 = _AAUILogSystem();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, v30}];
        *buf = 138412290;
        v79 = v38;
        _os_log_impl(&dword_1C5355000, v37, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage bottom => %@", buf, 0xCu);
      }
    }

    v39 = 640.0;
    v40 = floor(v30 * 640.0 / v17);
    v41 = _AAUILogSystem();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 640.0;
      v42 = [MEMORY[0x1E696B098] valueWithCGSize:{640.0, v40}];
      *buf = 138412290;
      v79 = v42;
      _os_log_impl(&dword_1C5355000, v41, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using contextSize %@", buf, 0xCu);
    }

    v43 = v13;
  }

  v58 = -(v43 * v77);
  [v7 size];
  v60 = v77 * v59;
  v61 = -(v15 * v77);
  [v7 size];
  v63 = v77 * v62;
  v64 = _AAUILogSystem();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [MEMORY[0x1E696B098] valueWithCGRect:{v58, v61, v60, v63}];
    *buf = 138412290;
    v79 = v65;
    _os_log_impl(&dword_1C5355000, v64, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using drawRect %@", buf, 0xCu);
  }

  v84.width = v39;
  v84.height = v40;
  UIGraphicsBeginImageContext(v84);
  [v7 drawInRect:{v58, v61, v60, v63}];
  v66 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v67 = _AAUILogSystem();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = MEMORY[0x1E696B098];
    [v66 size];
    v69 = [v68 valueWithCGSize:?];
    *buf = 138412290;
    v79 = v69;
    _os_log_impl(&dword_1C5355000, v67, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage created fullScreen2Image with size %@", buf, 0xCu);
  }

  if (v8 && a5)
  {
    *a5 = [MEMORY[0x1E696B098] valueWithCGRect:{ceil((v75 - v43) * v77), ceil((v73 - v15) * v77), floor(v76 * v77), floor(v74 * v77)}];
    v70 = _AAUILogSystem();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *a5;
      *buf = 138412290;
      v79 = v71;
      _os_log_impl(&dword_1C5355000, v70, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage created fullScreenCropRect %@", buf, 0xCu);
    }
  }

  return v66;
}

@end