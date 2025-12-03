@interface PDFView_QSExtras
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilitySpeakTextSelectionViews;
- (void)_accessibilityQuickSpeakTextRectsWithRange:(_NSRange)range string:(id)string highlightRects:(id)rects sentenceRects:(id)sentenceRects singleTextRect:(CGRect *)rect;
- (void)_axConvertRange:(_NSRange)range toRects:(id)rects operatingPage:(id)page;
@end

@implementation PDFView_QSExtras

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"currentSelection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PDFPageLayerSelectionEffect"];
  [validationsCopy validateClass:@"PDFView" hasInstanceVariable:@"_private" withType:"PDFViewPrivate"];
  [validationsCopy validateClass:@"PDFViewPrivate" hasInstanceVariable:@"scrollView" withType:"PDFScrollView"];
  [validationsCopy validateClass:@"PDFScrollView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"PDFScrollView" hasInstanceMethod:@"pdfDocumentView" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakTextSelectionViews
{
  v14[1] = *MEMORY[0x29EDCA608];
  v2 = [(PDFView_QSExtras *)self safeValueForKey:@"_private"];
  v3 = [v2 safeValueForKey:@"scrollView"];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"pdfDocumentView"];
  v5 = __UIAccessibilityCastAsClass();

  array = [MEMORY[0x29EDB8DE8] array];
  layer = [v5 layer];
  sublayers = [layer sublayers];
  [array axSafelyAddObjectsFromArray:sublayers];

  if ([array count])
  {
    while (1)
    {
      v9 = [array objectAtIndex:0];
      NSClassFromString(&cfstr_Pdfpagelayerse.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      sublayers2 = [v9 sublayers];
      [array axSafelyAddObjectsFromArray:sublayers2];

      [array removeObjectAtIndex:0];
      if (![array count])
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

- (void)_axConvertRange:(_NSRange)range toRects:(id)rects operatingPage:(id)page
{
  length = range.length;
  location = range.location;
  v23 = *MEMORY[0x29EDCA608];
  rectsCopy = rects;
  pageCopy = page;
  v11 = [pageCopy selectionForRange:{location, length}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selectionsByLine = [v11 selectionsByLine];
  v13 = [selectionsByLine countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(selectionsByLine);
        }

        [*(*(&v18 + 1) + 8 * v15) boundsForPage:pageCopy];
        [(PDFView_QSExtras *)self convertRect:pageCopy fromPage:?];
        v16 = [MEMORY[0x29EDBA168] valueWithRect:?];
        [rectsCopy addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [selectionsByLine countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityQuickSpeakTextRectsWithRange:(_NSRange)range string:(id)string highlightRects:(id)rects sentenceRects:(id)sentenceRects singleTextRect:(CGRect *)rect
{
  length = range.length;
  location = range.location;
  v54 = *MEMORY[0x29EDCA608];
  stringCopy = string;
  rectsCopy = rects;
  sentenceRectsCopy = sentenceRects;
  mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
  ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x29EDBD6C8] identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = stringCopy;
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

      stringCopy = v20;
    }
  }

  buf[0] = 0;
  v23 = [(PDFView_QSExtras *)self safeValueForKey:@"currentSelection", v47, v49];
  v24 = __UIAccessibilitySafeClass();

  if (buf[0] == 1)
  {
    abort();
  }

  string = [v24 string];
  if (location + length <= [string length])
  {
    pages = [v24 pages];
    firstObject = [pages firstObject];
    v27 = [v24 indexOfFirstCharacterOnPage:firstObject];
    v28 = length;
    v29 = rectsCopy;
    [(PDFView_QSExtras *)self _axConvertRange:v27 + location toRects:v28 operatingPage:?];
    v51 = stringCopy;
    v30 = [stringCopy ax_sentenceFromPosition:location inDirection:v27 + location != 0];
    [(PDFView_QSExtras *)self _axConvertRange:v30 + v27 toRects:v31 operatingPage:sentenceRectsCopy, firstObject];
    mEMORY[0x29EDBD6C8]2 = [MEMORY[0x29EDBD6C8] sharedInstance];
    ignoreLogging2 = [mEMORY[0x29EDBD6C8]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x29EDBD6C8] identifier];
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

    mEMORY[0x29EDBD6C8]3 = [MEMORY[0x29EDBD6C8] sharedInstance];
    ignoreLogging3 = [mEMORY[0x29EDBD6C8]3 ignoreLogging];

    rectsCopy = v29;
    if ((ignoreLogging3 & 1) == 0)
    {
      identifier3 = [MEMORY[0x29EDBD6C8] identifier];
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

    stringCopy = v51;
  }

  v46 = *MEMORY[0x29EDCA608];
}

- (id)_accessibilityQuickSpeakContent
{
  v2 = [(PDFView_QSExtras *)self safeValueForKey:@"currentSelection"];
  v3 = __UIAccessibilitySafeClass();

  string = [v3 string];

  return string;
}

@end