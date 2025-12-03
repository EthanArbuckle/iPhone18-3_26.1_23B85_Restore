@interface PKLegacyDrawingRegressionTester
+ (CGImage)createFilteredImageFromImage:(id)image context:(id)context filterRadius:(double)radius;
+ (double)compareImage:(CGImage *)image with:(CGImage *)with drawing:(id)drawing;
+ (double)compareLegacyDrawingImage:(id)image toConvertedDrawing:(id)drawing debugImagesDirectory:(id)directory;
+ (double)maxStdDevErrorFromResult:(id *)result;
+ (id)regressionTestDrawingPathForFile:(id)file forClass:(Class)class;
+ (id)regressionTestImagePathForFile:(id)file forClass:(Class)class;
@end

@implementation PKLegacyDrawingRegressionTester

+ (double)maxStdDevErrorFromResult:(id *)result
{
  v3 = 0;
  result = 0.0;
  do
  {
    if (result < result->var3[v3])
    {
      result = result->var3[v3];
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

+ (CGImage)createFilteredImageFromImage:(id)image context:(id)context filterRadius:(double)radius
{
  imageCopy = image;
  contextCopy = context;
  cGImage = [image CGImage];
  v11 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:cGImage];
  v12 = [v11 imageByApplyingGaussianBlurWithSigma:radius];
  [v12 extent];
  v13 = [contextCopy createCGImage:v12 fromRect:?];

  return v13;
}

+ (double)compareLegacyDrawingImage:(id)image toConvertedDrawing:(id)drawing debugImagesDirectory:(id)directory
{
  v80 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  drawingCopy = drawing;
  directoryCopy = directory;
  [imageCopy size];
  v9 = v8 * 0.0009765625;
  v10 = floor(v8 * 0.0009765625);
  v53 = objc_alloc_init(MEMORY[0x1E695F620]);
  if (v10 < v9 + -0.001)
  {
    v11 = objc_autoreleasePoolPush();
    memset(&v60, 0, sizeof(v60));
    v12 = v10 / v9;
    CGAffineTransformMakeScale(&v60, v12, v12);
    v13 = MEMORY[0x1E695F658];
    v14 = imageCopy;
    v15 = [v13 imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
    v55 = v60;
    v16 = [v15 imageByApplyingTransform:&v55];

    [imageCopy size];
    v18 = v17;
    [imageCopy size];
    v20 = [v53 createCGImage:v16 fromRect:{0.0, 0.0, v12 * v18, v12 * v19}];
    v21 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v20];

    CGImageRelease(v20);
    objc_autoreleasePoolPop(v11);
    v9 = v10;
    imageCopy = v21;
  }

  memset(&v78, 0, sizeof(v78));
  [imageCopy size];
  if (drawingCopy)
  {
    [drawingCopy _transformForImageWithSize:?];
  }

  else
  {
    memset(&v78, 0, sizeof(v78));
  }

  v60 = v78;
  if (!CGAffineTransformIsIdentity(&v60) || v10 < v9)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = MEMORY[0x1E695F658];
    v24 = imageCopy;
    v25 = [v23 imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
    v60 = v78;
    v26 = [v25 imageByApplyingTransform:&v60];

    [drawingCopy _orientedDrawingSize];
    v29 = [v53 createCGImage:v26 fromRect:{0.0, 0.0, floor(v9 * v27), floor(v9 * v28)}];
    v30 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v29];

    CGImageRelease(v29);
    objc_autoreleasePoolPop(v22);
    imageCopy = v30;
  }

  [imageCopy size];
  v32 = v31;
  [drawingCopy _orientedDrawingSize];
  v52 = [[PKImageRenderer alloc] initWithSize:v33 scale:v34, v32 / v33];
  v35 = dispatch_semaphore_create(0);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__39;
  v76 = __Block_byref_object_dispose__39;
  v77 = 0;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __101__PKLegacyDrawingRegressionTester_compareLegacyDrawingImage_toConvertedDrawing_debugImagesDirectory___block_invoke;
  v69[3] = &unk_1E82D82B8;
  v71 = &v72;
  v36 = v35;
  v70 = v36;
  [(PKImageRenderer *)v52 renderDrawing:drawingCopy completion:v69];
  dispatch_semaphore_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  strokes = [drawingCopy strokes];
  v38 = [strokes countByEnumeratingWithState:&v65 objects:v79 count:16];
  v39 = 4.0;
  if (v38)
  {
    v40 = *v66;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v66 != v40)
        {
          objc_enumerationMutation(strokes);
        }

        v42 = [*(*(&v65 + 1) + 8 * i) ink];
        identifier = [v42 identifier];
        v44 = [identifier isEqualToString:@"com.apple.ink.pencil"];

        if (v44)
        {
          v39 = 5.0;
          goto LABEL_19;
        }
      }

      v38 = [strokes countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v45 = [self createFilteredImageFromImage:imageCopy context:v53 filterRadius:v39];
  v46 = [self createFilteredImageFromImage:v73[5] context:v53 filterRadius:v39];
  v63 = 0u;
  *image = 0u;
  v61 = 0u;
  v62 = 0u;
  memset(&v60, 0, sizeof(v60));
  [PKImageCompare compareImage:v46 toMasterImage:v45 filename:0 differenceImageOutputPath:0 diffWhite:1 stdDevThreshold:0.0];
  if (image[0])
  {
    CGImageRelease(image[0]);
  }

  CGImageRelease(v45);
  CGImageRelease(v46);
  v57 = v62;
  v58 = v63;
  v59 = *image;
  v55 = v60;
  v56 = v61;
  [self maxStdDevErrorFromResult:&v55];
  v48 = v47;

  _Block_object_dispose(&v72, 8);
  return v48;
}

void __101__PKLegacyDrawingRegressionTester_compareLegacyDrawingImage_toConvertedDrawing_debugImagesDirectory___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (double)compareImage:(CGImage *)image with:(CGImage *)with drawing:(id)drawing
{
  v42 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v9 = drawingCopy;
  if (drawingCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    strokes = [drawingCopy strokes];
    v11 = [strokes countByEnumeratingWithState:&v37 objects:v41 count:16];
    v12 = 4.0;
    if (v11)
    {
      v13 = v11;
      imageCopy = image;
      withCopy = with;
      v14 = *v38;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(strokes);
          }

          v16 = [*(*(&v37 + 1) + 8 * i) ink];
          identifier = [v16 identifier];
          v18 = [identifier isEqualToString:@"com.apple.ink.pencil"];

          if (v18)
          {
            v12 = 5.0;
            goto LABEL_12;
          }
        }

        v13 = [strokes countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_12:
      image = imageCopy;
      with = withCopy;
    }
  }

  else
  {
    v12 = 4.0;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695F620]);
  v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:image];
  v21 = [self createFilteredImageFromImage:v20 context:v19 filterRadius:v12];

  v22 = [MEMORY[0x1E69DCAB8] imageWithCGImage:with];
  v23 = [self createFilteredImageFromImage:v22 context:v19 filterRadius:v12];

  v35 = 0u;
  *image = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  [PKImageCompare compareImage:v23 toMasterImage:v21 filename:0 differenceImageOutputPath:0 diffWhite:1 stdDevThreshold:0.0];
  CGImageRelease(v21);
  CGImageRelease(v23);
  v29[4] = v34;
  v29[5] = v35;
  v29[6] = *image;
  v29[0] = v30;
  v29[1] = v31;
  v29[2] = v32;
  v29[3] = v33;
  [self maxStdDevErrorFromResult:v29];
  v25 = v24;

  return v25;
}

+ (id)regressionTestDrawingPathForFile:(id)file forClass:(Class)class
{
  fileCopy = file;
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:class];
  resourcePath = [v6 resourcePath];
  v8 = [resourcePath stringByAppendingPathComponent:fileCopy];
  v9 = [v8 stringByAppendingPathExtension:@"data"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [defaultManager fileExistsAtPath:v9];

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v13 = [resourcePath stringByAppendingPathComponent:fileCopy];
    v12 = [v13 stringByAppendingPathExtension:@"drawing"];
  }

  return v12;
}

+ (id)regressionTestImagePathForFile:(id)file forClass:(Class)class
{
  fileCopy = file;
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:class];
  resourcePath = [v6 resourcePath];
  v8 = [resourcePath stringByAppendingPathComponent:@"RegressionTestImages"];
  v9 = [v8 stringByAppendingPathComponent:fileCopy];
  v10 = [v9 stringByAppendingPathExtension:@"png"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(v9) = [defaultManager fileExistsAtPath:v10];

  if ((v9 & 1) == 0)
  {
    v12 = [resourcePath stringByAppendingPathComponent:fileCopy];
    v13 = [v12 stringByAppendingPathExtension:@"png"];

    v10 = v13;
  }

  return v10;
}

@end