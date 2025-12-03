@interface PDFAnnotationAccessibilityElement
- (BOOL)_accessibilityIsButtonWidget;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (PDFAnnotation)annotation;
- (PDFAnnotationAccessibilityElement)initWithAccessibilityContainer:(id)container pdfNodeRef:(CGPDFTaggedNode *)ref withPage:(id)page;
- (id)_accessibilityAnnotationFieldType;
- (id)_accessibilityAnnotationType;
- (id)_accessibilityAnnotationWidgetTextLabel;
- (id)_accessibilityLineStyleStringForLineStyle:(int64_t)style;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (int)type;
- (unint64_t)accessibilityTraits;
- (void)_axAnnotationHit:(id)hit;
- (void)_axRemovedFromSuperview:(id)superview;
@end

@implementation PDFAnnotationAccessibilityElement

- (PDFAnnotationAccessibilityElement)initWithAccessibilityContainer:(id)container pdfNodeRef:(CGPDFTaggedNode *)ref withPage:(id)page
{
  containerCopy = container;
  pageCopy = page;
  v27.receiver = self;
  v27.super_class = PDFAnnotationAccessibilityElement;
  v10 = [(AXPDFNodeElement *)&v27 initWithAccessibilityContainer:containerCopy withPage:pageCopy];
  v11 = v10;
  if (v10)
  {
    [(PDFAnnotationAccessibilityElement *)v10 setNodeRef:ref];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v20 = pageCopy;
    AXPerformSafeBlock();
    v12 = v22[5];

    _Block_object_dispose(&v21, 8);
    [(PDFAnnotationAccessibilityElement *)v11 setAnnotation:v12];
  }

  _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)v11 _accessibilityAnnotationFieldType];
  v14 = [_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB980]];

  if (v14)
  {
    annotation = [(PDFAnnotationAccessibilityElement *)v11 annotation];
    isListChoice = [annotation isListChoice];

    if (isListChoice)
    {
      defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter addObserver:v11 selector:sel__axAnnotationHit_ name:*MEMORY[0x29EDBB998] object:0];

      defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter2 addObserver:v11 selector:sel__axRemovedFromSuperview_ name:AXPDFRemoveFromSuperviewNotification object:0];
    }
  }

  return v11;
}

uint64_t __88__PDFAnnotationAccessibilityElement_initWithAccessibilityContainer_pdfNodeRef_withPage___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) fetchAnnotationFromTaggedNodeRef:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

- (void)_axAnnotationHit:(id)hit
{
  name = [hit name];
  v5 = [name isEqualToString:*MEMORY[0x29EDBB998]];

  if (v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

    [(PDFAnnotationAccessibilityElement *)self setCachedAXElements:0];
  }
}

- (void)_axRemovedFromSuperview:(id)superview
{
  name = [superview name];
  v5 = [name isEqualToString:AXPDFRemoveFromSuperviewNotification];

  if (v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

    [(PDFAnnotationAccessibilityElement *)self setCachedAXElements:0];
  }
}

- (BOOL)isAccessibilityElement
{
  _accessibilityAnnotationType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  v4 = [_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB938]];

  result = 0;
  if ((v4 & 1) == 0)
  {
    _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
    v7 = [_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB980]];

    if (!v7)
    {
      return 1;
    }

    annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
    isListChoice = [annotation isListChoice];

    if ((isListChoice & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (CGRect)accessibilityFrame
{
  annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
  [annotation bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AXPDFNodeElement *)self convertedAccessibilityFrame:v5, v7, v9, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v27.receiver = self;
  v27.super_class = PDFAnnotationAccessibilityElement;
  accessibilityTraits = [(PDFAnnotationAccessibilityElement *)&v27 accessibilityTraits];
  _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  _accessibilityAnnotationType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  if (![(PDFAnnotationAccessibilityElement *)self _accessibilityIsButtonWidget])
  {
    if ([_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB980]])
    {
      annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
      isListChoice = [annotation isListChoice];

      if (isListChoice)
      {
        goto LABEL_21;
      }

      v14 = MEMORY[0x29EDBDB38];
    }

    else
    {
      if (![_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB988]])
      {
        if (([_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB990]] & 1) == 0 && (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB918]) & 1) == 0 && !objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB960]))
        {
          goto LABEL_21;
        }

        v17 = *MEMORY[0x29EDC7598] | *MEMORY[0x29EDBDC00];
LABEL_20:
        accessibilityTraits |= v17;
        goto LABEL_21;
      }

      annotation2 = [(PDFAnnotationAccessibilityElement *)self annotation];
      isSignatureMarker = [annotation2 isSignatureMarker];

      if (isSignatureMarker)
      {
        goto LABEL_21;
      }

      v14 = MEMORY[0x29EDBDAD0];
    }

LABEL_15:
    v17 = *v14;
    goto LABEL_20;
  }

  annotation3 = [(PDFAnnotationAccessibilityElement *)self annotation];
  widgetControlType = [annotation3 widgetControlType];

  if (widgetControlType == 2)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FE8] | *MEMORY[0x29EDBDD00];
    goto LABEL_21;
  }

  if (widgetControlType != 1)
  {
    v14 = MEMORY[0x29EDC7F70];
    goto LABEL_15;
  }

  v8 = *MEMORY[0x29EDC7558];
  annotation4 = [(PDFAnnotationAccessibilityElement *)self annotation];
  buttonWidgetState = [annotation4 buttonWidgetState];

  v11 = *MEMORY[0x29EDC7FC0];
  if (buttonWidgetState != 1)
  {
    v11 = 0;
  }

  accessibilityTraits |= v8 | v11;
LABEL_21:
  annotation5 = [(PDFAnnotationAccessibilityElement *)self annotation];
  isPasswordField = [annotation5 isPasswordField];

  v20 = *MEMORY[0x29EDC7568];
  if (!isPasswordField)
  {
    v20 = 0;
  }

  v21 = v20 | accessibilityTraits;
  plugin = [(AXPDFNodeElement *)self plugin];
  if (!plugin || ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB960]] & 1) == 0 && (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB918]) & 1) == 0 && (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB970]) & 1) == 0)
  {
    annotation6 = [(PDFAnnotationAccessibilityElement *)self annotation];
    if (![annotation6 isReadOnly])
    {
      annotation7 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v26 = [annotation7 safeBoolForKey:@"isHidden"];

      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

LABEL_30:
  v21 |= *MEMORY[0x29EDC7FA8];
LABEL_31:

  return v21;
}

- (id)accessibilityLabel
{
  _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  _accessibilityAnnotationType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  if (![_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB930]])
  {
    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB920]])
    {
      v9 = @"highlight.annotation";
      goto LABEL_6;
    }

    if (([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB918]] & 1) != 0 || objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB960]))
    {
      annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
      _accessibilityAnnotationWidgetTextLabel = [annotation valueForAnnotationKey:*MEMORY[0x29EDBB8F0]];

      if ([_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/Comment"])
      {
        v15 = @"comment.icon";
      }

      else if ([_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/Key"])
      {
        v15 = @"key.icon";
      }

      else if ([_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/Note"])
      {
        v15 = @"note.icon";
      }

      else if ([_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/Help"])
      {
        v15 = @"help.icon";
      }

      else if ([_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/NewParagraph"])
      {
        v15 = @"newparagraph.icon";
      }

      else if ([_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/Paragraph"])
      {
        v15 = @"paragraph.icon";
      }

      else
      {
        if (![_accessibilityAnnotationWidgetTextLabel isEqualToString:@"/Insert"])
        {
LABEL_49:
          annotation2 = [(PDFAnnotationAccessibilityElement *)self annotation];
          iconType = [annotation2 iconType];

          if (iconType > 6)
          {
            v11 = 0;
            goto LABEL_53;
          }

          caption2 = accessibilityLocalizedString(off_29F2E07F0[iconType]);
          goto LABEL_51;
        }

        v15 = @"insert.icon";
      }

      v11 = accessibilityLocalizedString(v15);
      if (v11)
      {
LABEL_53:

        goto LABEL_54;
      }

      goto LABEL_49;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB948]])
    {
      v9 = @"square.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB910]])
    {
      v9 = @"circle.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB968]])
    {
      v9 = @"underline.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB958]])
    {
      v9 = @"strike.out.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB928]])
    {
      v9 = @"ink.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB950]])
    {
      v9 = @"stamp.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB940]])
    {
      v9 = @"popup.annotation";
      goto LABEL_6;
    }

    if ([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB970]])
    {
      if ([_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB990]])
      {
        _accessibilityAnnotationWidgetTextLabel = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationWidgetTextLabel];
        annotation3 = [(PDFAnnotationAccessibilityElement *)self annotation];
        caption = [annotation3 caption];
        annotation4 = [(PDFAnnotationAccessibilityElement *)self annotation];
        contents = [annotation4 contents];
        v50 = @"__AXStringForVariablesSentinel";
        v46 = caption;
        v11 = __UIAXStringForVariables();

        goto LABEL_75;
      }

      if ([_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB988]])
      {
        annotation5 = [(PDFAnnotationAccessibilityElement *)self annotation];
        isSignatureMarker = [annotation5 isSignatureMarker];

        if (!isSignatureMarker)
        {
          _accessibilityAnnotationWidgetTextLabel = accessibilityLocalizedString(@"signatureWidget.annotation");
          annotation3 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationWidgetTextLabel];
          v46 = annotation3;
          contents = @"__AXStringForVariablesSentinel";
          v11 = __UIAXStringForVariables();
          goto LABEL_76;
        }

        _accessibilityAnnotationWidgetTextLabel = accessibilityLocalizedString(@"signature.annotation");
        annotation3 = [(PDFAnnotationAccessibilityElement *)self annotation];
        caption = [annotation3 fieldName];
        v46 = caption;
        contents = @"__AXStringForVariablesSentinel";
        v11 = __UIAXStringForVariables();
LABEL_75:

LABEL_76:
        goto LABEL_53;
      }

      if ([_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB978]])
      {
        annotation6 = [(PDFAnnotationAccessibilityElement *)self annotation];
        widgetControlType = [annotation6 widgetControlType];

        if (!widgetControlType)
        {
          _accessibilityAnnotationWidgetTextLabel = [(PDFAnnotationAccessibilityElement *)self annotation];
          caption2 = [_accessibilityAnnotationWidgetTextLabel caption];
LABEL_51:
          v11 = caption2;
          goto LABEL_53;
        }

        if (widgetControlType == 2)
        {
          _accessibilityAnnotationWidgetTextLabel2 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationWidgetTextLabel];
          goto LABEL_7;
        }
      }
    }

    v11 = 0;
    goto LABEL_54;
  }

  annotation7 = [(PDFAnnotationAccessibilityElement *)self annotation];
  startLineStyle = [annotation7 startLineStyle];

  annotation8 = [(PDFAnnotationAccessibilityElement *)self annotation];
  endLineStyle = [annotation8 endLineStyle];

  if (!(startLineStyle | endLineStyle))
  {
    v9 = @"line.annotation";
LABEL_6:
    _accessibilityAnnotationWidgetTextLabel2 = accessibilityLocalizedString(v9);
LABEL_7:
    v11 = _accessibilityAnnotationWidgetTextLabel2;
    goto LABEL_54;
  }

  if (startLineStyle && endLineStyle)
  {
    v12 = @"double.headed.arrow.annotation";
  }

  else
  {
    if (!(startLineStyle | endLineStyle))
    {
      v16 = 0;
      goto LABEL_21;
    }

    v12 = @"single.headed.arrow.annotation";
  }

  v16 = accessibilityLocalizedString(v12);
LABEL_21:
  if (endLineStyle)
  {
    v17 = startLineStyle == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = endLineStyle;
  }

  else
  {
    v18 = startLineStyle;
  }

  v19 = [(PDFAnnotationAccessibilityElement *)self _accessibilityLineStyleStringForLineStyle:v18];
  v20 = MEMORY[0x29EDBA0F8];
  v21 = accessibilityLocalizedString(@"line.style");
  v11 = [v20 stringWithFormat:v21, v16, v19];

LABEL_54:
  v25 = [(PDFAnnotationAccessibilityElement *)self annotation:v46];
  isTextMarkupAnnotation = [v25 isTextMarkupAnnotation];

  if (isTextMarkupAnnotation)
  {
    annotation9 = [(PDFAnnotationAccessibilityElement *)self annotation];
    textMarkupString = [annotation9 textMarkupString];
    v47 = v11;
    v49 = @"__AXStringForVariablesSentinel";
    v29 = __UIAXStringForVariables();

    v11 = v29;
  }

  annotation12 = [(PDFAnnotationAccessibilityElement *)self annotation:v47];
  if ([annotation12 isNoteAnnotation])
  {
    annotation10 = [(PDFAnnotationAccessibilityElement *)self annotation];
    contents2 = [annotation10 contents];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      annotation11 = [(PDFAnnotationAccessibilityElement *)self annotation];
      contents3 = [annotation11 contents];
      v35 = [contents3 length];

      if (!v35)
      {
        goto LABEL_62;
      }

      annotation12 = [(PDFAnnotationAccessibilityElement *)self annotation];
      annotation10 = [annotation12 contents];
      __UIAXStringForVariables();
      v11 = contents2 = v11;
    }
  }

LABEL_62:
  if (v11)
  {
    accessibilityLabel = v11;
  }

  else
  {
    v51.receiver = self;
    v51.super_class = PDFAnnotationAccessibilityElement;
    accessibilityLabel = [(PDFAnnotationAccessibilityElement *)&v51 accessibilityLabel];
  }

  v37 = accessibilityLabel;

  return v37;
}

- (id)accessibilityValue
{
  _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  _accessibilityAnnotationType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  v5 = *MEMORY[0x29EDBB970];
  if (![_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB970]])
  {
    v9 = [_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB950]];
    annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
    v11 = annotation;
    if (v9)
    {
      v12 = [annotation valueForAnnotationKey:*MEMORY[0x29EDBB8F0]];
      v57 = [v12 stringByReplacingOccurrencesOfString:@"/" withString:&stru_2A2261B48];
    }

    else
    {
      v57 = [annotation valueForAnnotationKey:*MEMORY[0x29EDBB8E8]];
    }

    annotation2 = [(PDFAnnotationAccessibilityElement *)self annotation];
    border = [annotation2 border];

    style = [border style];
    v58 = border;
    [border lineWidth];
    v17 = v16;
    if (([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB910]] & 1) != 0 || (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB928]) & 1) != 0 || (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB930]) & 1) != 0 || objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB948]))
    {
      if (style > 4)
      {
        v56 = 0;
      }

      else
      {
        v56 = accessibilityLocalizedString(off_29F2E0840[style]);
      }

      v18 = @"thick.line";
      if (v17 < 8.5)
      {
        v18 = @"medium.line";
      }

      if (v17 >= 2.5)
      {
        v19 = v18;
      }

      else
      {
        v19 = @"thin.line";
      }

      v55 = accessibilityLocalizedString(v19);
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    annotation3 = [(PDFAnnotationAccessibilityElement *)self annotation];
    font = [annotation3 font];

    v22 = *MEMORY[0x29EDBB918];
    v59 = _accessibilityAnnotationFieldType;
    if (([_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB918]] & 1) != 0 || (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB960]) & 1) != 0 || (objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", *MEMORY[0x29EDBB940]) & 1) != 0 || objc_msgSend(_accessibilityAnnotationType, "isEqualToString:", v5) && ((objc_msgSend(_accessibilityAnnotationFieldType, "isEqualToString:", *MEMORY[0x29EDBB990]) & 1) != 0 || (objc_msgSend(_accessibilityAnnotationFieldType, "isEqualToString:", *MEMORY[0x29EDBB978]) & 1) != 0 || objc_msgSend(_accessibilityAnnotationFieldType, "isEqualToString:", *MEMORY[0x29EDBB980])))
    {
      fontName = [font fontName];
      v24 = MEMORY[0x29EDBA0F8];
      v25 = accessibilityLocalizedString(@"stroke.fontsize.value");
      v26 = MEMORY[0x29EDBA070];
      [font pointSize];
      v27 = [v26 numberWithDouble:?];
      v51 = [v24 stringWithFormat:v25, v27];
      v52 = @"__AXStringForVariablesSentinel";
      v54 = __UIAXStringForVariables();
    }

    else
    {
      v54 = 0;
    }

    v28 = [(PDFAnnotationAccessibilityElement *)self annotation:v51];
    alignment = [v28 alignment];

    if ([_accessibilityAnnotationType isEqualToString:v5] && (objc_msgSend(v59, "isEqualToString:", *MEMORY[0x29EDBB990]) & 1) != 0)
    {
      if (alignment > 3)
      {
        v30 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v31 = [_accessibilityAnnotationType isEqualToString:v22];
      v30 = 0;
      if (!v31 || alignment >= 4)
      {
LABEL_34:
        v53 = v30;
        annotation4 = [(PDFAnnotationAccessibilityElement *)self annotation];
        userName = [annotation4 userName];
        v34 = [userName length];

        if (v34)
        {
          v35 = MEMORY[0x29EDBA0F8];
          v36 = accessibilityLocalizedString(@"annotation.creator.username.format");
          annotation5 = [(PDFAnnotationAccessibilityElement *)self annotation];
          userName2 = [annotation5 userName];
          v39 = [v35 stringWithFormat:v36, userName2];
        }

        else
        {
          v39 = 0;
        }

        annotation6 = [(PDFAnnotationAccessibilityElement *)self annotation];
        color = [annotation6 color];

        if (color)
        {
          v42 = AXColorStringForColor();
        }

        else
        {
          v42 = 0;
        }

        v8 = __UIAXStringForVariables();

        _accessibilityAnnotationFieldType = v59;
        goto LABEL_41;
      }
    }

    v30 = accessibilityLocalizedString(off_29F2E0868[alignment]);
    goto LABEL_34;
  }

  if (([_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB990]] & 1) != 0 || objc_msgSend(_accessibilityAnnotationFieldType, "isEqualToString:", *MEMORY[0x29EDBB980]))
  {
    annotation7 = [(PDFAnnotationAccessibilityElement *)self annotation];
    widgetStringValue = [annotation7 widgetStringValue];
  }

  else
  {
    v44 = [_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB988]];
    annotation8 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v46 = annotation8;
    if (v44)
    {
      annotation7 = [annotation8 signatureAnnotationForRendering];

      if (annotation7)
      {
        v47 = [annotation7 safeSwiftValueForKey:@"signatureItem"];
        v8 = [v47 safeStringForKey:@"axSignatureDescription"];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_6;
    }

    widgetControlType = [annotation8 widgetControlType];

    if (widgetControlType != 1)
    {
      if (widgetControlType == 2 && (-[PDFAnnotationAccessibilityElement annotation](self, "annotation"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 buttonWidgetState], v49, (v50 + 1) < 3))
      {
        v8 = off_29F2E0828[v50 + 1];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_41;
    }

    annotation7 = [(PDFAnnotationAccessibilityElement *)self annotation];
    widgetStringValue = [annotation7 buttonWidgetStateString];
  }

  v8 = widgetStringValue;
LABEL_6:

LABEL_41:

  return v8;
}

- (id)accessibilityElements
{
  cachedAXElements = [(PDFAnnotationAccessibilityElement *)self cachedAXElements];
  if (!cachedAXElements)
  {
    cachedAXElements = [MEMORY[0x29EDB8DE8] array];
    _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
    v5 = [_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB980]];

    if (v5)
    {
      annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
      isListChoice = [annotation isListChoice];

      if (isListChoice)
      {
        annotation2 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v9 = [annotation2 safeValueForKey:@"control"];

        if (v9 && (objc_opt_class(), __UIAccessibilityCastAsClass(), v10 = objc_claimAutoreleasedReturnValue(), [v10 superview], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
        {
          v12 = accessibilityLocalizedString(@"list.annotation");
          [v9 setAccessibilityLabel:v12];

          [v9 setAccessibilityContainerType:4];
          [cachedAXElements axSafelyAddObject:v9];
        }

        else
        {
          v13 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
          [(PDFAnnotationAccessibilityElement *)self accessibilityFrame];
          [v13 setAccessibilityFrame:?];
          v14 = accessibilityLocalizedString(@"list.annotation");
          [v13 setAccessibilityLabel:v14];

          accessibilityValue = [(PDFAnnotationAccessibilityElement *)self accessibilityValue];
          [v13 setAccessibilityValue:accessibilityValue];

          v16 = accessibilityLocalizedString(@"list.annotation.hint");
          [v13 setAccessibilityHint:v16];

          [cachedAXElements axSafelyAddObject:v13];
        }
      }

      [(PDFAnnotationAccessibilityElement *)self setCachedAXElements:cachedAXElements];
    }
  }

  return cachedAXElements;
}

- (id)accessibilityHint
{
  _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  _accessibilityAnnotationType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  if (![_accessibilityAnnotationType isEqualToString:*MEMORY[0x29EDBB970]] || (v5 = -[PDFAnnotationAccessibilityElement accessibilityTraits](self, "accessibilityTraits"), (*MEMORY[0x29EDC7FA8] & v5) != 0) || !objc_msgSend(_accessibilityAnnotationFieldType, "isEqualToString:", *MEMORY[0x29EDBB988]) || (accessibilityLocalizedString(@"hint.signatureWidget.activate"), (accessibilityHint = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8.receiver = self;
    v8.super_class = PDFAnnotationAccessibilityElement;
    accessibilityHint = [(PDFAnnotationAccessibilityElement *)&v8 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)_accessibilityLineStyleStringForLineStyle:(int64_t)style
{
  if ((style - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2E0888[style - 1]);
  }

  return v4;
}

- (id)_accessibilityAnnotationType
{
  annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
  v3 = [annotation valueForAnnotationKey:*MEMORY[0x29EDBB8F8]];

  return v3;
}

- (id)_accessibilityAnnotationFieldType
{
  annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
  v3 = [annotation valueForAnnotationKey:*MEMORY[0x29EDBB900]];

  return v3;
}

- (id)_accessibilityAnnotationWidgetTextLabel
{
  annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
  v3 = [annotation valueForAnnotationKey:*MEMORY[0x29EDBB908]];

  return v3;
}

- (BOOL)_accessibilityIsButtonWidget
{
  _accessibilityAnnotationFieldType = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  v3 = [_accessibilityAnnotationFieldType isEqualToString:*MEMORY[0x29EDBB978]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  accessibilityLabel = [(PDFAnnotationAccessibilityElement *)self accessibilityLabel];
  accessibilityValue = [(PDFAnnotationAccessibilityElement *)self accessibilityValue];
  [(PDFAnnotationAccessibilityElement *)self accessibilityFrame];
  v7 = NSStringFromCGRect(v12);
  annotation = [(PDFAnnotationAccessibilityElement *)self annotation];
  v9 = [v3 stringWithFormat:@"%@[%p] %@, %@ : %@\n\tAnnotation: %@", v4, self, accessibilityLabel, accessibilityValue, v7, annotation];

  return v9;
}

- (int)type
{
  if (![(PDFAnnotationAccessibilityElement *)self nodeRef])
  {
    return 507;
  }

  [(PDFAnnotationAccessibilityElement *)self nodeRef];

  return CGPDFTaggedNodeGetType();
}

- (PDFAnnotation)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->_annotation);

  return WeakRetained;
}

@end