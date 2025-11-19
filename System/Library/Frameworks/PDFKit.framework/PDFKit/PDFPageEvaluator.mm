@interface PDFPageEvaluator
+ (BOOL)isPageCandidateForOCR:(id)a3;
+ (CGPDFOperatorTable)createOperatorTable;
+ (OS_dispatch_queue)asyncWorkQueue;
+ (void)isPageCandidateForOCR:(id)a3 completion:(id)a4;
- (PDFPageEvaluator)initWithPage:(id)a3;
- (PDFPageEvaluator)initWithParent:(id)a3;
- (PDFPageEvaluator)initWithParent:(id)a3 stream:(CGPDFStream *)a4 resources:(CGPDFDictionary *)a5;
- (uint64_t)scan;
- (void)dealloc;
- (void)op_Do:(CGPDFScanner *)a3;
- (void)op_TJ:(CGPDFScanner *)a3;
- (void)op_Tj:(CGPDFScanner *)a3;
- (void)op_cm:(CGPDFScanner *)a3;
- (void)op_doublequote:(CGPDFScanner *)a3;
- (void)op_singlequote:(CGPDFScanner *)a3;
- (void)scan;
@end

@implementation PDFPageEvaluator

+ (void)isPageCandidateForOCR:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isCandidateForOCR];
  if (v8 != 2)
  {
    v7[2](v7, v6, v8 == 1);
  }

  v9 = [[PDFPageEvaluator alloc] initWithPage:v6];
  v10 = [a1 asyncWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PDFPageEvaluator_isPageCandidateForOCR_completion___block_invoke;
  block[3] = &unk_1E8150F10;
  v15 = v9;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v9;
  dispatch_async(v10, block);
}

uint64_t __53__PDFPageEvaluator_isPageCandidateForOCR_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) scan];
  [*(a1 + 40) setCandidateForOCR:{objc_msgSend(*(a1 + 32), "isPageCandidateForOCR")}];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

+ (BOOL)isPageCandidateForOCR:(id)a3
{
  v3 = a3;
  v4 = [v3 isCandidateForOCR];
  if (v4 == 2)
  {
    v5 = [[PDFPageEvaluator alloc] initWithPage:v3];
    [(PDFPageEvaluator *)v5 scan];
    v6 = [(PDFPageEvaluator *)v5 isPageCandidateForOCR];
    [v3 setCandidateForOCR:v6];
  }

  else
  {
    LOBYTE(v6) = v4 == 1;
  }

  return v6;
}

+ (CGPDFOperatorTable)createOperatorTable
{
  v2 = CGPDFOperatorTableCreate();
  if (v2)
  {
    v3 = &off_1F416C9E0;
    v4 = 8;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v3 - 1), *v3);
      v3 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

+ (OS_dispatch_queue)asyncWorkQueue
{
  if (+[PDFPageEvaluator asyncWorkQueue]::onceToken != -1)
  {
    +[PDFPageEvaluator asyncWorkQueue];
  }

  v3 = +[PDFPageEvaluator asyncWorkQueue]::asyncWorkQueue;

  return v3;
}

void __34__PDFPageEvaluator_asyncWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_DEFAULT, 0);

  v1 = dispatch_queue_create("PDFKit.PDFPageEvaluator.asyncWorkQueue", attr);
  v2 = +[PDFPageEvaluator asyncWorkQueue]::asyncWorkQueue;
  +[PDFPageEvaluator asyncWorkQueue]::asyncWorkQueue = v1;
}

- (PDFPageEvaluator)initWithPage:(id)a3
{
  v4 = a3;
  v5 = [(PDFPageEvaluator *)self initWithParent:0];
  if (v5)
  {
    v6 = CGPDFPageRetain([v4 pageRef]);
    v5->_page = v6;
    if (!v6)
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    BoxRect = CGPDFPageGetBoxRect(v6, kCGPDFCropBox);
    v5->_pageBounds = BoxRect;
    Width = CGRectGetWidth(BoxRect);
    Height = CGRectGetHeight(v5->_pageBounds);
    v5->_pageArea = Width * Height;
    if (!is_mul_ok(Width, Height))
    {
      _PDFLog(OS_LOG_TYPE_ERROR, "OCR", "%s: Page area would cause overflow", v8, v9, v10, v11, v12, "[PDFPageEvaluator initWithPage:]");
      goto LABEL_7;
    }

    v14 = CGPDFContentStreamCreateWithPage([v4 pageRef]);
    v5->_cs = v14;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v15 = v5;
LABEL_8:

  return v15;
}

- (PDFPageEvaluator)initWithParent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PDFPageEvaluator;
  v5 = [(PDFPageEvaluator *)&v10 init];
  if (!v5 || (!v4 ? (Copy = CGPDFRStateCreate()) : ([v4 rstate], Copy = CGPDFRStateCreateCopy()), (v5->_rstate = Copy) != 0 && (v5->_gstate = CGPDFRStateGetGState(), v7 = objc_msgSend(objc_opt_class(), "createOperatorTable"), (v5->_table = v7) != 0)))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PDFPageEvaluator)initWithParent:(id)a3 stream:(CGPDFStream *)a4 resources:(CGPDFDictionary *)a5
{
  v8 = a3;
  v9 = [(PDFPageEvaluator *)self initWithParent:v8];
  if (v9)
  {
    v9->_cs = CGPDFContentStreamCreateWithStream(a4, a5, [v8 contentStream]);
  }

  return v9;
}

- (void)dealloc
{
  CGPDFPageRelease(self->_page);
  CGPDFRStateRelease();
  CGPDFOperatorTableRelease(self->_table);
  CGPDFContentStreamRelease(self->_cs);
  v3.receiver = self;
  v3.super_class = PDFPageEvaluator;
  [(PDFPageEvaluator *)&v3 dealloc];
}

- (void)scan
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (!self->_scanned)
  {
    v3 = CGPDFScannerCreate(self->_cs, self->_table, self);
    v5[0] = &unk_1F416CA88;
    v5[3] = v5;
    scanner = v3;
    std::__function::__value_func<void ()(CGPDFScanner *)>::__value_func[abi:ne200100](v7, v5);
    std::__function::__value_func<void ()(CGPDFScanner *)>::~__value_func[abi:ne200100](v5);
    v4 = scanner;
    if (scanner)
    {
      *&self->_containsText = 0;
      CGPDFScannerScan(v4);
      self->_scanned = 1;
    }

    std::unique_ptr<CGPDFScanner,std::function<void ()(CGPDFScanner*)>>::reset[abi:ne200100](&scanner, 0);
    std::__function::__value_func<void ()(CGPDFScanner *)>::~__value_func[abi:ne200100](v7);
  }
}

- (void)op_cm:(CGPDFScanner *)a3
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  value = 0.0;
  v5 = 0.0;
  if (CGPDFScannerPopNumber(a3, &value) && CGPDFScannerPopNumber(a3, &v5) && CGPDFScannerPopNumber(a3, &v6) && CGPDFScannerPopNumber(a3, &v7) && CGPDFScannerPopNumber(a3, &v8) && CGPDFScannerPopNumber(a3, &v9))
  {
    CGPDFGStateConcatCTM();
  }
}

- (void)op_Tj:(CGPDFScanner *)a3
{
  value = 0;
  if (CGPDFScannerPopString(a3, &value))
  {
    if (CGPDFStringGetLength(value))
    {
      self->_containsText = 1;
      [(PDFPageEvaluator *)self stopScan:a3];
    }
  }
}

- (void)op_TJ:(CGPDFScanner *)a3
{
  value = 0;
  if (CGPDFScannerPopArray(a3, &value))
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__PDFPageEvaluator_op_TJ___block_invoke;
    v5[3] = &unk_1E8150F38;
    v5[4] = &v6;
    CGPDFArrayApplyBlock(value, v5, 0);
    if (v7[3])
    {
      self->_containsText = 1;
      [(PDFPageEvaluator *)self stopScan:a3];
    }

    _Block_object_dispose(&v6, 8);
  }
}

BOOL __26__PDFPageEvaluator_op_TJ___block_invoke(uint64_t a1, int a2, CGPDFObjectRef object)
{
  if (CGPDFObjectGetType(object) == kCGPDFObjectTypeString)
  {
    value = 0;
    if (CGPDFObjectGetValue(object, kCGPDFObjectTypeString, &value))
    {
      *(*(*(a1 + 32) + 8) + 24) += CGPDFStringGetLength(value);
    }
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

- (void)op_singlequote:(CGPDFScanner *)a3
{
  value = 0;
  if (CGPDFScannerPopString(a3, &value))
  {
    if (CGPDFStringGetLength(value))
    {
      self->_containsText = 1;
      [(PDFPageEvaluator *)self stopScan:a3];
    }
  }
}

- (void)op_doublequote:(CGPDFScanner *)a3
{
  v6 = 0.0;
  value = 0;
  v5 = 0.0;
  if (CGPDFScannerPopString(a3, &value) && CGPDFScannerPopNumber(a3, &v6) && CGPDFScannerPopNumber(a3, &v5))
  {
    if (CGPDFStringGetLength(value))
    {
      self->_containsText = 1;
      [(PDFPageEvaluator *)self stopScan:a3];
    }
  }
}

- (void)op_Do:(CGPDFScanner *)a3
{
  value = 0;
  if (CGPDFScannerPopName(a3, &value))
  {
    ContentStream = CGPDFScannerGetContentStream(a3);
    if (ContentStream)
    {
      Resource = CGPDFContentStreamGetResource(ContentStream, "XObject", value);
      if (Resource)
      {
        v28 = 0;
        if (CGPDFObjectGetValue(Resource, kCGPDFObjectTypeStream, &v28))
        {
          Dictionary = CGPDFStreamGetDictionary(v28);
          if (Dictionary)
          {
            v8 = Dictionary;
            v27 = 0;
            if (CGPDFDictionaryGetName(Dictionary, "Subtype", &v27))
            {
              v9 = v27;
              if (!strcmp(v27, "Image"))
              {
                v25 = 0u;
                v26 = 0u;
                *v24 = 0u;
                CGPDFGStateGetCTM();
                memset(&v23, 0, sizeof(v23));
                v30.origin.x = 0.0;
                v30.origin.y = 0.0;
                v30.size.width = 1.0;
                v30.size.height = 1.0;
                v31 = CGRectApplyAffineTransform(v30, &v23);
                x = v31.origin.x;
                y = v31.origin.y;
                width = v31.size.width;
                height = v31.size.height;
                v16 = CGRectGetWidth(v31);
                v32.origin.x = x;
                v32.origin.y = y;
                v32.size.width = width;
                v32.size.height = height;
                v22 = CGRectGetHeight(v32);
                if (is_mul_ok(v16, v22))
                {
                  self->_containsLargeImage |= v16 * v22 >= self->_pageArea >> 1;
                }

                else
                {
                  _PDFLog(OS_LOG_TYPE_ERROR, "OCR", "%s: Image area would cause overflow", v17, v18, v19, v20, v21, "[PDFPageEvaluator op_Do:]");
                }
              }

              else if (!strcmp(v9, "Form"))
              {
                v24[0] = 0;
                if (CGPDFDictionaryGetDictionary(v8, "Resources", v24))
                {
                  v10 = [PDFPageEvaluator alloc];
                  v11 = [(PDFPageEvaluator *)v10 initWithParent:self stream:v28 resources:v24[0]];
                  [(PDFPageEvaluator *)v11 scan];
                  if (v11->_containsText)
                  {
                    self->_containsText = 1;
                    [(PDFPageEvaluator *)self stopScan:a3];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (uint64_t)scan
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end