@interface CIRectangleDetector
- (CIRectangleDetector)initWithContext:(id)context options:(id)options;
- (id)featuresInImage:(id)image options:(id)options;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation CIRectangleDetector

- (CIRectangleDetector)initWithContext:(id)context options:(id)options
{
  v15.receiver = self;
  v15.super_class = CIRectangleDetector;
  v6 = [(CIDetector *)&v15 init];
  if (v6)
  {
    if (!context)
    {
      context = +[CIContext _singletonContext];
    }

    [(CIRectangleDetector *)v6 setContext:context];
    v6->featureOptions = [MEMORY[0x1E695DF90] dictionary];
    v7 = [options objectForKey:@"CIDetectorAccuracy"];
    if ([v7 isEqual:@"CIDetectorAccuracyHigh"])
    {
      [(NSMutableDictionary *)v6->featureOptions setObject:@"CIDetectorAccuracyHigh" forKey:@"CIDetectorAccuracy"];
    }

    else if (v7 && ([v7 isEqual:@"CIDetectorAccuracyLow"] & 1) == 0)
    {
      NSLog(&cfstr_UnknownCidetec.isa);
    }

    v8 = [options objectForKey:@"CIDetectorMinFeatureSize"];
    if (v8)
    {
      v9 = v8;
      [v8 floatValue];
      if (v10 >= 0.2 && ([v9 floatValue], v11 <= 1.0))
      {
        [(NSMutableDictionary *)v6->featureOptions setObject:v9 forKey:@"CIDetectorMinFeatureSize"];
      }

      else
      {
        NSLog(&cfstr_InvalidCidetec.isa);
      }
    }

    v12 = [options objectForKey:@"CIDetectorMaxFeatureCount"];
    if (v12)
    {
      v13 = v12;
      if ([v12 intValue] <= 0)
      {
        NSLog(&cfstr_InvalidOptionm.isa);
      }

      else
      {
        [(NSMutableDictionary *)v6->featureOptions setObject:v13 forKey:@"CIDetectorMaxFeatureCount"];
      }
    }
  }

  return v6;
}

- (void)releaseResources
{
  [(CIRectangleDetector *)self setContext:0];
  featureOptions = self->featureOptions;
  if (featureOptions)
  {
  }
}

- (void)dealloc
{
  [(CIRectangleDetector *)self releaseResources];
  v3.receiver = self;
  v3.super_class = CIRectangleDetector;
  [(CIRectangleDetector *)&v3 dealloc];
}

- (id)featuresInImage:(id)image options:(id)options
{
  v76[1] = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_detector();
  if (&self->super.super.isa + 1 >= 2)
  {
    v12 = v7;
    if (os_signpost_enabled(v7))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v12, OS_SIGNPOST_INTERVAL_BEGIN, self, "CIRectangleDetector", &unk_19CFBCBAE, &buf, 2u);
    }
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v71 = __47__CIRectangleDetector_featuresInImage_options___block_invoke;
  v72 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  if (image)
  {
    [image extent];
    x = v77.origin.x;
    y = v77.origin.y;
    width = v77.size.width;
    height = v77.size.height;
    if (CGRectIsEmpty(v77))
    {
LABEL_58:
      image = MEMORY[0x1E695E0F0];
      goto LABEL_59;
    }

    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    if (CGRectIsInfinite(v78))
    {
      NSLog(&cfstr_CannotFindFeat.isa);
      goto LABEL_58;
    }

    v69 = 0;
    buf.a = 0.0;
    *&buf.b = &buf;
    *&buf.c = 0x3052000000;
    *&buf.d = __Block_byref_object_copy__14;
    v13 = getVNDetectRectanglesRequestClass(void)::softClass;
    *&buf.tx = __Block_byref_object_dispose__14;
    *&buf.ty = getVNDetectRectanglesRequestClass(void)::softClass;
    if (!getVNDetectRectanglesRequestClass(void)::softClass)
    {
      *&v64.a = MEMORY[0x1E69E9820];
      *&v64.b = 3221225472;
      *&v64.c = ___ZL33getVNDetectRectanglesRequestClassv_block_invoke;
      *&v64.d = &unk_1E75C1E10;
      *&v64.tx = &buf;
      ___ZL33getVNDetectRectanglesRequestClassv_block_invoke(&v64);
      v13 = *(*&buf.b + 40);
    }

    _Block_object_dispose(&buf, 8);
    v14 = objc_alloc_init(v13);
    if (!v14)
    {
      NSLog(&cfstr_UnableToCreate.isa);
      goto LABEL_58;
    }

    v15 = [options objectForKey:@"CIDetectorAccuracy"];
    if (!v15)
    {
      v16 = [(NSMutableDictionary *)self->featureOptions objectForKey:@"CIDetectorAccuracy"];
      if (v16)
      {
        v15 = v16;
      }

      else
      {
        v15 = @"CIDetectorAccuracyHigh";
      }
    }

    v17 = [options objectForKey:@"CIDetectorMinFeatureSize"];
    if (!v17)
    {
      v17 = [(NSMutableDictionary *)self->featureOptions objectForKey:@"CIDetectorMinFeatureSize"];
    }

    v18 = [options objectForKey:@"CIDetectorMaxFeatureCount"];
    if (!v18)
    {
      v18 = [(NSMutableDictionary *)self->featureOptions objectForKey:@"CIDetectorMaxFeatureCount"];
    }

    v19 = [options objectForKey:@"CIDetectorAspectRatio"];
    if (!v19)
    {
      v19 = [(NSMutableDictionary *)self->featureOptions objectForKey:@"CIDetectorAspectRatio"];
    }

    LODWORD(v20) = 0.5;
    [v14 setMinimumConfidence:v20];
    LODWORD(v21) = 15.0;
    [v14 setQuadratureTolerance:v21];
    if (v18)
    {
      intValue = [v18 intValue];
    }

    else
    {
      intValue = 1;
    }

    [v14 setMaximumObservations:intValue];
    if (v17)
    {
      [v17 floatValue];
    }

    else
    {
      LODWORD(v23) = 1045220557;
    }

    [v14 setMinimumSize:v23];
    if (v19)
    {
      [v19 floatValue];
      if (*&v24 <= 1.0)
      {
        v25 = *&v24;
      }

      else
      {
        v25 = 1.0 / *&v24;
      }

      *&v24 = v25 * 0.93;
      if ((v25 * 0.93) < 0.0)
      {
        *&v24 = 0.0;
      }

      [v14 setMinimumAspectRatio:v24];
      *&v26 = v25 * 1.07;
      if ((v25 * 1.07) > 1.0)
      {
        *&v26 = 1.0;
      }

      [v14 setMaximumAspectRatio:v26];
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([(CIRectangleDetector *)self context])
    {
      context = self->context;
      v64.a = 0.0;
      *&v64.b = &v64;
      *&v64.c = 0x2020000000;
      v29 = getVNImageOptionCIContextSymbolLoc(void)::ptr;
      *&v64.d = getVNImageOptionCIContextSymbolLoc(void)::ptr;
      if (!getVNImageOptionCIContextSymbolLoc(void)::ptr)
      {
        *&buf.a = MEMORY[0x1E69E9820];
        *&buf.b = 3221225472;
        *&buf.c = ___ZL34getVNImageOptionCIContextSymbolLocv_block_invoke_0;
        *&buf.d = &unk_1E75C1E10;
        *&buf.tx = &v64;
        v30 = VisionLibrary();
        v31 = dlsym(v30, "VNImageOptionCIContext");
        *(*(*&buf.tx + 8) + 24) = v31;
        getVNImageOptionCIContextSymbolLoc(void)::ptr = *(*(*&buf.tx + 8) + 24);
        v29 = *(*&v64.b + 24);
      }

      _Block_object_dispose(&v64, 8);
      if (!v29)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
        __break(1u);
      }

      [dictionary setObject:context forKey:*v29];
    }

    if (([(__CFString *)v15 isEqual:@"CIDetectorAccuracyHigh"]& 1) == 0)
    {
      [dictionary setObject:@"VNRequestOptionDetectionLevel_Fast" forKey:@"VNRequestOptionDetectionLevel"];
    }

    buf.a = 0.0;
    *&buf.b = &buf;
    *&buf.c = 0x3052000000;
    *&buf.d = __Block_byref_object_copy__14;
    v32 = getVNImageRequestHandlerClass(void)::softClass;
    *&buf.tx = __Block_byref_object_dispose__14;
    *&buf.ty = getVNImageRequestHandlerClass(void)::softClass;
    if (!getVNImageRequestHandlerClass(void)::softClass)
    {
      *&v64.a = MEMORY[0x1E69E9820];
      *&v64.b = 3221225472;
      *&v64.c = ___ZL29getVNImageRequestHandlerClassv_block_invoke_0;
      *&v64.d = &unk_1E75C1E10;
      *&v64.tx = &buf;
      ___ZL29getVNImageRequestHandlerClassv_block_invoke_0(&v64);
      v32 = *(*&buf.b + 40);
    }

    _Block_object_dispose(&buf, 8);
    v33 = [[v32 alloc] initWithCIImage:image options:dictionary];
    v34 = v33;
    v76[0] = v14;
    if (([v33 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", v76, 1), &v69}] & 1) == 0)
    {
      goto LABEL_58;
    }

    results = [v14 results];
    if (![results count])
    {
      goto LABEL_58;
    }

    image = [MEMORY[0x1E695DF70] array];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v36 = [results countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v36)
    {
      v37 = *v66;
      v58 = height;
      v59 = width;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v66 != v37)
          {
            objc_enumerationMutation(results);
          }

          v39 = *(*(&v65 + 1) + 8 * i);
          [v39 topLeft];
          v41 = v40;
          v43 = v42;
          [v39 topRight];
          v45 = v44;
          v47 = v46;
          [v39 bottomLeft];
          v62 = v49;
          v63 = v48;
          [v39 bottomRight];
          v60 = v51;
          v61 = v50;
          memset(&buf, 0, sizeof(buf));
          CGAffineTransformMakeScale(&buf, width, height);
          a = buf.a;
          b = buf.b;
          v54 = *&buf.c;
          v55 = *&buf.tx;
          [v39 boundingBox];
          v64 = buf;
          v80 = CGRectApplyAffineTransform(v79, &v64);
          v56 = [[CIRectangleFeature alloc] initWithBounds:v80.origin.x topLeft:v80.origin.y topRight:v80.size.width bottomLeft:v80.size.height bottomRight:*&v55 + v43 * *&v54 + a * v41, *(&v55 + 1) + v43 * *(&v54 + 1) + b * v41, *&v55 + v47 * *&v54 + a * v45, *(&v55 + 1) + v47 * *(&v54 + 1) + b * v45, *&v55 + v62 * *&v54 + a * v63, *(&v55 + 1) + v62 * *(&v54 + 1) + b * v63, *&v55 + v60 * *&v54 + a * v61, *(&v55 + 1) + v60 * *(&v54 + 1) + b * v61];
          if (v56)
          {
            [image addObject:v56];
          }

          height = v58;
          width = v59;
        }

        v36 = [results countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v36);
    }
  }

LABEL_59:
  v71(v70);
  return image;
}

void __47__CIRectangleDetector_featuresInImage_options___block_invoke(uint64_t a1)
{
  v2 = ci_signpost_log_detector();
  v3 = *(a1 + 32);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CIRectangleDetector", &unk_19CFBCBAE, v5, 2u);
    }
  }
}

@end