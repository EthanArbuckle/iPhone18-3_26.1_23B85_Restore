@interface CRLHandwritingRecognitionStatusHelper
- (CRLHandwritingRecognitionStatusHelper)initWithFreehandDrawingLayouts:(id)a3 andConsolidatedDrawing:(id)a4;
- (CRLHandwritingRecognitionStatusHelperDelegate)delegate;
- (OS_dispatch_queue)recognitionQueue;
- (id)debugDataAndReturnError:(id *)a3;
- (id)debugString;
- (id)p_bodyStringForString:(id)a3;
- (id)p_headlineStringForString:(id)a3;
- (id)p_idStringForDrawing:(id)a3;
- (id)p_recognitionStatusStringsForDrawing:(id)a3;
- (id)p_titleStringForString:(id)a3;
- (void)copyDebugStringToPasteboard;
- (void)debugDataAfterWaitingForRecognitionWithCompletion:(id)a3;
- (void)p_appendAttributedTextForDrawing:(id)a3 drawingResults:(id)a4 to:(id)a5;
- (void)refresh;
- (void)refreshWithHandler:(id)a3;
@end

@implementation CRLHandwritingRecognitionStatusHelper

- (CRLHandwritingRecognitionStatusHelper)initWithFreehandDrawingLayouts:(id)a3 andConsolidatedDrawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CRLHandwritingRecognitionStatusHelper;
  v8 = [(CRLHandwritingRecognitionStatusHelper *)&v22 init];
  if (v8)
  {
    v9 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) pkRecognitionController];
          v16 = [v15 drawing];

          [v9 crl_addNonNilObject:v16];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    [(CRLHandwritingRecognitionStatusHelper *)v8 setDrawings:v9];
    [(CRLHandwritingRecognitionStatusHelper *)v8 setConsolidatedDrawing:v7];
    [(CRLHandwritingRecognitionStatusHelper *)v8 setRefreshCount:0];
  }

  return v8;
}

- (OS_dispatch_queue)recognitionQueue
{
  recognitionQueue = self->_recognitionQueue;
  if (!recognitionQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.freeform.handwriting-debug-recognition-queue", v4);
    v6 = self->_recognitionQueue;
    self->_recognitionQueue = v5;

    recognitionQueue = self->_recognitionQueue;
  }

  return recognitionQueue;
}

- (id)debugString
{
  v3 = objc_alloc_init(NSMutableAttributedString);
  context = objc_autoreleasePoolPush();
  v4 = [(CRLHandwritingRecognitionStatusHelper *)self recognitionStatusStrings];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"CRLPKDrawingCombinedStatus"];
  if (v6)
  {
    [(CRLHandwritingRecognitionStatusHelper *)self p_appendAttributedTextForDrawing:@"Consolidated Board Drawing" drawingResults:v6 to:v3];
    [v5 removeObjectForKey:@"CRLPKDrawingCombinedStatus"];
  }

  v7 = [v5 allKeys];
  v8 = [v7 sortedArrayUsingSelector:"compare:"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v5 objectForKeyedSubscript:v14];
        [(CRLHandwritingRecognitionStatusHelper *)self p_appendAttributedTextForDrawing:v14 drawingResults:v15 to:v3];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
  v16 = [v3 copy];

  return v16;
}

- (id)debugDataAndReturnError:(id *)a3
{
  v4 = [(CRLHandwritingRecognitionStatusHelper *)self debugString];
  v5 = [v4 length];
  v9 = NSDocumentTypeDocumentAttribute;
  v10 = NSRTFTextDocumentType;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v4 dataFromRange:0 documentAttributes:v5 error:{v6, a3}];

  return v7;
}

- (void)debugDataAfterWaitingForRecognitionWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002E8FE8;
  v4[3] = &unk_1018539E0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CRLHandwritingRecognitionStatusHelper *)v5 refreshWithHandler:v4];
}

- (void)copyDebugStringToPasteboard
{
  v9 = 0;
  v2 = [(CRLHandwritingRecognitionStatusHelper *)self debugDataAndReturnError:&v9];
  v3 = v9;
  if (!v3)
  {
    v4 = +[CRLPasteboard generalPasteboard];
    [v4 clearContents];

    v5 = +[CRLPasteboard generalPasteboard];
    v6 = [UTTypeRTF identifier];
    v10 = v6;
    v11 = v2;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v12 = v7;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [v5 addItems:v8];
  }
}

- (void)p_appendAttributedTextForDrawing:(id)a3 drawingResults:(id)a4 to:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CRLHandwritingRecognitionStatusHelper *)self p_titleStringForString:a3];
  [v9 appendAttributedString:v10];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = +[CRLHandwritingRecognitionStatusHelper orderedKeys];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        v17 = [v8 allKeys];
        v18 = [v17 containsObject:v16];

        if (v18)
        {
          v19 = [(CRLHandwritingRecognitionStatusHelper *)self p_headlineStringForString:v16];
          [v9 appendAttributedString:v19];

          v20 = [v8 objectForKeyedSubscript:v16];
          v21 = [(CRLHandwritingRecognitionStatusHelper *)self p_bodyStringForString:v20];
          [v9 appendAttributedString:v21];

          v22 = [(CRLHandwritingRecognitionStatusHelper *)self p_bodyStringForString:@"\n"];
          [v9 appendAttributedString:v22];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (id)p_titleStringForString:(id)a3
{
  v10 = NSFontAttributeName;
  v3 = a3;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v6 = [NSAttributedString alloc];
  v7 = [v3 stringByAppendingString:@"\n"];

  v8 = [v6 initWithString:v7 attributes:v5];

  return v8;
}

- (id)p_headlineStringForString:(id)a3
{
  v10 = NSFontAttributeName;
  v3 = a3;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v6 = [NSAttributedString alloc];
  v7 = [v3 stringByAppendingString:@"\n"];

  v8 = [v6 initWithString:v7 attributes:v5];

  return v8;
}

- (id)p_bodyStringForString:(id)a3
{
  v10 = NSFontAttributeName;
  v3 = a3;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v6 = [NSAttributedString alloc];
  v7 = [v3 stringByAppendingString:@"\n"];

  v8 = [v6 initWithString:v7 attributes:v5];

  return v8;
}

- (void)refresh
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1002E9748;
  v2[3] = &unk_10183D270;
  v2[4] = self;
  [(CRLHandwritingRecognitionStatusHelper *)self refreshWithHandler:v2];
}

- (void)refreshWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CRLHandwritingRecognitionStatusHelper *)self consolidatedDrawing];

  if (v5)
  {
    v6 = [(CRLHandwritingRecognitionStatusHelper *)self consolidatedDrawing];
    [v6 setRecognitionEnabled:1];

    v7 = [(CRLHandwritingRecognitionStatusHelper *)self consolidatedDrawing];
    v8 = [v7 visualizationManager];
    [v8 setRecognitionStatusReportingEnabled:1];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(CRLHandwritingRecognitionStatusHelper *)self drawings];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        [v14 setRecognitionEnabled:1];
        v15 = [v14 visualizationManager];
        [v15 setRecognitionStatusReportingEnabled:1];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = [(CRLHandwritingRecognitionStatusHelper *)self drawings];
  v17 = [v16 copy];

  v18 = [(CRLHandwritingRecognitionStatusHelper *)self recognitionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E99C4;
  block[3] = &unk_101842CD8;
  block[4] = self;
  v22 = v17;
  v23 = v4;
  v19 = v4;
  v20 = v17;
  dispatch_async(v18, block);
}

- (id)p_idStringForDrawing:(id)a3
{
  v3 = [a3 uuid];
  v4 = [NSString localizedStringWithFormat:@"%@", v3];

  return v4;
}

- (id)p_recognitionStatusStringsForDrawing:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134DDD4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134DDE8(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134DEA4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v6, v4);
    }

    v7 = [NSString stringWithUTF8String:"[CRLHandwritingRecognitionStatusHelper p_recognitionStatusStringsForDrawing:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLHandwritingRecognitionStatusHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:222 isFatal:0 description:"invalid nil value for '%{public}s'", "drawing"];
  }

  v21 = v3;
  v9 = [v3 visualizationManager];
  v10 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = +[PKVisualizationManager availableRecognitionStatusKeys];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [PKVisualizationManager localizedNameForRecognitionStatusKey:v16];
        v18 = [v9 valueForRecognitionStatusKey:v16];
        if (v18)
        {
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v16;
          }

          [v10 setObject:v18 forKeyedSubscript:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return v10;
}

- (CRLHandwritingRecognitionStatusHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end