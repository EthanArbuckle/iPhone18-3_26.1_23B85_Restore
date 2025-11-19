@interface PDFView_QSExtras
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilitySpeakTextSelectionViews;
- (void)_accessibilityQuickSpeakTextRectsWithRange:(_NSRange)a3 string:(id)a4 highlightRects:(id)a5 sentenceRects:(id)a6 singleTextRect:(CGRect *)a7;
- (void)_axConvertRange:(_NSRange)a3 toRects:(id)a4 operatingPage:(id)a5;
@end

@implementation PDFView_QSExtras

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"currentSelection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PDFPageLayerSelectionEffect"];
  [v3 validateClass:@"PDFView" hasInstanceVariable:@"_private" withType:"PDFViewPrivate"];
  [v3 validateClass:@"PDFViewPrivate" hasInstanceVariable:@"scrollView" withType:"PDFScrollView"];
  [v3 validateClass:@"PDFScrollView" isKindOfClass:@"UIScrollView"];
  [v3 validateClass:@"PDFScrollView" hasInstanceMethod:@"pdfDocumentView" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakTextSelectionViews
{
  v14[1] = *MEMORY[0x29EDCA608];
  v2 = [(PDFView_QSExtras *)self safeValueForKey:@"_private"];
  v3 = [v2 safeValueForKey:@"scrollView"];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"pdfDocumentView"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [MEMORY[0x29EDB8DE8] array];
  v7 = [v5 layer];
  v8 = [v7 sublayers];
  [v6 axSafelyAddObjectsFromArray:v8];

  if ([v6 count])
  {
    while (1)
    {
      v9 = [v6 objectAtIndex:0];
      NSClassFromString(&cfstr_Pdfpagelayerse.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v10 = [v9 sublayers];
      [v6 axSafelyAddObjectsFromArray:v10];

      [v6 removeObjectAtIndex:0];
      if (![v6 count])
      {
        goto LABEL_4;
      }
    }

    v14[0] = v9;
    v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (void)_axConvertRange:(_NSRange)a3 toRects:(id)a4 operatingPage:(id)a5
{
  length = a3.length;
  location = a3.location;
  v23 = *MEMORY[0x29EDCA608];
  v9 = a4;
  v10 = a5;
  v11 = [v10 selectionForRange:{location, length}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v11 selectionsByLine];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * v15) boundsForPage:v10];
        [(PDFView_QSExtras *)self convertRect:v10 fromPage:?];
        v16 = [MEMORY[0x29EDBA168] valueWithRect:?];
        [v9 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityQuickSpeakTextRectsWithRange:(_NSRange)a3 string:(id)a4 highlightRects:(id)a5 sentenceRects:(id)a6 singleTextRect:(CGRect *)a7
{
  length = a3.length;
  location = a3.location;
  v54 = *MEMORY[0x29EDCA608];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x29EDBD6C8] sharedInstance];
  v16 = [v15 ignoreLogging];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x29EDBD6C8] identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v12;
      v21 = AXColorizeFormatLog();
      v47 = location;
      v49 = length;
      v22 = _AXStringForArgs();
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138543362;
        v53 = v22;
        _os_log_impl(&dword_29C1E5000, v18, v19, "%{public}@", buf, 0xCu);
      }

      v12 = v20;
    }
  }

  buf[0] = 0;
  v23 = [(PDFView_QSExtras *)self safeValueForKey:@"currentSelection", v47, v49];
  v24 = __UIAccessibilitySafeClass();

  if (buf[0] == 1)
  {
    abort();
  }

  v25 = [v24 string];
  if (location + length <= [v25 length])
  {
    v50 = [v24 pages];
    v26 = [v50 firstObject];
    v27 = [v24 indexOfFirstCharacterOnPage:v26];
    v28 = length;
    v29 = v13;
    [(PDFView_QSExtras *)self _axConvertRange:v27 + location toRects:v28 operatingPage:?];
    v51 = v12;
    v30 = [v12 ax_sentenceFromPosition:location inDirection:v27 + location != 0];
    [(PDFView_QSExtras *)self _axConvertRange:v30 + v27 toRects:v31 operatingPage:v14, v26];
    v32 = [MEMORY[0x29EDBD6C8] sharedInstance];
    v33 = [v32 ignoreLogging];

    if ((v33 & 1) == 0)
    {
      v34 = [MEMORY[0x29EDBD6C8] identifier];
      v35 = AXLoggerForFacility();

      v36 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = AXColorizeFormatLog();
        v48 = v29;
        v38 = _AXStringForArgs();
        if (os_log_type_enabled(v35, v36))
        {
          *buf = 138543362;
          v53 = v38;
          _os_log_impl(&dword_29C1E5000, v35, v36, "%{public}@", buf, 0xCu);
        }
      }
    }

    v39 = [MEMORY[0x29EDBD6C8] sharedInstance];
    v40 = [v39 ignoreLogging];

    v13 = v29;
    if ((v40 & 1) == 0)
    {
      v41 = [MEMORY[0x29EDBD6C8] identifier];
      v42 = AXLoggerForFacility();

      v43 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = AXColorizeFormatLog();
        v45 = _AXStringForArgs();
        if (os_log_type_enabled(v42, v43))
        {
          *buf = 138543362;
          v53 = v45;
          _os_log_impl(&dword_29C1E5000, v42, v43, "%{public}@", buf, 0xCu);
        }
      }
    }

    v12 = v51;
  }

  v46 = *MEMORY[0x29EDCA608];
}

- (id)_accessibilityQuickSpeakContent
{
  v2 = [(PDFView_QSExtras *)self safeValueForKey:@"currentSelection"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 string];

  return v4;
}

@end