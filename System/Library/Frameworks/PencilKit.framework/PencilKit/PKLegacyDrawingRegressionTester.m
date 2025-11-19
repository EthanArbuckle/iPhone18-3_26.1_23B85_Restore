@interface PKLegacyDrawingRegressionTester
+ (CGImage)createFilteredImageFromImage:(id)a3 context:(id)a4 filterRadius:(double)a5;
+ (double)compareImage:(CGImage *)a3 with:(CGImage *)a4 drawing:(id)a5;
+ (double)compareLegacyDrawingImage:(id)a3 toConvertedDrawing:(id)a4 debugImagesDirectory:(id)a5;
+ (double)maxStdDevErrorFromResult:(id *)a3;
+ (id)regressionTestDrawingPathForFile:(id)a3 forClass:(Class)a4;
+ (id)regressionTestImagePathForFile:(id)a3 forClass:(Class)a4;
@end

@implementation PKLegacyDrawingRegressionTester

+ (double)maxStdDevErrorFromResult:(id *)a3
{
  v3 = 0;
  result = 0.0;
  do
  {
    if (result < a3->var3[v3])
    {
      result = a3->var3[v3];
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

+ (CGImage)createFilteredImageFromImage:(id)a3 context:(id)a4 filterRadius:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a3 CGImage];
  v11 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:v10];
  v12 = [v11 imageByApplyingGaussianBlurWithSigma:a5];
  [v12 extent];
  v13 = [v9 createCGImage:v12 fromRect:?];

  return v13;
}

+ (double)compareLegacyDrawingImage:(id)a3 toConvertedDrawing:(id)a4 debugImagesDirectory:(id)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v54 = a4;
  v50 = a5;
  [v7 size];
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
    v14 = v7;
    v15 = [v13 imageWithCGImage:{objc_msgSend(v7, "CGImage")}];
    v55 = v60;
    v16 = [v15 imageByApplyingTransform:&v55];

    [v7 size];
    v18 = v17;
    [v7 size];
    v20 = [v53 createCGImage:v16 fromRect:{0.0, 0.0, v12 * v18, v12 * v19}];
    v21 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v20];

    CGImageRelease(v20);
    objc_autoreleasePoolPop(v11);
    v9 = v10;
    v7 = v21;
  }

  memset(&v78, 0, sizeof(v78));
  [v7 size];
  if (v54)
  {
    [v54 _transformForImageWithSize:?];
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
    v24 = v7;
    v25 = [v23 imageWithCGImage:{objc_msgSend(v7, "CGImage")}];
    v60 = v78;
    v26 = [v25 imageByApplyingTransform:&v60];

    [v54 _orientedDrawingSize];
    v29 = [v53 createCGImage:v26 fromRect:{0.0, 0.0, floor(v9 * v27), floor(v9 * v28)}];
    v30 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v29];

    CGImageRelease(v29);
    objc_autoreleasePoolPop(v22);
    v7 = v30;
  }

  [v7 size];
  v32 = v31;
  [v54 _orientedDrawingSize];
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
  [(PKImageRenderer *)v52 renderDrawing:v54 completion:v69];
  dispatch_semaphore_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v37 = [v54 strokes];
  v38 = [v37 countByEnumeratingWithState:&v65 objects:v79 count:16];
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
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v65 + 1) + 8 * i) ink];
        v43 = [v42 identifier];
        v44 = [v43 isEqualToString:@"com.apple.ink.pencil"];

        if (v44)
        {
          v39 = 5.0;
          goto LABEL_19;
        }
      }

      v38 = [v37 countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v45 = [a1 createFilteredImageFromImage:v7 context:v53 filterRadius:v39];
  v46 = [a1 createFilteredImageFromImage:v73[5] context:v53 filterRadius:v39];
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
  [a1 maxStdDevErrorFromResult:&v55];
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

+ (double)compareImage:(CGImage *)a3 with:(CGImage *)a4 drawing:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = [v8 strokes];
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
    v12 = 4.0;
    if (v11)
    {
      v13 = v11;
      v27 = a3;
      v28 = a4;
      v14 = *v38;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v37 + 1) + 8 * i) ink];
          v17 = [v16 identifier];
          v18 = [v17 isEqualToString:@"com.apple.ink.pencil"];

          if (v18)
          {
            v12 = 5.0;
            goto LABEL_12;
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_12:
      a3 = v27;
      a4 = v28;
    }
  }

  else
  {
    v12 = 4.0;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695F620]);
  v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3];
  v21 = [a1 createFilteredImageFromImage:v20 context:v19 filterRadius:v12];

  v22 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a4];
  v23 = [a1 createFilteredImageFromImage:v22 context:v19 filterRadius:v12];

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
  [a1 maxStdDevErrorFromResult:v29];
  v25 = v24;

  return v25;
}

+ (id)regressionTestDrawingPathForFile:(id)a3 forClass:(Class)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:a4];
  v7 = [v6 resourcePath];
  v8 = [v7 stringByAppendingPathComponent:v5];
  v9 = [v8 stringByAppendingPathExtension:@"data"];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 fileExistsAtPath:v9];

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v13 = [v7 stringByAppendingPathComponent:v5];
    v12 = [v13 stringByAppendingPathExtension:@"drawing"];
  }

  return v12;
}

+ (id)regressionTestImagePathForFile:(id)a3 forClass:(Class)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:a4];
  v7 = [v6 resourcePath];
  v8 = [v7 stringByAppendingPathComponent:@"RegressionTestImages"];
  v9 = [v8 stringByAppendingPathComponent:v5];
  v10 = [v9 stringByAppendingPathExtension:@"png"];

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(v9) = [v11 fileExistsAtPath:v10];

  if ((v9 & 1) == 0)
  {
    v12 = [v7 stringByAppendingPathComponent:v5];
    v13 = [v12 stringByAppendingPathExtension:@"png"];

    v10 = v13;
  }

  return v10;
}

@end