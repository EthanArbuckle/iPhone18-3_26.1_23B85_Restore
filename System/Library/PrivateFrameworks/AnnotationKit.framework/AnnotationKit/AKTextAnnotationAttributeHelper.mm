@interface AKTextAnnotationAttributeHelper
+ (id)actualOrPlaceholderTextOfAnnotation:(id)a3;
+ (id)font:(id)a3 byApplyingScaleFactor:(double)a4;
+ (id)fontsOfAnnotations:(id)a3;
+ (id)fontsOfEditor:(id)a3;
+ (id)newTextStorage:(id)a3 byApplyingScaleFactor:(double)a4;
+ (id)newTextStorageOriginalFontSavvyWithAttributedString:(id)a3;
+ (id)newTextStorageOriginalFontSavvyWithString:(id)a3 attributes:(id)a4;
+ (id)placeholderTextOfAnnotation:(id)a3;
+ (id)textAttributesOfAnnotations:(id)a3;
+ (id)textAttributesOfEditor:(id)a3;
+ (id)typingAttributes:(id)a3 byApplyingScaleFactor:(double)a4;
+ (void)adjustAnnotationBoundsToFitText:(id)a3;
+ (void)adjustBoundsOfAnnotation:(id)a3 toFitOptionalText:(id)a4 onPageController:(id)a5;
+ (void)enumerateFontAttributesOfAttributedString:(id)a3 usingBlock:(id)a4;
+ (void)resolvedAlignmentAndDirection:(id)a3 locale:(id)a4 alignment:(int64_t *)a5 direction:(int64_t *)a6;
+ (void)setFont:(id)a3 ofAnnotation:(id)a4;
+ (void)setTextAlignment:(int64_t)a3 ofAnnotation:(id)a4;
+ (void)setTextAttributes:(id)a3 ofAnnotation:(id)a4;
@end

@implementation AKTextAnnotationAttributeHelper

+ (void)resolvedAlignmentAndDirection:(id)a3 locale:(id)a4 alignment:(int64_t *)a5 direction:(int64_t *)a6
{
  v13 = a3;
  v9 = a4;
  if (!v13 || (v10 = [v13 baseWritingDirection], v10 == -1))
  {
    v10 = [MEMORY[0x277D74248] defaultWritingDirectionForLanguage:v9];
  }

  if (a6)
  {
    *a6 = v10;
  }

  if (a5)
  {
    if (v13)
    {
      v11 = [v13 alignment];
      v12 = v10 == 1;
      if (v11 != 4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = v10 == 1;
    }

    v11 = 2 * v12;
LABEL_12:
    *a5 = v11;
  }
}

+ (id)fontsOfAnnotations:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v16 = *MEMORY[0x277D740A8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 conformsToAKTextAnnotationProtocol])
        {
          v10 = v9;
          v11 = [v10 annotationText];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = sub_23F40CA8C;
          v18[3] = &unk_278C7B608;
          v12 = v17;
          v19 = v12;
          [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:v11 usingBlock:v18];
          if (!v11 || ![v11 length])
          {
            v13 = [v10 typingAttributes];
            v14 = [v13 objectForKeyedSubscript:v16];

            if (v14)
            {
              [v12 addObject:v14];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v17;
}

+ (id)fontsOfEditor:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  if ([v3 isEditing])
  {
    v5 = [v3 textView];
    v6 = [v3 annotation];
    [v6 originalModelBaseScaleFactor];
    v8 = 1.0 / v7;
    v9 = [v5 textStorage];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F40CBCC;
    v11[3] = &unk_278C7B630;
    v13 = v8;
    v12 = v4;
    [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:v9 usingBlock:v11];
  }

  return v4;
}

+ (void)setFont:(id)a3 ofAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 annotationText];
  v9 = [v8 mutableCopy];

  v10 = [v7 annotationText];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_23F40CD54;
  v17 = &unk_278C7B658;
  v18 = v9;
  v19 = v6;
  v11 = v6;
  v12 = v9;
  [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:v10 usingBlock:&v14];

  v13 = [a1 newTextStorageOriginalFontSavvyWithAttributedString:{v12, v14, v15, v16, v17}];
  [v7 setAnnotationText:v13];
}

+ (void)setTextAlignment:(int64_t)a3 ofAnnotation:(id)a4
{
  v6 = a4;
  v7 = [v6 annotationText];
  v13 = [v7 mutableCopy];

  v8 = [v13 length];
  v9 = *MEMORY[0x277D74118];
  if (!v8 || ([v13 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v11 = [v10 mutableCopy];
  [v11 setAlignment:a3];
  [v13 addAttribute:v9 value:v11 range:{0, objc_msgSend(v13, "length")}];
  v12 = [a1 newTextStorageOriginalFontSavvyWithAttributedString:v13];
  [v6 setAnnotationText:v12];
}

+ (id)textAttributesOfAnnotations:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 conformsToAKTextAnnotationProtocol])
        {
          v11 = v10;
          v12 = [v11 annotationText];
          v13 = [v12 length];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = sub_23F40D094;
          v17[3] = &unk_278C7B680;
          v14 = v4;
          v18 = v14;
          [v12 enumerateAttributesInRange:0 options:v13 usingBlock:{0, v17}];
          if (!v12 || ![v12 length])
          {
            v15 = [v11 typingAttributes];
            [v14 addObject:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)textAttributesOfEditor:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  if ([v3 isEditing])
  {
    v5 = [v3 textView];
    v6 = [v5 textStorage];
    v7 = [v6 length];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23F40D1AC;
    v9[3] = &unk_278C7B680;
    v10 = v4;
    [v6 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];
  }

  return v4;
}

+ (void)setTextAttributes:(id)a3 ofAnnotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 annotationText];
  v10 = [v8 mutableCopy];

  [v10 addAttributes:v7 range:{0, objc_msgSend(v10, "length")}];
  v9 = [a1 newTextStorageOriginalFontSavvyWithAttributedString:v10];
  [v6 setAnnotationText:v9];
}

+ (void)adjustBoundsOfAnnotation:(id)a3 toFitOptionalText:(id)a4 onPageController:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 conformsToAKRectangularAnnotationProtocol];
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  if (v10)
  {
    v11 = &v15;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v13) = 0;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:v11 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v14 forAnnotation:v7 onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), v8, 0, v13, v9];

  if (v10)
  {
    [v7 setRectangle:{v15, v16}];
  }

  v12 = [v7 textIsClipped];
  if (v14 != v12)
  {
    [v7 setTextIsClipped:?];
  }
}

+ (void)adjustAnnotationBoundsToFitText:(id)a3
{
  v3 = a3;
  v4 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:v3];
  if (![v4 length])
  {
    goto LABEL_20;
  }

  v5 = [v3 textIsFixedWidth];
  v6 = [v3 textIsFixedHeight];
  [v3 setTextIsFixedWidth:1];
  [v3 setTextIsFixedHeight:1];
  [v3 rectangle];
  x = v7;
  y = v9;
  v12 = v11;
  v14 = v13;
  v15 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v3 originalExifOrientation]);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v59 = *(MEMORY[0x277CBF3A0] + 8);
  v60 = *MEMORY[0x277CBF3A0];
  [AKAnnotationRenderer textBoundsOfAnnotation:v3 withOptionalAnnotationRect:v4 optionalText:?];
  v19 = v18;
  v52 = v20;
  v53 = v21;
  rect = v22;
  [AKTextAnnotationRenderHelper unconstrainedSizeForText:v4];
  v24 = v23;
  v57 = y;
  v58 = x;
  v55 = v14;
  v56 = v12;
  v25 = v19;
  if (!v15)
  {
    v32 = v52;
    v33 = v53;
    v34 = rect;
    Height = CGRectGetHeight(*&v25);
    if (v24 <= Height)
    {
      goto LABEL_9;
    }

    v31 = (v24 - Height) * -0.5;
    v30 = 0.0;
LABEL_7:
    v64.origin.x = v19;
    v64.origin.y = v52;
    v64.size.width = v53;
    v64.size.height = rect;
    v65 = CGRectInset(v64, v30, v31);
    [AKAnnotationRenderer rectangleForAnnotation:v3 withTextBounds:v65.origin.x, v65.origin.y, v65.size.width, v65.size.height];
    x = v36;
    y = v37;
    v12 = v38;
    v14 = v39;
    [v3 setRectangle:?];
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_9:
    v67.origin.y = v57;
    v67.origin.x = v58;
    v67.size.height = v55;
    v67.size.width = v56;
    Width = CGRectGetWidth(v67);
    goto LABEL_10;
  }

  v26 = v52;
  v27 = v53;
  v28 = rect;
  v29 = CGRectGetWidth(*&v25);
  if (v24 > v29)
  {
    v30 = (v24 - v29) * -0.5;
    v31 = 0.0;
    goto LABEL_7;
  }

LABEL_8:
  v66.origin.y = v57;
  v66.origin.x = v58;
  v66.size.height = v55;
  v66.size.width = v56;
  Width = CGRectGetHeight(v66);
LABEL_10:
  v41 = vcvtad_u64_f64(Width * 3.0);
  if (v41)
  {
    v42 = *MEMORY[0x277CBF348];
    v43 = *(MEMORY[0x277CBF348] + 8);
    while (1)
    {
      v62 = 0u;
      v63 = 0u;
      v61 = 0;
      LOBYTE(v51) = 0;
      [AKTextAnnotationRenderHelper getAnnotationRectangle:&v62 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v61 forAnnotation:v3 onPageController:v42 orInContext:v43 shouldAlignToPixels:v60 optionalText:v59 optionalCenter:v16 optionalProposedRectangle:v17, 0, 0, v51, v4];
      if (v61 != 1)
      {
        break;
      }

      if (v15)
      {
        v44 = 0.0;
        v45 = -0.5;
      }

      else
      {
        v44 = -0.5;
        v45 = 0.0;
      }

      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = v12;
      v68.size.height = v14;
      v69 = CGRectInset(v68, v44, v45);
      x = v69.origin.x;
      y = v69.origin.y;
      v12 = v69.size.width;
      v14 = v69.size.height;
      [v3 setRectangle:?];
      if (!--v41)
      {
        goto LABEL_17;
      }
    }

    v48 = *(&v62 + 1);
    v47 = *&v62;
    v50 = *(&v63 + 1);
    v49 = *&v63;
    v46 = v3;
  }

  else
  {
LABEL_17:
    v46 = v3;
    v48 = v57;
    v47 = v58;
    v50 = v55;
    v49 = v56;
  }

  [v46 setRectangle:{v47, v48, v49, v50}];
  [v3 setTextIsFixedWidth:v5];
  [v3 setTextIsFixedHeight:v6];
LABEL_20:
}

+ (id)placeholderTextOfAnnotation:(id)a3
{
  v3 = a3;
  if ([v3 shouldUsePlaceholderText] && ((objc_msgSend(v3, "customPlaceholderText"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(objc_opt_class(), "defaultPlaceholderText"), (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
    v6 = [v3 typingAttributes];
    v7 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:v5 attributes:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)actualOrPlaceholderTextOfAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 annotationText];
  v6 = [v5 length];

  if (v6)
  {
    [v4 annotationText];
  }

  else
  {
    [a1 placeholderTextOfAnnotation:v4];
  }
  v7 = ;

  return v7;
}

+ (id)font:(id)a3 byApplyingScaleFactor:(double)a4
{
  v5 = a3;
  [v5 pointSize];
  v7 = [v5 fontWithSize:v6 * a4];

  return v7;
}

+ (id)typingAttributes:(id)a3 byApplyingScaleFactor:(double)a4
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (fabs(a4 + -1.0) >= 0.0005)
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D740F8]];
    v9 = *MEMORY[0x277D740A8];
    if (!v8)
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    }

    [v8 pointSize];
    v26 = v8;
    v11 = [v8 fontWithSize:v10 * a4];
    v7 = [v6 mutableCopy];
    v25 = v11;
    [v7 setObject:v11 forKeyedSubscript:v9];
    v12 = *MEMORY[0x277D741E0];
    v32[0] = *MEMORY[0x277D740D0];
    v32[1] = v12;
    [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v30 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v6 objectForKeyedSubscript:v18];
          v20 = v19;
          if (v19)
          {
            v21 = MEMORY[0x277CCABB0];
            [v19 doubleValue];
            v23 = [v21 numberWithDouble:v22 * a4];
            [v7 setObject:v23 forKeyedSubscript:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

+ (id)newTextStorage:(id)a3 byApplyingScaleFactor:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    if ([v7 length] && fabs(a4 + -1.0) >= 0.0005)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F40DB54;
      v11[3] = &unk_278C7B6A8;
      v13 = a1;
      v14 = a4;
      v12 = v8;
      [a1 enumerateFontAttributesOfAttributedString:v7 usingBlock:v11];
    }

    v9 = [a1 newTextStorageOriginalFontSavvyWithAttributedString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newTextStorageOriginalFontSavvyWithAttributedString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277D742D8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(AKTextLayoutManager);
  [v5 addLayoutManager:v6];
  [v5 setAttributedString:v4];

  [v5 removeLayoutManager:v6];
  return v5;
}

+ (id)newTextStorageOriginalFontSavvyWithString:(id)a3 attributes:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_28519E870;
  }

  v8 = MEMORY[0x277CCA898];
  v9 = a4;
  v10 = [[v8 alloc] initWithString:v7 attributes:v9];

  v11 = [a1 newTextStorageOriginalFontSavvyWithAttributedString:v10];
  return v11;
}

+ (void)enumerateFontAttributesOfAttributedString:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23F40DDC8;
  v9[3] = &unk_278C7B6D0;
  v10 = v5;
  v8 = v5;
  [v6 enumerateAttributesInRange:0 options:v7 usingBlock:{0x100000, v9}];
}

@end