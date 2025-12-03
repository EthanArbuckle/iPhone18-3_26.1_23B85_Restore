@interface AKTextAnnotationAttributeHelper
+ (id)actualOrPlaceholderTextOfAnnotation:(id)annotation;
+ (id)font:(id)font byApplyingScaleFactor:(double)factor;
+ (id)fontsOfAnnotations:(id)annotations;
+ (id)fontsOfEditor:(id)editor;
+ (id)newTextStorage:(id)storage byApplyingScaleFactor:(double)factor;
+ (id)newTextStorageOriginalFontSavvyWithAttributedString:(id)string;
+ (id)newTextStorageOriginalFontSavvyWithString:(id)string attributes:(id)attributes;
+ (id)placeholderTextOfAnnotation:(id)annotation;
+ (id)textAttributesOfAnnotations:(id)annotations;
+ (id)textAttributesOfEditor:(id)editor;
+ (id)typingAttributes:(id)attributes byApplyingScaleFactor:(double)factor;
+ (void)adjustAnnotationBoundsToFitText:(id)text;
+ (void)adjustBoundsOfAnnotation:(id)annotation toFitOptionalText:(id)text onPageController:(id)controller;
+ (void)enumerateFontAttributesOfAttributedString:(id)string usingBlock:(id)block;
+ (void)resolvedAlignmentAndDirection:(id)direction locale:(id)locale alignment:(int64_t *)alignment direction:(int64_t *)a6;
+ (void)setFont:(id)font ofAnnotation:(id)annotation;
+ (void)setTextAlignment:(int64_t)alignment ofAnnotation:(id)annotation;
+ (void)setTextAttributes:(id)attributes ofAnnotation:(id)annotation;
@end

@implementation AKTextAnnotationAttributeHelper

+ (void)resolvedAlignmentAndDirection:(id)direction locale:(id)locale alignment:(int64_t *)alignment direction:(int64_t *)a6
{
  directionCopy = direction;
  localeCopy = locale;
  if (!directionCopy || (v10 = [directionCopy baseWritingDirection], v10 == -1))
  {
    v10 = [MEMORY[0x277D74248] defaultWritingDirectionForLanguage:localeCopy];
  }

  if (a6)
  {
    *a6 = v10;
  }

  if (alignment)
  {
    if (directionCopy)
    {
      alignment = [directionCopy alignment];
      v12 = v10 == 1;
      if (alignment != 4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = v10 == 1;
    }

    alignment = 2 * v12;
LABEL_12:
    *alignment = alignment;
  }
}

+ (id)fontsOfAnnotations:(id)annotations
{
  v25 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v17 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = annotationsCopy;
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
          annotationText = [v10 annotationText];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = sub_23F40CA8C;
          v18[3] = &unk_278C7B608;
          v12 = v17;
          v19 = v12;
          [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:annotationText usingBlock:v18];
          if (!annotationText || ![annotationText length])
          {
            typingAttributes = [v10 typingAttributes];
            v14 = [typingAttributes objectForKeyedSubscript:v16];

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

+ (id)fontsOfEditor:(id)editor
{
  editorCopy = editor;
  v4 = [MEMORY[0x277CBEB58] set];
  if ([editorCopy isEditing])
  {
    textView = [editorCopy textView];
    annotation = [editorCopy annotation];
    [annotation originalModelBaseScaleFactor];
    v8 = 1.0 / v7;
    textStorage = [textView textStorage];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F40CBCC;
    v11[3] = &unk_278C7B630;
    v13 = v8;
    v12 = v4;
    [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:textStorage usingBlock:v11];
  }

  return v4;
}

+ (void)setFont:(id)font ofAnnotation:(id)annotation
{
  fontCopy = font;
  annotationCopy = annotation;
  annotationText = [annotationCopy annotationText];
  v9 = [annotationText mutableCopy];

  annotationText2 = [annotationCopy annotationText];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_23F40CD54;
  v17 = &unk_278C7B658;
  v18 = v9;
  v19 = fontCopy;
  v11 = fontCopy;
  v12 = v9;
  [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:annotationText2 usingBlock:&v14];

  v13 = [self newTextStorageOriginalFontSavvyWithAttributedString:{v12, v14, v15, v16, v17}];
  [annotationCopy setAnnotationText:v13];
}

+ (void)setTextAlignment:(int64_t)alignment ofAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationText = [annotationCopy annotationText];
  v13 = [annotationText mutableCopy];

  v8 = [v13 length];
  v9 = *MEMORY[0x277D74118];
  if (!v8 || ([v13 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0], (defaultParagraphStyle = objc_claimAutoreleasedReturnValue()) == 0))
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v11 = [defaultParagraphStyle mutableCopy];
  [v11 setAlignment:alignment];
  [v13 addAttribute:v9 value:v11 range:{0, objc_msgSend(v13, "length")}];
  v12 = [self newTextStorageOriginalFontSavvyWithAttributedString:v13];
  [annotationCopy setAnnotationText:v12];
}

+ (id)textAttributesOfAnnotations:(id)annotations
{
  v24 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v4 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = annotationsCopy;
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
          annotationText = [v11 annotationText];
          v13 = [annotationText length];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = sub_23F40D094;
          v17[3] = &unk_278C7B680;
          v14 = v4;
          v18 = v14;
          [annotationText enumerateAttributesInRange:0 options:v13 usingBlock:{0, v17}];
          if (!annotationText || ![annotationText length])
          {
            typingAttributes = [v11 typingAttributes];
            [v14 addObject:typingAttributes];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)textAttributesOfEditor:(id)editor
{
  editorCopy = editor;
  v4 = [MEMORY[0x277CBEB58] set];
  if ([editorCopy isEditing])
  {
    textView = [editorCopy textView];
    textStorage = [textView textStorage];
    v7 = [textStorage length];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23F40D1AC;
    v9[3] = &unk_278C7B680;
    v10 = v4;
    [textStorage enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];
  }

  return v4;
}

+ (void)setTextAttributes:(id)attributes ofAnnotation:(id)annotation
{
  annotationCopy = annotation;
  attributesCopy = attributes;
  annotationText = [annotationCopy annotationText];
  v10 = [annotationText mutableCopy];

  [v10 addAttributes:attributesCopy range:{0, objc_msgSend(v10, "length")}];
  v9 = [self newTextStorageOriginalFontSavvyWithAttributedString:v10];
  [annotationCopy setAnnotationText:v9];
}

+ (void)adjustBoundsOfAnnotation:(id)annotation toFitOptionalText:(id)text onPageController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  textCopy = text;
  conformsToAKRectangularAnnotationProtocol = [annotationCopy conformsToAKRectangularAnnotationProtocol];
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  if (conformsToAKRectangularAnnotationProtocol)
  {
    v11 = &v15;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v13) = 0;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:v11 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v14 forAnnotation:annotationCopy onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), controllerCopy, 0, v13, textCopy];

  if (conformsToAKRectangularAnnotationProtocol)
  {
    [annotationCopy setRectangle:{v15, v16}];
  }

  textIsClipped = [annotationCopy textIsClipped];
  if (v14 != textIsClipped)
  {
    [annotationCopy setTextIsClipped:?];
  }
}

+ (void)adjustAnnotationBoundsToFitText:(id)text
{
  textCopy = text;
  v4 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:textCopy];
  if (![v4 length])
  {
    goto LABEL_20;
  }

  textIsFixedWidth = [textCopy textIsFixedWidth];
  textIsFixedHeight = [textCopy textIsFixedHeight];
  [textCopy setTextIsFixedWidth:1];
  [textCopy setTextIsFixedHeight:1];
  [textCopy rectangle];
  x = v7;
  y = v9;
  v12 = v11;
  v14 = v13;
  v15 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [textCopy originalExifOrientation]);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v59 = *(MEMORY[0x277CBF3A0] + 8);
  v60 = *MEMORY[0x277CBF3A0];
  [AKAnnotationRenderer textBoundsOfAnnotation:textCopy withOptionalAnnotationRect:v4 optionalText:?];
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
    [AKAnnotationRenderer rectangleForAnnotation:textCopy withTextBounds:v65.origin.x, v65.origin.y, v65.size.width, v65.size.height];
    x = v36;
    y = v37;
    v12 = v38;
    v14 = v39;
    [textCopy setRectangle:?];
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
      [AKTextAnnotationRenderHelper getAnnotationRectangle:&v62 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v61 forAnnotation:textCopy onPageController:v42 orInContext:v43 shouldAlignToPixels:v60 optionalText:v59 optionalCenter:v16 optionalProposedRectangle:v17, 0, 0, v51, v4];
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
      [textCopy setRectangle:?];
      if (!--v41)
      {
        goto LABEL_17;
      }
    }

    v48 = *(&v62 + 1);
    v47 = *&v62;
    v50 = *(&v63 + 1);
    v49 = *&v63;
    v46 = textCopy;
  }

  else
  {
LABEL_17:
    v46 = textCopy;
    v48 = v57;
    v47 = v58;
    v50 = v55;
    v49 = v56;
  }

  [v46 setRectangle:{v47, v48, v49, v50}];
  [textCopy setTextIsFixedWidth:textIsFixedWidth];
  [textCopy setTextIsFixedHeight:textIsFixedHeight];
LABEL_20:
}

+ (id)placeholderTextOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ([annotationCopy shouldUsePlaceholderText] && ((objc_msgSend(annotationCopy, "customPlaceholderText"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(objc_opt_class(), "defaultPlaceholderText"), (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
    typingAttributes = [annotationCopy typingAttributes];
    v7 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:v5 attributes:typingAttributes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)actualOrPlaceholderTextOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationText = [annotationCopy annotationText];
  v6 = [annotationText length];

  if (v6)
  {
    [annotationCopy annotationText];
  }

  else
  {
    [self placeholderTextOfAnnotation:annotationCopy];
  }
  v7 = ;

  return v7;
}

+ (id)font:(id)font byApplyingScaleFactor:(double)factor
{
  fontCopy = font;
  [fontCopy pointSize];
  factor = [fontCopy fontWithSize:v6 * factor];

  return factor;
}

+ (id)typingAttributes:(id)attributes byApplyingScaleFactor:(double)factor
{
  v32[2] = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = attributesCopy;
  if (fabs(factor + -1.0) >= 0.0005)
  {
    v8 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740F8]];
    v9 = *MEMORY[0x277D740A8];
    if (!v8)
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    }

    [v8 pointSize];
    v26 = v8;
    factor = [v8 fontWithSize:v10 * factor];
    v7 = [v6 mutableCopy];
    v25 = factor;
    [v7 setObject:factor forKeyedSubscript:v9];
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
            factor2 = [v21 numberWithDouble:v22 * factor];
            [v7 setObject:factor2 forKeyedSubscript:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v7 = attributesCopy;
  }

  return v7;
}

+ (id)newTextStorage:(id)storage byApplyingScaleFactor:(double)factor
{
  storageCopy = storage;
  v7 = storageCopy;
  if (storageCopy)
  {
    v8 = [storageCopy mutableCopy];
    if ([v7 length] && fabs(factor + -1.0) >= 0.0005)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F40DB54;
      v11[3] = &unk_278C7B6A8;
      selfCopy = self;
      factorCopy = factor;
      v12 = v8;
      [self enumerateFontAttributesOfAttributedString:v7 usingBlock:v11];
    }

    v9 = [self newTextStorageOriginalFontSavvyWithAttributedString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newTextStorageOriginalFontSavvyWithAttributedString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v3 = MEMORY[0x277D742D8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(AKTextLayoutManager);
  [v5 addLayoutManager:v6];
  [v5 setAttributedString:stringCopy];

  [v5 removeLayoutManager:v6];
  return v5;
}

+ (id)newTextStorageOriginalFontSavvyWithString:(id)string attributes:(id)attributes
{
  stringCopy = string;
  if (stringCopy)
  {
    v7 = stringCopy;
  }

  else
  {
    v7 = &stru_28519E870;
  }

  v8 = MEMORY[0x277CCA898];
  attributesCopy = attributes;
  v10 = [[v8 alloc] initWithString:v7 attributes:attributesCopy];

  v11 = [self newTextStorageOriginalFontSavvyWithAttributedString:v10];
  return v11;
}

+ (void)enumerateFontAttributesOfAttributedString:(id)string usingBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  v7 = [stringCopy length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23F40DDC8;
  v9[3] = &unk_278C7B6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [stringCopy enumerateAttributesInRange:0 options:v7 usingBlock:{0x100000, v9}];
}

@end