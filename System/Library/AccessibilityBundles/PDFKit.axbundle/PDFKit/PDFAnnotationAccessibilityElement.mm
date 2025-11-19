@interface PDFAnnotationAccessibilityElement
- (BOOL)_accessibilityIsButtonWidget;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (PDFAnnotation)annotation;
- (PDFAnnotationAccessibilityElement)initWithAccessibilityContainer:(id)a3 pdfNodeRef:(CGPDFTaggedNode *)a4 withPage:(id)a5;
- (id)_accessibilityAnnotationFieldType;
- (id)_accessibilityAnnotationType;
- (id)_accessibilityAnnotationWidgetTextLabel;
- (id)_accessibilityLineStyleStringForLineStyle:(int64_t)a3;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (int)type;
- (unint64_t)accessibilityTraits;
- (void)_axAnnotationHit:(id)a3;
- (void)_axRemovedFromSuperview:(id)a3;
@end

@implementation PDFAnnotationAccessibilityElement

- (PDFAnnotationAccessibilityElement)initWithAccessibilityContainer:(id)a3 pdfNodeRef:(CGPDFTaggedNode *)a4 withPage:(id)a5
{
  v8 = a3;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = PDFAnnotationAccessibilityElement;
  v10 = [(AXPDFNodeElement *)&v27 initWithAccessibilityContainer:v8 withPage:v9];
  v11 = v10;
  if (v10)
  {
    [(PDFAnnotationAccessibilityElement *)v10 setNodeRef:a4];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v20 = v9;
    AXPerformSafeBlock();
    v12 = v22[5];

    _Block_object_dispose(&v21, 8);
    [(PDFAnnotationAccessibilityElement *)v11 setAnnotation:v12];
  }

  v13 = [(PDFAnnotationAccessibilityElement *)v11 _accessibilityAnnotationFieldType];
  v14 = [v13 isEqualToString:*MEMORY[0x29EDBB980]];

  if (v14)
  {
    v15 = [(PDFAnnotationAccessibilityElement *)v11 annotation];
    v16 = [v15 isListChoice];

    if (v16)
    {
      v17 = [MEMORY[0x29EDBA068] defaultCenter];
      [v17 addObserver:v11 selector:sel__axAnnotationHit_ name:*MEMORY[0x29EDBB998] object:0];

      v18 = [MEMORY[0x29EDBA068] defaultCenter];
      [v18 addObserver:v11 selector:sel__axRemovedFromSuperview_ name:AXPDFRemoveFromSuperviewNotification object:0];
    }
  }

  return v11;
}

uint64_t __88__PDFAnnotationAccessibilityElement_initWithAccessibilityContainer_pdfNodeRef_withPage___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) fetchAnnotationFromTaggedNodeRef:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

- (void)_axAnnotationHit:(id)a3
{
  v4 = [a3 name];
  v5 = [v4 isEqualToString:*MEMORY[0x29EDBB998]];

  if (v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

    [(PDFAnnotationAccessibilityElement *)self setCachedAXElements:0];
  }
}

- (void)_axRemovedFromSuperview:(id)a3
{
  v4 = [a3 name];
  v5 = [v4 isEqualToString:AXPDFRemoveFromSuperviewNotification];

  if (v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

    [(PDFAnnotationAccessibilityElement *)self setCachedAXElements:0];
  }
}

- (BOOL)isAccessibilityElement
{
  v3 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDBB938]];

  result = 0;
  if ((v4 & 1) == 0)
  {
    v6 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
    v7 = [v6 isEqualToString:*MEMORY[0x29EDBB980]];

    if (!v7)
    {
      return 1;
    }

    v8 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v9 = [v8 isListChoice];

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (CGRect)accessibilityFrame
{
  v3 = [(PDFAnnotationAccessibilityElement *)self annotation];
  [v3 bounds];
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
  v3 = [(PDFAnnotationAccessibilityElement *)&v27 accessibilityTraits];
  v4 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  v5 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  if (![(PDFAnnotationAccessibilityElement *)self _accessibilityIsButtonWidget])
  {
    if ([v4 isEqualToString:*MEMORY[0x29EDBB980]])
    {
      v12 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v13 = [v12 isListChoice];

      if (v13)
      {
        goto LABEL_21;
      }

      v14 = MEMORY[0x29EDBDB38];
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x29EDBB988]])
      {
        if (([v4 isEqualToString:*MEMORY[0x29EDBB990]] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x29EDBB918]) & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x29EDBB960]))
        {
          goto LABEL_21;
        }

        v17 = *MEMORY[0x29EDC7598] | *MEMORY[0x29EDBDC00];
LABEL_20:
        v3 |= v17;
        goto LABEL_21;
      }

      v15 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v16 = [v15 isSignatureMarker];

      if (v16)
      {
        goto LABEL_21;
      }

      v14 = MEMORY[0x29EDBDAD0];
    }

LABEL_15:
    v17 = *v14;
    goto LABEL_20;
  }

  v6 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v7 = [v6 widgetControlType];

  if (v7 == 2)
  {
    v3 |= *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FE8] | *MEMORY[0x29EDBDD00];
    goto LABEL_21;
  }

  if (v7 != 1)
  {
    v14 = MEMORY[0x29EDC7F70];
    goto LABEL_15;
  }

  v8 = *MEMORY[0x29EDC7558];
  v9 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v10 = [v9 buttonWidgetState];

  v11 = *MEMORY[0x29EDC7FC0];
  if (v10 != 1)
  {
    v11 = 0;
  }

  v3 |= v8 | v11;
LABEL_21:
  v18 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v19 = [v18 isPasswordField];

  v20 = *MEMORY[0x29EDC7568];
  if (!v19)
  {
    v20 = 0;
  }

  v21 = v20 | v3;
  v22 = [(AXPDFNodeElement *)self plugin];
  if (!v22 || ([v5 isEqualToString:*MEMORY[0x29EDBB960]] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x29EDBB918]) & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x29EDBB970]) & 1) == 0)
  {
    v23 = [(PDFAnnotationAccessibilityElement *)self annotation];
    if (![v23 isReadOnly])
    {
      v25 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v26 = [v25 safeBoolForKey:@"isHidden"];

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
  v3 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  v4 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  if (![v4 isEqualToString:*MEMORY[0x29EDBB930]])
  {
    if ([v4 isEqualToString:*MEMORY[0x29EDBB920]])
    {
      v9 = @"highlight.annotation";
      goto LABEL_6;
    }

    if (([v4 isEqualToString:*MEMORY[0x29EDBB918]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB960]))
    {
      v13 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v14 = [v13 valueForAnnotationKey:*MEMORY[0x29EDBB8F0]];

      if ([v14 isEqualToString:@"/Comment"])
      {
        v15 = @"comment.icon";
      }

      else if ([v14 isEqualToString:@"/Key"])
      {
        v15 = @"key.icon";
      }

      else if ([v14 isEqualToString:@"/Note"])
      {
        v15 = @"note.icon";
      }

      else if ([v14 isEqualToString:@"/Help"])
      {
        v15 = @"help.icon";
      }

      else if ([v14 isEqualToString:@"/NewParagraph"])
      {
        v15 = @"newparagraph.icon";
      }

      else if ([v14 isEqualToString:@"/Paragraph"])
      {
        v15 = @"paragraph.icon";
      }

      else
      {
        if (![v14 isEqualToString:@"/Insert"])
        {
LABEL_49:
          v22 = [(PDFAnnotationAccessibilityElement *)self annotation];
          v23 = [v22 iconType];

          if (v23 > 6)
          {
            v11 = 0;
            goto LABEL_53;
          }

          v24 = accessibilityLocalizedString(off_29F2E07F0[v23]);
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

    if ([v4 isEqualToString:*MEMORY[0x29EDBB948]])
    {
      v9 = @"square.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB910]])
    {
      v9 = @"circle.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB968]])
    {
      v9 = @"underline.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB958]])
    {
      v9 = @"strike.out.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB928]])
    {
      v9 = @"ink.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB950]])
    {
      v9 = @"stamp.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB940]])
    {
      v9 = @"popup.annotation";
      goto LABEL_6;
    }

    if ([v4 isEqualToString:*MEMORY[0x29EDBB970]])
    {
      if ([v3 isEqualToString:*MEMORY[0x29EDBB990]])
      {
        v14 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationWidgetTextLabel];
        v39 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v40 = [v39 caption];
        v41 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v48 = [v41 contents];
        v50 = @"__AXStringForVariablesSentinel";
        v46 = v40;
        v11 = __UIAXStringForVariables();

        goto LABEL_75;
      }

      if ([v3 isEqualToString:*MEMORY[0x29EDBB988]])
      {
        v42 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v43 = [v42 isSignatureMarker];

        if (!v43)
        {
          v14 = accessibilityLocalizedString(@"signatureWidget.annotation");
          v39 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationWidgetTextLabel];
          v46 = v39;
          v48 = @"__AXStringForVariablesSentinel";
          v11 = __UIAXStringForVariables();
          goto LABEL_76;
        }

        v14 = accessibilityLocalizedString(@"signature.annotation");
        v39 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v40 = [v39 fieldName];
        v46 = v40;
        v48 = @"__AXStringForVariablesSentinel";
        v11 = __UIAXStringForVariables();
LABEL_75:

LABEL_76:
        goto LABEL_53;
      }

      if ([v3 isEqualToString:*MEMORY[0x29EDBB978]])
      {
        v44 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v45 = [v44 widgetControlType];

        if (!v45)
        {
          v14 = [(PDFAnnotationAccessibilityElement *)self annotation];
          v24 = [v14 caption];
LABEL_51:
          v11 = v24;
          goto LABEL_53;
        }

        if (v45 == 2)
        {
          v10 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationWidgetTextLabel];
          goto LABEL_7;
        }
      }
    }

    v11 = 0;
    goto LABEL_54;
  }

  v5 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v6 = [v5 startLineStyle];

  v7 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v8 = [v7 endLineStyle];

  if (!(v6 | v8))
  {
    v9 = @"line.annotation";
LABEL_6:
    v10 = accessibilityLocalizedString(v9);
LABEL_7:
    v11 = v10;
    goto LABEL_54;
  }

  if (v6 && v8)
  {
    v12 = @"double.headed.arrow.annotation";
  }

  else
  {
    if (!(v6 | v8))
    {
      v16 = 0;
      goto LABEL_21;
    }

    v12 = @"single.headed.arrow.annotation";
  }

  v16 = accessibilityLocalizedString(v12);
LABEL_21:
  if (v8)
  {
    v17 = v6 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = v8;
  }

  else
  {
    v18 = v6;
  }

  v19 = [(PDFAnnotationAccessibilityElement *)self _accessibilityLineStyleStringForLineStyle:v18];
  v20 = MEMORY[0x29EDBA0F8];
  v21 = accessibilityLocalizedString(@"line.style");
  v11 = [v20 stringWithFormat:v21, v16, v19];

LABEL_54:
  v25 = [(PDFAnnotationAccessibilityElement *)self annotation:v46];
  v26 = [v25 isTextMarkupAnnotation];

  if (v26)
  {
    v27 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v28 = [v27 textMarkupString];
    v47 = v11;
    v49 = @"__AXStringForVariablesSentinel";
    v29 = __UIAXStringForVariables();

    v11 = v29;
  }

  v30 = [(PDFAnnotationAccessibilityElement *)self annotation:v47];
  if ([v30 isNoteAnnotation])
  {
    v31 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v32 = [v31 contents];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v34 = [v33 contents];
      v35 = [v34 length];

      if (!v35)
      {
        goto LABEL_62;
      }

      v30 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v31 = [v30 contents];
      __UIAXStringForVariables();
      v11 = v32 = v11;
    }
  }

LABEL_62:
  if (v11)
  {
    v36 = v11;
  }

  else
  {
    v51.receiver = self;
    v51.super_class = PDFAnnotationAccessibilityElement;
    v36 = [(PDFAnnotationAccessibilityElement *)&v51 accessibilityLabel];
  }

  v37 = v36;

  return v37;
}

- (id)accessibilityValue
{
  v3 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  v4 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  v5 = *MEMORY[0x29EDBB970];
  if (![v4 isEqualToString:*MEMORY[0x29EDBB970]])
  {
    v9 = [v4 isEqualToString:*MEMORY[0x29EDBB950]];
    v10 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 valueForAnnotationKey:*MEMORY[0x29EDBB8F0]];
      v57 = [v12 stringByReplacingOccurrencesOfString:@"/" withString:&stru_2A2261B48];
    }

    else
    {
      v57 = [v10 valueForAnnotationKey:*MEMORY[0x29EDBB8E8]];
    }

    v13 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v14 = [v13 border];

    v15 = [v14 style];
    v58 = v14;
    [v14 lineWidth];
    v17 = v16;
    if (([v4 isEqualToString:*MEMORY[0x29EDBB910]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB928]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB930]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB948]))
    {
      if (v15 > 4)
      {
        v56 = 0;
      }

      else
      {
        v56 = accessibilityLocalizedString(off_29F2E0840[v15]);
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

    v20 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v21 = [v20 font];

    v22 = *MEMORY[0x29EDBB918];
    v59 = v3;
    if (([v4 isEqualToString:*MEMORY[0x29EDBB918]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB960]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB940]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", v5) && ((objc_msgSend(v3, "isEqualToString:", *MEMORY[0x29EDBB990]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x29EDBB978]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x29EDBB980])))
    {
      v23 = [v21 fontName];
      v24 = MEMORY[0x29EDBA0F8];
      v25 = accessibilityLocalizedString(@"stroke.fontsize.value");
      v26 = MEMORY[0x29EDBA070];
      [v21 pointSize];
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
    v29 = [v28 alignment];

    if ([v4 isEqualToString:v5] && (objc_msgSend(v59, "isEqualToString:", *MEMORY[0x29EDBB990]) & 1) != 0)
    {
      if (v29 > 3)
      {
        v30 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v31 = [v4 isEqualToString:v22];
      v30 = 0;
      if (!v31 || v29 >= 4)
      {
LABEL_34:
        v53 = v30;
        v32 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v33 = [v32 userName];
        v34 = [v33 length];

        if (v34)
        {
          v35 = MEMORY[0x29EDBA0F8];
          v36 = accessibilityLocalizedString(@"annotation.creator.username.format");
          v37 = [(PDFAnnotationAccessibilityElement *)self annotation];
          v38 = [v37 userName];
          v39 = [v35 stringWithFormat:v36, v38];
        }

        else
        {
          v39 = 0;
        }

        v40 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v41 = [v40 color];

        if (v41)
        {
          v42 = AXColorStringForColor();
        }

        else
        {
          v42 = 0;
        }

        v8 = __UIAXStringForVariables();

        v3 = v59;
        goto LABEL_41;
      }
    }

    v30 = accessibilityLocalizedString(off_29F2E0868[v29]);
    goto LABEL_34;
  }

  if (([v3 isEqualToString:*MEMORY[0x29EDBB990]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x29EDBB980]))
  {
    v6 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v7 = [v6 widgetStringValue];
  }

  else
  {
    v44 = [v3 isEqualToString:*MEMORY[0x29EDBB988]];
    v45 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v46 = v45;
    if (v44)
    {
      v6 = [v45 signatureAnnotationForRendering];

      if (v6)
      {
        v47 = [v6 safeSwiftValueForKey:@"signatureItem"];
        v8 = [v47 safeStringForKey:@"axSignatureDescription"];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_6;
    }

    v48 = [v45 widgetControlType];

    if (v48 != 1)
    {
      if (v48 == 2 && (-[PDFAnnotationAccessibilityElement annotation](self, "annotation"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 buttonWidgetState], v49, (v50 + 1) < 3))
      {
        v8 = off_29F2E0828[v50 + 1];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_41;
    }

    v6 = [(PDFAnnotationAccessibilityElement *)self annotation];
    v7 = [v6 buttonWidgetStateString];
  }

  v8 = v7;
LABEL_6:

LABEL_41:

  return v8;
}

- (id)accessibilityElements
{
  v3 = [(PDFAnnotationAccessibilityElement *)self cachedAXElements];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
    v5 = [v4 isEqualToString:*MEMORY[0x29EDBB980]];

    if (v5)
    {
      v6 = [(PDFAnnotationAccessibilityElement *)self annotation];
      v7 = [v6 isListChoice];

      if (v7)
      {
        v8 = [(PDFAnnotationAccessibilityElement *)self annotation];
        v9 = [v8 safeValueForKey:@"control"];

        if (v9 && (objc_opt_class(), __UIAccessibilityCastAsClass(), v10 = objc_claimAutoreleasedReturnValue(), [v10 superview], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
        {
          v12 = accessibilityLocalizedString(@"list.annotation");
          [v9 setAccessibilityLabel:v12];

          [v9 setAccessibilityContainerType:4];
          [v3 axSafelyAddObject:v9];
        }

        else
        {
          v13 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
          [(PDFAnnotationAccessibilityElement *)self accessibilityFrame];
          [v13 setAccessibilityFrame:?];
          v14 = accessibilityLocalizedString(@"list.annotation");
          [v13 setAccessibilityLabel:v14];

          v15 = [(PDFAnnotationAccessibilityElement *)self accessibilityValue];
          [v13 setAccessibilityValue:v15];

          v16 = accessibilityLocalizedString(@"list.annotation.hint");
          [v13 setAccessibilityHint:v16];

          [v3 axSafelyAddObject:v13];
        }
      }

      [(PDFAnnotationAccessibilityElement *)self setCachedAXElements:v3];
    }
  }

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  v4 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationType];
  if (![v4 isEqualToString:*MEMORY[0x29EDBB970]] || (v5 = -[PDFAnnotationAccessibilityElement accessibilityTraits](self, "accessibilityTraits"), (*MEMORY[0x29EDC7FA8] & v5) != 0) || !objc_msgSend(v3, "isEqualToString:", *MEMORY[0x29EDBB988]) || (accessibilityLocalizedString(@"hint.signatureWidget.activate"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8.receiver = self;
    v8.super_class = PDFAnnotationAccessibilityElement;
    v6 = [(PDFAnnotationAccessibilityElement *)&v8 accessibilityHint];
  }

  return v6;
}

- (id)_accessibilityLineStyleStringForLineStyle:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2E0888[a3 - 1]);
  }

  return v4;
}

- (id)_accessibilityAnnotationType
{
  v2 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v3 = [v2 valueForAnnotationKey:*MEMORY[0x29EDBB8F8]];

  return v3;
}

- (id)_accessibilityAnnotationFieldType
{
  v2 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v3 = [v2 valueForAnnotationKey:*MEMORY[0x29EDBB900]];

  return v3;
}

- (id)_accessibilityAnnotationWidgetTextLabel
{
  v2 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v3 = [v2 valueForAnnotationKey:*MEMORY[0x29EDBB908]];

  return v3;
}

- (BOOL)_accessibilityIsButtonWidget
{
  v2 = [(PDFAnnotationAccessibilityElement *)self _accessibilityAnnotationFieldType];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDBB978]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = [(PDFAnnotationAccessibilityElement *)self accessibilityLabel];
  v6 = [(PDFAnnotationAccessibilityElement *)self accessibilityValue];
  [(PDFAnnotationAccessibilityElement *)self accessibilityFrame];
  v7 = NSStringFromCGRect(v12);
  v8 = [(PDFAnnotationAccessibilityElement *)self annotation];
  v9 = [v3 stringWithFormat:@"%@[%p] %@, %@ : %@\n\tAnnotation: %@", v4, self, v5, v6, v7, v8];

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