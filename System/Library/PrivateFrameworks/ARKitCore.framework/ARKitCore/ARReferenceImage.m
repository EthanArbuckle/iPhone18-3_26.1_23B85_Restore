@interface ARReferenceImage
+ (NSSet)referenceImagesInGroupNamed:(NSString *)name bundle:(NSBundle *)bundle;
+ (id)referenceImagesInGroupNamed:(id)a3 catalog:(id)a4;
+ (id)referenceImagesInGroupNamed:(id)a3 catalogName:(id)a4 bundle:(id)a5;
+ (id)referenceImagesInGroupNamed:(id)a3 catalogURL:(id)a4;
- (ARReferenceImage)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 physicalWidth:(double)a5 addPadding:(BOOL)a6;
- (ARReferenceImage)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth;
- (ARReferenceImage)initWithCIImage:(id)a3 orientation:(unsigned int)a4 physicalWidth:(double)a5 alphaInfo:(unsigned int *)a6 addPadding:(BOOL)a7;
- (ARReferenceImage)initWithCoder:(id)a3;
- (ARReferenceImage)initWithIdentifier:(id)a3;
- (ARReferenceImage)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth;
- (ARReferenceImage)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 physicalWidth:(double)a5 addPadding:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (CGSize)imageSize;
- (CGSize)physicalSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)shortDebugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)estimateQualityWithCompletionHandler:(id)a3;
- (void)validateWithCompletionHandler:(void *)completionHandler;
@end

@implementation ARReferenceImage

- (ARReferenceImage)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 physicalWidth:(double)a5 addPadding:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  AlphaInfo = CGImageGetAlphaInfo(a3);
  v11 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:a3];
  v12 = [(ARReferenceImage *)self initWithCIImage:v11 orientation:v8 physicalWidth:&AlphaInfo alphaInfo:v6 addPadding:a5];

  return v12;
}

- (ARReferenceImage)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 physicalWidth:(double)a5 addPadding:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  v10 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:a3];
  v11 = [(ARReferenceImage *)self initWithCIImage:v10 orientation:v8 physicalWidth:0 alphaInfo:v6 addPadding:a5];

  return v11;
}

- (ARReferenceImage)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth
{
  v6 = *&orientation;
  AlphaInfo = CGImageGetAlphaInfo(image);
  v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:image];
  v10 = [(ARReferenceImage *)self initWithCIImage:v9 orientation:v6 physicalWidth:&AlphaInfo alphaInfo:0 addPadding:physicalWidth];

  return v10;
}

- (ARReferenceImage)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth
{
  v6 = *&orientation;
  v8 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:pixelBuffer];
  v9 = [(ARReferenceImage *)self initWithCIImage:v8 orientation:v6 physicalWidth:0 alphaInfo:0 addPadding:physicalWidth];

  return v9;
}

- (ARReferenceImage)initWithCIImage:(id)a3 orientation:(unsigned int)a4 physicalWidth:(double)a5 alphaInfo:(unsigned int *)a6 addPadding:(BOOL)a7
{
  v7 = a7;
  v106 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v101.receiver = self;
  v101.super_class = ARReferenceImage;
  v13 = [(ARReferenceImage *)&v101 init];
  if (v13)
  {
    p_pixelBufferOut = &pixelBufferOut;
    if (a6)
    {
      v15 = *a6;
      if (*a6 == 6)
      {
        v16 = 0;
      }

      else
      {
        v16 = &pixelBufferOut;
      }

      if (v15 == 5)
      {
        v16 = 0;
      }

      if (v15)
      {
        p_pixelBufferOut = v16;
      }

      else
      {
        p_pixelBufferOut = 0;
      }
    }

    pixelBufferOut = 0;
    pixelBuffer = 0;
    if (ARCreateDownScaledGrayscaleImageAndMask(v12, 0x280uLL, @"ARReferenceImage", &pixelBuffer, p_pixelBufferOut))
    {
      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v17 = ARShouldUseLogTypeError_internalOSVersion_35;
      v18 = _ARLogGeneral_26();
      v19 = v18;
      if (v17 == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v21;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v22 = "%{public}@ <%p>: Could not create pixelbuffer and alpha mask";
          v23 = v19;
          v24 = OS_LOG_TYPE_ERROR;
LABEL_21:
          _os_log_impl(&dword_1C241C000, v23, v24, v22, &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v21 = NSStringFromClass(v26);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v21;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v22 = "Error: %{public}@ <%p>: Could not create pixelbuffer and alpha mask";
        v23 = v19;
        v24 = OS_LOG_TYPE_INFO;
        goto LABEL_21;
      }

      goto LABEL_98;
    }

    v25 = CVPixelBufferGetWidth(pixelBuffer) < 0x64 || CVPixelBufferGetHeight(pixelBuffer) < 0x64;
    [v12 extent];
    if (v27 == CVPixelBufferGetWidth(pixelBuffer))
    {
      [v12 extent];
      v29 = v28 != CVPixelBufferGetHeight(pixelBuffer) || v7;
      if ((v29 & v25 & 1) == 0)
      {
LABEL_76:
        if (!ARCorrectCVPixelBufferOrientation(pixelBuffer, a4, &v13->_pixelBuffer))
        {
LABEL_86:
          if (!pixelBufferOut || !ARCorrectCVPixelBufferOrientation(pixelBufferOut, a4, &v13->_alphaMask))
          {
            goto LABEL_97;
          }

          if (ARShouldUseLogTypeError_onceToken_35 != -1)
          {
            [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
          }

          v78 = ARShouldUseLogTypeError_internalOSVersion_35;
          v79 = _ARLogGeneral_26();
          v80 = v79;
          if (v78 == 1)
          {
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v81 = objc_opt_class();
              v82 = NSStringFromClass(v81);
              LODWORD(buf.data) = 138543618;
              *(&buf.data + 4) = v82;
              WORD2(buf.height) = 2048;
              *(&buf.height + 6) = v13;
              v83 = "%{public}@ <%p>: Could not correct orientation of alpha mask";
              v84 = v80;
              v85 = OS_LOG_TYPE_ERROR;
LABEL_95:
              _os_log_impl(&dword_1C241C000, v84, v85, v83, &buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v86 = objc_opt_class();
            v82 = NSStringFromClass(v86);
            LODWORD(buf.data) = 138543618;
            *(&buf.data + 4) = v82;
            WORD2(buf.height) = 2048;
            *(&buf.height + 6) = v13;
            v83 = "Error: %{public}@ <%p>: Could not correct orientation of alpha mask";
            v84 = v80;
            v85 = OS_LOG_TYPE_INFO;
            goto LABEL_95;
          }

LABEL_97:
          CVPixelBufferRelease(pixelBuffer);
          CVPixelBufferRelease(pixelBufferOut);
          [v12 extent];
          v13->_physicalSize.width = a5;
          v13->_physicalSize.height = v88 / v87 * a5;
          v89 = [objc_opt_class() referenceImageUUIDForPixelBuffer:{-[ARReferenceImage pixelBuffer](v13, "pixelBuffer")}];
          identifier = v13->_identifier;
          v13->_identifier = v89;

          v13->_estimatedQuality = -1.0;
          v91 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v92 = dispatch_queue_create("com.apple.arkit.arreference.verificationqueue", v91);
          verificationQueue = v13->_verificationQueue;
          v13->_verificationQueue = v92;

          v94 = dispatch_semaphore_create(1);
          verificationQueueSemaphore = v13->_verificationQueueSemaphore;
          v13->_verificationQueueSemaphore = v94;

          resourceGroupName = v13->_resourceGroupName;
          v13->_resourceGroupName = 0;

          goto LABEL_98;
        }

        if (ARShouldUseLogTypeError_onceToken_35 != -1)
        {
          [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
        }

        v69 = ARShouldUseLogTypeError_internalOSVersion_35;
        v70 = _ARLogGeneral_26();
        v71 = v70;
        if (v69 == 1)
        {
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            LODWORD(buf.data) = 138543618;
            *(&buf.data + 4) = v73;
            WORD2(buf.height) = 2048;
            *(&buf.height + 6) = v13;
            v74 = "%{public}@ <%p>: Could not correct orientation of pixelbuffer";
            v75 = v71;
            v76 = OS_LOG_TYPE_ERROR;
LABEL_84:
            _os_log_impl(&dword_1C241C000, v75, v76, v74, &buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v77 = objc_opt_class();
          v73 = NSStringFromClass(v77);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v73;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v74 = "Error: %{public}@ <%p>: Could not correct orientation of pixelbuffer";
          v75 = v71;
          v76 = OS_LOG_TYPE_INFO;
          goto LABEL_84;
        }

        goto LABEL_86;
      }
    }

    else if (!v25)
    {
      goto LABEL_76;
    }

    if (pixelBufferOut)
    {
LABEL_53:
      *v102 = 0;
      if (!ARCreatePixelBufferWithPaddingToFillMinimumDimension(pixelBuffer, 0x64uLL, 0, v102))
      {
        CVPixelBufferRelease(pixelBuffer);
        pixelBuffer = *v102;
        goto LABEL_64;
      }

      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v51 = ARShouldUseLogTypeError_internalOSVersion_35;
      v52 = _ARLogGeneral_26();
      v53 = v52;
      if (v51 == 1)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v55;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v56 = "%{public}@ <%p>: Could not add padding to pixel buffer";
          v57 = v53;
          v58 = OS_LOG_TYPE_ERROR;
LABEL_62:
          _os_log_impl(&dword_1C241C000, v57, v58, v56, &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v59 = objc_opt_class();
        v55 = NSStringFromClass(v59);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v55;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v56 = "Error: %{public}@ <%p>: Could not add padding to pixel buffer";
        v57 = v53;
        v58 = OS_LOG_TYPE_INFO;
        goto LABEL_62;
      }

LABEL_64:
      if (!pixelBufferOut)
      {
        goto LABEL_76;
      }

      v98 = 0;
      if (!ARCreatePixelBufferWithPaddingToFillMinimumDimension(pixelBufferOut, 0x64uLL, 0, &v98))
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = v98;
        goto LABEL_76;
      }

      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v60 = ARShouldUseLogTypeError_internalOSVersion_35;
      v61 = _ARLogGeneral_26();
      v62 = v61;
      if (v60 == 1)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v64;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v65 = "%{public}@ <%p>: Could not add padding to alpha mask";
          v66 = v62;
          v67 = OS_LOG_TYPE_ERROR;
LABEL_74:
          _os_log_impl(&dword_1C241C000, v66, v67, v65, &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v68 = objc_opt_class();
        v64 = NSStringFromClass(v68);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v64;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v65 = "Error: %{public}@ <%p>: Could not add padding to alpha mask";
        v66 = v62;
        v67 = OS_LOG_TYPE_INFO;
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    v30 = *MEMORY[0x1E695E480];
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    if (!CVPixelBufferCreate(v30, Width, Height, 0x4C303038u, 0, &pixelBufferOut))
    {
LABEL_42:
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      memset(&buf, 0, sizeof(buf));
      buf.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
      buf.height = CVPixelBufferGetHeight(pixelBufferOut);
      buf.width = CVPixelBufferGetWidth(pixelBufferOut);
      buf.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      if (!vImageOverwriteChannelsWithScalar_Planar8(0xFFu, &buf, 0))
      {
LABEL_52:
        CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
        goto LABEL_53;
      }

      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v42 = ARShouldUseLogTypeError_internalOSVersion_35;
      v43 = _ARLogGeneral_26();
      v44 = v43;
      if (v42 == 1)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *v102 = 138543618;
          *&v102[4] = v46;
          v103 = 2048;
          v104 = v13;
          v47 = "%{public}@ <%p>: Could not fill buffer";
          v48 = v44;
          v49 = OS_LOG_TYPE_ERROR;
LABEL_50:
          _os_log_impl(&dword_1C241C000, v48, v49, v47, v102, 0x16u);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v46 = NSStringFromClass(v50);
        *v102 = 138543618;
        *&v102[4] = v46;
        v103 = 2048;
        v104 = v13;
        v47 = "Error: %{public}@ <%p>: Could not fill buffer";
        v48 = v44;
        v49 = OS_LOG_TYPE_INFO;
        goto LABEL_50;
      }

      goto LABEL_52;
    }

    if (ARShouldUseLogTypeError_onceToken_35 != -1)
    {
      [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_35;
    v34 = _ARLogGeneral_26();
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v37;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v38 = "%{public}@ <%p>: Could not create pixelbuffer";
        v39 = v35;
        v40 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v39, v40, v38, &buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v37 = NSStringFromClass(v41);
      LODWORD(buf.data) = 138543618;
      *(&buf.data + 4) = v37;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = v13;
      v38 = "Error: %{public}@ <%p>: Could not create pixelbuffer";
      v39 = v35;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_98:

  return v13;
}

- (ARReferenceImage)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARReferenceImage;
  v6 = [(ARReferenceImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

+ (id)referenceImagesInGroupNamed:(id)a3 catalog:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v5 = [a4 namedRecognitionGroupWithName:?];
  if (!v5)
  {
    if (ARShouldUseLogTypeError_onceToken_35 != -1)
    {
      +[ARReferenceImage referenceImagesInGroupNamed:catalog:];
    }

    v25 = ARShouldUseLogTypeError_internalOSVersion_35;
    v26 = _ARLogGeneral_26();
    v6 = v26;
    if (v25 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = v32;
        v27 = "No resource group with name %{public}@ found";
        v28 = v6;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v28, v29, v27, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v39 = v32;
      v27 = "Error: No resource group with name %{public}@ found";
      v28 = v6;
      v29 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    v31 = 0;
    goto LABEL_35;
  }

  v31 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [v5 namedRecognitionImageImageList];
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  v9 = *v34;
  do
  {
    v10 = 0;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v5 recognitionImageWithName:v11];
        v13 = v12;
        if (v12 && [v12 image])
        {
          if (objc_opt_respondsToSelector())
          {
            v14 = [v13 valueForKey:@"exifOrientation"];
            v15 = [v14 intValue];
          }

          else
          {
            v15 = 1;
          }

          v22 = [ARReferenceImage alloc];
          v23 = [v13 image];
          [v13 physicalSizeInMeters];
          v18 = [(ARReferenceImage *)v22 initWithCGImage:v23 orientation:v15 physicalWidth:1 addPadding:?];
          v24 = [v13 name];
          [(ARReferenceImage *)v18 setName:v24];

          [(ARReferenceImage *)v18 setResourceGroupName:v32];
          [v31 addObject:v18];
          goto LABEL_22;
        }

        if (ARShouldUseLogTypeError_onceToken_35 != -1)
        {
          [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
        }

        v16 = ARShouldUseLogTypeError_internalOSVersion_35;
        v17 = _ARLogGeneral_26();
        v18 = v17;
        if (v16 == 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            p_super = &v18->super;
            v20 = OS_LOG_TYPE_ERROR;
            v21 = "Invalid reference image in catalog";
            goto LABEL_19;
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          p_super = &v18->super;
          v20 = OS_LOG_TYPE_INFO;
          v21 = "Error: Invalid reference image in catalog";
LABEL_19:
          _os_log_impl(&dword_1C241C000, p_super, v20, v21, buf, 2u);
        }

LABEL_22:
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v8);
LABEL_35:

  return v31;
}

+ (NSSet)referenceImagesInGroupNamed:(NSString *)name bundle:(NSBundle *)bundle
{
  v5 = bundle;
  v6 = name;
  v7 = [objc_opt_class() referenceImagesInGroupNamed:v6 catalogName:@"Assets" bundle:v5];

  return v7;
}

+ (id)referenceImagesInGroupNamed:(id)a3 catalogName:(id)a4 bundle:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = 0;
  v10 = [objc_alloc(MEMORY[0x1E6999368]) initWithName:v8 fromBundle:v9 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = _ARLogGeneral_26();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "Error while opening catalog named %{public}@ in bundle %{public}@: %@", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    v13 = [objc_opt_class() referenceImagesInGroupNamed:v7 catalog:v10];
  }

  return v13;
}

+ (id)referenceImagesInGroupNamed:(id)a3 catalogURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v7 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = _ARLogGeneral_26();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "Error while opening catalog named %{public}@ from URL %{public}@: %@", buf, 0x20u);
    }

    v10 = 0;
  }

  else
  {
    v10 = [objc_opt_class() referenceImagesInGroupNamed:v5 catalog:v7];
  }

  return v10;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CVPixelBufferRelease(self->_alphaMask);
  v3.receiver = self;
  v3.super_class = ARReferenceImage;
  [(ARReferenceImage *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ARReferenceImage *)self name];
  [(ARReferenceImage *)self physicalSize];
  v8 = v7;
  [(ARReferenceImage *)self physicalSize];
  v10 = [v3 stringWithFormat:@"<%@: %p name=%@ physicalSize=(%.03f, %.03f)>", v5, self, v6, v8, v9];

  return v10;
}

- (id)shortDebugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ARReferenceImage *)self name];
  [(ARReferenceImage *)self physicalSize];
  v6 = v5;
  [(ARReferenceImage *)self physicalSize];
  v8 = [v3 stringWithFormat:@"<name=%@, physicalSize=(%.03f, %.03f)>", v4, v6, v7];

  return v8;
}

- (CGSize)imageSize
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifier];
    v7 = [(ARReferenceImage *)self identifier];
    if ([v6 isEqual:v7])
    {
      [v5 physicalSize];
      v9 = v8;
      v11 = v10;
      [(ARReferenceImage *)self physicalSize];
      v14 = v11 == v13 && v9 == v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  [(ARReferenceImage *)self physicalSize];
  v5[10] = v6;
  v5[11] = v7;
  v8 = [(ARReferenceImage *)self name];
  v9 = [v8 copyWithZone:a3];
  v10 = v5[3];
  v5[3] = v9;

  v5[7] = CVPixelBufferRetain(self->_pixelBuffer);
  v5[8] = CVPixelBufferRetain(self->_alphaMask);
  v11 = [(ARReferenceImage *)self identifier];
  v12 = [v11 copyWithZone:a3];
  v13 = v5[9];
  v5[9] = v12;

  [(ARReferenceImage *)self estimatedQuality];
  v5[5] = v14;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [(ARReferenceImage *)self physicalSize];
  [v7 encodeSize:@"physicalSize" forKey:?];
  v4 = [(ARReferenceImage *)self name];
  [v7 encodeObject:v4 forKey:@"name"];

  v5 = [(ARReferenceImage *)self identifier];
  [v7 encodeObject:v5 forKey:@"identifier"];

  [(ARReferenceImage *)self estimatedQuality];
  [v7 encodeDouble:@"estimatedQuality" forKey:?];
  v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{-[ARReferenceImage pixelBuffer](self, "pixelBuffer")}];
  if (v6)
  {
    [v7 encodeObject:v6 forKey:@"pixelbuffer"];
  }
}

- (ARReferenceImage)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ARReferenceImage;
  v5 = [(ARReferenceImage *)&v15 init];
  if (v5)
  {
    [v4 decodeSizeForKey:@"physicalSize"];
    v5->_physicalSize.width = v6;
    v5->_physicalSize.height = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    [v4 decodeDoubleForKey:@"estimatedQuality"];
    v5->_estimatedQuality = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pixelbuffer"];
    v5->_pixelBuffer = ARPixelBufferWithCIImage(v13);
  }

  return v5;
}

- (void)validateWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [(ARReferenceImage *)self cachedVerificationError];

  if (v5)
  {
    if (v4)
    {
      v6 = [(ARReferenceImage *)self cachedVerificationError];
      v7 = [v6 error];
      v4[2](v4, v7);
    }
  }

  else
  {
    dispatch_semaphore_wait(self->_verificationQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    verificationQueue = self->_verificationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__ARReferenceImage_validateWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E817CCA0;
    v9[4] = self;
    v10 = v4;
    dispatch_async(verificationQueue, v9);
  }
}

void __50__ARReferenceImage_validateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [ARODTHandleManager verifyReferenceImage:*(a1 + 32)];
  v15 = v2;
  v16 = 0;
  v5 = *(a1 + 32);
  v14 = v3;
  [ARODTHandleManager accumulateReferenceImageErrorsForResult:v4 refImage:v5 objectID:0 pReferenceImageMap:&v15 pFailedReferenceImageNames:&v14 pUserErrorType:&v16];
  v6 = v15;

  v7 = v14;
  v8 = objc_opt_new();
  [*(a1 + 32) setCachedVerificationError:v8];

  v9 = [ARODTHandleManager handleAccumulatedErrorType:v16 failedReferenceImageNames:v7];
  v10 = [*(a1 + 32) cachedVerificationError];
  [v10 setError:v9];

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [*(a1 + 32) cachedVerificationError];
    v13 = [v12 error];
    (*(v11 + 16))(v11, v13);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
}

- (void)estimateQualityWithCompletionHandler:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v8 = objc_opt_new();
    v4 = ARKitCoreBundle();
    v5 = [v4 localizedStringForKey:@"Image detection quality estimation could not be performed" value:&stru_1F4208A80 table:@"Localizable"];
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SPI has been deprecated."];
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.arkit.error" code:1003 userInfo:v8];
    v3[2](v3, v7, -1.0);
  }
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end