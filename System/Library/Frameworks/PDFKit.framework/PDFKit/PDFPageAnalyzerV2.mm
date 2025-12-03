@interface PDFPageAnalyzerV2
+ (BOOL)addFormFieldsFromVisionDocument:(id)document documentImage:(__CVBuffer *)image toPage:(id)page withBox:(int64_t)box;
+ (BOOL)addTablesFromVisionDocument:(id)document documentImage:(__CVBuffer *)image toPage:(id)page withBox:(int64_t)box;
+ (BOOL)addTextFromVisionDocument:(id)document documentImage:(__CVBuffer *)image toPage:(id)page withBox:(int64_t)box;
+ (BOOL)isCreatedByCalendar:(id)calendar;
+ (CGAffineTransform)normalizedToCIImageTransformForImageWithSize:(SEL)size;
+ (CGAffineTransform)normalizedToPageTransformForPageWithBounds:(SEL)bounds;
+ (__CVBuffer)createPixelBufferForPage:(id)page withBox:(int64_t)box;
+ (double)sizeOfFont:(__CTFont *)font withHeight:(double)height string:(id)string;
+ (id)createImageFromImage:(id)image withBoundingQuad:(const PDFQuadPoints *)quad;
+ (id)createImageFromImage:(id)image withBounds:(const CGRect *)bounds;
+ (tuple<unsigned)getBaselineAndHeightFromRowAverages:(CGImage *)averages;
+ (tuple<unsigned)getXInsetsFromColAverages:(CGImage *)averages;
+ (unint64_t)analyzePage:(id)page withBox:(int64_t)box requestTypes:(unint64_t)types;
+ (vector<unsigned)getVectorFromAveragesImage:(id)image;
+ (void)addDisplayList:(CGDisplayList *)list toPage:(id)page;
+ (void)drawQuad:(const PDFQuadPoints *)quad lineAngle:(double)angle baselineOffset:(double)offset inContext:(CGContext *)context;
@end

@implementation PDFPageAnalyzerV2

+ (unint64_t)analyzePage:(id)page withBox:(int64_t)box requestTypes:(unint64_t)types
{
  v71[1] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  document = [pageCopy document];
  if (([self isCreatedByCalendar:document] & 1) == 0)
  {
    v10 = [document indexForPage:pageCopy];
    Current = CFAbsoluteTimeGetCurrent();
    v12 = pageCopy;
    objc_sync_enter(v12);
    if ((types & 1) != 0 && (([v12 didPerformOCR] & 1) != 0 || !+[PDFPageEvaluator isPageCandidateForOCR:](PDFPageEvaluator, "isPageCandidateForOCR:", v12)))
    {
      types &= ~1uLL;
    }

    if ((types & 2) != 0 && [v12 didPerformFormDetection])
    {
      types &= ~2uLL;
    }

    objc_sync_exit(v12);

    if (types)
    {
      v18 = v10 + 1;
      _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePage: (page #%lu) START", v13, v14, v15, v16, v17, v18);
      v19 = [self createPixelBufferForPage:v12 withBox:box];
      v61[1] = v19;
      if (v19)
      {
        v56 = CFAbsoluteTimeGetCurrent() - Current;
        _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePage: (page #%lu) Created pixel buffer. (+%g secs)", v20, v21, v22, v23, v24, v18);
        v58 = v18;
        v67 = 0;
        v68 = &v67;
        v69 = 0x2050000000;
        v25 = getVNSessionClass(void)::softClass;
        v70 = getVNSessionClass(void)::softClass;
        if (!getVNSessionClass(void)::softClass)
        {
          v62 = MEMORY[0x1E69E9820];
          v63 = 3221225472;
          v64 = ___ZL17getVNSessionClassv_block_invoke;
          v65 = &unk_1E8150870;
          v66 = &v67;
          ___ZL17getVNSessionClassv_block_invoke(&v62);
          v25 = v68[3];
        }

        v26 = v25;
        _Block_object_dispose(&v67, 8);
        v27 = [[v25 alloc] init];
        v67 = 0;
        v68 = &v67;
        v69 = 0x2050000000;
        v28 = getVNRecognizeDocumentsRequestClass(void)::softClass;
        v70 = getVNRecognizeDocumentsRequestClass(void)::softClass;
        v57 = v27;
        if (!getVNRecognizeDocumentsRequestClass(void)::softClass)
        {
          v62 = MEMORY[0x1E69E9820];
          v63 = 3221225472;
          v64 = ___ZL35getVNRecognizeDocumentsRequestClassv_block_invoke;
          v65 = &unk_1E8150870;
          v66 = &v67;
          ___ZL35getVNRecognizeDocumentsRequestClassv_block_invoke(&v62);
          v28 = v68[3];
        }

        v29 = v28;
        _Block_object_dispose(&v67, 8);
        v30 = [[v28 alloc] init];
        v59 = v30;
        [v30 setRecognitionLevel:0];
        [v30 setUsesFormFieldDetection:(types >> 1) & 1];
        v67 = 0;
        v68 = &v67;
        v69 = 0x2050000000;
        v31 = getVNImageRequestHandlerClass(void)::softClass;
        v70 = getVNImageRequestHandlerClass(void)::softClass;
        if (!getVNImageRequestHandlerClass(void)::softClass)
        {
          v62 = MEMORY[0x1E69E9820];
          v63 = 3221225472;
          v64 = ___ZL29getVNImageRequestHandlerClassv_block_invoke;
          v65 = &unk_1E8150870;
          v66 = &v67;
          ___ZL29getVNImageRequestHandlerClassv_block_invoke(&v62);
          v31 = v68[3];
        }

        v32 = v31;
        _Block_object_dispose(&v67, 8);
        v33 = [v31 alloc];
        v60 = [v33 initWithCVPixelBuffer:v19 options:MEMORY[0x1E695E0F8] session:v27];
        v71[0] = v30;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
        v61[0] = 0;
        v35 = [v60 performRequests:v34 error:v61];
        v36 = v61[0];

        if (!v35)
        {
          NSLog(&cfstr_Vnimagerequest.isa, v36, *&v56, v57);
          v44 = 0;
LABEL_31:

          CFRelease(v19);
          goto LABEL_22;
        }

        CFAbsoluteTimeGetCurrent();
        _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePage: (page #%lu) VN Request complete. (+%g secs)", v37, v38, v39, v40, v41, v58);
        results = [v59 results];
        firstObject = [results firstObject];

        if (types)
        {
          v46 = v12;
          objc_sync_enter(v46);
          [v46 setDidPerformOCR:1];
          objc_sync_exit(v46);

          v44 = [self addTextFromVisionDocument:firstObject documentImage:v19 toPage:v46 withBox:box];
          if ((types & 2) == 0)
          {
LABEL_30:
            CFAbsoluteTimeGetCurrent();
            _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "analyzePage: (page #%lu) DONE. (+%g secs)", v51, v52, v53, v54, v55, v58);

            goto LABEL_31;
          }
        }

        else
        {
          v44 = 0;
          if ((types & 2) == 0)
          {
            goto LABEL_30;
          }
        }

        v47 = v12;
        objc_sync_enter(v47);
        [v47 setDidPerformFormDetection:1];
        objc_sync_exit(v47);

        v48 = [self addFormFieldsFromVisionDocument:firstObject documentImage:v19 toPage:v47 withBox:box];
        v49 = [self addTablesFromVisionDocument:firstObject documentImage:v19 toPage:v47 withBox:box];
        v50 = v44 | 2;
        if (!v48)
        {
          v50 = v44;
        }

        if (v49)
        {
          v44 = v50 | 4;
        }

        else
        {
          v44 = v50;
        }

        goto LABEL_30;
      }
    }
  }

  v44 = 0;
LABEL_22:

  return v44;
}

+ (BOOL)isCreatedByCalendar:(id)calendar
{
  calendarCopy = calendar;
  Info = CGPDFDocumentGetInfo([calendarCopy documentRef]);
  v5 = Info;
  if (Info && (string = 0, value = 0, CGPDFDictionaryGetString(Info, "Creator", &value)) && CGPDFDictionaryGetString(v5, "Producer", &string))
  {
    v6 = CGPDFStringCopyTextString(value);
    v7 = CGPDFStringCopyTextString(string);
    v8 = v7;
    v9 = 0;
    if (v6 && v7)
    {
      if ([(__CFString *)v6 isEqualToString:@"Calendar"])
      {
        if (([(__CFString *)v8 hasPrefix:@"macOS"]& 1) != 0)
        {
          v9 = 1;
        }

        else
        {
          v9 = [(__CFString *)v8 hasPrefix:@"iOS"];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (__CVBuffer)createPixelBufferForPage:(id)page withBox:(int64_t)box
{
  v30[3] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  [pageCopy boundsForBox:box];
  v7 = v6;
  v9 = v8;
  if ([pageCopy rotation] == 90 || objc_msgSend(pageCopy, "rotation") == 270)
  {
    v10 = v9;
    v11 = v7;
  }

  else
  {
    v10 = v7;
    v11 = v9;
  }

  if (v9 * v7 <= 484704.0)
  {
    v13 = v10;
  }

  else
  {
    v12 = sqrt(484704.0 / (v9 * v7));
    v13 = v12 * v10;
    v11 = v12 * v11;
  }

  v14 = v13 + v13;
  pixelBufferOut = 0;
  v15 = CVPixelBufferCreate(*MEMORY[0x1E695E480], vcvtmd_u64_f64(v13 + v13), vcvtmd_u64_f64(v11 + v11), 0x4C303038u, 0, &pixelBufferOut);
  if (!pixelBufferOut)
  {
    NSLog(&cfstr_Cvpixelbufferc.isa, v15);
    v24 = 0;
    goto LABEL_17;
  }

  pixelBuffer = pixelBufferOut;
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  p_pixelBuffer = &pixelBuffer;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v21 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceGray, 0);
  if (!v21)
  {
    v24 = 0;
    if (!DeviceGray)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v29[0] = @"PDFPageDrawWithBoxOption_DrawAnnotations";
  v29[1] = @"PDFPageDrawWithBoxOption_WithRotation";
  v30[0] = MEMORY[0x1E695E118];
  v30[1] = MEMORY[0x1E695E118];
  v29[2] = @"PDFPageImageProperty_DarkModeRendering";
  v30[2] = MEMORY[0x1E695E110];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v23 = floor(v14) / v10;
  CGContextScaleCTM(v21, v23, v23);
  CGContextErase();
  [pageCopy drawWithBox:box inContext:v21 withOptions:v22];
  v24 = pixelBuffer;
  pixelBuffer = 0;

  CFRelease(v21);
  if (DeviceGray)
  {
LABEL_14:
    CFRelease(DeviceGray);
  }

LABEL_15:
  applesauce::raii::v1::detail::ScopeGuard<+[PDFPageAnalyzerV2 createPixelBufferForPage:withBox:]::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&p_pixelBuffer);
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

LABEL_17:

  return v24;
}

+ (CGAffineTransform)normalizedToPageTransformForPageWithBounds:(SEL)bounds
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

+ (CGAffineTransform)normalizedToCIImageTransformForImageWithSize:(SEL)size
{
  height = a4.height;
  width = a4.width;
  CGAffineTransformMakeTranslation(retstr, 0.0, a4.height);
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

+ (void)drawQuad:(const PDFQuadPoints *)quad lineAngle:(double)angle baselineOffset:(double)offset inContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextMoveToPoint(context, quad->var0.x, quad->var0.y);
  CGContextAddLineToPoint(context, quad->var1.x, quad->var1.y);
  CGContextAddLineToPoint(context, quad->var3.x, quad->var3.y);
  CGContextAddLineToPoint(context, quad->var2.x, quad->var2.y);
  CGContextClosePath(context);
  CGContextStrokePath(context);
  if (offset > 0.0)
  {
    CGContextTranslateCTM(context, quad->var2.x, quad->var2.y);
    CGContextRotateCTM(context, angle);
    CGContextTranslateCTM(context, -quad->var2.x, -quad->var2.y);
    CGContextMoveToPoint(context, quad->var2.x, quad->var2.y + offset);
    CGContextAddLineToPoint(context, quad->var3.x, quad->var2.y + offset);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

+ (id)createImageFromImage:(id)image withBounds:(const CGRect *)bounds
{
  v5 = [image imageByClampingToRect:{bounds->origin.x, bounds->origin.y, bounds->size.width, bounds->size.height}];
  v6 = [v5 imageByCroppingToRect:{bounds->origin.x, bounds->origin.y, bounds->size.width, bounds->size.height}];

  return v6;
}

+ (id)createImageFromImage:(id)image withBoundingQuad:(const PDFQuadPoints *)quad
{
  imageCopy = image;
  PDFQuadPoints::boundingBox(quad);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v11 = [self createImageFromImage:imageCopy withBounds:v16];
  y = quad->var0.y;
  if (y != quad->var1.y || (y = quad->var2.y, y != quad->var3.y) || (y = quad->var0.x, quad->var0.x != quad->var2.x) || (y = quad->var1.x, y != quad->var3.x))
  {
    perspectiveCorrectionFilter = [MEMORY[0x1E695F648] perspectiveCorrectionFilter];
    [perspectiveCorrectionFilter setInputImage:v11];
    [perspectiveCorrectionFilter setTopLeft:{quad->var0.x, quad->var0.y}];
    [perspectiveCorrectionFilter setTopRight:{quad->var1.x, quad->var1.y}];
    [perspectiveCorrectionFilter setBottomLeft:{quad->var2.x, quad->var2.y}];
    [perspectiveCorrectionFilter setBottomRight:{quad->var3.x, quad->var3.y}];
    outputImage = [perspectiveCorrectionFilter outputImage];

    v11 = outputImage;
  }

  return v11;
}

+ (vector<unsigned)getVectorFromAveragesImage:(id)image
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  result = CGImageGetWidth(a4);
  v7 = result;
  if (result >= 3)
  {
    CGImageGetColorSpace(a4);
    BytesPerRow = CGImageGetBytesPerRow(a4);
    BitsPerPixel = CGImageGetBitsPerPixel(a4);
    result = malloc_type_calloc(BytesPerRow, 1uLL, 0x100004077774924uLL);
    v10 = result;
    if (result)
    {
      CGImageGetDataProvider(a4);
      CGAccessSessionCreate();
      CGAccessSessionGetBytes();
      CGAccessSessionRelease();
      AlphaInfo = CGImageGetAlphaInfo(a4);
      v12 = &v7[-1].var2 + 6;
      std::vector<unsigned char>::reserve(retstr, &v7[-1].var2 + 6);
      v13 = BitsPerPixel >> 3;
      v14 = AlphaInfo == kCGImageAlphaPremultipliedFirst || AlphaInfo == kCGImageAlphaFirst;
      var1 = retstr->var1;
      if (v14)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = BitsPerPixel >> 3;
      }

      do
      {
        var2 = retstr->var2;
        if (var1 >= var2)
        {
          var0 = retstr->var0;
          v19 = (var1 - retstr->var0);
          v20 = (v19 + 1);
          if ((v19 + 1) < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v21 = var2 - var0;
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            operator new();
          }

          v23 = var1 - retstr->var0;
          *v19 = *(&v10->var0 + v16);
          var1 = v19 + 1;
          memcpy(0, var0, v23);
          retstr->var0 = 0;
          retstr->var1 = v19 + 1;
          retstr->var2 = 0;
          if (var0)
          {
            operator delete(var0);
          }
        }

        else
        {
          *var1++ = *(&v10->var0 + v16);
        }

        retstr->var1 = var1;
        v16 += v13;
        --v12;
      }

      while (v12);

      free(v10);
    }
  }

  return result;
}

+ (tuple<unsigned)getBaselineAndHeightFromRowAverages:(CGImage *)averages
{
  [self getVectorFromAveragesImage:?];
  v4 = v17;
  if (v17 == v18)
  {
    v7 = 0;
    v11 = 0;
    if (!v17)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v17, v18, v18 - v17);
  v5 = __p + ((v15 - __p) >> 2);
  if (v5 != v15)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned char *>>(__p, __p + ((v15 - __p) >> 2), v15);
  }

  v6 = *v5;
  if (v17 == v18)
  {
LABEL_8:
    v7 = 0;
  }

  else
  {
    v7 = 0;
    while (v17[v7] > v6)
    {
      if (&v17[++v7] == v18)
      {
        goto LABEL_8;
      }
    }
  }

  Width = CGImageGetWidth(averages);
  v9 = 0;
  v4 = v17;
  while (&v18[v9] != v17)
  {
    v10 = v18[--v9];
    if (v10 <= v6)
    {
      Width = ~v9;
      break;
    }
  }

  v11 = &v18[-Width] - &v17[v7];
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
    v4 = v17;
  }

  if (v4)
  {
LABEL_16:
    v18 = v4;
    operator delete(v4);
  }

LABEL_17:
  v12 = v7;
  v13 = v11;
  result.var0.var1 = v13;
  result.var0.var0 = v12;
  return result;
}

+ (tuple<unsigned)getXInsetsFromColAverages:(CGImage *)averages
{
  [self getVectorFromAveragesImage:averages];
  if (v17 == v18)
  {
    v10 = 0;
  }

  else
  {
    v3 = v17 + 1;
    v4 = v17;
    if (v17 + 1 != v18)
    {
      v5 = *v17;
      v4 = v17;
      v6 = v17 + 1;
      do
      {
        v8 = *v6++;
        v7 = v8;
        v9 = v5 >= v8;
        if (v5 <= v8)
        {
          v5 = v7;
        }

        if (!v9)
        {
          v4 = v3;
        }

        v3 = v6;
      }

      while (v6 != v18);
    }

    v10 = 0;
    v11 = *v4;
    while (v17[v10] >= v11)
    {
      if (&v17[++v10] == v18)
      {
        v10 = 0;
        break;
      }
    }

    v12 = 0;
    while (&v18[v12] != v17)
    {
      v13 = v18[--v12];
      if (v13 < v11)
      {
        v14 = ~v12;
        if (v17)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }
  }

  v14 = 0;
  if (v17)
  {
LABEL_20:
    operator delete(v17);
  }

LABEL_21:
  v15 = v10;
  v16 = v14;
  result.var0.var1 = v16;
  result.var0.var0 = v15;
  return result;
}

+ (double)sizeOfFont:(__CTFont *)font withHeight:(double)height string:(id)string
{
  stringCopy = string;
  uppercaseString = [stringCopy uppercaseString];
  v9 = [uppercaseString isEqualToString:stringCopy];

  Size = CTFontGetSize(font);
  if (v9)
  {
    CapHeight = CTFontGetCapHeight(font);
  }

  else
  {
    CapHeight = CTFontGetXHeight(font);
  }

  v12 = Size / CapHeight * height;

  return v12;
}

+ (void)addDisplayList:(CGDisplayList *)list toPage:(id)page
{
  pageCopy = page;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  value[5] = Mutable;
  v6 = CGDataConsumerCreateWithCFData(Mutable);
  value[4] = v6;
  v7 = CGPDFContextCreate(v6, 0, 0);
  value[3] = v7;
  CGPDFContextBeginPage(v7, 0);
  CGContextDrawDisplayList();
  CGPDFContextEndPage(v7);
  CGPDFContextClose(v7);
  v8 = CGDataProviderCreateWithCFData(Mutable);
  value[2] = v8;
  v9 = CGPDFDocumentCreateWithProvider(v8);
  value[1] = v9;
  Page = CGPDFDocumentGetPage(v9, 1uLL);
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
        [pageCopy setExtraContentStream:stream steamDocument:v9];
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

+ (BOOL)addTextFromVisionDocument:(id)document documentImage:(__CVBuffer *)image toPage:(id)page withBox:(int64_t)box
{
  v129[1] = *MEMORY[0x1E69E9840];
  documentCopy = document;
  pageCopy = page;
  v68 = documentCopy;
  v69 = [documentCopy blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];
  v67 = [v69 count];
  if (v67)
  {
    v87 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:image];
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v10 = MEMORY[0x1E695F620];
    v128 = *MEMORY[0x1E695F838];
    v129[0] = DeviceGray;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
    v86 = [v10 contextWithOptions:v11];

    v120 = 0;
    v119 = 0;
    if (GetDefaultsWriteDrawOCRQuads())
    {
      v120 = CGDisplayListCreate();
      v119 = CGDisplayListContextCreate();
    }

    v12 = CGDisplayListCreate();
    v118 = v12;
    c = CGDisplayListContextCreate();
    [pageCopy boundsForBox:box];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    memset(&v116, 0, sizeof(v116));
    v21 = objc_opt_class();
    if (v21)
    {
      [v21 normalizedToPageTransformForPageWithBounds:{v14, v16, v18, v20}];
    }

    else
    {
      memset(&v116, 0, sizeof(v116));
    }

    Width = CVPixelBufferGetWidth(image);
    Height = CVPixelBufferGetHeight(image);
    memset(&v115, 0, sizeof(v115));
    v24 = objc_opt_class();
    if (v24)
    {
      [v24 normalizedToCIImageTransformForImageWithSize:{Width, Height}];
    }

    else
    {
      memset(&v115, 0, sizeof(v115));
    }

    v126 = *MEMORY[0x1E6965808];
    v127 = @"SF Pro";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v114 = CTFontDescriptorCreateWithAttributes(v25);

    v75 = CTFontCreateWithFontDescriptor(v114, 100.0, 0);
    font = v75;
    if (GetDefaultsWriteDrawInvisibleText())
    {
      [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v91 = ;
    Current = CFAbsoluteTimeGetCurrent();
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = v69;
    v76 = [obj countByEnumeratingWithState:&v109 objects:v125 count:16];
    if (v76)
    {
      v80 = 0;
      v74 = *v110;
      v84 = *MEMORY[0x1E6965658];
      v83 = *MEMORY[0x1E69659D8];
      alloc = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v76; ++i)
        {
          if (*v110 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v109 + 1) + 8 * i);
          v107.var0.x = 0.0;
          *&v107.var0.y = &v107;
          *&v107.var1.x = 0x2050000000;
          v28 = getVNRecognizedTextBlockObservationClass(void)::softClass;
          *&v107.var1.y = getVNRecognizedTextBlockObservationClass(void)::softClass;
          if (!getVNRecognizedTextBlockObservationClass(void)::softClass)
          {
            *&v108.var0.x = MEMORY[0x1E69E9820];
            *&v108.var0.y = 3221225472;
            *&v108.var1.x = ___ZL40getVNRecognizedTextBlockObservationClassv_block_invoke;
            *&v108.var1.y = &unk_1E8150870;
            *&v108.var2.x = &v107;
            ___ZL40getVNRecognizedTextBlockObservationClassv_block_invoke(&v108);
            v28 = *(*&v107.var0.y + 24);
          }

          v29 = v28;
          _Block_object_dispose(&v107, 8);
          if (objc_opt_isKindOfClass())
          {
            getCROutputRegion = [v27 getCROutputRegion];
            boundingQuad = [getCROutputRegion boundingQuad];
            v89 = v27;
            PDFQuadPoints::PDFQuadPoints(&v108, boundingQuad);

            v107 = v108;
            PDFQuadPoints::applyTransform(&v107, &v116);
            v31 = atan2(v107.var3.y - v107.var2.y, v107.var3.x - v107.var2.x);
            v106 = v108;
            v77 = [self createImageFromImage:v87 withBoundingQuad:{&v106, PDFQuadPoints::applyTransform(&v106, &v115).f64[0]}];
            rowAverageFilter = [MEMORY[0x1E695F648] rowAverageFilter];
            [rowAverageFilter setInputImage:v77];
            [v77 extent];
            [rowAverageFilter setExtent:?];
            outputImage = [rowAverageFilter outputImage];
            [outputImage extent];
            v105 = [v86 createCGImage:outputImage fromRect:?];
            v32 = [self getBaselineAndHeightFromRowAverages:v105];
            v34 = v33;
            getTranscript = [v27 getTranscript];
            [self sizeOfFont:v75 withHeight:getTranscript string:{vcvtd_n_f64_u64(v34, 1uLL)}];
            v37 = v36;

            v75 = font;
            CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v37, 0, 0);
            v104 = CopyWithAttributes;
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            getChildren = [v89 getChildren];
            v39 = [getChildren countByEnumeratingWithState:&v100 objects:v124 count:16];
            v88 = CopyWithAttributes;
            if (v39)
            {
              v40 = vcvtd_n_f64_u64(v32, 1uLL);
              v85 = *v101;
              do
              {
                v41 = 0;
                v90 = v39;
                v80 += v39;
                do
                {
                  if (*v101 != v85)
                  {
                    objc_enumerationMutation(getChildren);
                  }

                  v42 = *(*(&v100 + 1) + 8 * v41);
                  getCROutputRegion2 = [v42 getCROutputRegion];
                  boundingQuad2 = [getCROutputRegion2 boundingQuad];
                  PDFQuadPoints::PDFQuadPoints(&v99, boundingQuad2);

                  v98 = v99;
                  PDFQuadPoints::applyTransform(&v98, &v116);
                  v97 = v99;
                  v45 = [self createImageFromImage:v87 withBoundingQuad:{&v97, PDFQuadPoints::applyTransform(&v97, &v115).f64[0]}];
                  columnAverageFilter = [MEMORY[0x1E695F648] columnAverageFilter];
                  [columnAverageFilter setInputImage:v45];
                  [v45 extent];
                  [columnAverageFilter setExtent:?];
                  outputImage2 = [columnAverageFilter outputImage];
                  [outputImage2 extent];
                  v96 = [v86 createCGImage:outputImage2 fromRect:?];
                  v48 = [self getXInsetsFromColAverages:v96];
                  v50 = v49;
                  if (v119)
                  {
                    [objc_opt_class() drawQuad:&v98 lineAngle:v119 baselineOffset:v31 inContext:v40];
                  }

                  PDFQuadPoints::getSideLengths(&v98);
                  v52 = v51;
                  v53 = objc_alloc(MEMORY[0x1E696AD60]);
                  string = [v42 string];
                  v55 = [v53 initWithString:string];

                  getChildren2 = [v89 getChildren];
                  lastObject = [getChildren2 lastObject];
                  v58 = v42 == lastObject;

                  if (!v58)
                  {
                    [(__CFString *)v55 appendString:@" "];
                  }

                  v123[0] = v88;
                  v122[0] = v84;
                  v122[1] = v83;
                  v59 = v91;
                  v123[1] = [v91 CGColor];
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:2];
                  v95 = CFAttributedStringCreate(alloc, v55, v60);
                  cf = 0;
                  line = CTLineCreateWithAttributedString(v95);
                  BoundsWithOptions = CTLineGetBoundsWithOptions(line, 0);
                  v61 = vcvtd_n_f64_u64(v48, 1uLL);
                  v62 = v52 - v61 - vcvtd_n_f64_u64(v50, 1uLL);
                  if (BoundsWithOptions.size.width > v62)
                  {
                    cf = CTLineCreateJustifiedLine(line, 1.0, v62);
                  }

                  v63 = c;
                  CGContextSaveGState(c);
                  CGContextTranslateCTM(v63, v98.var2.x, v98.var2.y);
                  CGContextRotateCTM(v63, v31);
                  CGContextTranslateCTM(v63, v61, v40);
                  CGContextSetTextPosition(v63, 0.0, 0.0);
                  if (cf)
                  {
                    v64 = cf;
                  }

                  else
                  {
                    v64 = line;
                  }

                  CTLineDraw(v64, v63);
                  CGContextRestoreGState(v63);
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (line)
                  {
                    CFRelease(line);
                  }

                  if (v95)
                  {
                    CFRelease(v95);
                  }

                  if (v96)
                  {
                    CFRelease(v96);
                  }

                  ++v41;
                }

                while (v90 != v41);
                v39 = [getChildren countByEnumeratingWithState:&v100 objects:v124 count:16];
              }

              while (v39);
            }

            if (v88)
            {
              CFRelease(v88);
            }

            if (v105)
            {
              CFRelease(v105);
            }
          }
        }

        v76 = [obj countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v76);
      v12 = v118;
    }

    else
    {
      v80 = 0;
    }

    [self addDisplayList:v12 toPage:pageCopy];
    if (v120)
    {
      [pageCopy setEffectLayerOCRContent:?];
    }

    v65 = CFAbsoluteTimeGetCurrent();
    NSLog(&cfstr_Addtextfromvis.isa, v80, v65 - Current);

    if (v75)
    {
      CFRelease(v75);
    }

    if (v114)
    {
      CFRelease(v114);
    }

    if (c)
    {
      CFRelease(c);
    }

    if (v118)
    {
      CFRelease(v118);
    }

    if (v119)
    {
      CFRelease(v119);
    }

    if (v120)
    {
      CFRelease(v120);
    }

    if (DeviceGray)
    {
      CFRelease(DeviceGray);
    }
  }

  return v67 != 0;
}

+ (BOOL)addFormFieldsFromVisionDocument:(id)document documentImage:(__CVBuffer *)image toPage:(id)page withBox:(int64_t)box
{
  v110 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v63 = pageCopy;
  getCRDocumentOutputRegion = [document getCRDocumentOutputRegion];
  annotations = [pageCopy annotations];
  v11 = [getCRDocumentOutputRegion detectedFieldRegionsExcludingFields:annotations updateExcludedFields:1];

  v58 = v11;
  if ([v11 count])
  {
    annotations2 = [pageCopy annotations];
    array = [MEMORY[0x1E695DF70] array];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = annotations2;
    v12 = [obj countByEnumeratingWithState:&v103 objects:v109 count:16];
    if (v12)
    {
      v13 = *v104;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v104 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v103 + 1) + 8 * i);
          if ([v15 isSynthesizedFormField])
          {
            contents = [v15 contents];
            v17 = [contents length] == 0;

            if (v17)
            {
              [array addObject:v15];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v103 objects:v109 count:16];
      }

      while (v12);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v65 = array;
    v18 = [v65 countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v18)
    {
      v19 = *v100;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v100 != v19)
          {
            objc_enumerationMutation(v65);
          }

          [pageCopy removeAnnotation:*(*(&v99 + 1) + 8 * j)];
        }

        v18 = [v65 countByEnumeratingWithState:&v99 objects:v108 count:16];
      }

      while (v18);
    }

    [pageCopy boundsForBox:box];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    [self normalizedToPageTransformForPageWithBounds:v21];
    v29 = MEMORY[0x1E69DB878];
    v30 = +[PDFAnnotation detectedFormFieldDefaultFontName];
    +[PDFAnnotation detectedFormFieldDefaultFontSize];
    v60 = [v29 fontWithName:v30 size:?];

    v31 = MEMORY[0x1E69DB878];
    +[PDFAnnotation detectedFormFieldDefaultFontSize];
    v61 = [v31 monospacedSystemFontOfSize:? weight:?];
    array2 = [MEMORY[0x1E695DF70] array];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v32 = v58;
    v33 = [v32 countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v33)
    {
      v34 = *v93;
      do
      {
        v35 = 0;
        do
        {
          if (*v93 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v92 + 1) + 8 * v35);
          getCRFormFieldOutputRegionClass();
          if (objc_opt_isKindOfClass())
          {
            boundingQuad = [v36 boundingQuad];
            PDFQuadPoints::PDFQuadPoints(&v91, boundingQuad);

            y = v91.var0.y;
            if (v91.var0.y == v91.var1.y)
            {
              y = v91.var2.y;
              if (v91.var2.y == v91.var3.y)
              {
                y = v91.var0.x;
                if (v91.var0.x == v91.var2.x)
                {
                  y = v91.var1.x;
                  if (v91.var1.x == v91.var3.x)
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __82__PDFPageAnalyzerV2_addFormFieldsFromVisionDocument_documentImage_toPage_withBox___block_invoke;
                    aBlock[3] = &unk_1E81507D8;
                    v83 = v91;
                    v84 = v96;
                    v85 = v97;
                    v86 = v98;
                    v39 = v61;
                    v79 = v39;
                    v80 = v60;
                    v87 = v22;
                    v88 = v24;
                    v89 = v26;
                    v90 = v28;
                    v40 = v63;
                    v81 = v40;
                    v41 = array2;
                    v82 = v41;
                    v42 = _Block_copy(aBlock);
                    v70[0] = MEMORY[0x1E69E9820];
                    v70[1] = 3221225472;
                    v74 = v91;
                    v75 = v96;
                    v70[2] = __82__PDFPageAnalyzerV2_addFormFieldsFromVisionDocument_documentImage_toPage_withBox___block_invoke_2;
                    v70[3] = &unk_1E8150800;
                    v76 = v97;
                    v77 = v98;
                    v71 = v39;
                    v43 = v40;
                    v72 = v43;
                    v73 = v41;
                    v44 = _Block_copy(v70);
                    fieldType = [v36 fieldType];
                    v46 = v42;
                    if (fieldType == 1 || (v47 = [v36 fieldType], v46 = v44, v47 == 2))
                    {
                      v48 = v46[2](v46, v36);
                    }

                    else if (![v36 fieldType])
                    {
                      children = [v36 children];
                      v50 = objc_alloc_init(MEMORY[0x1E695DFA0]);
                      v67[0] = MEMORY[0x1E69E9820];
                      v67[1] = 3221225472;
                      v67[2] = __82__PDFPageAnalyzerV2_addFormFieldsFromVisionDocument_documentImage_toPage_withBox___block_invoke_3;
                      v67[3] = &unk_1E8150828;
                      v69 = v42;
                      v51 = v50;
                      v68 = v51;
                      [children enumerateObjectsUsingBlock:v67];
                      if ([v51 count])
                      {
                        [v43 addFormFieldGroup:v51];
                      }
                    }
                  }
                }
              }
            }
          }

          ++v35;
        }

        while (v33 != v35);
        v52 = [v32 countByEnumeratingWithState:&v92 objects:v107 count:{16, y}];
        v33 = v52;
      }

      while (v52);
    }

    v53 = [array2 count];
    v54 = v53 != 0;
    if (v53)
    {
      [v63 addDetectedAnnotations:array2];
      formness = [getCRDocumentOutputRegion formness];
      if (formness < 3)
      {
        [v63 setDetectedFormFieldsRecognitionConfidence:formness + 1];
      }
    }
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

id __82__PDFPageAnalyzerV2_addFormFieldsFromVisionDocument_documentImage_toPage_withBox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PDFQuadPoints::boundingBox((a1 + 64));
  v4 = *(a1 + 144);
  *&v20.a = *(a1 + 128);
  *&v20.c = v4;
  *&v20.tx = *(a1 + 160);
  v23 = CGRectApplyAffineTransform(v22, &v20);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v9 = [v3 maxCharacterCount];
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = 32;
  if (!v10)
  {
    v11 = 40;
  }

  v12 = *(a1 + v11);
  [v3 suggestedLineHeight];
  if (v13 != 0.0)
  {
    [v3 suggestedLineHeight];
    v15 = [v12 fontWithSize:v14 * *(a1 + 200) * 0.75];

    v12 = v15;
  }

  v16 = [PDFAnnotation createDetectedTextFieldWithBounds:v12 font:0 textContentType:*(a1 + 48) page:x, y, width, height];
  [v16 setTextContentType:{objc_msgSend(v3, "textContentType")}];
  v17 = [v3 labelRegion];
  v18 = [v17 text];
  [v16 setLabelText:v18];

  [v16 setAutofillNewContextStart:{objc_msgSend(v3, "autofillNewContextStart")}];
  if (v10)
  {
    [v16 setComb:1];
    [v16 setMaximumLength:v10];
  }

  [*(a1 + 56) addObject:v16];

  return v16;
}

id __82__PDFPageAnalyzerV2_addFormFieldsFromVisionDocument_documentImage_toPage_withBox___block_invoke_2(uint64_t a1)
{
  PDFQuadPoints::boundingBox((a1 + 56));
  v2 = *(a1 + 136);
  *&v5.a = *(a1 + 120);
  *&v5.c = v2;
  *&v5.tx = *(a1 + 152);
  v8 = CGRectApplyAffineTransform(v7, &v5);
  v3 = [PDFAnnotation createDetectedTextFieldWithBounds:*(a1 + 32) font:0 textContentType:*(a1 + 40) page:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
  [v3 setIsDetectedCheckbox:1];
  [*(a1 + 48) addObject:v3];

  return v3;
}

void __82__PDFPageAnalyzerV2_addFormFieldsFromVisionDocument_documentImage_toPage_withBox___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  getCRFormFieldOutputRegionClass();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 fieldType] == 1)
  {
    v5 = (*(*(a1 + 40) + 16))();
    v6 = v5;
    if (a3)
    {
      [v5 setAutoFillTextContentType:0];
    }

    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

+ (BOOL)addTablesFromVisionDocument:(id)document documentImage:(__CVBuffer *)image toPage:(id)page withBox:(int64_t)box
{
  v113 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  pageCopy = page;
  [pageCopy boundsForBox:box];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v109, 0, sizeof(v109));
  v16 = objc_opt_class();
  if (v16)
  {
    [v16 normalizedToPageTransformForPageWithBounds:{v9, v11, v13, v15}];
  }

  else
  {
    memset(&v109, 0, sizeof(v109));
  }

  getCRDocumentOutputRegion = [documentCopy getCRDocumentOutputRegion];
  layoutComponents = [getCRDocumentOutputRegion layoutComponents];
  v88 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = layoutComponents;
  v91 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v91)
  {
    v90 = *v106;
    do
    {
      for (i = 0; i != v91; ++i)
      {
        if (*v106 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v105 + 1) + 8 * i);
        if ([v17 type] == 64)
        {
          boundingQuad = [v17 boundingQuad];
          [boundingQuad boundingBox];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v104 = v109;
          v114.origin.x = v20;
          v114.origin.y = v22;
          v114.size.width = v24;
          v114.size.height = v26;
          v115 = CGRectApplyAffineTransform(v114, &v104);
          x = v115.origin.x;
          y = v115.origin.y;
          width = v115.size.width;
          height = v115.size.height;
          v93 = objc_opt_new();
          v95 = objc_opt_new();
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          children = [v17 children];
          v32 = 0;
          v33 = 0;
          v34 = [children countByEnumeratingWithState:&v100 objects:v111 count:16];
          if (v34)
          {
            v35 = *v101;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v101 != v35)
                {
                  objc_enumerationMutation(children);
                }

                v37 = *(*(&v100 + 1) + 8 * j);
                v38 = objc_opt_new();
                v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v37, "rowRange")}];
                [v38 setValue:v39 forKey:@"Row Index"];

                v40 = MEMORY[0x1E696AD98];
                [v37 rowRange];
                v42 = [v40 numberWithUnsignedInteger:v41];
                [v38 setValue:v42 forKey:@"Row Range"];

                v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v37, "colRange")}];
                [v38 setValue:v43 forKey:@"Col Index"];

                v44 = MEMORY[0x1E696AD98];
                [v37 colRange];
                v46 = [v44 numberWithUnsignedInteger:v45];
                [v38 setValue:v46 forKey:@"Col Range"];

                boundingQuad2 = [v37 boundingQuad];
                [boundingQuad2 boundingBox];
                v49 = v48;
                v51 = v50;
                v53 = v52;
                v55 = v54;

                v104 = v109;
                v116.origin.x = v49;
                v116.origin.y = v51;
                v116.size.width = v53;
                v116.size.height = v55;
                v117 = CGRectApplyAffineTransform(v116, &v104);
                v56 = [MEMORY[0x1E696B098] valueWithRect:{v117.origin.x, v117.origin.y, v117.size.width, v117.size.height}];
                [v38 setValue:v56 forKey:@"Rect"];

                [v95 addObject:v38];
                rowRange = [v37 rowRange];
                [v37 rowRange];
                if (v58 + rowRange > v33)
                {
                  v33 = v58 + rowRange;
                }

                colRange = [v37 colRange];
                [v37 colRange];
                if (v60 + colRange > v32)
                {
                  v32 = v60 + colRange;
                }
              }

              v34 = [children countByEnumeratingWithState:&v100 objects:v111 count:16];
            }

            while (v34);
          }

          v61 = objc_opt_new();
          if (v33)
          {
            for (k = 0; k != v33; ++k)
            {
              v63 = objc_opt_new();
              [v61 insertObject:v63 atIndex:k];
            }
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = v95;
          v64 = [v94 countByEnumeratingWithState:&v96 objects:v110 count:16];
          if (v64)
          {
            v65 = *v97;
            do
            {
              for (m = 0; m != v64; ++m)
              {
                if (*v97 != v65)
                {
                  objc_enumerationMutation(v94);
                }

                v67 = *(*(&v96 + 1) + 8 * m);
                v68 = [v67 objectForKeyedSubscript:@"Row Index"];
                integerValue = [v68 integerValue];

                v70 = [v61 objectAtIndexedSubscript:integerValue];
                [v70 insertObject:v67 atIndex:{objc_msgSend(v70, "indexOfObject:inSortedRange:options:usingComparator:", v67, 0, objc_msgSend(v70, "count"), 1024, &__block_literal_global)}];
              }

              v64 = [v94 countByEnumeratingWithState:&v96 objects:v110 count:16];
            }

            while (v64);
          }

          v71 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
          [v93 setValue:v71 forKey:@"Rect"];

          [v93 setValue:v61 forKey:@"Rows"];
          v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
          [v93 setValue:v72 forKey:@"maxColIndex"];

          v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
          [v93 setValue:v73 forKey:@"maxRowIndex"];

          [v88 addObject:v93];
        }
      }

      v91 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v91);
  }

  if ([v88 count])
  {
    CFAbsoluteTimeGetCurrent();
    [pageCopy pageRef];
    v74 = v88;
    inserted = CGPDFPageInsertTableDescriptions();
    document = [pageCopy document];
    v77 = [document indexForPage:pageCopy];
    CFAbsoluteTimeGetCurrent();
    _PDFLog(OS_LOG_TYPE_DEBUG, "PageAnalysis", "table insertion for page: (page #%lu) COMPLETED (+%g secs)", v78, v79, v80, v81, v82, v77 + 1);
  }

  else
  {
    inserted = 0;
  }

  return inserted;
}

uint64_t __78__PDFPageAnalyzerV2_addTablesFromVisionDocument_documentImage_toPage_withBox___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"Col Index"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"Col Index"];
  v8 = [v7 integerValue];

  if (v6 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 > v8;
  }

  return v9;
}

@end