@interface PDFPageAnalyzer
+ (CGAffineTransform)_normalizedToPageTransformForPageWithBounds:(SEL)bounds;
+ (PDFPageAnalyzer)sharedInstance;
- (BOOL)_addTableFromAnalysis:(id)analysis bounds:(CGRect)bounds toPDFPage:(id)page;
- (CGPoint)_testPixelsFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint compare:(id)compare;
- (PDFPageAnalyzer)init;
- (UIEdgeInsets)_computeEdgeInsetsForQuad:(id)quad inImage:(CGImage *)image background:(unsigned __int8)background glyphCount:(unint64_t)count;
- (id).cxx_construct;
- (id)_detectedAnnotationWithBounds:(CGRect)bounds intersectsAnnotationOnPage:(id)page;
- (void)_addFormElementsFromAnalysis:(id)analysis bounds:(CGRect)bounds toPage:(id)page;
- (void)_addFormElementsUsingDetectorToPage:(id)page displayBox:(int64_t)box;
- (void)_addTextFromAnalysis:(id)analysis ofImage:(id)image bounds:(CGRect)bounds toPage:(id)page;
- (void)_callCompletionBlock:(id)block onQueue:(id)queue analysis:(id)analysis error:(id)error foundTable:(BOOL)table;
- (void)_drawTextFromAnalysis:(id)analysis ofImage:(id)image intoContext:(CGContext *)context withBounds:(CGRect)bounds;
- (void)analyzePage:(id)page analysisTypes:(unint64_t)types completionQueue:(id)queue completionBlock:(id)block;
- (void)proposedFormFieldBoundsNearestPoint:(CGPoint)point onPage:(id)page completionBlock:(id)block;
@end

@implementation PDFPageAnalyzer

+ (PDFPageAnalyzer)sharedInstance
{
  if (+[PDFPageAnalyzer sharedInstance]::onceToken != -1)
  {
    +[PDFPageAnalyzer sharedInstance];
  }

  v3 = +[PDFPageAnalyzer sharedInstance]::sharedInstance;

  return v3;
}

uint64_t __33__PDFPageAnalyzer_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[PDFPageAnalyzer sharedInstance]::sharedInstance;
  +[PDFPageAnalyzer sharedInstance]::sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (PDFPageAnalyzer)init
{
  v18.receiver = self;
  v18.super_class = PDFPageAnalyzer;
  v2 = [(PDFPageAnalyzer *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("PDFKit.PDFPageAnalyzer.workQueue", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = dispatch_queue_create("PDFKit.PDFPageAnalyzer.analyzerCallbackQueue", v4);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = getVKImageAnalyzerClass(void)::softClass;
    v23 = getVKImageAnalyzerClass(void)::softClass;
    if (!getVKImageAnalyzerClass(void)::softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___ZL23getVKImageAnalyzerClassv_block_invoke;
      v19[3] = &unk_1E8150870;
      v19[4] = &v20;
      ___ZL23getVKImageAnalyzerClassv_block_invoke(v19);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = [[v9 alloc] init];
    v12 = *(v2 + 3);
    *(v2 + 3) = v11;

    [*(v2 + 3) setCallbackQueue:*(v2 + 2)];
    v13 = dispatch_semaphore_create(8);
    v14 = *(v2 + 4);
    *(v2 + 4) = v13;

    v15 = objc_opt_new();
    v16 = *(v2 + 5);
    *(v2 + 5) = v15;

    *(v2 + 14) = 0x4000000000000000;
  }

  return v2;
}

- (void)analyzePage:(id)page analysisTypes:(unint64_t)types completionQueue:(id)queue completionBlock:(id)block
{
  pageCopy = page;
  queueCopy = queue;
  blockCopy = block;
  if (pageCopy)
  {
    std::mutex::lock((self + 48));
    document = [pageCopy document];
    v14 = [document indexForPage:pageCopy];

    Current = CFAbsoluteTimeGetCurrent();
    v16 = (v14 + 1);
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePage: (page #%lu) START", v17, v18, v19, v20, v21, v16);
    LODWORD(document) = [pageCopy didPerformOCR];
    didPerformFormDetection = [pageCopy didPerformFormDetection];
    typesCopy = types & 0xFFFFFFFFFFFFFFFELL;
    if (!document)
    {
      typesCopy = types;
    }

    if (didPerformFormDetection)
    {
      v24 = (typesCopy & 0xFFFFFFFFFFFFFFFDLL);
    }

    else
    {
      v24 = typesCopy;
    }

    if (v24)
    {
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v40 = 0;
      if (([*(self + 5) containsObject:pageCopy] & 1) == 0)
      {
        [*(self + 5) addObject:pageCopy];
        objc_initWeak(&location, self);
        v25 = *(self + 1);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__PDFPageAnalyzer_analyzePage_analysisTypes_completionQueue_completionBlock___block_invoke;
        block[3] = &unk_1E8150DE0;
        objc_copyWeak(v37, &location);
        v37[1] = v16;
        v37[2] = *&Current;
        v26 = pageCopy;
        v37[3] = v24;
        v33 = v26;
        v36 = v39;
        v35 = blockCopy;
        v34 = queueCopy;
        dispatch_async(v25, block);

        objc_destroyWeak(v37);
        objc_destroyWeak(&location);
      }

      _Block_object_dispose(v39, 8);
    }

    else
    {
      [(PDFPageAnalyzer *)self _callCompletionBlock:blockCopy onQueue:queueCopy analysis:0 error:0 foundTable:0];
      CFAbsoluteTimeGetCurrent();
      _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePage (page #%lu): (analysisTypes == 0), DONE (+%g secs)", v27, v28, v29, v30, v31, v16);
    }

    std::mutex::unlock((self + 48));
  }
}

void __77__PDFPageAnalyzer_analyzePage_analysisTypes_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v71[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  WeakRetained[120] = GetDefaultsWriteDrawOCRQuads();
  v3 = *(a1 + 72);
  CFAbsoluteTimeGetCurrent();
  _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) generating page image (+%g secs)", v4, v5, v6, v7, v8, v3);
  v9 = [*(a1 + 32) renderingProperties];
  v10 = [v9 displayBox];
  [*(a1 + 32) boundsForBox:v10];
  v14 = v13;
  v16 = v15;
  v17 = v11;
  v18 = v12;
  v19 = v12;
  v20 = v11;
  if (v11 * v12 > 484704.0)
  {
    v21 = sqrt(484704.0 / (v11 * v12));
    v20 = v11 * v21;
    v19 = v12 * v21;
  }

  v22 = *(WeakRetained + 14);
  v70[0] = @"PDFPageImageProperty_ColorSpace";
  v23 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  v70[1] = @"PDFPageImageProperty_ForOCR";
  v71[0] = v23;
  v71[1] = MEMORY[0x1E695E118];
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];

  v25 = [*(a1 + 32) imageOfSize:v10 forBox:v24 withOptions:{floor(v20 * v22), floor(v19 * v22)}];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v26 = getVKImageAnalyzerRequestClass(void)::softClass;
  v69 = getVKImageAnalyzerRequestClass(void)::softClass;
  if (!getVKImageAnalyzerRequestClass(void)::softClass)
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = ___ZL30getVKImageAnalyzerRequestClassv_block_invoke;
    v65[3] = &unk_1E8150870;
    v65[4] = &v66;
    ___ZL30getVKImageAnalyzerRequestClassv_block_invoke(v65);
    v26 = v67[3];
  }

  v27 = v26;
  _Block_object_dispose(&v66, 8);
  v28 = [[v26 alloc] initWithImage:v25 requestType:1];
  [v28 set_wantsFormFieldDetection:(*(a1 + 88) & 6) != 0];
  CFAbsoluteTimeGetCurrent();
  dispatch_semaphore_wait(*(WeakRetained + 4), 0xFFFFFFFFFFFFFFFFLL);
  v29 = *(a1 + 72);
  CFAbsoluteTimeGetCurrent();
  CFAbsoluteTimeGetCurrent();
  _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) GOT workload semaphore after (%g) sec wait (+%g secs)", v30, v31, v32, v33, v34, v29);
  v35 = *(a1 + 72);
  CFAbsoluteTimeGetCurrent();
  _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) Analyzer request BEGIN (+%g secs)", v36, v37, v38, v39, v40, v35);
  v41 = *(WeakRetained + 3);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __77__PDFPageAnalyzer_analyzePage_analysisTypes_completionQueue_completionBlock___block_invoke_2;
  v52[3] = &unk_1E8150DB8;
  v42 = *(a1 + 72);
  v52[4] = WeakRetained;
  v57 = v42;
  v58 = *(a1 + 80);
  v59 = *(a1 + 88);
  v43 = v25;
  v53 = v43;
  v60 = v14;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  v54 = *(a1 + 32);
  v64 = v10;
  v51 = *(a1 + 48);
  v44 = v51;
  v56 = v51;
  v55 = *(a1 + 40);
  if (![v41 processRequest:v28 progressHandler:0 completionHandler:v52])
  {
    v45 = *(a1 + 72);
    CFAbsoluteTimeGetCurrent();
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu)  [VKImageAnalyzer processRequest:] returned 0(+%g secs)", v46, v47, v48, v49, v50, v45);
    std::mutex::lock((WeakRetained + 48));
    [*(WeakRetained + 5) removeObject:*(a1 + 32)];
    dispatch_semaphore_signal(*(WeakRetained + 4));
    std::mutex::unlock((WeakRetained + 48));
  }
}

void __77__PDFPageAnalyzer_analyzePage_analysisTypes_completionQueue_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = a2;
  v5 = a3;
  dispatch_semaphore_signal(*(*(a1 + 32) + 32));
  v6 = *(a1 + 80);
  if (v46)
  {
    CFAbsoluteTimeGetCurrent();
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) Analyzer request COMPLETED (+%g secs)", v7, v8, v9, v10, v11, v6);
    v12 = *(a1 + 96);
    if (v12)
    {
      [*(a1 + 32) _addTextFromAnalysis:v46 ofImage:*(a1 + 40) bounds:*(a1 + 48) toPage:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
      [*(a1 + 48) setDidPerformOCR:1];
      v13 = *(a1 + 80);
      CFAbsoluteTimeGetCurrent();
      _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) OCR digestion COMPLETED (+%g secs)", v14, v15, v16, v17, v18, v13);
      v12 = *(a1 + 96);
    }

    if ((v12 & 2) != 0)
    {
      v19 = [*(a1 + 48) annotations];
      IsVisionKitFormDetectionEnabled = PDFKitIsVisionKitFormDetectionEnabled();
      v21 = *(a1 + 32);
      if (IsVisionKitFormDetectionEnabled)
      {
        [v21 _addFormElementsFromAnalysis:v46 bounds:*(a1 + 48) toPage:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
        *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) _addTableFromAnalysis:v46 bounds:*(a1 + 48) toPDFPage:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
      }

      else
      {
        [v21 _addFormElementsUsingDetectorToPage:*(a1 + 48) displayBox:*(a1 + 136)];
      }

      v27 = *(a1 + 80);
      CFAbsoluteTimeGetCurrent();
      _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) Form detection COMPLETED (+%g secs)", v28, v29, v30, v31, v32, v27);
      [*(a1 + 48) setDidPerformFormDetection:1];
      v12 = *(a1 + 96);
    }

    if ((v12 & 4) != 0)
    {
      v33 = *(a1 + 80);
      CFAbsoluteTimeGetCurrent();
      _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) Minimal analysis COMPLETED (+%g secs)", v34, v35, v36, v37, v38, v33);
    }

    [*(a1 + 32) _callCompletionBlock:*(a1 + 64) onQueue:*(a1 + 56) analysis:v46 error:0 foundTable:*(*(*(a1 + 72) + 8) + 24)];
    v39 = *(a1 + 80);
    CFAbsoluteTimeGetCurrent();
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) Completion block COMPLETED (+%g secs)", v40, v41, v42, v43, v44, v39);
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePageBlock: (page #%lu) Analyzer request FAILED (+%g secs)", v22, v23, v24, v25, v26, v6);
    [*(a1 + 32) _callCompletionBlock:*(a1 + 64) onQueue:*(a1 + 56) analysis:0 error:v5 foundTable:*(*(*(a1 + 72) + 8) + 24)];
  }

  v45 = *(a1 + 32);
  std::mutex::lock((v45 + 48));
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 48)];
  std::mutex::unlock((v45 + 48));
}

- (void)proposedFormFieldBoundsNearestPoint:(CGPoint)point onPage:(id)page completionBlock:(id)block
{
  y = point.y;
  x = point.x;
  pageCopy = page;
  blockCopy = block;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x5012000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v21[5] = &unk_1C1D88347;
  v11 = *(MEMORY[0x1E695F050] + 16);
  v22 = *MEMORY[0x1E695F050];
  v23 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PDFPageAnalyzer_proposedFormFieldBoundsNearestPoint_onPage_completionBlock___block_invoke;
  v14[3] = &unk_1E8150E30;
  v15 = pageCopy;
  selfCopy = self;
  v19 = x;
  v20 = y;
  v17 = blockCopy;
  v18 = v21;
  v12 = blockCopy;
  v13 = pageCopy;
  [(PDFPageAnalyzer *)self analyzePage:v13 analysisTypes:4 completionQueue:0 completionBlock:v14];

  _Block_object_dispose(v21, 8);
}

void __78__PDFPageAnalyzer_proposedFormFieldBoundsNearestPoint_onPage_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [*(a1 + 32) document];
    v9 = [v8 renderingProperties];

    if (!v9)
    {
      v9 = objc_opt_new();
    }

    [*(a1 + 32) boundsForBox:{objc_msgSend(v9, "displayBox")}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    memset(&v56, 0, sizeof(v56));
    v18 = objc_opt_class();
    if (v18)
    {
      [v18 _normalizedToPageTransformForPageWithBounds:{v11, v13, v15, v17}];
    }

    else
    {
      memset(&v56, 0, sizeof(v56));
    }

    v49 = v17;
    v50 = v15;
    v54 = v56;
    memset(&v55, 0, sizeof(v55));
    CGAffineTransformInvert(&v55, &v54);
    v19 = *(a1 + 64);
    v20 = *(a1 + 72);
    a = v55.a;
    b = v55.b;
    c = v55.c;
    d = v55.d;
    tx = v55.tx;
    ty = v55.ty;
    v57.x = v19;
    v57.y = v20;
    v27 = NSStringFromPoint(v57);
    v28 = ty + v20 * d + b * v19;
    v29 = tx + v20 * c + a * v19;
    v58.x = v29;
    v58.y = v28;
    v48 = NSStringFromPoint(v58);
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "proposedFormField: pagePoint = %@, normalizedPoint = %@", v30, v31, v32, v33, v34, v27);

    v35 = PDFPointScale(v50, v49, *(*(a1 + 40) + 112));
    v37 = [v5 proposedFormRegionForPoint:0 existingFields:v29 formSize:{v28, v35, v36}];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 quad];
      [v39 boundingBox];
      v54 = v56;
      *(*(*(a1 + 56) + 8) + 48) = CGRectApplyAffineTransform(v59, &v54);

      v40 = NSStringFromRect(*(*(*(a1 + 56) + 8) + 48));
      _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "proposedFormField: formRegion bounds: %@", v41, v42, v43, v44, v45, v40);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PDFPageAnalyzer_proposedFormFieldBoundsNearestPoint_onPage_completionBlock___block_invoke_2;
  block[3] = &unk_1E8150E08;
  v46 = *(a1 + 48);
  v47 = *(a1 + 56);
  v52 = v46;
  v53 = v47;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_callCompletionBlock:(id)block onQueue:(id)queue analysis:(id)analysis error:(id)error foundTable:(BOOL)table
{
  tableCopy = table;
  blockCopy = block;
  queueCopy = queue;
  analysisCopy = analysis;
  errorCopy = error;
  if (blockCopy)
  {
    if (queueCopy)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __74__PDFPageAnalyzer__callCompletionBlock_onQueue_analysis_error_foundTable___block_invoke;
      v15[3] = &unk_1E8150E58;
      v18 = blockCopy;
      v16 = analysisCopy;
      v17 = errorCopy;
      v19 = tableCopy;
      dispatch_async(queueCopy, v15);
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, analysisCopy, errorCopy, tableCopy);
    }
  }
}

- (void)_addTextFromAnalysis:(id)analysis ofImage:(id)image bounds:(CGRect)bounds toPage:(id)page
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  analysisCopy = analysis;
  imageCopy = image;
  pageCopy = page;
  v16 = CGDisplayListCreate();
  value[7] = v16;
  v17 = CGDisplayListContextCreate();
  value[6] = v17;
  [(PDFPageAnalyzer *)self _drawTextFromAnalysis:analysisCopy ofImage:imageCopy intoContext:v17 withBounds:x, y, width, height];
  CGContextFlush(v17);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  value[5] = Mutable;
  v19 = CGDataConsumerCreateWithCFData(Mutable);
  value[4] = v19;
  v20 = CGPDFContextCreate(v19, 0, 0);
  value[3] = v20;
  CGPDFContextBeginPage(v20, 0);
  CGContextDrawDisplayList();
  CGPDFContextEndPage(v20);
  CGPDFContextClose(v20);
  v21 = CGDataProviderCreateWithCFData(Mutable);
  value[2] = v21;
  v22 = CGPDFDocumentCreateWithProvider(v21);
  value[1] = v22;
  Page = CGPDFDocumentGetPage(v22, 1uLL);
  Dictionary = CGPDFPageGetDictionary(Page);
  value[0] = 0;
  if (CGPDFDictionaryGetDictionary(Dictionary, "Resources", value))
  {
    dict = 0;
    if (CGPDFDictionaryGetDictionary(value[0], "XObject", &dict))
    {
      stream = 0;
      if (CGPDFDictionaryGetStream(dict, "Fm1", &stream))
      {
        CGPDFStreamGetDictionary(stream);
        [pageCopy setExtraContentStream:stream steamDocument:v22];
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

- (BOOL)_addTableFromAnalysis:(id)analysis bounds:(CGRect)bounds toPDFPage:(id)page
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v75 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  pageCopy = page;
  memset(&v72, 0, sizeof(v72));
  v10 = objc_opt_class();
  if (v10)
  {
    [v10 _normalizedToPageTransformForPageWithBounds:{x, y, width, height}];
  }

  else
  {
    memset(&v72, 0, sizeof(v72));
  }

  layoutComponents = [analysisCopy layoutComponents];
  v57 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = layoutComponents;
  v60 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v60)
  {
    v59 = *v69;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v69 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v68 + 1) + 8 * i);
        if ([v11 type] == 64)
        {
          boundingQuad = [v11 boundingQuad];
          [boundingQuad boundingBox];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v67 = v72;
          v76.origin.x = v14;
          v76.origin.y = v16;
          v76.size.width = v18;
          v76.size.height = v20;
          v77 = CGRectApplyAffineTransform(v76, &v67);
          v21 = v77.origin.x;
          v22 = v77.origin.y;
          v23 = v77.size.width;
          v24 = v77.size.height;
          v61 = objc_opt_new();
          v25 = objc_opt_new();
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          children = [v11 children];
          v27 = [children countByEnumeratingWithState:&v63 objects:v73 count:16];
          if (v27)
          {
            v28 = *v64;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v64 != v28)
                {
                  objc_enumerationMutation(children);
                }

                v30 = *(*(&v63 + 1) + 8 * j);
                v31 = objc_opt_new();
                v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "rowRange")}];
                [v31 setValue:v32 forKey:@"Row Index"];

                boundingQuad2 = [v30 boundingQuad];
                [boundingQuad2 boundingBox];
                v35 = v34;
                v37 = v36;
                v39 = v38;
                v41 = v40;

                v67 = v72;
                v78.origin.x = v35;
                v78.origin.y = v37;
                v78.size.width = v39;
                v78.size.height = v41;
                v79 = CGRectApplyAffineTransform(v78, &v67);
                v42 = [MEMORY[0x1E696B098] valueWithRect:{v79.origin.x, v79.origin.y, v79.size.width, v79.size.height}];
                [v31 setValue:v42 forKey:@"Rect"];

                [v25 addObject:v31];
              }

              v27 = [children countByEnumeratingWithState:&v63 objects:v73 count:16];
            }

            while (v27);
          }

          v43 = [MEMORY[0x1E696B098] valueWithRect:{v21, v22, v23, v24}];
          [v61 setValue:v43 forKey:@"Rect"];

          [v61 setValue:v25 forKey:@"Cells"];
          [v57 addObject:v61];
        }
      }

      v60 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v60);
  }

  if ([v57 count])
  {
    CFAbsoluteTimeGetCurrent();
    [pageCopy pageRef];
    v44 = v57;
    inserted = CGPDFPageInsertTableDescriptions();
    document = [pageCopy document];
    v47 = [document indexForPage:pageCopy];
    CFAbsoluteTimeGetCurrent();
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "table insertion for page: (page #%lu) COMPLETED (+%g secs)", v48, v49, v50, v51, v52, v47 + 1);
  }

  else
  {
    inserted = 0;
  }

  return inserted;
}

- (void)_drawTextFromAnalysis:(id)analysis ofImage:(id)image intoContext:(CGContext *)context withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v115 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  imageCopy = image;
  [imageCopy size];
  v14 = v13;
  v16 = v15;
  CGAffineTransformMakeTranslation(&v110, 0.0, v15);
  v108 = v110;
  CGAffineTransformScale(&v109, &v108, v14, -v16);
  v110 = v109;
  memset(&v109, 0, sizeof(v109));
  v17 = objc_opt_class();
  if (v17)
  {
    [v17 _normalizedToPageTransformForPageWithBounds:{x, y, width, height}];
  }

  else
  {
    memset(&v109, 0, sizeof(v109));
  }

  selfCopy = self;
  v18 = imageCopy;
  cGImage = [imageCopy CGImage];
  CGContextSaveGState(context);
  SRGB = CGColorCreateSRGB(1.0, 0.0, 0.0, 0.0);
  v108.b = 0.0;
  v108.c = 0.0;
  *&v108.a = &v108.b;
  [analysisCopy allLines];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  obj = v105 = 0u;
  v83 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (v83)
  {
    v82 = *v105;
    v89 = *MEMORY[0x1E69659D8];
    v90 = *MEMORY[0x1E6965658];
    alloc = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v105 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v104 + 1) + 8 * i);
        children = [v19 children];
        lastObject = [children lastObject];
        quad = [v19 quad];
        v85 = quadTransformedWithAffineTransform(quad, &v109.a);

        [v85 bottomLeft];
        v22 = v21;
        v24 = v23;
        [v85 bottomRight];
        angle = atan2(v25 - v24, v26 - v22);
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v87 = children;
        v27 = [v87 countByEnumeratingWithState:&v100 objects:v113 count:16];
        if (v27)
        {
          v93 = *v101;
          do
          {
            v96 = v27;
            for (j = 0; j != v96; ++j)
            {
              if (*v101 != v93)
              {
                objc_enumerationMutation(v87);
              }

              v29 = *(*(&v100 + 1) + 8 * j);
              quad2 = [v29 quad];
              v31 = quadTransformedWithAffineTransform(quad2, &v109.a);

              [v31 bottomLeft];
              v33 = v32;
              v35 = v34;
              [v31 bottomRight];
              v37 = v36;
              v39 = v38;
              [v31 sideLength];
              v41 = v40;
              v44 = (v42 + v43) * 0.5;
              v99 = round(v44 * 10.0) / 10.0;
              string = [v29 string];
              v46 = [string length];

              quad3 = [v29 quad];
              v48 = quadTransformedWithAffineTransform(quad3, &v110.a);

              [(PDFPageAnalyzer *)selfCopy _computeEdgeInsetsForQuad:v48 inImage:cGImage background:0 glyphCount:v46];
              PDFRectScale(v49, v50, v51, v52, 1.0 / *(selfCopy + 14));
              v54 = v53;
              v56 = v55;
              b = v108.b;
              if (!*&v108.b)
              {
                goto LABEL_21;
              }

              p_b = &v108.b;
              do
              {
                v59 = *(*&b + 32);
                if (v59 >= v99)
                {
                  p_b = *&b;
                }

                b = *(*&b + 8 * (v59 < v99));
              }

              while (b != 0.0);
              if (p_b != &v108.b && v99 >= p_b[4])
              {
                v60 = *(p_b + 5);
              }

              else
              {
LABEL_21:
                cf = CTFontCreateWithName(@"Times-Roman", v99, 0);
                std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::__emplace_unique_key_args<double,double &,applesauce::CF::ObjectRef<__CTFont const*>&>(&v108, &v99);
                v60 = cf;
                if (cf)
                {
                  CFRelease(cf);
                }
              }

              string2 = [v29 string];
              v62 = string2;
              if (v29 == lastObject)
              {
                v63 = @"\n";
              }

              else
              {
                v63 = @" ";
              }

              v64 = [string2 stringByAppendingString:v63];

              v111[0] = v90;
              v111[1] = v89;
              v112[0] = v60;
              v112[1] = SRGB;
              v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:2];
              v66 = CFAttributedStringCreate(alloc, v64, v65);
              v67 = CTLineCreateWithAttributedString(v66);
              JustifiedLine = CTLineCreateJustifiedLine(v67, 1.0, v41 - (v54 + v56));
              CGContextSaveGState(context);
              CGContextTranslateCTM(context, v33, v35);
              CGContextRotateCTM(context, angle);
              CGContextTranslateCTM(context, v54, v44 * 0.18);
              CGContextSetTextPosition(context, 0.0, 0.0);
              if (JustifiedLine)
              {
                v69 = JustifiedLine;
              }

              else
              {
                v69 = v67;
              }

              CTLineDraw(v69, context);
              CGContextRestoreGState(context);
              if (*(selfCopy + 120) == 1)
              {
                [v31 topLeft];
                v71 = v70;
                v73 = v72;
                [v31 topRight];
                v75 = v74;
                v77 = v76;
                Mutable = CGPathCreateMutable();
                CGPathMoveToPoint(Mutable, 0, v71, v73);
                CGPathAddLineToPoint(Mutable, 0, v75, v77);
                CGPathAddLineToPoint(Mutable, 0, v37, v39);
                CGPathAddLineToPoint(Mutable, 0, v33, v35);
                CGPathCloseSubpath(Mutable);
                CGContextAddPath(context, Mutable);
                CGContextSaveGState(context);
                CGContextStrokePath(context);
                CGContextRestoreGState(context);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }
              }

              if (JustifiedLine)
              {
                CFRelease(JustifiedLine);
              }

              if (v67)
              {
                CFRelease(v67);
              }

              if (v66)
              {
                CFRelease(v66);
              }
            }

            v27 = [v87 countByEnumeratingWithState:&v100 objects:v113 count:16];
          }

          while (v27);
        }
      }

      v83 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v83);
  }

  CGContextRestoreGState(context);
  std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::destroy(&v108, *&v108.b);
  if (SRGB)
  {
    CFRelease(SRGB);
  }
}

- (CGPoint)_testPixelsFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint compare:(id)compare
{
  y = toPoint.y;
  x = toPoint.x;
  v7 = point.y;
  v8 = point.x;
  compareCopy = compare;
  v10 = v8;
  v11 = v7;
  v12 = x;
  v13 = y;
  if (x > v10)
  {
    v14 = 1;
  }

  else
  {
    v14 = -1;
  }

  v29 = v14;
  if (v12 - v10 >= 0)
  {
    v15 = x - v10;
  }

  else
  {
    v15 = v10 - x;
  }

  if (v13 > v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = -1;
  }

  if (v13 - v11 >= 0)
  {
    v17 = v13 - v11;
  }

  else
  {
    v17 = v11 - v13;
  }

  v18 = -v17;
  v19 = v15 - v17;
  while ((compareCopy[2](compareCopy, v10, v11) & 1) != 0)
  {
    if (v10 == v12 && v11 == y)
    {
      goto LABEL_30;
    }

    v20 = 2 * v19;
    if (2 * v19 >= v18)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    v22 = v29;
    if (v20 < v18)
    {
      v22 = 0;
    }

    v23 = v19 - v21;
    v10 = (v22 + v10);
    v24 = v20 <= v15;
    if (v20 <= v15)
    {
      v25 = v16;
    }

    else
    {
      v25 = 0;
    }

    v11 = (v25 + v11);
    if (v24)
    {
      v26 = v15;
    }

    else
    {
      v26 = 0;
    }

    v19 = v23 + v26;
  }

  x = v10;
  y = v11;
LABEL_30:

  v27 = x;
  v28 = y;
  result.y = v28;
  result.x = v27;
  return result;
}

- (UIEdgeInsets)_computeEdgeInsetsForQuad:(id)quad inImage:(CGImage *)image background:(unsigned __int8)background glyphCount:(unint64_t)count
{
  v64 = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  CGBuf::CGBuf(v60, image);
  v10 = v63 <= 1u && v62 == 8;
  if (!v10 || (v61 & 0x1Fu) - 1 <= 3)
  {
    NSLog(&cfstr_SInvalidImageM.isa, "[PDFPageAnalyzer _computeEdgeInsetsForQuad:inImage:background:glyphCount:]");
LABEL_8:
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_9;
  }

  if (!v60[3] || !v60[4])
  {
    NSLog(&cfstr_SInvalidImageM_0.isa, "[PDFPageAnalyzer _computeEdgeInsetsForQuad:inImage:background:glyphCount:]");
    goto LABEL_8;
  }

  Height = CGImageGetHeight(image);
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v22 = *(MEMORY[0x1E69DDCE0] + 24);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3321888768;
  v58[2] = __75__PDFPageAnalyzer__computeEdgeInsetsForQuad_inImage_background_glyphCount___block_invoke;
  v58[3] = &__block_descriptor_361_ea8_32c10_ZTS5CGBuf_e11_B16__0i8i12l;
  CGBuf::CGBuf(v59, v60);
  v59[328] = background;
  v23 = _Block_copy(v58);
  v57 = v21;
  MEMORY[0x1EEE9AC00]();
  divideQuadSideIntoSegments(quadCopy, 0, &v53);
  MEMORY[0x1EEE9AC00]();
  divideQuadSideIntoSegments(quadCopy, 1, &v51);
  v56 = v22;
  v24 = Height;
  v25 = v54;
  v26 = v52;
  v27 = 1.79769313e308;
  v28 = 6;
  do
  {
    v29 = *(v25 - 1);
    v30 = v24 - *v25;
    v31 = *(v26 - 1);
    v32 = v24 - *v26;
    [(PDFPageAnalyzer *)self _testPixelsFromPoint:v23 toPoint:v29 compare:v30, v31, v32];
    if (v33 != v31 || v34 != v32)
    {
      v36 = (v34 - v30) * (v34 - v30) + (v33 - v29) * (v33 - v29);
      if (v27 >= v36)
      {
        v27 = v36;
      }
    }

    v25 += 2;
    v26 += 2;
    --v28;
  }

  while (v28);
  v55 = v20;
  v37 = sqrt(v27);
  v38 = 1.79769313e308;
  if (v27 == 1.79769313e308)
  {
    v12 = v57;
  }

  else
  {
    v12 = v37;
  }

  v39 = v52;
  v40 = v54;
  v41 = 6;
  do
  {
    v42 = *(v39 - 1);
    v43 = v24 - *v39;
    v44 = *(v40 - 1);
    v45 = v24 - *v40;
    [(PDFPageAnalyzer *)self _testPixelsFromPoint:v23 toPoint:v42 compare:v43, v44, v45];
    if (v46 != v44 || v47 != v45)
    {
      v49 = (v47 - v43) * (v47 - v43) + (v46 - v42) * (v46 - v42);
      if (v38 >= v49)
      {
        v38 = v49;
      }
    }

    v39 += 2;
    v40 += 2;
    --v41;
  }

  while (v41);
  v50 = sqrt(v38);
  if (v38 == 1.79769313e308)
  {
    v14 = v56;
  }

  else
  {
    v14 = v50;
  }

  v11 = v55;
  CGBuf::~CGBuf(v59);
LABEL_9:
  CGBuf::~CGBuf(v60);

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

BOOL __75__PDFPageAnalyzer__computeEdgeInsetsForQuad_inImage_background_glyphCount___block_invoke(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 64) <= a3)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = *(v3 + 32);
  }

  v4 = *(a1 + 72) * a3;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  if (!v5 || *(a1 + 56) <= a2)
  {
    return 0;
  }

  v6 = *(v5 + a2) - *(a1 + 360);
  if (v6 < 0)
  {
    v6 = -v6;
  }

  return v6 > 0x7F;
}

- (id)_detectedAnnotationWithBounds:(CGRect)bounds intersectsAnnotationOnPage:(id)page
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v35 = 0;
  v36 = 0;
  v9 = &v35;
  v34 = &v35;
  [pageCopy annotations];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v10 = v31 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        [v14 bounds];
        v43.origin.x = v15;
        v43.origin.y = v16;
        v18 = v17;
        v20 = v19;
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v43.size.width = v18;
        v43.size.height = v20;
        v42 = CGRectIntersection(v41, v43);
        v21 = v42.size.width;
        v22 = v42.size.height;
        if (!CGRectIsNull(v42))
        {
          v29 = v21 * v22 / (v18 * v20);
          v37 = &v29;
          v23 = std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v34, &v29);
          objc_storeStrong(v23 + 5, v14);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v11);
  }

  if (!v36)
  {
    goto LABEL_16;
  }

  v24 = v35;
  if (v35)
  {
    do
    {
      v25 = v24;
      v24 = v24[1];
    }

    while (v24);
  }

  else
  {
    do
    {
      v25 = v9[2];
      v26 = *v25 == v9;
      v9 = v25;
    }

    while (v26);
  }

  if (*(v25 + 4) > 0.5)
  {
    v27 = v25[5];
  }

  else
  {
LABEL_16:
    v27 = 0;
  }

  std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::destroy(&v34, v35);

  return v27;
}

- (void)_addFormElementsFromAnalysis:(id)analysis bounds:(CGRect)bounds toPage:(id)page
{
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v97 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  pageCopy = page;
  annotations = [pageCopy annotations];
  array = [MEMORY[0x1E695DF70] array];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = annotations;
  v8 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (v8)
  {
    v9 = *v91;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v91 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v90 + 1) + 8 * i);
        if ([v11 isSynthesizedFormField])
        {
          contents = [v11 contents];
          v13 = [contents length] == 0;

          if (v13)
          {
            [array addObject:v11];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
    }

    while (v8);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v62 = array;
  v14 = [v62 countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v14)
  {
    v15 = *v87;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v87 != v15)
        {
          objc_enumerationMutation(v62);
        }

        [pageCopy removeAnnotation:*(*(&v86 + 1) + 8 * j)];
      }

      v14 = [v62 countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v14);
  }

  recognitionConfidence = [analysisCopy recognitionConfidence];
  if (recognitionConfidence < 3)
  {
    [pageCopy setDetectedFormFieldsRecognitionConfidence:recognitionConfidence + 1];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  v18 = objc_opt_class();
  if (v18)
  {
    [v18 _normalizedToPageTransformForPageWithBounds:{x, y, width, height}];
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
  }

  v19 = MEMORY[0x1E69DB878];
  v20 = +[PDFAnnotation detectedFormFieldDefaultFontName];
  +[PDFAnnotation detectedFormFieldDefaultFontSize];
  v59 = [v19 fontWithName:v20 size:?];

  v21 = MEMORY[0x1E69DB878];
  +[PDFAnnotation detectedFormFieldDefaultFontSize];
  v60 = [v21 monospacedSystemFontOfSize:? weight:?];
  annotations2 = [pageCopy annotations];
  v23 = [analysisCopy formRegionsExcluding:annotations2 updateExcludedFields:1];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (v25)
  {
    v26 = *v80;
    do
    {
      v27 = 0;
      do
      {
        if (*v80 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v79 + 1) + 8 * v27);
        quad = [v28 quad];
        [quad topLeft];
        v31 = v30;
        v33 = v32;
        [quad topRight];
        v35 = v34;
        v37 = v36;
        [quad bottomLeft];
        v39 = v38;
        v41 = v40;
        [quad bottomRight];
        if (v33 != v37 || v41 != v43)
        {

LABEL_41:
          goto LABEL_42;
        }

        v45 = v35 == v42 && v31 == v39;

        if (v45)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __62__PDFPageAnalyzer__addFormElementsFromAnalysis_bounds_toPage___block_invoke;
          aBlock[3] = &unk_1E8150E80;
          v72 = v83;
          v73 = v84;
          v74 = v85;
          v68 = v60;
          v69 = v59;
          v75 = x;
          v76 = y;
          v77 = width;
          v78 = height;
          v46 = pageCopy;
          v70 = v46;
          v71 = array2;
          v47 = _Block_copy(aBlock);
          if ([v28 fieldType] == 1 || objc_msgSend(v28, "fieldType") == 2)
          {
            v48 = v47[2](v47, v28);
          }

          else if (![v28 fieldType])
          {
            children = [v28 children];
            v50 = objc_alloc_init(MEMORY[0x1E695DFA0]);
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __62__PDFPageAnalyzer__addFormElementsFromAnalysis_bounds_toPage___block_invoke_2;
            v64[3] = &unk_1E8150EA8;
            v66 = v47;
            v51 = v50;
            v65 = v51;
            [children enumerateObjectsUsingBlock:v64];
            if ([v51 count])
            {
              [v46 addFormFieldGroup:v51];
            }
          }

          quad = v68;
          goto LABEL_41;
        }

LABEL_42:
        ++v27;
      }

      while (v25 != v27);
      v52 = [v24 countByEnumeratingWithState:&v79 objects:v94 count:16];
      v25 = v52;
    }

    while (v52);
  }

  if ([array2 count] && objc_msgSend(array2, "count"))
  {
    [pageCopy addDetectedAnnotations:array2];
  }
}

id __62__PDFPageAnalyzer__addFormElementsFromAnalysis_bounds_toPage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 quad];
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = *(a1 + 80);
  *&v31.a = *(a1 + 64);
  *&v31.c = v13;
  *&v31.tx = *(a1 + 96);
  v14 = v6;
  *&v13 = v8;
  v15 = v10;
  v16 = v12;
  v33 = CGRectApplyAffineTransform(*(&v13 - 8), &v31);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v21 = [v3 maxCharacterCount];
  v22 = 40;
  if (v21 > 0)
  {
    v22 = 32;
  }

  v23 = *(a1 + v22);
  [v3 suggestedLineHeight];
  if (v24 != 0.0)
  {
    [v3 suggestedLineHeight];
    v26 = [v23 fontWithSize:v25 * *(a1 + 136) * 0.75];

    v23 = v26;
  }

  v27 = [v3 autoFillContentType];
  v28 = [PDFAnnotation createDetectedTextFieldWithBounds:v23 font:v27 textContentType:*(a1 + 48) page:x, y, width, height];

  [v28 setFormContentType:{objc_msgSend(v3, "contentType")}];
  v29 = [v3 labelText];
  [v28 setLabelText:v29];

  if ([v3 contentType] == 50)
  {
    [v28 setIsDetectedSignature:1];
  }

  if ([v3 fieldType] == 2)
  {
    [v28 setIsDetectedCheckbox:1];
  }

  [v28 setAutofillNewContextStart:{objc_msgSend(v3, "autofillNewContextStart")}];
  if ([v3 fieldType] == 1 && objc_msgSend(v3, "maxCharacterCount") >= 1)
  {
    [v28 setComb:1];
    [v28 setMaximumLength:{objc_msgSend(v3, "maxCharacterCount")}];
  }

  [*(a1 + 56) addObject:v28];

  return v28;
}

void __62__PDFPageAnalyzer__addFormElementsFromAnalysis_bounds_toPage___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 40) + 16))();
  if (a3)
  {
    [v5 setAutoFillTextContentType:0];
    [v5 setFormContentType:1];
  }

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)_addFormElementsUsingDetectorToPage:(id)page displayBox:(int64_t)box
{
  pageCopy = page;
  v6 = [[PDFDetectedForm alloc] initWithPage:pageCopy displayBox:box];
  v7 = MEMORY[0x1E69DB878];
  v8 = +[PDFAnnotation detectedFormFieldDefaultFontName];
  +[PDFAnnotation detectedFormFieldDefaultFontSize];
  v9 = [v7 fontWithName:v8 size:?];

  array = [MEMORY[0x1E695DF70] array];
  v11 = [(PDFDetectedForm *)v6 count];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      pageCopy = [(PDFDetectedForm *)v6 detectedFormFieldAtIndex:i, pageCopy];
      [pageCopy rect];
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      MinY = CGRectGetMinY(v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      rect = width;
      [v9 ascender];
      v20 = v19;
      [v9 descender];
      v22 = v21;
      [v9 leading];
      v24 = v23;
      [v9 ascender];
      v25 = ceil(v20 - v22 + v24);
      v27 = MinY + v26 - v25;
      if ([pageCopy kind] == 2 || objc_msgSend(pageCopy, "kind") == 3)
      {
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v28 = CGRectGetHeight(v37);
        v38.origin.x = x;
        v38.origin.y = v27;
        v38.size.width = rect;
        v38.size.height = v25;
        v27 = y + (v28 - CGRectGetHeight(v38)) * 0.5;
      }

      v29 = [(PDFPageAnalyzer *)self _detectedAnnotationWithBounds:pageCopy intersectsAnnotationOnPage:x, v27 + -2.0, rect, v25];

      if (!v29)
      {
        v30 = [PDFAnnotation createDetectedTextFieldWithBounds:v9 font:0 textContentType:pageCopy page:x, v27 + -2.0, rect, v25];
        if ([pageCopy kind] == 3)
        {
          [v30 setComb:1];
          [v30 setMaximumLength:{objc_msgSend(pageCopy, "numberOfSegments")}];
        }

        [array addObject:v30];
      }
    }
  }

  if ([array count])
  {
    [v32 addDetectedAnnotations:array];
  }
}

+ (CGAffineTransform)_normalizedToPageTransformForPageWithBounds:(SEL)bounds
{
  height = a4.size.height;
  width = a4.size.width;
  CGAffineTransformMakeTranslation(retstr, a4.origin.x, a4.size.height + a4.origin.y);
  v7 = *&retstr->c;
  *&v10.a = *&retstr->a;
  *&v10.c = v7;
  *&v10.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v11, &v10, width, -height);
  v9 = *&v11.c;
  *&retstr->a = *&v11.a;
  *&retstr->c = v9;
  *&retstr->tx = *&v11.tx;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 850045863;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0;
  return self;
}

@end