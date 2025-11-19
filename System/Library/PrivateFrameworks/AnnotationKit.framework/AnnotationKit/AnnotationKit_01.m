void sub_23F4A5768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F4A5784(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v17 rectangle];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      v10 = CGRectGetHeight(v19) * 0.25;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v21 = CGRectInset(v20, 0.0, v10);
      v11 = v21.origin.x;
      v12 = v21.origin.y;
      v13 = v21.size.width;
      v14 = v21.size.height;
      if (CGRectIntersectsRect(v21, *(a1 + 40)))
      {
        v15 = j__NSStringFromCGRect(*(a1 + 40));
        v22.origin.x = v11;
        v22.origin.y = v12;
        v22.size.width = v13;
        v22.size.height = v14;
        v16 = j__NSStringFromCGRect(v22);
        AKLog(@"Proposed rectangle feature %@ intersects an existing annotation %@!");

        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

id sub_23F4A66C0()
{
  if (qword_27E39B7C8 != -1)
  {
    sub_23F4BD6EC();
  }

  v1 = qword_27E39A300;

  return v1;
}

void sub_23F4A697C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actuallySendAnnotationChange];
}

void sub_23F4A7BAC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 groupsByEvent])
  {
    [v4 setGroupsByEvent:0];
    [v4 beginUndoGrouping];
    v3[2](v3);

    [v4 endUndoGrouping];
    [v4 setGroupsByEvent:1];
  }

  else
  {
    [v4 beginUndoGrouping];
    v3[2](v3);

    [v4 endUndoGrouping];
  }
}

void sub_23F4A7C64(uint64_t a1)
{
  v2 = [*(a1 + 40) drawing];
  v3 = [*(a1 + 32) inkCanvasAnnotation];
  [v3 setDrawing:v2];

  [*(a1 + 40) rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) inkCanvasAnnotation];
  [v12 setRectangle:{v5, v7, v9, v11}];
}

uint64_t sub_23F4A7D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 56) >= *(a1 + 64))
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  [v2 insertObject:*(a1 + 40) inAnnotationsAtIndex:v3];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(a1 + 48) BOOLValue];
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      return [v5 selectAnnotation:v6 byExtendingSelection:1];
    }
  }

  return result;
}

uint64_t sub_23F4A88E8(uint64_t a1)
{
  v2 = [*(a1 + 32) textEditorController];
  v3 = [v2 annotation];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) textEditorController];
    [v5 endEditing];
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v6 setValuesForKeysWithDictionary:v7];
}

uint64_t sub_23F4A8978(uint64_t a1)
{
  v2 = [*(a1 + 32) textEditorController];
  v3 = [v2 annotation];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) textEditorController];
    [v5 endEditing];
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v6 setValuesForKeysWithDictionary:v7];
}

uint64_t AKSidecarMarkupGetApplicationFromDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:&unk_2851BB868];
  v7 = [v5 objectForKeyedSubscript:&unk_2851BB880];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = v6;
    *a2 = v6;
    v9 = v7;
    *a3 = v7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_23F4AAE68()
{
  qword_27E39A300 = os_log_create("com.apple.annotationkit", "continuityannotations");

  return MEMORY[0x2821F96F8]();
}

void sub_23F4AAEEC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_23F4AAF0C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_23F4ABA3C()
{
  if (qword_27E39B7D8 != -1)
  {
    sub_23F4BE124();
  }

  return byte_27E39B7D0;
}

void sub_23F4ABA74()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v2 = [v0 environment];

  v1 = [v2 objectForKeyedSubscript:@"AKUnitTests"];
  byte_27E39B7D0 = v1 != 0;
}

void *sub_23F4ABAF8()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"PDFKit2_HighlightAnnotations"];

    if (v2)
    {
      v2 = [v1 BOOLForKey:@"PDFKit2_HighlightAnnotations"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_23F4AD28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F4AD2A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 akPointValue];
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) objectAtIndex:a3];
  v12 = [v11 integerValue];

  if (!v12)
  {
    if (![*(a1 + 48) _point:*(a1 + 56) isInCircleWithRadius:*(a1 + 64) atPoint:{*&AKPointOfInterestSize_Handle / *(a1 + 72), v8, v10}])
    {
      return;
    }

    goto LABEL_4;
  }

  if (v12 == 1 && ([*(a1 + 48) _point:*(a1 + 56) isInCircleWithRadius:*(a1 + 64) atPoint:{*&AKPointOfInterestRadius_Handle_Alternate / *(a1 + 72), v8, v10}] & 1) != 0)
  {
LABEL_4:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_23F4ADD6C(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 setIsBeingCopied:{1, v14}];
        v12 = [v11 dataRepresentation];
        [v11 setIsBeingCopied:0];
        if (v12)
        {
          v18 = @"com.apple.AnnotationKit.AnnotationItem";
          v19 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  [a1 setItems:v5];
}

BOOL sub_23F4ADF0C(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"com.apple.AnnotationKit.AnnotationItem";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [a1 itemSetWithPasteboardTypes:v2];

  v4 = [v3 count] != 0;
  return v4;
}

id sub_23F4ADFC0(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataForPasteboardType:@"com.apple.AnnotationKit.AnnotationItem" inItemSet:0];
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [AKAnnotation annotationWithData:*(*(&v10 + 1) + 8 * i), v10];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_23F4AE7B8(void *a1, int a2, float64x2_t *a3, void *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v32 = a1;
  v21 = a5;
  v22 = a4;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v32 relativeToRect:a6 withPageController:a7, a8, a9, a10, a11];
  if (a2)
  {
    v31 = vaddq_f64(a3[2], vmlaq_n_f64(vmulq_n_f64(a3[1], v24), *a3, v23));
    v25 = [v32 geometryHelper];
    [v25 screenPixelAlignedPointForPoint:*&v31];
    v30 = v27;
    v31.f64[0] = v26;

    v24 = *&v30;
    v23 = v31.f64[0];
  }

  v28 = [MEMORY[0x277CCAE60] akValueWithPoint:{v23, v24, v30}];
  [v22 addObject:v28];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [v21 addObject:v29];
}

id sub_23F4AE940(CGFloat a1, CGFloat a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v9 = a5;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = a1;
  v32.size.height = a2;
  v33 = CGRectInset(v32, 1.0, 1.0);
  y = v33.origin.y;
  x = v33.origin.x;
  width = v33.size.width;
  height = v33.size.height;
  v12 = 0;
  v13 = 0;
  if (a6)
  {
    v14 = 2.0;
    v15 = 2.0;
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
  }

  v16 = a1;
  v17 = a2;
  v34 = CGRectInset(*&v12, v14, v15);
  v18 = v34.origin.x;
  v19 = v34.origin.y;
  v20 = v34.size.width;
  v21 = v34.size.height;
  v22 = [MEMORY[0x277D75348] systemBlueColor];
  v31.width = a1;
  v31.height = a2;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v20;
  v35.size.height = v21;
  CGContextClearRect(CurrentContext, v35);
  v24 = [v9 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v24);
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v20;
  v36.size.height = v21;
  CGContextFillEllipseInRect(CurrentContext, v36);
  if (a6)
  {
    CGContextSetStrokeColorWithColor(CurrentContext, [v22 CGColor]);
    CGContextSetLineWidth(CurrentContext, 2.0);
    v37.origin.y = y;
    v37.origin.x = x;
    v37.size.width = width;
    v37.size.height = height;
    CGContextStrokeEllipseInRect(CurrentContext, v37);
  }

  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v26 = [v25 imageWithRenderingMode:1];

  return v26;
}

id sub_23F4AEB04(CGFloat a1, CGFloat a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v9 = a5;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = a1;
  v26.size.height = a2;
  v27 = CGRectInset(v26, 1.0, 1.0);
  y = v27.origin.y;
  x = v27.origin.x;
  width = v27.size.width;
  height = v27.size.height;
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = a1;
  v27.size.height = a2;
  v28 = CGRectInset(v27, 3.0, 3.0);
  v12 = v28.origin.x;
  v13 = v28.origin.y;
  v14 = v28.size.width;
  v15 = v28.size.height;
  v16 = [MEMORY[0x277D75348] systemBlueColor];
  v25.width = a1;
  v25.height = a2;
  UIGraphicsBeginImageContextWithOptions(v25, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v29.origin.x = v12;
  v29.origin.y = v13;
  v29.size.width = v14;
  v29.size.height = v15;
  CGContextClearRect(CurrentContext, v29);
  v18 = [v9 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v18);
  v30.origin.x = v12;
  v30.origin.y = v13;
  v30.size.width = v14;
  v30.size.height = v15;
  CGContextFillEllipseInRect(CurrentContext, v30);
  if (a6)
  {
    CGContextSetStrokeColorWithColor(CurrentContext, [v16 CGColor]);
    CGContextSetLineWidth(CurrentContext, 2.0);
    v31.origin.y = y;
    v31.origin.x = x;
    v31.size.width = width;
    v31.size.height = height;
    CGContextStrokeEllipseInRect(CurrentContext, v31);
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v20 = [v19 imageWithRenderingMode:1];

  return v20;
}

id sub_23F4AECB8()
{
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopyWithZone:0];

  v2 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
  [v1 setAlignment:1];
  v8.width = 20.0;
  v8.height = 20.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v2, *MEMORY[0x277D740A8], v1, *MEMORY[0x277D74118], 0}];
  [@"B" drawInRect:v3 withAttributes:{0.0, 0.0, 20.0, 20.0}];

  v4 = UIGraphicsGetImageFromCurrentImageContext();
  v5 = [v4 imageWithRenderingMode:0];

  UIGraphicsEndImageContext();

  return v5;
}

id sub_23F4AEDDC()
{
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopyWithZone:0];

  v2 = [MEMORY[0x277D74300] italicSystemFontOfSize:15.0];
  [v1 setAlignment:1];
  v8.width = 20.0;
  v8.height = 20.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v2, *MEMORY[0x277D740A8], v1, *MEMORY[0x277D74118], 0}];
  [@"I" drawInRect:v3 withAttributes:{0.0, 0.0, 20.0, 20.0}];

  v4 = UIGraphicsGetImageFromCurrentImageContext();
  v5 = [v4 imageWithRenderingMode:0];

  UIGraphicsEndImageContext();

  return v5;
}

id sub_23F4AEF00()
{
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopyWithZone:0];

  v2 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
  [v1 setAlignment:1];
  v11.width = 20.0;
  v11.height = 20.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v3 = MEMORY[0x277CBEAC0];
  v4 = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v6 = [v3 dictionaryWithObjectsAndKeys:{v2, v4, v5, *MEMORY[0x277D741F0], v1, *MEMORY[0x277D74118], 0}];
  [@"U" drawInRect:v6 withAttributes:{0.0, 0.0, 20.0, 20.0}];

  v7 = UIGraphicsGetImageFromCurrentImageContext();
  v8 = [v7 imageWithRenderingMode:0];

  UIGraphicsEndImageContext();

  return v8;
}

id sub_23F4AF05C()
{
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopyWithZone:0];

  v2 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
  [v1 setAlignment:1];
  v11.width = 20.0;
  v11.height = 20.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v3 = MEMORY[0x277CBEAC0];
  v4 = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v6 = [v3 dictionaryWithObjectsAndKeys:{v2, v4, v5, *MEMORY[0x277D74150], v1, *MEMORY[0x277D74118], 0}];
  [@"S" drawInRect:v6 withAttributes:{0.0, 0.0, 20.0, 20.0}];

  v7 = UIGraphicsGetImageFromCurrentImageContext();
  v8 = [v7 imageWithRenderingMode:0];

  UIGraphicsEndImageContext();

  return v8;
}

void sub_23F4B11D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F4B1208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained undoController];
  v2 = [v1 undoManager];
  [v2 beginUndoGrouping];
}

void sub_23F4B1270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained undoController];
  v2 = [v1 undoManager];
  v3 = [v2 groupingLevel];

  if (v3 >= 1)
  {
    v4 = [v1 undoManager];
    [v4 endUndoGrouping];
  }
}

void sub_23F4B2640()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = qword_27E39B7E0;
  qword_27E39B7E0 = v0;

  [qword_27E39B7E0 setFormatterBehavior:1040];
  [qword_27E39B7E0 setPaddingPosition:0];
  [qword_27E39B7E0 setRoundingMode:4];
  [qword_27E39B7E0 setPaddingCharacter:@"*"];
  [qword_27E39B7E0 setMinimum:&unk_2851BB8F8];
  [qword_27E39B7E0 setMaximum:&unk_2851BB910];
  [qword_27E39B7E0 setGroupingSize:3];
  [qword_27E39B7E0 setSecondaryGroupingSize:0];
  v2 = +[AKController akBundle];
  v4 = [v2 localizedStringForKey:@"%@ pt" value:&stru_28519E870 table:@"AKTextAttributesViewController_iOS"];

  v3 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, @"#, ##0"];
  [qword_27E39B7E0 setPositiveFormat:v3];
  [qword_27E39B7E0 setNegativeFormat:v3];
}

uint64_t sub_23F4B44C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedAnnotations];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_23F4B4660(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedAnnotations];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_23F4B4850(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedAnnotations];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_23F4B49C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedAnnotations];
  v5 = [v4 containsObject:v3];

  return v5;
}

void sub_23F4B4D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F4B4DA0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_23F4B58D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F4B58F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23F4B5910(uint64_t a1, uint64_t a2)
{
  isKindOfClass = [AKAnnotation annotationWithData:a2];
  v4 = isKindOfClass;
  if (isKindOfClass)
  {
    obj = isKindOfClass;
    isKindOfClass = [*(a1 + 32) addObject:isKindOfClass];
    v4 = obj;
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v4 = obj;
      if (isKindOfClass)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
        v4 = obj;
      }
    }
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v4);
}

void sub_23F4B8DEC(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = AKAnnotationLayerSetupCompleteNotification;
  v4 = [*(a1 + 32) controller];
  v7 = AKAnnotationChangeObjectKey;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "pageIndex")}];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:v3 object:v4 userInfo:v6];
}

void sub_23F4BCCB0(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_begin_catch(a1);
  v5 = os_log_create("com.apple.annotationkit", "Serialization");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412546;
    v7 = a3;
    v8 = 2112;
    v9 = v4;
    _os_log_fault_impl(&dword_23F3EC000, v5, OS_LOG_TYPE_FAULT, "Failed to encode object %@: %@", &v6, 0x16u);
  }

  objc_end_catch();
}

void sub_23F4BCE34(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[AKSecureSerializationHelper _decodeTextPropertiesForAnnotation:withSecureCoder:]";
  _os_log_error_impl(&dword_23F3EC000, log, OS_LOG_TYPE_ERROR, "%s: Annotation version was > 0, but the text annotation was not encoded with a typingAttributesRTF property. This should not happen, except for some documents edited with earlier prelease versions.", &v1, 0xCu);
}

uint64_t sub_23F4BD000()
{
  dlerror();
  v0 = abort_report_np();
  return sub_23F4BD024(v0);
}

void sub_23F4BD124(void *a1)
{
  [a1 pageIndex];
  sub_23F46D540();
  sub_23F46D554(&dword_23F3EC000, v1, v2, "%s: Attempting geometric calculations, but this page's overlay view isn't hosted in a window. (page index: %lu)", v3, v4, v5, v6, 2u);
}

void sub_23F4BD1A8(void *a1)
{
  [a1 pageIndex];
  sub_23F46D540();
  sub_23F46D554(&dword_23F3EC000, v1, v2, "%s: Attempting geometric calculations, but this page's overlay view isn't hosted in a window. (page index: %lu)", v3, v4, v5, v6, 2u);
}

void sub_23F4BD22C(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AKPageController newContentSnapshotPDFDataAtScale:inRect:forLoupeAnnotation:]";
  _os_log_fault_impl(&dword_23F3EC000, log, OS_LOG_TYPE_FAULT, "%s: Delegate didn't return a content snapshot. Loupe will show blank.", &v1, 0xCu);
}

void sub_23F4BD2B0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F3EC000, a2, OS_LOG_TYPE_ERROR, "Failed to load ink annotation drawing: %@", &v2, 0xCu);
}

void sub_23F4BD328(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = os_log_create("com.apple.annotationkit", "Serialization");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_fault_impl(&dword_23F3EC000, v2, OS_LOG_TYPE_FAULT, "Failed to deserialize an AKAnnotation. Exception: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_23F4BD494(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F3EC000, a2, OS_LOG_TYPE_ERROR, "Failed to archive annotation: %@", &v2, 0xCu);
}

void sub_23F4BD5FC()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BD6B0()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BD700()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BD73C()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BD7E0()
{
  sub_23F4AAEE0();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23F4BD850()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BD8C8()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BD940()
{
  sub_23F4AAEE0();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23F4BD9B0(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a1 UUID];
  sub_23F4AAEC0();
  v6 = a1;
  _os_log_debug_impl(&dword_23F3EC000, a2, OS_LOG_TYPE_DEBUG, "Added annotation %{public}@ %{public}@", v5, 0x16u);
}

void sub_23F4BDA94()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BDAD0()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BDBB0()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BDC28()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BDCA0()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BDDB4()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BDE98()
{
  sub_23F417E18();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23F4BDED4()
{
  sub_23F4AAEAC();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_23F4BDFB4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_23F4AAEE0();
  _os_log_error_impl(&dword_23F3EC000, a2, OS_LOG_TYPE_ERROR, "KVO object was of type %{public}@, not expected type AKPageModelController", v5, 0xCu);
}

void sub_23F4BE04C()
{
  sub_23F4AAEE0();
  sub_23F4AAED4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

double sub_23F4BE14C()
{
  v0 = malloc_type_malloc(0x48uLL, 0x108004092497B1AuLL);
  if (v0)
  {
    v0[2] = xmmword_23F4D94E0;
    v0[3] = unk_23F4D94F0;
    *(v0 + 8) = 0;
    result = dbl_23F4D94D0[0];
    *v0 = xmmword_23F4D94C0;
    v0[1] = *dbl_23F4D94D0;
  }

  return result;
}

void *sub_23F4BE19C(uint64_t a1, int *a2)
{
  v19 = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  if (!v9)
  {
    return v9;
  }

  v18 = 0.0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (!v5)
  {
    *&v15 = 0;
    if (!sub_23F4BE780(a2, &v19, a1, &v15))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v7 * 0.1 + v6 * 0.9 - (v6 + v7 * 0.0) >= v8)
  {
    *&v15 = v5;
    *(&v15 + 1) = v4;
    *&v16 = v6 + v7 * 0.0;
    *(&v16 + 1) = v7 * 0.1 + v6 * 0.9;
    *&v17 = v8;
    v18 = v6;
    if (!sub_23F4BE780(a2, &v19, a1, &v15))
    {
      goto LABEL_10;
    }

LABEL_7:
    free(v9);
    return 0;
  }

  *&v15 = 0;
  *(&v17 + 1) = 0x3FB999999999999ALL;
  if (sub_23F4BE780(a2, &v19, a1, &v15))
  {
    goto LABEL_7;
  }

LABEL_10:
  *v9 = 0;
  v9[1] = v19;
  v9[2] = 0;
  if (!v5)
  {
    *&v15 = 0;
    v11 = v6;
    if (!sub_23F4BF5D8(v19, a1, &v15))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    v11 = v18;
  }

  else
  {
    v14 = v7 * *(&v17 + 1) + v6 * (1.0 - *(&v17 + 1));
    if (*(&v17 + 1) == 1.0 || (v11 = v6, v14 >= v6 + v8))
    {
      v5(v4, v7 * *(&v17 + 1) + v6 * (1.0 - *(&v17 + 1)));
      v11 = v14;
    }
  }

  if (v7 + v6 * 0.0 - (v7 * 0.1 + v6 * 0.9) < v8)
  {
    *&v15 = 0;
    *(&v17 + 1) = 0x3FF0000000000000;
    if (!sub_23F4BF5D8(v19, a1, &v15))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *&v15 = v5;
  *(&v15 + 1) = v4;
  *&v16 = v7 * 0.1 + v6 * 0.9;
  *(&v16 + 1) = v7 + v6 * 0.0;
  *&v17 = v8;
  v18 = v11;
  if (sub_23F4BF5D8(v19, a1, &v15))
  {
LABEL_22:
    *v9 = 1;
  }

LABEL_23:
  if (v5)
  {
    if (!v15)
    {
      v13.n128_u64[0] = *(&v17 + 1);
      v12.n128_f64[0] = v7 * *(&v17 + 1) + v6 * (1.0 - *(&v17 + 1));
      if (*(&v17 + 1) == 1.0 || (v13.n128_f64[0] = v8 + v11, v12.n128_f64[0] >= v8 + v11))
      {
        (v5)(v4, v12, v13);
      }
    }
  }

  return v9;
}

void sub_23F4BE420(void **a1)
{
  sub_23F4BE5EC(a1[1]);

  free(a1);
}

_OWORD *sub_23F4BE460()
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0x10B0040D092B76AuLL);
  if (result && (result[2] = 0u, result[3] = 0u, *result = 0u, result[1] = 0u, v1 = result, v2 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10B0040EAA15328uLL), result = v1, v2))
  {
    v2[10] = 0u;
    v2[11] = 0u;
    v2[8] = 0u;
    v2[9] = 0u;
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    *(v1 + 7) = v2;
  }

  else
  {
    free(result);
    return 0;
  }

  return result;
}

void sub_23F4BE508(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      free(*(v2 + 8));
      free(*(a1[7] + 16));
      free(*(a1[7] + 32));
      free(*(a1[7] + 48));
      v3 = a1[7];
      free(v3[8]);
      free(v3[9]);
      free(v3[11]);
      free(v3[12]);
      free(v3[13]);
      free(v3[14]);
      v4 = a1[7];
      free(v4[16]);
      free(v4[17]);
      free(v4[19]);
      free(v4[20]);
      free(v4[21]);
      free(v4[22]);
      v5 = a1[7];
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  free(a1);
}

void *sub_23F4BE5EC(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[4];
      result[4] = 0;
      sub_23F4BE508(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_23F4BE624(uint64_t a1, int a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  v3 = a2;
  v4 = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  *(a1 + 8) = v4;
  if (v4)
  {
    v5 = malloc_type_calloc(v3, 0x30uLL, 0x1000040EED21634uLL);
    *(a1 + 16) = v5;
    if (v5)
    {
      v6 = malloc_type_calloc(v3, 0x10uLL, 0x1000040451B5BE8uLL);
      *(a1 + 32) = v6;
      if (v6)
      {
        v7 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
        *(a1 + 40) = v7;
        if (v7)
        {
          v8 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
          *(a1 + 48) = v8;
          if (v8)
          {
            v9 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
            *(a1 + 56) = v9;
            if (v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  free(*(a1 + 8));
  free(*(a1 + 16));
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  return 1;
}

__n128 sub_23F4BE76C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23F4BE780(int *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v170 = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1 - 1;
  if (*a1 < 1)
  {
    v6 = *a1 + 62;
  }

  v7 = v6 >> 6;
  if (v4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1] * v8;
  if (v9 < 0 || (v12 = a1, v13 = 8 * v9, v5) && v8 && v13 / v5 / v8 != 8)
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v14 = malloc_type_malloc(0x18uLL, 0x1010040B3F21DC8uLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  *v14 = v4;
  v14[1] = v5;
  v14[2] = v8;
  v16 = malloc_type_malloc(v13, 0x100004000313F17uLL);
  *(v15 + 2) = v16;
  if (!v16)
  {
    free(v15);
    return 0xFFFFFFFFLL;
  }

  memcpy(v16, *(v12 + 2), 8 * v12[2] * v12[1]);
  v18 = *v15;
  v17 = v15[1];
  v19 = *v15 + 63;
  if (*v15 >= 0)
  {
    v19 = *v15;
  }

  v20 = v18 - (v19 & 0xC0);
  v162 = a4;
  if (v18 != (v19 & 0xFFFFFFC0))
  {
    if (v17 < 1)
    {
      goto LABEL_129;
    }

    v21 = 0;
    v22 = v19 >> 6;
    v23 = -1 << -v20;
    v24 = *(v15 + 2);
    v25 = v15[2];
    if (v17 < 4)
    {
      goto LABEL_21;
    }

    if (v25 != 1)
    {
      goto LABEL_21;
    }

    v21 = v17 & 0x7FFFFFFC;
    v26 = vdupq_n_s64(v23);
    v27 = (v24 + 8 * v22 + 16);
    v28 = v21;
    do
    {
      v29 = vandq_s8(*v27, v26);
      v27[-1] = vandq_s8(v27[-1], v26);
      *v27 = v29;
      v27 += 2;
      v28 -= 4;
    }

    while (v28);
    if (v21 != v17)
    {
LABEL_21:
      v30 = v25;
      v31 = v17 - v21;
      v32 = (v24 + 8 * v21 * v30 + 8 * v22);
      do
      {
        *v32 &= v23;
        v32 += v30;
        --v31;
      }

      while (v31);
    }
  }

  if (v17 >= 1)
  {
    v33 = 0;
    LODWORD(v34) = v17 - 1;
    v157 = &v170;
    v158 = v12;
    v159 = a3;
    v169 = v15;
LABEL_30:
    v33 &= 0xFFFFFFC0;
    v36 = *v15;
    v34 = v34;
    while (v33 >= v36)
    {
LABEL_31:
      v33 = 0;
      v37 = v34-- <= 0;
      if (v37)
      {
        goto LABEL_129;
      }
    }

    v38 = *(v15 + 2) + 8 * v34 * v15[2];
    while (!*(v38 + 8 * (v33 >> 6)))
    {
      v33 += 64;
      if (v33 >= v36)
      {
        goto LABEL_31;
      }
    }

    while (v33 < 0 || v33 >= v36 || v15[1] <= v34 || (*(v38 + 8 * (v33 >> 6)) & (0x8000000000000000 >> v33)) == 0)
    {
      ++v33;
    }

    v39 = 45;
    if (v33 < *v12 && (v34 & 0x8000000000000000) == 0 && v12[1] > v34)
    {
      if ((*(*(v12 + 2) + 8 * v34 * v12[2] + 8 * (v33 >> 6)) & (0x8000000000000000 >> v33)) != 0)
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v161 = v34;
    v45 = v34 + 1;
    v46 = a3[1];
    v48 = v39 == 45 && v46 == 1;
    v160 = v39;
    if (v39 == 43 && v46 == 0 || v46 == 3)
    {
      v48 = 1;
    }

    v166 = a3[1];
    v167 = v48;
    v51 = 0xFFFFFFFFLL;
    v52 = 1;
    v53 = v33;
    v168 = v45;
    v54 = v45;
    while (1)
    {
      if (v52 - 1 >= v42)
      {
        v58 = v54;
        v59 = v52;
        v60 = v40;
        v42 = ((v42 + 100) * 1.3);
        v61 = malloc_type_realloc(v44, 16 * v42, 0x1000040451B5BE8uLL);
        if (!v61)
        {
          goto LABEL_210;
        }

        v44 = v61;
        v40 = v60;
        v52 = v59;
        v54 = v58;
      }

      v62 = (v44 + v40);
      *v62 = v53;
      v62[1] = v54;
      v53 += v41;
      v54 += v51;
      v43 += v53 * v51;
      if (v53 == v33 && v54 == v168)
      {
        v74 = sub_23F4BE460();
        if (v74)
        {
          v75 = *(v74 + 7);
          *(v75 + 8) = v44;
          *v75 = v52;
          *v74 = v43;
          *(v74 + 1) = v160;
          a4 = v162;
          v12 = v158;
          a3 = v159;
          v15 = v169;
          if (v52 >= 1)
          {
            v76 = 0;
            v77 = v44[4 * (v52 & 0x7FFFFFFF) - 2];
            v78 = *v44 & 0xFFFFFFC0;
            do
            {
              v80 = &v44[4 * v76];
              v79 = v80[2];
              if (v77 == v79)
              {
                v79 = v77;
              }

              else
              {
                v81 = *v80;
                if (v77 >= v79)
                {
                  LODWORD(v77) = v79;
                }

                v82 = v81 & 0xFFFFFFC0;
                if ((v81 & 0xFFFFFFC0) >= v78)
                {
                  if (v82 > v78)
                  {
                    v84 = *(v169 + 2) + 8 * v169[2] * v77;
                    v85 = v78;
                    do
                    {
                      *(v84 + 8 * (v85 >> 6)) = ~*(v84 + 8 * (v85 >> 6));
                      v85 += 64;
                    }

                    while (v85 < v82);
                  }
                }

                else
                {
                  v83 = *(v169 + 2) + 8 * v169[2] * v77;
                  do
                  {
                    *(v83 + 8 * (v82 >> 6)) = ~*(v83 + 8 * (v82 >> 6));
                    v82 += 64;
                  }

                  while (v82 < v78);
                }

                if ((v81 & 0x3F) != 0)
                {
                  v86 = *(v169 + 2) + 8 * v169[2] * v77;
                  *(v86 + 8 * (v81 >> 6)) ^= -1 << -(v81 & 0x3F);
                }
              }

              ++v76;
              v77 = v79;
            }

            while (v76 != (v52 & 0x7FFFFFFF));
          }

          if (v43 <= *v159)
          {
            sub_23F4BE508(v74);
            v34 = v161;
            v87 = v169[1];
            if (v87 < 1)
            {
              goto LABEL_29;
            }
          }

          else
          {
            *(v74 + 4) = *v157;
            *v157 = v74;
            v157 = (v74 + 2);
            v34 = v161;
            v87 = v169[1];
            if (v87 < 1)
            {
              goto LABEL_29;
            }
          }

          if (v162)
          {
            if (*v162)
            {
              v88 = 1.0 - v34 / v87;
              v89 = v88 * *(v162 + 24) + *(v162 + 16) * (1.0 - v88);
              if (v88 == 1.0 || v89 >= *(v162 + 48) + *(v162 + 32))
              {
                (*v162)(*(v162 + 8), v89);
                *(v162 + 48) = v89;
              }
            }
          }

LABEL_29:
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          break;
        }

LABEL_210:
        free(v44);
        free(*(v169 + 2));
        free(v169);
        v155 = v170;
        if (v170)
        {
          do
          {
            v156 = v155[4];
            v155[4] = 0;
            sub_23F4BE508(v155);
            v155 = v156;
          }

          while (v156);
        }

        return 0xFFFFFFFFLL;
      }

      v63 = (v41 + v51 - 1) / 2;
      v64 = v63 + v53;
      if (v63 + v53 < 0)
      {
        v67 = 1;
        v65 = v169;
        v68 = v53 + (v41 + ~v51) / 2;
        if (v68 < 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v65 = v169;
        if (v64 >= *v169 || (v66 = (v54 + (v51 + ~v41) / 2), v54 + (v51 + ~v41) / 2 < 0) || v66 >= v169[1])
        {
          v67 = 1;
          v68 = v53 + (v41 + ~v51) / 2;
          if (v68 < 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v67 = *(*(v169 + 2) + 8 * v169[2] * v66 + 8 * (v64 >> 6)) << v64 >= 0;
          v68 = v53 + (v41 + ~v51) / 2;
          if (v68 < 0)
          {
            goto LABEL_92;
          }
        }
      }

      if (v68 < *v65)
      {
        v69 = (v63 + v54);
        if (v69 >= 0 && v69 < v65[1])
        {
          v70 = *(*(v65 + 2) + 8 * v65[2] * v69 + 8 * (v68 >> 6)) << v68 >> 63;
          if ((v67 | v70))
          {
            goto LABEL_93;
          }

          goto LABEL_86;
        }
      }

LABEL_92:
      LODWORD(v70) = 0;
      if (v67)
      {
LABEL_93:
        if (!v67)
        {
          goto LABEL_66;
        }

        if (v70)
        {
          v71 = v41;
        }

        else
        {
          v71 = -v51;
        }

        if (v70)
        {
          v41 = v51;
        }

        else
        {
          v41 = v41;
        }

        v51 = v71;
        goto LABEL_67;
      }

LABEL_86:
      if (v167)
      {
        goto LABEL_66;
      }

      if (v166 == 4)
      {
        v165 = v52;
        v72 = v40;
        v73 = sub_23F4BF3B4(v65, v53, v54);
        v40 = v72;
        v52 = v165;
        if (!v73)
        {
          goto LABEL_66;
        }
      }

      else if (v166 == 5)
      {
        v164 = v52;
        v55 = v40;
        v56 = sub_23F4BF3B4(v65, v53, v54);
        v40 = v55;
        v52 = v164;
        if (v56)
        {
          goto LABEL_66;
        }
      }

      else if (v166 == 6 && (byte_23F4D9510[(-4205 * ((-7307 * v53) ^ v54)) >> 8] ^ byte_23F4D9510[((94957459 * ((78898037 * v53) ^ v54)) >> 16)] ^ byte_23F4D9510[(-109 * ((117 * v53) ^ v54))]) != byte_23F4D9510[(94957459 * ((78898037 * v53) ^ v54)) >> 24])
      {
LABEL_66:
        v41 = -v41;
        goto LABEL_67;
      }

      v51 = -v51;
LABEL_67:
      v57 = v41;
      ++v52;
      v40 += 16;
      v41 = v51;
      v51 = v57;
    }
  }

LABEL_129:
  v90 = v170;
  v171 = 0;
  v172 = v170;
  bzero(*(v15 + 2), 8 * v15[2] * v15[1]);
  if (!v90)
  {
    goto LABEL_206;
  }

  v91 = v90;
  do
  {
    v92 = v91[4];
    v91[5] = 0;
    v91[6] = v92;
    v91 = v92;
  }

  while (v92);
  v93 = v90;
  do
  {
    v96 = v93[5];
    v95 = v93 + 5;
    v94 = v96;
    v98 = v95 - 1;
    v97 = *(v95 - 1);
    *v95 = 0;
    *(v95 - 1) = 0;
    v99 = v95[2];
    v100 = *v99;
    if (v100 < 1)
    {
      v128 = 0;
      v114 = 0;
      v119 = 0x7FFFFFFF;
      v125 = 0x1FFFFFF;
      if (!v97)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v101 = 0;
      v102 = *(v99 + 1);
      v103 = v102[4 * v100 - 2];
      v104 = *v102 & 0xFFFFFFC0;
      do
      {
        v106 = &v102[4 * v101];
        v105 = v106[2];
        if (v103 == v105)
        {
          v105 = v103;
        }

        else
        {
          v107 = *v106;
          if (v103 >= v105)
          {
            LODWORD(v103) = v105;
          }

          v108 = v107 & 0xFFFFFFC0;
          if ((v107 & 0xFFFFFFC0) >= v104)
          {
            if (v108 > v104)
            {
              v110 = *(v15 + 2) + 8 * v15[2] * v103;
              v111 = v104;
              do
              {
                *(v110 + 8 * (v111 >> 6)) = ~*(v110 + 8 * (v111 >> 6));
                v111 += 64;
              }

              while (v111 < v108);
            }
          }

          else
          {
            v109 = *(v15 + 2) + 8 * v15[2] * v103;
            do
            {
              *(v109 + 8 * (v108 >> 6)) = ~*(v109 + 8 * (v108 >> 6));
              v108 += 64;
            }

            while (v108 < v104);
          }

          if ((v107 & 0x3F) != 0)
          {
            v112 = *(v15 + 2) + 8 * v15[2] * v103;
            *(v112 + 8 * (v107 >> 6)) ^= -1 << -(v107 & 0x3F);
          }
        }

        ++v101;
        v103 = v105;
      }

      while (v101 != v100);
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = v102 + 2;
      v118 = 0x7FFFFFFF;
      v119 = 0x7FFFFFFF;
      v120 = 0x7FFFFFFF;
      v121 = 0x7FFFFFFF;
      do
      {
        v122 = *(v117 - 2);
        v124 = *v117;
        v117 += 4;
        v123 = v124;
        if (v121 > v122)
        {
          v118 = v122;
        }

        if (v121 >= v122)
        {
          v121 = v122;
        }

        if (v116 < v122)
        {
          v113 = v122;
        }

        if (v116 <= v122)
        {
          v116 = v122;
        }

        if (v120 > v123)
        {
          v119 = v123;
        }

        if (v120 >= v123)
        {
          v120 = v123;
        }

        if (v115 < v123)
        {
          v114 = v123;
        }

        if (v115 <= v123)
        {
          v115 = v123;
        }

        --v100;
      }

      while (v100);
      v125 = v118 / 64;
      v126 = v113 + 63;
      v37 = v113 < -63;
      v127 = v113 + 126;
      if (v37)
      {
        v126 = v127;
      }

      v128 = v126 >> 6;
      if (!v97)
      {
LABEL_182:
        v138 = (v114 - v119);
        if (v114 <= v119)
        {
          goto LABEL_188;
        }

LABEL_185:
        if (v125 < v128)
        {
          v139 = v15[2];
          v140 = 8 * v139;
          v141 = 8 * (v128 + ~v125);
          v142 = (*(v15 + 2) + 8 * (v125 + v139 * v119));
          do
          {
            bzero(v142, v141 + 8);
            v142 += v140;
            --v138;
          }

          while (v138);
        }

        goto LABEL_188;
      }
    }

    v129 = v95 - 1;
    v130 = v95;
    while (1)
    {
      v132 = *(v97 + 32);
      *(v97 + 32) = 0;
      v133 = *(*(v97 + 56) + 8);
      v134 = v133[1];
      if (v134 <= v119)
      {
        break;
      }

      v135 = *v133;
      if ((v135 & 0x80000000) != 0 || *v15 <= v135 || (v136 = v134 - 1, (v136 & 0x80000000) != 0) || v15[1] <= v136 || ((*(*(v15 + 2) + 8 * v136 * v15[2] + 8 * (v135 / 64)) << v135) & 0x8000000000000000) == 0)
      {
        v131 = v129;
        v129 = (v97 + 32);
        *(v97 + 32) = *v131;
        *v131 = v97;
        v97 = v132;
        if (!v132)
        {
          goto LABEL_182;
        }
      }

      else
      {
        v137 = v130;
        v130 = (v97 + 32);
        *(v97 + 32) = *v137;
        *v137 = v97;
        v97 = v132;
        if (!v132)
        {
          goto LABEL_182;
        }
      }
    }

    *v129 = v97;
    *(v97 + 32) = v132;
    v138 = (v114 - v119);
    if (v114 > v119)
    {
      goto LABEL_185;
    }

LABEL_188:
    v143 = *v98;
    if (*v98)
    {
      v143[5] = v94;
      v94 = v143;
    }

    if (*v95)
    {
      *(*v95 + 40) = v94;
      v94 = *v95;
    }

    v93 = v94;
  }

  while (v94);
  v144 = v172;
  a4 = v162;
  if (v172)
  {
    v145 = v172;
    do
    {
      v146 = v145[6];
      v145[6] = v145[4];
      v145 = v146;
    }

    while (v146);
    v144[4] = 0;
    v172 = 0;
    v147 = &v172;
    do
    {
      v171 = v144[4];
      do
      {
        v144[4] = *v147;
        v148 = v144 + 4;
        *v147 = v144;
        v149 = v144[5];
        if (v149)
        {
          do
          {
            v149[4] = *v148;
            v147 = v149 + 4;
            *v148 = v149;
            v150 = v149[5];
            if (v150)
            {
              v151 = &v171;
              do
              {
                v152 = v151;
                v153 = *v151;
                v151 = (*v151 + 4);
              }

              while (v153);
              v150[4] = 0;
              *v152 = v150;
            }

            v149 = v149[6];
            v148 = v147;
          }

          while (v149);
        }

        else
        {
          v147 = v144 + 4;
        }

        v144 = v144[6];
      }

      while (v144);
      v144 = v171;
    }

    while (v171);
  }

LABEL_206:
  free(*(v15 + 2));
  free(v15);
  *a2 = v90;
  if (!a4 || !*a4)
  {
    return 0;
  }

  v154 = *(a4 + 24) + *(a4 + 16) * 0.0;
  (*a4)(*(a4 + 8), v154);
  result = 0;
  *(a4 + 48) = v154;
  return result;
}

uint64_t sub_23F4BF3B4(int *a1, int a2, int a3)
{
  v3 = -2;
  v4 = 2;
  while (2)
  {
    v5 = 0;
    v6 = v4 + a3;
    v7 = v4 + a2;
    v8 = v4 + a2 - 1;
    v9 = v8 >> 6;
    v10 = 0x8000000000000000 >> v8;
    v11 = a3 - v4;
    v12 = a2 - v4;
    v13 = v3;
    do
    {
      v16 = a2 + v13 + 1;
      if (v16 < 0 || (v16 < *a1 ? (v17 = v6 < 1) : (v17 = 1), v17 || v6 > a1[1]))
      {
        v18 = -1;
        if (v7 < 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((*(*(a1 + 2) + 8 * (v4 + a3 - 1) * a1[2] + 8 * (v16 >> 6)) << v16) >= 0)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

        if (v7 < 1)
        {
LABEL_24:
          v20 = -1;
          if (v16 < 1)
          {
            goto LABEL_19;
          }

          goto LABEL_25;
        }
      }

      if (v7 > *a1)
      {
        goto LABEL_24;
      }

      v19 = (a3 + v13);
      if (v19 + 1 < 1 || v19 + 1 > a1[1])
      {
        goto LABEL_24;
      }

      if ((*(*(a1 + 2) + 8 * a1[2] * v19 + 8 * v9) & v10) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      if (v16 < 1)
      {
LABEL_19:
        v21 = -1;
        goto LABEL_31;
      }

LABEL_25:
      v21 = -1;
      if (v16 <= *a1 && (v11 & 0x8000000000000000) == 0 && v11 < a1[1])
      {
        if ((*(*(a1 + 2) + 8 * v11 * a1[2] + 8 * ((a2 + v13) >> 6)) << (a2 + v13)) >= 0)
        {
          v21 = -1;
        }

        else
        {
          v21 = 1;
        }
      }

LABEL_31:
      if (v12 < 0 || v12 >= *a1 || (v22 = (a3 + v13 + 1), a3 + v13 + 1 < 0) || v22 >= a1[1])
      {
        v14 = -1;
      }

      else if ((*(*(a1 + 2) + 8 * a1[2] * v22 + 8 * ((a2 - v4) >> 6)) & (0x8000000000000000 >> (a2 - v4))) != 0)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      v5 += v18 + v20 + v21 + v14;
      v15 = (v13 + 2);
      ++v13;
    }

    while (v4 != v15);
    if (v5 <= 0)
    {
      if (v5)
      {
        return 0;
      }

      ++v4;
      --v3;
      if (v4 == 5)
      {
        return 0;
      }

      continue;
    }

    return 1;
  }
}

uint64_t sub_23F4BF5D8(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a3;
  v4 = a1;
  v560 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = 0.0;
  if (*a3)
  {
    _ZF = a1 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v8 = a1;
    do
    {
      v6 = v6 + **(v8 + 56);
      v8 = *(v8 + 32);
    }

    while (v8);
  }

  if (!a1)
  {
LABEL_567:
    if (!v5)
    {
      return 0;
    }

    v544 = v3[3] + v3[2] * 0.0;
    v5(*(v3 + 1), v544);
    result = 0;
    v3[6] = v544;
    return result;
  }

  v9 = 4.0;
  v10 = 0.5;
  v11 = -0.5;
  v12 = 1.0;
  v549 = 0.0;
LABEL_9:
  v13 = *(v4 + 56);
  v14 = *v13;
  v15 = malloc_type_calloc(v14 + 1, 0x28uLL, 0x10000400A747E1EuLL);
  v13[4] = v15;
  if (!v15)
  {
    return 1;
  }

  v16 = v13[1];
  v17 = vmovn_s64(*v16);
  v13[3] = v17;
  *(v15 + 4) = 0;
  v18 = 0uLL;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  if (v14 >= 1)
  {
    v19 = (v15 + 72);
    v20 = 0.0;
    v21 = 0uLL;
    do
    {
      v22 = *v16++;
      v23 = vsub_s32(vmovn_s64(v22), v17);
      v24.f64[0] = (v23.i32[0] * v23.i32[0]);
      v25.i64[0] = v23.i32[0];
      v25.i64[1] = v23.i32[1];
      v18 = vaddq_f64(v18, vcvtq_f64_s64(v25));
      v24.f64[1] = (v23.i32[1] * v23.i32[0]);
      v21 = vaddq_f64(v21, v24);
      *(v19 - 2) = v18;
      *(v19 - 1) = v21;
      v20 = v20 + (v23.i32[1] * v23.i32[1]);
      *v19 = v20;
      v19 += 5;
      --v14;
    }

    while (v14);
  }

  v26 = *(v4 + 56);
  v27 = *(v26 + 1);
  v28 = *v26;
  v29 = malloc_type_calloc(*v26, 4uLL, 0x100004052888210uLL);
  if (!v29)
  {
    v31 = 0;
    goto LABEL_564;
  }

  v30 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
  v31 = v30;
  if (!v30)
  {
    goto LABEL_564;
  }

  v553 = v4;
  v32 = v28 - 1;
  if (v28 < 1)
  {
    v39 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
    *(v26 + 2) = v39;
    if (v39)
    {
      v88 = v32;
      v87 = *(v29 + v32);
      v39[v32] = v87;
LABEL_111:
      v89 = v553;
      goto LABEL_132;
    }

    goto LABEL_564;
  }

  v33 = 0;
  v34 = (v28 - 1);
  v35 = (v27 + 16 * v32 + 8);
  v36 = v28;
  v37 = v34;
  do
  {
    v38 = (v27 + 16 * v33);
    if (*(v35 - 1) != *v38 && *v35 != v38[1])
    {
      v33 = v36;
    }

    *&v30[4 * v37] = v33;
    --v36;
    v35 -= 2;
    v58 = v37-- <= 0;
  }

  while (!v58);
  v39 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
  *(v26 + 2) = v39;
  if (!v39)
  {
    goto LABEL_564;
  }

  while (2)
  {
    v41 = v34 + 1;
    v559 = 0uLL;
    if (v34 + 1 >= v28)
    {
      v44 = (v41 % v28);
      v42 = *(v27 + 16 * v34);
      v43 = *(v27 + 16 * v44) - v42;
    }

    else
    {
      v42 = *(v27 + 16 * v34);
      v43 = *(v27 + 16 * v41) - v42;
      v44 = v41;
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = *(v27 + 16 * v34 + 8);
    v50 = 3 * v43 + *(v27 + 16 * v44 + 8) - v49 + 3;
    ++v559.i32[(v50 / 2)];
    v51 = *&v31[4 * v34];
    v52 = (v27 + 16 * v34);
    v54 = *v52;
    v53 = v52[1];
    v40 = v34;
    do
    {
      while (1)
      {
        v55 = (v27 + 16 * v51);
        v57 = *v55;
        v56 = v55[1];
        v58 = *v55 <= v54;
        if (*v55 == v54)
        {
          v59 = 3;
        }

        else
        {
          v59 = 0;
        }

        if (!v58)
        {
          v59 = 6;
        }

        if (v56 == v53)
        {
          v60 = 0;
        }

        else
        {
          v60 = -1;
        }

        if (v56 > v53)
        {
          v60 = 1;
        }

        v61 = ((v60 + v59 + (((v60 + v59) & 0x80u) >> 7)) >> 1);
        ++v559.i32[v61];
        if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v559))) & 1) == 0)
        {
          goto LABEL_24;
        }

        v62 = v51;
        v63 = v57 - v42;
        v64 = v56 - v49;
        if ((v56 - v49) * v48 - (v57 - v42) * v47 < 0 || v64 * v46 - v63 * v45 > 0)
        {
          LODWORD(v63) = v54 - v42;
          LODWORD(v64) = v53 - v49;
          v62 = v40;
          goto LABEL_79;
        }

        if (v63 >= 0)
        {
          v65 = v57 - v42;
        }

        else
        {
          v65 = v42 - v57;
        }

        if (v64 >= 0)
        {
          v66 = v56 - v49;
        }

        else
        {
          v66 = v49 - v56;
        }

        if (v65 > 1 || v66 >= 2)
        {
          v67 = v56 != v49 || v63 < 0;
          v68 = 1;
          if (!v67)
          {
            v68 = -1;
          }

          v69 = v57 != v42;
          v70 = v63 > 0;
          if (v64 < 0)
          {
            v71 = -1;
          }

          else
          {
            v71 = v68;
          }

          v72 = v71 + v63;
          if (v64 < 0)
          {
            v69 = 1;
            v70 = 1;
          }

          if (v64 >= 1)
          {
            v68 = -1;
          }

          if (v63 < 1 && v69)
          {
            v73 = v64 + 1;
          }

          else
          {
            v73 = v64 - 1;
          }

          if (((v73 * v48 - v72 * v47) & 0x80000000) == 0)
          {
            v47 = v73;
            v48 = v72;
          }

          v74 = v68 + v63;
          if (v63 >= 0 && v70)
          {
            v75 = v64 + 1;
          }

          else
          {
            v75 = v64 - 1;
          }

          if (v75 * v46 - v74 * v45 < 1)
          {
            v45 = v75;
            v46 = v74;
          }
        }

        v51 = *&v31[4 * v62];
        if (v51 <= v62)
        {
          break;
        }

        v53 = v56;
        v54 = v57;
        v40 = v62;
        if (v34 >= v62)
        {
          goto LABEL_30;
        }
      }

      if (v34 >= v62)
      {
        break;
      }

LABEL_30:
      v53 = v56;
      v54 = v57;
      v40 = v62;
    }

    while (v34 >= v51);
    v76 = (v27 + 16 * v51);
    v53 = v56;
    v54 = v57;
    v57 = *v76;
    v56 = v76[1];
LABEL_79:
    if (v57 == v54)
    {
      v77 = 0;
    }

    else
    {
      v77 = -1;
    }

    if (v57 > v54)
    {
      v77 = 1;
    }

    if (v56 == v53)
    {
      v78 = 0;
    }

    else
    {
      v78 = -1;
    }

    if (v56 > v53)
    {
      v78 = 1;
    }

    v79 = v48 * v78 - v47 * v77;
    if ((v79 & 0x80000000) == 0)
    {
      v80 = 10000000;
      v81 = v46 * v78 - v77 * v45;
      if (v81 < 1)
      {
        goto LABEL_91;
      }

LABEL_97:
      v84 = v45 * v63 - v46 * v64;
      if ((v84 & 0x80000000) != 0)
      {
        v86 = ~v84 / v81;
        if (v80 >= ~v86)
        {
          v80 = ~v86;
        }

        v40 = v80 + v62;
        if (v80 + v62 < v28)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v85 = v84 / v81;
        if (v80 >= v85)
        {
          v80 = v85;
        }

        v40 = v80 + v62;
        if (v80 + v62 < v28)
        {
          goto LABEL_105;
        }
      }

LABEL_23:
      v40 %= v28;
      goto LABEL_24;
    }

    v82 = v48 * v64 - v47 * v63;
    v83 = -v79;
    if ((v82 & 0x80000000) != 0)
    {
      v80 = ~(~v82 / v83);
      v81 = v46 * v78 - v77 * v45;
      if (v81 >= 1)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v80 = v82 / v83;
      v81 = v46 * v78 - v77 * v45;
      if (v81 >= 1)
      {
        goto LABEL_97;
      }
    }

LABEL_91:
    v40 = v80 + v62;
    if (v80 + v62 >= v28)
    {
      goto LABEL_23;
    }

LABEL_105:
    if (v40 < 0)
    {
      v40 = v28 + ~(~v40 % v28);
    }

LABEL_24:
    *(v29 + v34) = v40;
    v58 = v34-- <= 0;
    if (!v58)
    {
      continue;
    }

    break;
  }

  v87 = *(v29 + v32);
  v39[v32] = v87;
  if (v28 == 1)
  {
    v88 = 0;
    goto LABEL_111;
  }

  v88 = v32;
  v90 = (v28 - 2);
  do
  {
    v91 = *(v29 + v90);
    v93 = v91 < v87 || v90 < v91;
    v95 = v91 < v87 && v90 < v91;
    if (v90 < v87)
    {
      v93 = v95;
    }

    if (v93)
    {
      v87 = *(v29 + v90);
    }

    v39[v90] = v87;
    v58 = v90-- <= 0;
  }

  while (!v58);
  v89 = v553;
LABEL_132:
  v96 = -2 - v88;
  v97 = v88 + 1;
  v98 = &v39[v88];
  while (2)
  {
    v100 = v97 - 1;
    v101 = v28 + ~(v96 % v28);
    if (v97 - 1 >= -1)
    {
      v101 = v97;
    }

    if (v97 >= v28)
    {
      v101 = v97 % v28;
    }

    v102 = *v98;
    if (v101 <= *v98)
    {
      if (v101 > v87 || v87 >= v102)
      {
        break;
      }

      goto LABEL_138;
    }

    if (v101 <= v87 || v87 < v102)
    {
LABEL_138:
      *v98-- = v87;
      ++v96;
      v97 = v100;
      continue;
    }

    break;
  }

  free(v29);
  free(v31);
  v104 = *(v89 + 56);
  v105 = *v104;
  if ((v105 & 0x80000000) != 0)
  {
    return 1;
  }

  v106 = malloc_type_calloc(v105 + 1, 8uLL, 0x100004000313F17uLL);
  if (!v106)
  {
    v107 = 0;
LABEL_551:
    v108 = 0;
LABEL_552:
    v109 = 0;
LABEL_553:
    v540 = 0;
    v541 = 0;
LABEL_554:
    free(v106);
    free(v107);
    free(v108);
    free(v109);
    free(v540);
    v542 = v541;
    goto LABEL_573;
  }

  v107 = malloc_type_calloc(v105 + 1, 4uLL, 0x100004052888210uLL);
  if (!v107)
  {
    goto LABEL_551;
  }

  v108 = malloc_type_calloc(v105, 4uLL, 0x100004052888210uLL);
  if (!v108)
  {
    goto LABEL_552;
  }

  v109 = malloc_type_calloc(v105 + 1, 4uLL, 0x100004052888210uLL);
  if (!v109)
  {
    goto LABEL_553;
  }

  v110 = malloc_type_calloc(v105 + 1, 4uLL, 0x100004052888210uLL);
  if (!v110)
  {
    goto LABEL_553;
  }

  v556 = v110;
  v111 = malloc_type_calloc(v105 + 1, 4uLL, 0x100004052888210uLL);
  if (!v111)
  {
    v541 = 0;
    v540 = v556;
    goto LABEL_554;
  }

  v554 = v111;
  if (v105)
  {
    v112 = *(v104 + 2);
    v113 = *(v112 + 4 * v105 - 4);
    v114 = v113 - 1;
    if (v113 > v105)
    {
      v114 %= v105;
      v115 = v556;
      if (!v114)
      {
        goto LABEL_158;
      }

LABEL_325:
      if ((v114 & 0x80000000) == 0)
      {
        goto LABEL_326;
      }

      *v108 = v105;
      if (v105 == 1)
      {
        goto LABEL_329;
      }

LABEL_358:
      v347 = 0;
      v348 = v112 - 4;
      while (2)
      {
        v350 = v347 + 1;
        v351 = *(v348 + 4 * (v347 + 1));
        v349 = v351 - 1;
        if (v351 <= v105)
        {
          if (v351 <= 0)
          {
            v349 = v105 + ~(-v351 % v105);
            if (v350 == v349)
            {
              goto LABEL_367;
            }
          }

          else if (v350 == v349)
          {
            goto LABEL_367;
          }

LABEL_359:
          if (v350 > v349)
          {
            v349 = v105;
          }
        }

        else
        {
          v349 %= v105;
          if (v350 != v349)
          {
            goto LABEL_359;
          }

LABEL_367:
          v349 = v347 + 2;
          if (v347 + 2 >= v105)
          {
            if (v105 - 2 == v347)
            {
              v349 = 0;
            }

            goto LABEL_359;
          }
        }

        v108[++v347] = v349;
        if (v105 - 1 == v347)
        {
          goto LABEL_329;
        }

        continue;
      }
    }

    v115 = v556;
    if (v113 <= 0)
    {
      v114 = v105 + ~(-v113 % v105);
      if (v114)
      {
        goto LABEL_325;
      }
    }

    else if (v113 != 1)
    {
      goto LABEL_325;
    }

LABEL_158:
    v114 = v105 != 1;
LABEL_326:
    *v108 = v114;
    if (v105 != 1)
    {
      goto LABEL_358;
    }

LABEL_329:
    v300 = 0;
    v301 = 1;
    do
    {
      if (v301 <= v108[v300])
      {
        v302 = v301 - 1;
        v303 = &v109[4 * v301];
        do
        {
          *v303 = v300;
          v303 += 4;
          ++v302;
          ++v301;
        }

        while (v302 < v108[v300]);
      }

      ++v300;
    }

    while (v300 != v105);
    v116 = 0;
    v304 = 0;
    v305 = 1;
    v306 = v111;
    do
    {
      v115[v116] = v304;
      v307 = v305;
      v304 = v108[v304];
      ++v116;
      ++v305;
    }

    while (v304 < v105);
    v115[v116] = v105;
    if (v116 >= 1)
    {
      v308 = v307 + 1;
      v309 = &v111[v307];
      v310 = v105;
      do
      {
        *v309-- = v310;
        v310 = *&v109[4 * v310];
        --v308;
      }

      while (v308 > 1);
    }

    v118 = v116;
    *v554 = 0;
    *v106 = 0;
    v311 = 1;
    do
    {
      v312 = v306[v311];
      v313 = &v556[v311];
      v314 = *v313;
      if (v312 <= *v313)
      {
        do
        {
          while (1)
          {
            v315 = *(v313 - 1);
            v316 = *&v109[4 * v312];
            if (v315 >= v316)
            {
              break;
            }

            *&v106[v312] = -1.0;
            v58 = v312++ < v314;
            if (!v58)
            {
              goto LABEL_341;
            }
          }

          v317 = *(v104 + 1);
          v318 = *(v104 + 4);
          v319 = (v318 + 40 * (v312 + 1));
          v320 = *v317;
          v321 = v317[1];
          v322 = v312 - v315 + 1;
          v323 = (v318 + 40 * v315 + 32);
          v324 = v315 + 1;
          v325 = &v106[v315];
          v326 = &v317[2 * v315 + 1];
          v327 = -1.0;
          do
          {
            v328 = *v104;
            if (v312 >= v328)
            {
              v332 = v312 - v328;
              v334 = (v318 + 40 * (v312 - v328 + 1));
              v335 = (v318 + 40 * v328);
              *&v329 = *&vaddq_f64(vsubq_f64(v334[1], *(v323 - 2)), v335[1]);
              _Q3 = vaddq_f64(vsubq_f64(*v334, *(v323 - 4)), *v335);
              v331 = v334[2].f64[0] - *v323 + v335[2].f64[0];
              v333 = v312 + 1 - v315;
            }

            else
            {
              *&v329 = *&vsubq_f64(v319[1], *(v323 - 2));
              _Q3 = vsubq_f64(*v319, *(v323 - 4));
              v331 = v319[2].f64[0] - *v323;
              v332 = v312;
              v333 = v322;
            }

            v336 = v333;
            v337 = &v317[2 * v332];
            v338 = *(v326 - 1);
            v340 = *v337;
            v339 = v337[1];
            _D7 = vcvtd_n_f64_s64(v340 + v338, 1uLL) - v320;
            v342 = vcvtd_n_f64_s64(v339 + *v326, 1uLL) - v321;
            v343 = (*v326 - v339);
            v344 = (v329 + -2.0 * _Q3.f64[0] * _D7) / v336 + _D7 * _D7;
            __asm { FMLS            D4, D7, V3.D[1] }

            v346 = *v325 + sqrt((v343 + v343) * (v340 - v338) * (_D4 / v336 + _D7 * v342) + v343 * v343 * v344 + (v340 - v338) * (v340 - v338) * ((v331 + vmuld_lane_f64(-2.0, _Q3, 1) * v342) / v336 + v342 * v342));
            if (v327 < 0.0 || v346 < v327)
            {
              *(v107 + v312) = v315;
              v316 = *&v109[4 * v312];
              v327 = v346;
            }

            LODWORD(v315) = v315 - 1;
            ++v322;
            v323 -= 5;
            --v324;
            --v325;
            v326 -= 2;
          }

          while (v324 > v316);
          v314 = *v313;
          *&v106[v312] = v327;
          v58 = v312++ < v314;
        }

        while (v58);
      }

LABEL_341:
      ++v311;
      v306 = v554;
    }

    while (v311 != v116 + 1);
  }

  else
  {
    LODWORD(v116) = 0;
    v117 = v111;
    v118 = 0;
    *v556 = 0;
    *v117 = 0;
    *v106 = 0;
  }

  v104[10] = v116;
  v119 = malloc_type_calloc(v118, 4uLL, 0x100004052888210uLL);
  *(v104 + 6) = v119;
  if (!v119)
  {
    v541 = v554;
    v540 = v556;
    goto LABEL_554;
  }

  if (v105)
  {
    v120 = &v119[4 * v116 - 4];
    do
    {
      LODWORD(v105) = *(v107 + v105);
      *v120 = v105;
      v120 -= 4;
    }

    while (v105 > 0);
  }

  free(v106);
  free(v107);
  free(v108);
  free(v109);
  free(v556);
  free(v554);
  v121 = *(v553 + 56);
  v122 = *(v121 + 40);
  v123 = *(v121 + 48);
  v124 = *v121;
  v125 = *(v121 + 8);
  v127 = *(v121 + 24);
  v126 = *(v121 + 28);
  v128 = malloc_type_calloc(v122, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v128)
  {
    v29 = 0;
    v31 = 0;
    goto LABEL_563;
  }

  v557 = v128;
  v29 = malloc_type_calloc(v122, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v29)
  {
    v31 = 0;
LABEL_562:
    v128 = v557;
LABEL_563:
    free(v128);
LABEL_564:
    free(v29);
    v542 = v31;
    goto LABEL_573;
  }

  v31 = malloc_type_calloc(v122, 0x48uLL, 0x1000040FF89C88EuLL);
  if (!v31 || sub_23F4BE624(v121 + 56, v122))
  {
    goto LABEL_562;
  }

  if (v122 >= 1)
  {
    v129 = 0;
    while (1)
    {
      v130 = v129 + 1;
      if (v129 + 1 == v122)
      {
        v131 = 0;
      }

      else
      {
        v131 = v129 + 1;
      }

      if (v129 + 1 < v122)
      {
        v131 = v129 + 1;
      }

      v132 = *(v123 + 4 * v131);
      v133 = *(v123 + 4 * v129);
      v134 = v132 - v133;
      v135 = v124 + ~(~v134 % v124);
      if (v134 >= 0)
      {
        v135 = v134;
      }

      if (v134 >= v124)
      {
        v136 = v134 % v124;
      }

      else
      {
        v136 = v135;
      }

      v137 = v136 + v133;
      v138 = *v121;
      if (v137 >= *v121)
      {
        v139 = 0;
        do
        {
          v137 -= v138;
          ++v139;
        }

        while (v137 >= v138);
      }

      else
      {
        v139 = 0;
      }

      while (v133 >= v138)
      {
        v133 -= v138;
        --v139;
      }

      for (; v137 < 0; --v139)
      {
        v137 += v138;
      }

      if (v133 < 0)
      {
        do
        {
          ++v139;
          v133 += v138;
        }

        while (v133 < 0);
      }

      v140 = &v29[2 * v129];
      v141 = *(v121 + 32);
      v142 = v137 + 1;
      v143 = (v141 + 40 * v142);
      v144 = (v141 + 40 * v133);
      v145 = (v141 + 40 * v138);
      v146 = v143[1].f64[0] - v144[1].f64[0] + v139 * v145[1].f64[0];
      v147 = v143[1].f64[1] - v144[1].f64[1] + v139 * v145[1].f64[1];
      v148 = v142 - v133 + v139 * v138;
      v149 = v143[2].f64[0] - v144[2].f64[0] + v139 * v145[2].f64[0];
      v150 = vmlaq_n_f64(vsubq_f64(*v143, *v144), *v145, v139);
      v557[v129] = vdivq_f64(v150, vdupq_lane_s64(COERCE__INT64(v148), 0));
      v151 = (v146 - vmulq_f64(v150, v150).f64[0] / v148) / v148;
      v152 = (v147 - vmuld_lane_f64(v150.f64[0], v150, 1) / v148) / v148;
      v153 = (v149 - vmuld_lane_f64(v150.f64[1], v150, 1) / v148) / v148;
      v154 = (v151 + v153 + sqrt(v152 * (v152 * v9) + (v151 - v153) * (v151 - v153))) * v10;
      v155 = v152 * v152;
      if (vabdd_f64(v151, v154) >= vabdd_f64(v153, v154))
      {
        v159 = v151 - v154;
        v157 = sqrt(v155 + v159 * v159);
        if (v157 != 0.0)
        {
          *v140 = -v152 / v157;
          v158 = v159 / v157;
          goto LABEL_197;
        }
      }

      else
      {
        v156 = v153 - v154;
        v157 = sqrt(v155 + v156 * v156);
        if (v157 != 0.0)
        {
          *v140 = -v156 / v157;
          v158 = v152 / v157;
LABEL_197:
          v140[1] = v158;
        }
      }

      if (v157 == 0.0)
      {
        *v140 = 0.0;
        v140[1] = 0.0;
      }

      ++v129;
      if (v130 == v122)
      {
        v160 = v31 + 32;
        v161 = v29 + 1;
        v162 = &v557->f64[1];
        v163 = v122;
        do
        {
          while (1)
          {
            v171 = *(v161 - 1);
            v172 = *v161;
            v173 = v172 * v172 + v171 * v171;
            if (v173 == 0.0)
            {
              break;
            }

            v164 = -v171;
            v165 = v171 * *v162 - v172 * *(v162 - 1);
            v166 = -(v171 * v172) / v173;
            *(v160 - 4) = v172 * v172 / v173;
            *(v160 - 3) = v166;
            v167 = v172 * v165 / v173;
            *(v160 - 2) = v167;
            *(v160 - 1) = v166;
            v168 = v171 * v171 / v173;
            v169 = vdupq_lane_s64(*&v165, 0);
            v169.f64[0] = v164;
            v170 = vdivq_f64(vmulq_n_f64(v169, v165), vdupq_lane_s64(*&v173, 0));
            *v160 = v168;
            *(v160 + 1) = *&v170.f64[0];
            *(v160 + 2) = v167;
            *(v160 + 24) = v170;
            v160 += 72;
            v161 += 2;
            v162 += 2;
            if (!--v163)
            {
              goto LABEL_204;
            }
          }

          *(v160 + 4) = 0;
          *v160 = 0uLL;
          *(v160 + 1) = 0uLL;
          *(v160 - 2) = 0uLL;
          *(v160 - 1) = 0uLL;
          v160 += 72;
          v161 += 2;
          v162 += 2;
          --v163;
        }

        while (v163);
LABEL_204:
        v174 = 0;
        v175 = *(v121 + 88);
LABEL_246:
        v212 = (v125 + 16 * *(v123 + 4 * v174));
        v213 = *v212 - v127;
        v214 = v212[1] - v126;
        if (v174)
        {
          v215 = v174;
        }

        else
        {
          v215 = v122;
        }

        v216 = &v31[72 * v215];
        v217 = &v31[72 * v174];
        _Q2 = vaddq_f64(*(v216 - 3), v217[3]);
        v200 = vaddq_f64(*(v216 - 5), v217[2]);
        v192 = vaddq_f64(*(v216 - 7), v217[1]);
        v219 = vaddq_f64(*(v216 - 9), *v217);
        v220 = *(v216 - 1);
        v221 = v217[4].f64[0];
        v222 = v213;
        _D5 = v214;
        while (1)
        {
          v220 = v220 + v221;
          v236 = -v219.f64[1];
          v237 = vmuld_lane_f64(-v219.f64[1], v192, 1) + v219.f64[0] * v200.f64[0];
          if (v237 != 0.0)
          {
            v210 = (vmuld_lane_f64(v219.f64[1], v200, 1) - v200.f64[0] * v192.f64[0]) / v237;
            v208 = (-v200.f64[1] * v219.f64[0] + v192.f64[0] * v192.f64[1]) / v237;
            v238 = vabdd_f64(v208, _D5);
            if (vabdd_f64(v210, v222) <= v10 && v238 <= v10)
            {
              goto LABEL_245;
            }

            __asm { FMLA            D21, D5, V2.D[1] }

            v179 = v220 + _D21;
            if (v219.f64[0] == 0.0)
            {
              v176 = v213;
              v183 = v214;
              v184 = v222 + v11;
              v185 = v184 * v219.f64[0];
              v186 = v184 * v219.f64[1];
              v187 = v184 * v192.f64[0];
              if (v200.f64[0] != 0.0)
              {
                goto LABEL_265;
              }

LABEL_215:
              v188 = v185 * v184 + 0.0;
              v189 = v184 + v12;
              v190 = (v184 + v12) * v219.f64[0] * (v184 + v12) + 0.0;
              v191 = (v184 + v12) * v219.f64[1];
              v192.f64[0] = (v184 + v12) * v192.f64[0];
            }

            else
            {
              v176 = -(v192.f64[0] + v219.f64[1] * (_D5 + v11)) / v219.f64[0];
              v177 = vabdd_f64(v176, v222) <= v10;
              v178 = v220 + (_D5 + v11) * v200.f64[1] + v192.f64[0] * v176 + v219.f64[0] * v176 * v176 + 0.0 + v219.f64[1] * v176 * (_D5 + v11) + (_D5 + v11) * v192.f64[1] * v176 + (_D5 + v11) * v200.f64[0] * (_D5 + v11) + _Q2.f64[0] * v176 + _Q2.f64[1] * (_D5 + v11) < v179;
              if (v177 && v178)
              {
                v179 = v220 + (_D5 + v11) * v200.f64[1] + v192.f64[0] * v176 + v219.f64[0] * v176 * v176 + 0.0 + v219.f64[1] * v176 * (_D5 + v11) + (_D5 + v11) * v192.f64[1] * v176 + (_D5 + v11) * v200.f64[0] * (_D5 + v11) + _Q2.f64[0] * v176 + _Q2.f64[1] * (_D5 + v11);
              }

              else
              {
                v176 = v222;
              }

              if (v177 && v178)
              {
                v180 = _D5 + v11;
              }

              else
              {
                v180 = _D5;
              }

              v181 = _D5 + v11 + v12;
              v182 = -(v192.f64[0] + v219.f64[1] * v181) / v219.f64[0];
              if (vabdd_f64(v182, v222) <= v10 && v220 + v181 * v200.f64[1] + v192.f64[0] * v182 + v219.f64[0] * v182 * v182 + 0.0 + v219.f64[1] * v182 * v181 + v181 * v192.f64[1] * v182 + v181 * v200.f64[0] * v181 + _Q2.f64[0] * v182 + _Q2.f64[1] * v181 < v179)
              {
                v179 = v220 + v181 * v200.f64[1] + v192.f64[0] * v182 + v219.f64[0] * v182 * v182 + 0.0 + v219.f64[1] * v182 * v181 + v181 * v192.f64[1] * v182 + v181 * v200.f64[0] * v181 + _Q2.f64[0] * v182 + _Q2.f64[1] * v181;
                v176 = -(v192.f64[0] + v219.f64[1] * v181) / v219.f64[0];
                v183 = _D5 + v11 + v12;
              }

              else
              {
                v183 = v180;
              }

              v184 = v222 + v11;
              v185 = v184 * v219.f64[0];
              v186 = v184 * v219.f64[1];
              v187 = v184 * v192.f64[0];
              if (v200.f64[0] == 0.0)
              {
                goto LABEL_215;
              }

LABEL_265:
              v241 = -(v200.f64[1] + v192.f64[1] * v184) / v200.f64[0];
              v188 = v185 * v184 + 0.0;
              if (vabdd_f64(v241, _D5) <= v10 && v220 + v200.f64[1] * v241 + v187 + v188 + v186 * v241 + v192.f64[1] * v241 * v184 + v200.f64[0] * v241 * v241 + _Q2.f64[0] * v184 + _Q2.f64[1] * v241 < v179)
              {
                v179 = v220 + v200.f64[1] * v241 + v187 + v188 + v186 * v241 + v192.f64[1] * v241 * v184 + v200.f64[0] * v241 * v241 + _Q2.f64[0] * v184 + _Q2.f64[1] * v241;
                v176 = v184;
                v183 = -(v200.f64[1] + v192.f64[1] * v184) / v200.f64[0];
              }

              v189 = v184 + v12;
              v242 = -(v200.f64[1] + v192.f64[1] * (v184 + v12)) / v200.f64[0];
              v190 = (v184 + v12) * v219.f64[0] * (v184 + v12) + 0.0;
              v191 = (v184 + v12) * v219.f64[1];
              v192.f64[0] = (v184 + v12) * v192.f64[0];
              if (vabdd_f64(v242, _D5) <= v10 && v220 + v200.f64[1] * v242 + v192.f64[0] + v190 + v191 * v242 + v192.f64[1] * v242 * (v184 + v12) + v200.f64[0] * v242 * v242 + _Q2.f64[0] * (v184 + v12) + _Q2.f64[1] * v242 < v179)
              {
                v179 = v220 + v200.f64[1] * v242 + v192.f64[0] + v190 + v191 * v242 + v192.f64[1] * v242 * (v184 + v12) + v200.f64[0] * v242 * v242 + _Q2.f64[0] * (v184 + v12) + _Q2.f64[1] * v242;
                v176 = v184 + v12;
                v183 = -(v200.f64[1] + v192.f64[1] * (v184 + v12)) / v200.f64[0];
              }
            }

            v193 = _D5 + v11;
            v194 = v193 + v12;
            v195 = v193 * v192.f64[1];
            v196 = v193 * v200.f64[0];
            v197 = v193 * v200.f64[1];
            v198 = v220 + v193 * v200.f64[1] + v187 + v188 + v186 * v193 + v193 * v192.f64[1] * v184 + v193 * v200.f64[0] * v193 + _Q2.f64[0] * v184 + _Q2.f64[1] * v193;
            if (v198 >= v179)
            {
              v199 = v179;
            }

            else
            {
              v199 = v220 + v193 * v200.f64[1] + v187 + v188 + v186 * v193 + v193 * v192.f64[1] * v184 + v193 * v200.f64[0] * v193 + _Q2.f64[0] * v184 + _Q2.f64[1] * v193;
            }

            if (v198 < v179)
            {
              v183 = v193;
            }

            v200.f64[0] = v194 * v200.f64[0];
            v201 = v220 + v194 * v200.f64[1] + v187 + v188 + v186 * v194 + v194 * v192.f64[1] * v184 + v200.f64[0] * v194 + _Q2.f64[0] * v184 + _Q2.f64[1] * v194;
            _NF = v201 < v199;
            if (v201 >= v199)
            {
              v201 = v199;
            }

            v12 = 1.0;
            if (_NF)
            {
              v203 = v194;
            }

            else
            {
              v203 = v183;
            }

            if (!_NF && v198 >= v179)
            {
              v184 = v176;
            }

            v205 = v220 + v197 + v192.f64[0] + v190 + v191 * v193 + v195 * v189 + v196 * v193 + _Q2.f64[0] * v189 + _Q2.f64[1] * v193;
            if (v205 >= v201)
            {
              v206 = v201;
            }

            else
            {
              v206 = v220 + v197 + v192.f64[0] + v190 + v191 * v193 + v195 * v189 + v196 * v193 + _Q2.f64[0] * v189 + _Q2.f64[1] * v193;
            }

            if (v205 >= v201)
            {
              v193 = v203;
            }

            v207 = v220 + v194 * v200.f64[1] + v192.f64[0] + v190 + v191 * v194 + v194 * v192.f64[1] * v189 + v200.f64[0] * v194 + _Q2.f64[0] * v189 + _Q2.f64[1] * v194;
            if (v207 >= v206)
            {
              v208 = v193;
            }

            else
            {
              v208 = v194;
            }

            if (v207 < v206 || v205 < v201)
            {
              v210 = v189;
            }

            else
            {
              v210 = v184;
            }

LABEL_245:
            v211 = (v175 + 16 * v174);
            *v211 = v210 + v127;
            v211[1] = v208 + v126;
            if (++v174 == v122)
            {
              goto LABEL_270;
            }

            goto LABEL_246;
          }

          if (v219.f64[0] > v200.f64[0])
          {
            break;
          }

          if (v200.f64[0] != 0.0)
          {
            v236 = -v200.f64[0];
            _Q18.f64[1] = v192.f64[1];
            goto LABEL_251;
          }

          _Q18 = xmmword_23F4D9610;
LABEL_252:
          __asm { FMLS            D16, D5, V18.D[1] }

          v228 = vmulq_n_f64(_Q18, _Q18.f64[0]);
          v229 = _D16 * _Q18.f64[0];
          *&v230.f64[0] = vdupq_laneq_s64(_Q18, 1).u64[0];
          v230.f64[1] = _D16;
          v231 = vmulq_laneq_f64(v230, _Q18, 1);
          *&v232 = v231.f64[0] + _Q18.f64[0] * _Q18.f64[0];
          v233 = vdupq_lane_s64(v232, 0);
          v234 = vdivq_f64(v231, v233);
          v231.f64[0] = v229;
          v235 = vdivq_f64(v228, v233);
          v228.f64[0] = v229;
          _Q2 = vaddq_f64(_Q2, vdivq_f64(v231, v233));
          v200 = vaddq_f64(v200, v234);
          v192 = vaddq_f64(v192, vdivq_f64(v228, v233));
          v219 = vaddq_f64(v219, v235);
          v221 = _D16 * _D16 / *&v232;
        }

        _Q18 = vdupq_lane_s64(*&v219.f64[0], 0);
LABEL_251:
        _Q18.f64[0] = v236;
        goto LABEL_252;
      }
    }
  }

LABEL_270:
  free(v557);
  free(v29);
  free(v31);
  v243 = v553;
  v244 = *(v553 + 56);
  if (*(v553 + 4) == 45)
  {
    v245 = *(v244 + 56);
    v246 = a2;
    v247 = -1.0;
    v248 = 0.75;
    v249 = (qword_23F4D8FA8 + 88);
    if (v245 >= 2)
    {
      v250 = 0;
      v251 = 0;
      v252 = v245 - 2;
      v253 = 16 * v245 - 16;
      do
      {
        v254 = *(v244 + 88);
        v256 = *(v254 + v253);
        v559 = *(v254 + v250);
        v255 = v559;
        *(v254 + v250) = v256;
        *(*(v244 + 88) + v253) = v255;
        ++v251;
        v250 += 16;
        v253 -= 16;
        v58 = v251 < v252--;
      }

      while (v58);
      v244 = *(v553 + 56);
    }
  }

  else
  {
    v246 = a2;
    v247 = -1.0;
    v248 = 0.75;
    v249 = &qword_23F4D8FA8[11];
  }

  v257 = *(v244 + 56);
  if (v257 >= 1)
  {
    v258 = *(v246 + 8);
    v259 = 1;
    v260 = 8;
    do
    {
      if (v259 == v257)
      {
        v264 = 0;
      }

      else
      {
        v264 = v259;
      }

      if (v259 >= v257)
      {
        v265 = v264;
      }

      else
      {
        v265 = v259;
      }

      if (v259 + 1 < v257)
      {
        v266 = v259 + 1;
      }

      else
      {
        v266 = (v259 + 1) % v257;
      }

      v267 = *(v244 + 88);
      v268 = *(v267 + 16 * v266);
      v269 = v265;
      v270 = *(v267 + 16 * v265);
      v272 = *(v267 + v260 - 8);
      v271 = *(v267 + v260);
      v273 = v268.f64[0] - v272;
      if (v268.f64[0] - v272 >= 0.0)
      {
        v274 = 0.0;
      }

      else
      {
        v274 = v247;
      }

      v275 = v268.f64[1] - v271;
      if (v268.f64[0] - v272 > 0.0)
      {
        v274 = v12;
      }

      if (v275 >= 0.0)
      {
        v276 = 0.0;
      }

      else
      {
        v276 = v12;
      }

      if (v275 > 0.0)
      {
        v276 = v247;
      }

      v277 = v274 * v273 - v275 * v276;
      if (v277 == 0.0)
      {
        *(*(v244 + 104) + 8 * v265) = 0x3FF5555555555555;
        v280 = 1.33333333;
        if (v258 > 1.33333333)
        {
          goto LABEL_307;
        }
      }

      else
      {
        v278 = fabs(((v270.f64[0] - v272) * v275 - v273 * (v270.f64[1] - v271)) / v277);
        v279 = 0.0;
        if (v278 > v12)
        {
          v279 = v12 - v12 / v278;
        }

        v280 = v279 / v248;
        *(*(v244 + 104) + 8 * v265) = v279 / v248;
        if (v279 / v248 < v258)
        {
          v262 = v249[196];
          if (v280 >= v262)
          {
            v262 = v280;
            if (v280 > v12)
            {
LABEL_307:
              v262 = 1.0;
            }
          }

          v281 = v10 + v262 * v10;
          v261 = *(v244 + 72);
          v282 = (v261 + 48 * v269);
          v283 = *(v267 + 16 * v269);
          v284 = vmlaq_n_f64(*(v267 + v260 - 8), vsubq_f64(v283, *(v267 + v260 - 8)), v281);
          v285 = vmlaq_n_f64(*(v267 + 16 * v266), vsubq_f64(v283, *(v267 + 16 * v266)), v281);
          *(*(v244 + 64) + 4 * v269) = 1;
          *v282 = v284;
          v282[1] = v285;
          goto LABEL_279;
        }
      }

      *(*(v244 + 64) + 4 * v265) = 2;
      *(*(v244 + 72) + 48 * v265 + 16) = *(v267 + 16 * v265);
      v261 = *(v244 + 72);
      v262 = v280;
LABEL_279:
      __asm { FMOV            V4.2D, #0.5 }

      *(v261 + 48 * v269 + 32) = vmlaq_f64(v268, _Q4, vsubq_f64(v270, v268));
      *(*(v244 + 96) + 8 * v269) = v262;
      *(*(v244 + 112) + 8 * v269) = 0x3FE0000000000000;
      v260 += 16;
      ++v259;
    }

    while (v259 - v257 != 1);
  }

  *(v244 + 80) = 1;
  v286 = *(v553 + 56);
  if (!*(v246 + 16))
  {
    *(v286 + 184) = v286 + 56;
    sub_23F4BE76C(v286 + 56, v553 + 8);
    v3 = a3;
    v299 = *a3;
    if (*a3)
    {
      goto LABEL_403;
    }

    goto LABEL_406;
  }

  v552 = *(v246 + 24);
  v287 = *(v286 + 56);
  v288 = v287 + 1;
  v289 = malloc_type_calloc(v288, 4uLL, 0x100004052888210uLL);
  if (!v289 || (v558 = malloc_type_calloc(v288, 8uLL, 0x100004000313F17uLL)) == 0)
  {
    v558 = 0;
    v290 = 0;
LABEL_556:
    v291 = 0;
LABEL_557:
    v354 = 0;
    v292 = 0;
    goto LABEL_566;
  }

  v290 = malloc_type_calloc(v288, 4uLL, 0x100004052888210uLL);
  if (!v290)
  {
    goto LABEL_556;
  }

  v291 = malloc_type_calloc(v288, 0x40uLL, 0x1000040FA0F61DDuLL);
  if (!v291)
  {
    goto LABEL_557;
  }

  v292 = malloc_type_calloc(v287, 4uLL, 0x100004052888210uLL);
  if (!v292 || (v293 = malloc_type_calloc(v288, 8uLL, 0x100004000313F17uLL)) == 0)
  {
    v354 = 0;
LABEL_566:
    v543 = 0;
    goto LABEL_572;
  }

  v550 = v293;
  if (v287 >= 1)
  {
    v294 = *(v286 + 64);
    v295 = -4.0;
    if (*v294 == 1)
    {
      v296 = *(v286 + 88);
      v297 = &v296[2 * v287];
      v298 = (*v296 - *(v297 - 2)) * (v296[2 * (v287 != 1) + 1] - *(v297 - 1)) - (v296[2 * (v287 != 1)] - *(v297 - 2)) * (v296[1] - *(v297 - 1));
      if (v298 <= 0.0)
      {
        if (v298 >= 0.0)
        {
          v388 = 0;
        }

        else
        {
          v388 = -1;
        }

        *v292 = v388;
        if (v287 != 1)
        {
          goto LABEL_416;
        }
      }

      else
      {
        *v292 = 1;
        if (v287 == 1)
        {
          goto LABEL_430;
        }

LABEL_416:
        v389 = 1;
        do
        {
          while (v294[v389] != 1)
          {
            v292[v389++] = 0;
            if (v389 == v287)
            {
              goto LABEL_430;
            }
          }

          v390 = *(v286 + 88);
          v392 = v389 + 1;
          if (v389 + 1 == v287)
          {
            v393 = 0;
          }

          else
          {
            v393 = v389 + 1;
          }

          if (v392 < v287)
          {
            v393 = v389 + 1;
          }

          v391 = (v390 + (((v389 << 32) - 0x100000000) >> 28));
          v394 = (*(v390 + 16 * v389) - *v391) * (*(v390 + 16 * v393 + 8) - v391[1]) - (*(v390 + 16 * v393) - *v391) * (*(v390 + 16 * v389 + 8) - v391[1]);
          if (v394 >= 0.0)
          {
            v395 = 0;
          }

          else
          {
            v395 = -1;
          }

          if (v394 > 0.0)
          {
            v395 = 1;
          }

          v292[v389++] = v395;
        }

        while (v392 != v287);
      }
    }

    else
    {
      *v292 = 0;
      if (v287 != 1)
      {
        goto LABEL_416;
      }
    }

LABEL_430:
    v396 = 0;
    *v293 = 0.0;
    v397 = *(v286 + 88);
    v398 = *v397;
    v399 = v397[1];
    v400 = 0.0;
    v401 = 1;
    do
    {
      if (v401 == v287)
      {
        v402 = 0;
      }

      else
      {
        v402 = v401;
      }

      if (v401 < v287)
      {
        v402 = v401;
      }

      if (v294[v402] == 1)
      {
        v403 = *(*(v286 + 96) + 8 * v402);
        v404 = *(v286 + 72);
        v405 = &v397[2 * v402];
        v406 = v404 + 48 * v402;
        v407 = *(v404 + v396 + 32);
        v400 = ((v407 - v398) * (*(v406 + 40) - v399) - (*(v406 + 32) - v398) * (*(v404 + v396 + 40) - v399)) * v10 + v400 + v403 * 0.3 * (v9 - v403) * ((*v405 - v407) * (*(v406 + 40) - *(v404 + v396 + 40)) - (*(v406 + 32) - v407) * (v405[1] - *(v404 + v396 + 40))) * v10;
      }

      v293[v401] = v400;
      v396 += 48;
      ++v401;
    }

    while (v401 - v287 != 1);
    v408 = -1;
    *v289 = -1;
    *v558 = 0;
    *v290 = 0;
    v409 = 1;
    v410 = v552;
    while (1)
    {
      v289[v409] = v409 - 1;
      v558[v409] = v558[v409 - 1];
      v290[v409] = v290[v409 - 1] + 1;
      if (v409 >= 2)
      {
        v411 = v408;
        v412 = &v291[64 * v409];
        LODWORD(v413) = v409 == v287 ? 0 : v409;
        v413 = v409 >= v287 ? v413 : v409;
        while (2)
        {
          if (v411 != v413)
          {
            v414 = *(v286 + 56);
            v415 = v411 + 1;
            v416 = v411 + 1;
            if (v411 + 1 >= v414)
            {
              v416 = v415 % v414;
            }

            v417 = v292[v416];
            if (v417)
            {
              v418 = *(v286 + 88);
              v419 = &v418[2 * v411];
              v420 = &v418[2 * v416];
              v421 = v419[1];
              v422 = v420[1];
              v423 = sqrt((v421 - v422) * (v421 - v422) + (*v419 - *v420) * (*v419 - *v420));
              v424 = *v420 - *v419;
              v425 = v422 - v421;
              while (v416 != v413)
              {
                v426 = v416 + 1;
                v427 = v414 + ~((-2 - v416) % v414);
                if (v416 > -2)
                {
                  v427 = v416 + 1;
                }

                if (v426 >= v414)
                {
                  v428 = v426 % v414;
                }

                else
                {
                  v428 = v427;
                }

                v429 = v416 + 2;
                if (v416 <= -3)
                {
                  v430 = v414 + ~((-3 - v416) % v414);
                }

                else
                {
                  v430 = v416 + 2;
                }

                if (v429 >= v414)
                {
                  v430 = v429 % v414;
                }

                if (v292[v428] == v417)
                {
                  v431 = &v418[2 * v428];
                  v432 = &v418[2 * v430];
                  v433 = v431[1];
                  v434 = *v432;
                  v435 = v432[1];
                  v436 = *v432 - *v431;
                  v437 = v424 * (v435 - v433) - v436 * v425;
                  if (v437 >= 0.0)
                  {
                    v438 = 0;
                  }

                  else
                  {
                    v438 = -1;
                  }

                  if (v437 > 0.0)
                  {
                    v438 = 1;
                  }

                  if (v438 == v417)
                  {
                    v416 = v428;
                    if (v425 * (v435 - v433) + v424 * v436 >= v423 * sqrt((v433 - v435) * (v433 - v435) + (*v431 - v434) * (*v431 - v434)) * -0.999847695)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_440;
              }

              v439 = v414 <= v411 ? v411 % v414 : v411;
              v440 = v415 >= v414 ? v415 % v414 : v411 + 1;
              if (v414 <= v413)
              {
                v441 = v413 % v414;
                v442 = -0.5;
              }

              else
              {
                v441 = v413;
                v442 = -0.5;
                if ((v413 & 0x80000000) != 0)
                {
                  v441 = v414 + ~(~v413 % v414);
                }
              }

              v443 = *(v286 + 72);
              v444 = v550[v413] - v550[v411] + ((*(v443 + 48 * v411 + 32) - *v418) * (*(v443 + 48 * v413 + 40) - v418[1]) - (*(v443 + 48 * v413 + 32) - *v418) * (*(v443 + 48 * v411 + 40) - v418[1])) * v442;
              if (v413 <= v411)
              {
                v444 = v444 + v550[v414];
              }

              v445 = v443 + 48 * v439;
              v446 = *(v445 + 32);
              v447 = *(v445 + 40);
              v448 = &v418[2 * v440];
              v449 = *v448;
              v450 = v448[1];
              v451 = &v418[2 * v441];
              v452 = *v451;
              v453 = v451[1];
              v454 = v443 + 48 * v441;
              v455 = *(v454 + 32);
              v456 = *(v454 + 40);
              v457 = v450 - v447;
              v458 = (v449 - v446) * (v453 - v447) - (v452 - v446) * (v450 - v447);
              v459 = (v449 - v446) * (v456 - v447) - (v455 - v446) * v457;
              if (v459 != v458)
              {
                v551 = ((v453 - v447) * -(v455 - v446) + (v452 - v446) * (v456 - v447)) / ((v453 - v447) * -(v455 - v446) + (v452 - v446) * (v456 - v447) - (v458 + (v453 - v447) * -(v455 - v446) + (v452 - v446) * (v456 - v447) - v459));
                v460 = v459 * v551 * 0.5;
                if (v460 != 0.0)
                {
                  v461 = v459 / (v459 - v458);
                  v462 = 2.0 - sqrt(v444 / v460 / -0.3 + 4.0);
                  v463 = v446 + v551 * v462 * (v449 - v446);
                  v464 = v447 + v551 * v462 * v457;
                  v546 = v461;
                  v465 = v455 + v461 * v462 * (v452 - v455);
                  v466 = v456 + v461 * v462 * (v453 - v456);
                  if (v415 >= v414)
                  {
                    LODWORD(v415) = v415 % v414;
                  }

                  v555 = v463 - v446;
                  v467 = v464 - v447;
                  v468 = v465 - v463;
                  v469 = v466 - v464;
                  v470 = v455 - v465;
                  v471 = v456 - v466;
                  v472 = 0.0;
                  if (v415 == v413)
                  {
LABEL_490:
                    v473 = v472;
                    v474 = v411;
                    do
                    {
                      v475 = v474 + 1;
                      v476 = v414 + ~((-2 - v474) % v414);
                      if (v474 > -2)
                      {
                        v476 = v474 + 1;
                      }

                      v477 = v475 % v414;
                      v58 = v475 < v414;
                      v478 = v443 + 48 * v474;
                      if (v58)
                      {
                        v474 = v476;
                      }

                      else
                      {
                        v474 = v477;
                      }

                      v479 = v443 + 48 * v474;
                      v480 = *(v478 + 32);
                      v481 = *(v478 + 40);
                      v483 = *(v479 + 32);
                      v482 = *(v479 + 40);
                      v484 = v483 - v480;
                      v485 = v482 - v481;
                      v486 = v555 * (v482 - v481) - (v483 - v480) * v467;
                      v487 = v468 * (v482 - v481) - (v483 - v480) * v469;
                      v488 = v470 * (v482 - v481) - (v483 - v480) * v471 + v486 + v487 * -2.0;
                      if (v488 == 0.0)
                      {
                        goto LABEL_440;
                      }

                      v489 = v487 + v487 + v486 * -2.0;
                      v490 = v486 * (v488 * v295) + v489 * v489;
                      if (v490 < 0.0)
                      {
                        goto LABEL_440;
                      }

                      v491 = sqrt(v490);
                      v492 = v488 + v488;
                      v493 = (v491 - v489) / v492;
                      if (v493 < 0.0 || v493 > 1.0)
                      {
                        v493 = (-v489 - v491) / v492;
                        if (v493 < 0.0 || v493 > 1.0)
                        {
                          goto LABEL_440;
                        }
                      }

                      if (v493 < -0.5)
                      {
                        goto LABEL_440;
                      }

                      v496 = sqrt((v481 - v482) * (v481 - v482) + (v480 - v483) * (v480 - v483));
                      if (v496 == 0.0)
                      {
                        goto LABEL_440;
                      }

                      v497 = 1.0 - v493;
                      v498 = (v484 * (v464 * (v493 * (v497 * v497) * 3.0) + v497 * (v497 * v497) * v447 + v493 * v493 * (1.0 - v493) * 3.0 * v466 + v493 * (v493 * v493) * v456 - v481) - (v463 * (v493 * (v497 * v497) * 3.0) + v497 * (v497 * v497) * v446 + v493 * v493 * (1.0 - v493) * 3.0 * v465 + v493 * (v493 * v493) * v455 - v480) * v485) / v496;
                      v499 = (v484 * (v418[2 * v474 + 1] - v481) - (v418[2 * v474] - v480) * v485) / v496 * (*(*(v286 + 96) + 8 * v474) * 0.75);
                      v500 = -v499;
                      if (v499 >= 0.0)
                      {
                        v501 = v498;
                      }

                      else
                      {
                        v501 = -v498;
                      }

                      if (v499 >= 0.0)
                      {
                        v500 = v499;
                      }

                      if (v501 < v500 - v410)
                      {
                        goto LABEL_440;
                      }

                      if (v501 < v500)
                      {
                        v472 = v473 + (v501 - v500) * (v501 - v500);
                        v473 = v472;
                      }
                    }

                    while (v474 != v413);
                    v502 = v290[v409];
                    v503 = v290[v411] + 1;
                    if (v502 > v503)
                    {
                      v504 = v472 + *&v558[v411];
                      goto LABEL_520;
                    }

                    if (v502 == v503)
                    {
                      v504 = v472 + *&v558[v411];
                      if (*&v558[v409] > v504)
                      {
LABEL_520:
                        v289[v409] = v411;
                        *&v558[v409] = v504;
                        v290[v409] = v290[v411] + 1;
                        *v412 = v472;
                        v412[1] = v463;
                        v412[2] = v464;
                        v412[3] = v465;
                        v412[4] = v466;
                        v412[5] = v551;
                        v412[6] = v546;
                        v412[7] = v462;
                      }
                    }

                    v58 = v411-- <= 0;
                    if (v58)
                    {
                      break;
                    }

                    continue;
                  }

                  while (1)
                  {
                    v505 = v415 + 1;
                    v506 = v414 + ~((-2 - v415) % v414);
                    if (v415 > -2)
                    {
                      v506 = v415 + 1;
                    }

                    v507 = v505 % v414;
                    v58 = v505 < v414;
                    v508 = &v418[2 * v415];
                    LODWORD(v415) = v58 ? v506 : v507;
                    v509 = &v418[2 * v415];
                    v510 = *v508;
                    v511 = v508[1];
                    v512 = *v509;
                    v513 = v509[1];
                    v514 = *v509 - *v508;
                    v515 = v513 - v511;
                    v516 = v555 * (v513 - v511) - v514 * v467;
                    v517 = v468 * (v513 - v511) - v514 * v469;
                    v518 = v470 * (v513 - v511) - v514 * v471 + v516 + v517 * -2.0;
                    if (v518 == 0.0)
                    {
                      break;
                    }

                    v519 = v517 + v517 + v516 * -2.0;
                    v520 = v516 * (v518 * v295) + v519 * v519;
                    if (v520 < 0.0)
                    {
                      break;
                    }

                    v521 = sqrt(v520);
                    v522 = v518 + v518;
                    v523 = (v521 - v519) / (v518 + v518);
                    if (v523 < 0.0 || v523 > 1.0)
                    {
                      v523 = (-v519 - v521) / v522;
                      if (v523 < 0.0 || v523 > 1.0)
                      {
                        break;
                      }
                    }

                    if (v523 < -0.5)
                    {
                      break;
                    }

                    v526 = v510 - v512;
                    v527 = v511 - v513;
                    v528 = sqrt(v527 * v527 + v526 * v526);
                    if (v528 == 0.0)
                    {
                      break;
                    }

                    v529 = 1.0 - v523;
                    v530 = v529 * (v529 * v529);
                    v531 = v523 * (v529 * v529) * 3.0;
                    v532 = v523 * v523 * (1.0 - v523) * 3.0;
                    v533 = v523 * (v523 * v523);
                    v534 = v463 * v531 + v530 * v446 + v532 * v465 + v533 * v455;
                    v410 = v552;
                    v535 = v464 * v531 + v530 * v447;
                    v295 = -4.0;
                    v536 = v535 + v532 * v466 + v533 * v456;
                    v537 = v534 - v510;
                    v538 = v536 - v511;
                    v539 = (v514 * v538 - (v534 - v510) * v515) / v528;
                    if (fabs(v539) > v552 || v515 * v538 + v514 * v537 < 0.0 || v527 * (v536 - v513) + v526 * (v534 - v512) < 0.0)
                    {
                      break;
                    }

                    v472 = v472 + v539 * v539;
                    if (v415 == v413)
                    {
                      goto LABEL_490;
                    }
                  }
                }
              }
            }
          }

          break;
        }
      }

LABEL_440:
      ++v409;
      ++v408;
      if (v409 == v288)
      {
        goto LABEL_374;
      }
    }
  }

  *v293 = 0.0;
  *v289 = -1;
  *v558 = 0;
  *v290 = 0;
LABEL_374:
  v352 = v290[v287];
  if (!sub_23F4BE624(v286 + 120, v352))
  {
    v353 = v352;
    v354 = malloc_type_calloc(v352, 8uLL, 0x100004000313F17uLL);
    if (!v354)
    {
      goto LABEL_571;
    }

    v355 = malloc_type_calloc(v352, 8uLL, 0x100004000313F17uLL);
    if (!v355)
    {
      goto LABEL_571;
    }

    v356 = v355;
    v9 = 4.0;
    v10 = 0.5;
    v11 = -0.5;
    v12 = 1.0;
    if (v353 < 1)
    {
      goto LABEL_402;
    }

    v357 = 48 * v353 - 16;
    v358 = 16 * v353 - 16;
    v359 = v353;
    v360 = v287;
    while (1)
    {
      v369 = v359 - 1;
      v370 = v360;
      v371 = v289[v360];
      v372 = v360 - 1;
      v373 = 8 * v359;
      if (v371 == v372)
      {
        v374 = *(v286 + 64);
        if (v370 >= v287)
        {
          v379 = v370 % v287;
        }

        else
        {
          if ((v370 & 0x80000000) == 0)
          {
            *(*(v286 + 128) + 4 * v359 - 4) = *(v374 + 4 * v370);
            *(*(v286 + 136) + v357 - 32) = *(*(v286 + 72) + 48 * v370);
            *(*(v286 + 136) + v357 - 16) = *(*(v286 + 72) + 48 * v370 + 16);
            *(*(v286 + 136) + v357) = *(*(v286 + 72) + 48 * v370 + 32);
            v375 = v370;
LABEL_393:
            *(*(v286 + 152) + v358) = *(*(v286 + 88) + 16 * v375);
            *(*(v286 + 160) + v373 - 8) = *(*(v286 + 96) + 8 * v375);
            *(*(v286 + 168) + v373 - 8) = *(*(v286 + 104) + 8 * v375);
            *(*(v286 + 176) + v373 - 8) = *(*(v286 + 112) + 8 * v375);
            v356[v359 - 1] = 0x3FF0000000000000;
            v367 = 1.0;
            v368 = v354;
            goto LABEL_382;
          }

          v379 = v287 + ~(~v370 % v287);
        }

        v380 = *(v374 + 4 * v379);
        v375 = v379;
        *(*(v286 + 128) + 4 * v359 - 4) = v380;
        v381 = 48 * v379;
        *(*(v286 + 136) + v357 - 32) = *(*(v286 + 72) + v381);
        *(*(v286 + 136) + v357 - 16) = *(*(v286 + 72) + v381 + 16);
        *(*(v286 + 136) + v357) = *(*(v286 + 72) + v381 + 32);
        goto LABEL_393;
      }

      *(*(v286 + 128) + 4 * v359 - 4) = 1;
      v376 = &v291[64 * v370];
      *(*(v286 + 136) + v357 - 32) = *(v376 + 8);
      *(*(v286 + 136) + v357 - 16) = *(v376 + 24);
      v377 = *(v286 + 136);
      v378 = *(v286 + 72);
      if (v370 >= v287)
      {
        v361 = v370 % v287;
      }

      else
      {
        if ((v370 & 0x80000000) == 0)
        {
          *(v377 + v357) = *(v378 + 48 * v370 + 32);
          v364 = (*(v286 + 152) + v358);
          v365 = (*(v286 + 72) + 48 * v370 + 32);
          v362 = v370;
          goto LABEL_381;
        }

        v361 = v287 + ~(~v370 % v287);
      }

      v362 = v361;
      v363 = 48 * v361;
      *(v377 + v357) = *(v378 + v363 + 32);
      v364 = (*(v286 + 152) + 16 * v369);
      v365 = (*(v286 + 72) + v363 + 32);
LABEL_381:
      *v364 = vmlaq_n_f64(*v365, vsubq_f64(*(*(v286 + 88) + 16 * v362), *v365), *(v376 + 6));
      v366 = *(v376 + 7);
      *(*(v286 + 160) + v373 - 8) = v366;
      *(*(v286 + 168) + v373 - 8) = v366;
      v354[v359 - 1] = *(v376 + 6);
      v367 = *(v376 + 5);
      v368 = v356;
LABEL_382:
      *&v368[v359 - 1] = v367;
      v360 = v289[v370];
      v357 -= 48;
      v358 -= 16;
      --v359;
      if ((v369 + 1) <= 1)
      {
        v382 = 0;
        v383 = *(v286 + 176);
        do
        {
          v384 = v382 + 1;
          if (v353 - 1 == v382)
          {
            v385 = 0;
          }

          else
          {
            v385 = v382 + 1;
          }

          if (v384 < v353)
          {
            v385 = v382 + 1;
          }

          *(v383 + 8 * v382) = *&v354[v382] / (*&v354[v382] + *&v356[v385]);
          ++v382;
        }

        while (v353 != v384);
LABEL_402:
        *(v286 + 144) = 1;
        free(v289);
        free(v558);
        free(v290);
        free(v291);
        free(v354);
        free(v356);
        free(v292);
        free(v550);
        v243 = v553;
        v386 = *(v553 + 56);
        *(v386 + 184) = v386 + 120;
        sub_23F4BE76C(v386 + 120, v553 + 8);
        v3 = a3;
        v299 = *a3;
        if (*a3)
        {
LABEL_403:
          v549 = v549 + **(v243 + 56);
          v387 = v3[3] * (v549 / v6) + v3[2] * (v12 - v549 / v6);
          if (v549 / v6 == v12 || v387 >= v3[6] + v3[4])
          {
            v299(*(v3 + 1), v387);
            v3[6] = v387;
          }
        }

LABEL_406:
        v4 = *(v243 + 32);
        if (!v4)
        {
          v5 = *v3;
          goto LABEL_567;
        }

        goto LABEL_9;
      }
    }
  }

  v354 = 0;
LABEL_571:
  v543 = v550;
LABEL_572:
  free(v289);
  free(v558);
  free(v290);
  free(v291);
  free(v354);
  free(v292);
  v542 = v543;
LABEL_573:
  free(v542);
  return 1;
}

CGRect CGContextConvertRectToDeviceSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A40](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGContextConvertRectToUserSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A48](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A50](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize CGContextConvertSizeToUserSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A58](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x2821114D0](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSIntegralRectWithOptions(NSRect aRect, NSAlignmentOptions opts)
{
  MEMORY[0x28211F7B0](opts, aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}