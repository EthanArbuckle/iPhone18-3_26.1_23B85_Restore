@interface WFOverlayTextAction
- (BOOL)strokeEnabled;
- (BOOL)useProportionalSizing;
- (CGRect)drawingRectForImage:(id)image;
- (double)boxWidth;
- (double)fontSize;
- (double)offset;
- (double)rotation;
- (double)strokeWidth;
- (double)xPosition;
- (double)yPosition;
- (id)font;
- (id)fontDescriptor;
- (id)outlinedTextAttributes;
- (id)paragraphStyle;
- (id)parameterKeysIgnoredForParameterSummary;
- (id)strokeColor;
- (id)strokeWidthPercentage;
- (id)text;
- (id)textAttributes;
- (id)textColor;
- (id)textPosition;
- (int64_t)textAlignment;
- (void)overlayImage:(id)image inContext:(id)context;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFOverlayTextAction

- (BOOL)useProportionalSizing
{
  v2 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFSizingMethod" ofClass:objc_opt_class()];
  v3 = [v2 isEqualToString:@"Proportional"];

  return v3;
}

- (id)strokeColor
{
  v3 = objc_opt_class();

  return [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextStrokeColor" ofClass:v3];
}

- (double)strokeWidth
{
  useProportionalSizing = [(WFOverlayTextAction *)self useProportionalSizing];
  v4 = objc_opt_class();
  if (useProportionalSizing)
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageTextStrokeWidth" ofClass:v4];
    [v5 floatValue];
    v7 = v6;
    [(WFOverlayTextAction *)self fontSize];
    v9 = v8 * v7;
  }

  else
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextStrokeWidth" ofClass:v4];
    [v5 floatValue];
    v9 = v10;
  }

  return v9;
}

- (double)rotation
{
  v2 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextRotation" ofClass:objc_opt_class()];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)textColor
{
  v3 = objc_opt_class();

  return [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextColor" ofClass:v3];
}

- (double)fontSize
{
  useProportionalSizing = [(WFOverlayTextAction *)self useProportionalSizing];
  v4 = objc_opt_class();
  if (useProportionalSizing)
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageFontSize" ofClass:v4];
    [v5 floatValue];
    v7 = v6;
    [(WFOverlayTextAction *)self imageWidth];
    v9 = v8 * v7;
  }

  else
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFFontSize" ofClass:v4];
    [v5 floatValue];
    v9 = v10;
  }

  return v9;
}

- (id)fontDescriptor
{
  v3 = objc_opt_class();

  return [(WFOverlayTextAction *)self parameterValueForKey:@"WFFont" ofClass:v3];
}

- (BOOL)strokeEnabled
{
  v2 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextOutlineEnabled" ofClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)offset
{
  if ([(WFOverlayTextAction *)self useProportionalSizing])
  {
    textPosition = [(WFOverlayTextAction *)self textPosition];
    if (WFTextPositionIsTopPosition(textPosition))
    {
    }

    else
    {
      textPosition2 = [(WFOverlayTextAction *)self textPosition];
      IsBottomPosition = WFTextPositionIsBottomPosition(textPosition2);

      if (!IsBottomPosition)
      {
        v4 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageTextOffset" ofClass:objc_opt_class()];
        [v4 floatValue];
        v10 = v12;
        [(WFOverlayTextAction *)self imageWidth];
        goto LABEL_8;
      }
    }

    v4 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageTextOffset" ofClass:objc_opt_class()];
    [v4 floatValue];
    v10 = v9;
    [(WFOverlayTextAction *)self imageHeight];
LABEL_8:
    v6 = v11 * v10;
    goto LABEL_9;
  }

  v4 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextOffset" ofClass:objc_opt_class()];
  [v4 floatValue];
  v6 = v5;
LABEL_9:

  return v6;
}

- (double)yPosition
{
  useProportionalSizing = [(WFOverlayTextAction *)self useProportionalSizing];
  v4 = objc_opt_class();
  if (useProportionalSizing)
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageTextY" ofClass:v4];
    [v5 floatValue];
    v7 = v6;
    [(WFOverlayTextAction *)self imageWidth];
    v9 = v8 * v7;
  }

  else
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextY" ofClass:v4];
    [v5 floatValue];
    v9 = v10;
  }

  return v9;
}

- (double)xPosition
{
  useProportionalSizing = [(WFOverlayTextAction *)self useProportionalSizing];
  v4 = objc_opt_class();
  if (useProportionalSizing)
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageTextX" ofClass:v4];
    [v5 floatValue];
    v7 = v6;
    [(WFOverlayTextAction *)self imageWidth];
    v9 = v8 * v7;
  }

  else
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextX" ofClass:v4];
    [v5 floatValue];
    v9 = v10;
  }

  return v9;
}

- (int64_t)textAlignment
{
  v2 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextAlignment" ofClass:objc_opt_class()];
  v3 = v2;
  if (v2 == @"Left")
  {
    goto LABEL_4;
  }

  if (!v2)
  {
LABEL_10:
    v5 = 1;
    goto LABEL_11;
  }

  v4 = [(__CFString *)v2 isEqualToString:@"Left"];

  if ((v4 & 1) == 0)
  {
    v6 = v3;
    if (v6 != @"Center")
    {
      v7 = v6;
      v8 = [(__CFString *)v6 isEqualToString:@"Center"];

      if ((v8 & 1) == 0)
      {
        v9 = v7;
        if (v9 == @"Right" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"Right"], v10, v11))
        {
          v5 = 2;
          goto LABEL_11;
        }
      }
    }

    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
LABEL_11:

  return v5;
}

- (id)textPosition
{
  v3 = objc_opt_class();

  return [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextPosition" ofClass:v3];
}

- (id)text
{
  v3 = objc_opt_class();

  return [(WFOverlayTextAction *)self parameterValueForKey:@"WFText" ofClass:v3];
}

- (id)parameterKeysIgnoredForParameterSummary
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"WFTextOutlineEnabled", @"WFFont", @"WFFontSize", @"WFPercentageFontSize", @"WFTextColor", @"WFTextRotation", @"WFTextStrokeWidth", @"WFPercentageTextStrokeWidth", @"WFTextStrokeColor", @"WFSizingMethod", @"WFTextAlignment", @"WFTextBoxWidth", @"WFPercentageTextBoxWidth", 0}];

  return v2;
}

- (id)font
{
  fontDescriptor = [(WFOverlayTextAction *)self fontDescriptor];
  [(WFOverlayTextAction *)self fontSize];
  v4 = [fontDescriptor fontWithSize:?];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v6 = getUIFontClass_softClass;
    v14 = getUIFontClass_softClass;
    if (!getUIFontClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getUIFontClass_block_invoke;
      v10[3] = &unk_278C222B8;
      v10[4] = &v11;
      __getUIFontClass_block_invoke(v10);
      v6 = v12[3];
    }

    v7 = v6;
    _Block_object_dispose(&v11, 8);
    [(WFOverlayTextAction *)self fontSize];
    v5 = [v6 systemFontOfSize:?];
  }

  v8 = v5;

  return v8;
}

- (id)strokeWidthPercentage
{
  [(WFOverlayTextAction *)self strokeWidth];
  v4 = v3;
  [(WFOverlayTextAction *)self fontSize];
  v7 = v4 / v5 * -100.0;
  v6 = MEMORY[0x277CCABB0];
  *&v7 = v7;

  return [v6 numberWithFloat:v7];
}

- (id)outlinedTextAttributes
{
  v28[2] = *MEMORY[0x277D85DE8];
  textAttributes = [(WFOverlayTextAction *)self textAttributes];
  v4 = [textAttributes mutableCopy];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v5 = getNSStrokeColorAttributeNameSymbolLoc_ptr;
  v25 = getNSStrokeColorAttributeNameSymbolLoc_ptr;
  if (!getNSStrokeColorAttributeNameSymbolLoc_ptr)
  {
    v6 = UIKitLibrary();
    v23[3] = dlsym(v6, "NSStrokeColorAttributeName");
    getNSStrokeColorAttributeNameSymbolLoc_ptr = v23[3];
    v5 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSStrokeColorAttributeName(void)"];
    [currentHandler handleFailureInFunction:v19 file:@"WFOverlayTextAction.m" lineNumber:22 description:{@"%s", dlerror()}];

    goto LABEL_12;
  }

  v7 = *v5;
  v26 = v7;
  strokeColor = [(WFOverlayTextAction *)self strokeColor];
  platformColor = [strokeColor platformColor];
  v28[0] = platformColor;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getNSStrokeWidthAttributeNameSymbolLoc_ptr;
  v25 = getNSStrokeWidthAttributeNameSymbolLoc_ptr;
  if (!getNSStrokeWidthAttributeNameSymbolLoc_ptr)
  {
    v11 = UIKitLibrary();
    v23[3] = dlsym(v11, "NSStrokeWidthAttributeName");
    getNSStrokeWidthAttributeNameSymbolLoc_ptr = v23[3];
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v10)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSStrokeWidthAttributeName(void)"];
    [currentHandler2 handleFailureInFunction:v21 file:@"WFOverlayTextAction.m" lineNumber:21 description:{@"%s", dlerror()}];

LABEL_12:
    __break(1u);
  }

  v27 = *v10;
  v12 = v27;
  strokeWidthPercentage = [(WFOverlayTextAction *)self strokeWidthPercentage];
  v28[1] = strokeWidthPercentage;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v26 count:2];
  [v4 addEntriesFromDictionary:v14];

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)textAttributes
{
  v31[3] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v3 = getNSForegroundColorAttributeNameSymbolLoc_ptr;
  v28 = getNSForegroundColorAttributeNameSymbolLoc_ptr;
  if (!getNSForegroundColorAttributeNameSymbolLoc_ptr)
  {
    v4 = UIKitLibrary();
    v26[3] = dlsym(v4, "NSForegroundColorAttributeName");
    getNSForegroundColorAttributeNameSymbolLoc_ptr = v26[3];
    v3 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSForegroundColorAttributeName(void)"];
    [currentHandler handleFailureInFunction:v20 file:@"WFOverlayTextAction.m" lineNumber:18 description:{@"%s", dlerror()}];

    goto LABEL_16;
  }

  v5 = *v3;
  v29[0] = v5;
  textColor = [(WFOverlayTextAction *)self textColor];
  platformColor = [textColor platformColor];
  v31[0] = platformColor;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v8 = getNSFontAttributeNameSymbolLoc_ptr;
  v28 = getNSFontAttributeNameSymbolLoc_ptr;
  if (!getNSFontAttributeNameSymbolLoc_ptr)
  {
    v9 = UIKitLibrary();
    v26[3] = dlsym(v9, "NSFontAttributeName");
    getNSFontAttributeNameSymbolLoc_ptr = v26[3];
    v8 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v8)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSFontAttributeName(void)"];
    [currentHandler2 handleFailureInFunction:v22 file:@"WFOverlayTextAction.m" lineNumber:19 description:{@"%s", dlerror()}];

    goto LABEL_16;
  }

  v10 = *v8;
  v29[1] = v10;
  font = [(WFOverlayTextAction *)self font];
  v31[1] = font;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v12 = getNSParagraphStyleAttributeNameSymbolLoc_ptr;
  v28 = getNSParagraphStyleAttributeNameSymbolLoc_ptr;
  if (!getNSParagraphStyleAttributeNameSymbolLoc_ptr)
  {
    v13 = UIKitLibrary();
    v26[3] = dlsym(v13, "NSParagraphStyleAttributeName");
    getNSParagraphStyleAttributeNameSymbolLoc_ptr = v26[3];
    v12 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v12)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSParagraphStyleAttributeName(void)"];
    [currentHandler3 handleFailureInFunction:v24 file:@"WFOverlayTextAction.m" lineNumber:20 description:{@"%s", dlerror()}];

LABEL_16:
    __break(1u);
  }

  v30 = *v12;
  v14 = v30;
  paragraphStyle = [(WFOverlayTextAction *)self paragraphStyle];
  v31[2] = paragraphStyle;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v29 count:3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)paragraphStyle
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getNSParagraphStyleClass_softClass;
  v13 = getNSParagraphStyleClass_softClass;
  if (!getNSParagraphStyleClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getNSParagraphStyleClass_block_invoke;
    v9[3] = &unk_278C222B8;
    v9[4] = &v10;
    __getNSParagraphStyleClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  defaultParagraphStyle = [v3 defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setAlignment:{-[WFOverlayTextAction textAlignment](self, "textAlignment")}];
  [v6 setLineBreakMode:0];
  v7 = [v6 copy];

  return v7;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [inputCopy generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_2;
    v9[3] = &unk_278C1C408;
    v10 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_6;
    v8[3] = &unk_278C21E70;
    v8[4] = v10;
    [v6 transformItemsUsingBlock:v9 completionHandler:v8];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_3;
  v9[3] = &unk_278C211A8;
  v10 = v5;
  v11 = v6;
  v9[4] = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  [v7 getFileRepresentation:v9 forType:0];
}

void __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WFImageSizeFromFile();
    v6 = *(a1 + 32);
    v5 = *(a1 + 48);
    v4 = *(a1 + 40);
    WFAsyncTransformedImageFromImage();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __50__WFOverlayTextAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v13 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CFC2F8];
    v8 = *(a1 + 32);
    v9 = a3;
    v10 = [v8 attributionSet];
    v11 = [v7 itemWithFile:v13 attributionSet:v10];
    (*(v6 + 16))(v6, v11, v9);
  }

  else
  {
    v12 = *(v6 + 16);
    v10 = a3;
    v12(v6, 0, v10);
  }
}

- (CGRect)drawingRectForImage:(id)image
{
  imageCopy = image;
  [imageCopy CGImageSize];
  v6 = v5;
  [imageCopy CGImageSize];
  v8 = v7;

  [(WFOverlayTextAction *)self boxWidth];
  v10 = v9;
  text = [(WFOverlayTextAction *)self text];
  if (v10 == 0.0)
  {
    textAttributes = [(WFOverlayTextAction *)self textAttributes];
    v18 = 1.79769313e308;
    v17 = text;
    v19 = 1.79769313e308;
    v20 = 2;
  }

  else
  {
    [(WFOverlayTextAction *)self boxWidth];
    v13 = v12;
    [(WFOverlayTextAction *)self imageHeight];
    v15 = v14;
    textAttributes = [(WFOverlayTextAction *)self textAttributes];
    v17 = text;
    v18 = v13;
    v19 = v15;
    v20 = 3;
  }

  [v17 boundingRectWithSize:v20 options:textAttributes attributes:0 context:{v18, v19}];
  v22 = v21;
  v24 = v23;

  textPosition = [(WFOverlayTextAction *)self textPosition];
  if (([textPosition isEqualToString:@"Top Left"] & 1) != 0 || objc_msgSend(textPosition, "isEqualToString:", @"Middle Left"))
  {

LABEL_7:
    [(WFOverlayTextAction *)self offset];
    v27 = v26 + 0.0;
    goto LABEL_8;
  }

  v41 = [textPosition isEqualToString:@"Bottom Left"];

  if (v41)
  {
    goto LABEL_7;
  }

  textPosition2 = [(WFOverlayTextAction *)self textPosition];
  if (([textPosition2 isEqualToString:@"Top Center"] & 1) != 0 || objc_msgSend(textPosition2, "isEqualToString:", @"Center"))
  {

LABEL_21:
    v27 = v6 * 0.5 - v22 * 0.5;
    goto LABEL_8;
  }

  v47 = [textPosition2 isEqualToString:@"Bottom Center"];

  if (v47)
  {
    goto LABEL_21;
  }

  textPosition3 = [(WFOverlayTextAction *)self textPosition];
  if (([textPosition3 isEqualToString:@"Top Right"] & 1) != 0 || objc_msgSend(textPosition3, "isEqualToString:", @"Middle Right"))
  {

LABEL_29:
    [(WFOverlayTextAction *)self offset];
    v27 = v6 - v22 - v49;
    goto LABEL_8;
  }

  v50 = [textPosition3 isEqualToString:@"Bottom Right"];

  v27 = 0.0;
  if (v50)
  {
    goto LABEL_29;
  }

LABEL_8:
  textPosition4 = [(WFOverlayTextAction *)self textPosition];
  IsTopPosition = WFTextPositionIsTopPosition(textPosition4);

  if (IsTopPosition)
  {
    [(WFOverlayTextAction *)self offset];
    v31 = v30 + 0.0;
    goto LABEL_14;
  }

  textPosition5 = [(WFOverlayTextAction *)self textPosition];
  if (([textPosition5 isEqualToString:@"Middle Left"] & 1) != 0 || objc_msgSend(textPosition5, "isEqualToString:", @"Center"))
  {

LABEL_13:
    v31 = (v8 - v24) * 0.5;
    goto LABEL_14;
  }

  v43 = [textPosition5 isEqualToString:@"Middle Right"];

  if (v43)
  {
    goto LABEL_13;
  }

  textPosition6 = [(WFOverlayTextAction *)self textPosition];
  IsBottomPosition = WFTextPositionIsBottomPosition(textPosition6);

  v31 = 0.0;
  if (IsBottomPosition)
  {
    [(WFOverlayTextAction *)self offset];
    v31 = v8 - v24 - v46;
  }

LABEL_14:
  textPosition7 = [(WFOverlayTextAction *)self textPosition];
  v34 = [textPosition7 isEqualToString:@"Custom Position"];

  if (v34)
  {
    [(WFOverlayTextAction *)self yPosition];
    v31 = v35 + 0.0;
    [(WFOverlayTextAction *)self xPosition];
    v27 = v36;
  }

  v37 = v27;
  v38 = v31;
  v39 = v22;
  v40 = v24;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (double)boxWidth
{
  useProportionalSizing = [(WFOverlayTextAction *)self useProportionalSizing];
  v4 = objc_opt_class();
  if (useProportionalSizing)
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFPercentageTextBoxWidth" ofClass:v4];
    [v5 floatValue];
    v7 = v6;
    [(WFOverlayTextAction *)self imageWidth];
    v9 = v8 * v7;
  }

  else
  {
    v5 = [(WFOverlayTextAction *)self parameterValueForKey:@"WFTextBoxWidth" ofClass:v4];
    [v5 floatValue];
    v9 = v10;
  }

  return v9;
}

- (void)overlayImage:(id)image inContext:(id)context
{
  contextCopy = context;
  imageCopy = image;
  [imageCopy CGImageSize];
  v8 = v7;
  [imageCopy CGImageSize];
  v10 = v9;
  [imageCopy CGImageSize];
  [(WFOverlayTextAction *)self setImageWidth:?];
  [imageCopy CGImageSize];
  [(WFOverlayTextAction *)self setImageHeight:v11];
  [(WFOverlayTextAction *)self drawingRectForImage:imageCopy];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [contextCopy becomeCurrent];
  [imageCopy drawInContext:contextCopy inRect:{0.0, 0.0, v8, v10}];

  v38.origin.x = v13;
  v38.origin.y = v15;
  v38.size.width = v17;
  v38.size.height = v19;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v13;
  v39.origin.y = v15;
  v39.size.width = v17;
  v39.size.height = v19;
  MidY = CGRectGetMidY(v39);
  v22 = contextCopy;
  CGContextSaveGState([contextCopy CGContext]);
  v23 = contextCopy;
  CGContextTranslateCTM([contextCopy CGContext], MidX, MidY);
  v24 = contextCopy;
  cGContext = [contextCopy CGContext];
  [(WFOverlayTextAction *)self rotation];
  CGContextRotateCTM(cGContext, v26 * 3.14159265 / 180.0);
  [(WFOverlayTextAction *)self boxWidth];
  if (v27 == 0.0)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  if ([(WFOverlayTextAction *)self strokeEnabled])
  {
    [(WFOverlayTextAction *)self strokeWidth];
    if (v29 != 0.0)
    {
      strokeColor = [(WFOverlayTextAction *)self strokeColor];

      if (strokeColor)
      {
        text = [(WFOverlayTextAction *)self text];
        outlinedTextAttributes = [(WFOverlayTextAction *)self outlinedTextAttributes];
        [text drawWithRect:v28 options:outlinedTextAttributes attributes:0 context:{v17 * -0.5, v19 * -0.5, v17, v19}];
      }
    }
  }

  text2 = [(WFOverlayTextAction *)self text];
  textAttributes = [(WFOverlayTextAction *)self textAttributes];
  [text2 drawWithRect:v28 options:textAttributes attributes:0 context:{v17 * -0.5, v19 * -0.5, v17, v19}];

  v35 = contextCopy;
  CGContextRestoreGState([contextCopy CGContext]);
  [contextCopy resignCurrent];
}

@end