@interface PKSqueezePaletteViewLayoutFactory
- (PKSqueezePaletteViewLayoutFactory)init;
- (id)makeExpandedColorsLayoutWithContext:(void *)context colors:(void *)colors selectedColor:;
- (id)makeExpandedLassoToolLayoutWithContext:(uint64_t)context;
- (id)makeExpandedOptionsLayoutWithContext:(id *)context;
- (id)makeExpandedToolsLayoutWithContext:(void *)context drawingTools:(void *)tools selectedToolIndex:(void *)index visibleToolsCount:(void *)count delegate:;
- (id)makeExpandedUndoRedoLayoutWithContext:(int)context isLTR:;
- (uint64_t)makeInitialLayoutWithToolPicker:(void *)picker undoManager:(void *)manager paletteViewStartAngleProvider:(int)provider isLTR:;
- (void)makeExpandedEraserToolLayoutWithContext:(void *)context;
- (void)makeExpandedInkingToolLayoutWithContext:(void *)context;
@end

@implementation PKSqueezePaletteViewLayoutFactory

- (PKSqueezePaletteViewLayoutFactory)init
{
  v3 = objc_alloc_init(PKSqueezePaletteButtonFactory);
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = PKSqueezePaletteViewLayoutFactory;
    v5 = [(PKSqueezePaletteViewLayoutFactory *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_buttonFactory, v3);
    }
  }

  return self;
}

- (uint64_t)makeInitialLayoutWithToolPicker:(void *)picker undoManager:(void *)manager paletteViewStartAngleProvider:(int)provider isLTR:
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a2;
  pickerCopy = picker;
  managerCopy = manager;
  if (self)
  {
    _tools = [v9 _tools];
    v13 = [_tools count];

    if (v13)
    {
      v53 = pickerCopy;
      if (v9)
      {
        v14 = [v9[1] indexOfObjectPassingTest:&__block_literal_global_197];
        v15 = [v9 _indexOfTool:v9[16]];
        v16 = [v9 _indexOfTool:v9[6]];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v9[1] indexOfObjectPassingTest:&__block_literal_global_195];
        }

        v17 = [v9[1] indexOfObjectPassingTest:&__block_literal_global_199];
      }

      else
      {
        v16 = 0;
        v14 = 0;
        v15 = 0;
        v17 = 0;
      }

      _tools2 = [v9 _tools];
      v19 = [_tools2 mutableCopy];

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0;
      }

      else
      {
        v20 = [v19 objectAtIndex:v14];
      }

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 0;
      }

      else
      {
        v24 = [v19 objectAtIndex:v15];
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = 0;
      }

      else
      {
        v54 = [v19 objectAtIndex:v16];
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0;
      }

      else
      {
        v25 = [v19 objectAtIndex:v17];
      }

      if (v20)
      {
        [v19 removeObject:v20];
        [v19 insertObject:v20 atIndex:0];
        v26 = 1;
        if (!v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v26 = 0;
        if (!v24)
        {
          goto LABEL_29;
        }
      }

      if (v24 != v20)
      {
        [v19 removeObject:v24];
        [v19 insertObject:v24 atIndex:v26++];
      }

LABEL_29:
      if (v54 && v54 != v20)
      {
        [v19 removeObject:v54];
        [v19 insertObject:v54 atIndex:v26];
      }

      if (v25)
      {
        [v19 removeObject:v25];
        [v19 addObject:v25];
      }

      v48 = v9;
      if (v24)
      {
        v27 = [v19 indexOfObjectIdenticalTo:v24];
        if (v20)
        {
LABEL_36:
          v47 = [v19 indexOfObjectIdenticalTo:v20];
LABEL_39:
          v50 = v24;
          v51 = v20;
          v28 = [v19 count];
          v29 = *&PKSqueezePaletteVisibleToolsCount;
          if (*&PKSqueezePaletteVisibleToolsCount + 1.0 >= v28)
          {
            v29 = [v19 count];
          }

          v46 = v29;
          v52 = managerCopy;
          v30 = managerCopy[2](managerCopy, 0);
          v31 = v19;
          v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v31, "count")}];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v22 = v31;
          v33 = [v22 countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v56;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v56 != v35)
                {
                  objc_enumerationMutation(v22);
                }

                v37 = [(PKSqueezePaletteButtonFactory *)self[1] makeDrawingToolButtonWithTool:?];
                [v32 addObject:v37];
              }

              v34 = [v22 countByEnumeratingWithState:&v55 objects:v59 count:16];
            }

            while (v34);
          }

          v49 = v25;

          v38 = [(PKSqueezePaletteButtonFactory *)self[1] makeUndoButtonIsLTR:provider];
          v39 = [(PKSqueezePaletteButtonFactory *)self[1] makeRedoButtonIsLTR:provider];
          makeMoreButton = [(PKSqueezePaletteButtonFactory *)self[1] makeMoreButton];
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            color = 0;
          }

          else
          {
            v42 = [v22 objectAtIndex:v27];
            v43 = [v42 ink];
            color = [v43 color];
          }

          pickerCopy = v53;
          v44 = [(PKSqueezePaletteButtonFactory *)self[1] makeMulticolorButtonWithColor:color];
          self = [[PKSqueezePaletteViewMiniPaletteLayout alloc] initWithUndoButton:v38 redoButton:v39 drawingTools:v32 selectedToolIndex:v27 eraserToolIndex:v47 visibleToolsCount:v46 multicolorButton:v44 moreButton:v30 startAngle:makeMoreButton];

          v23 = v51;
          managerCopy = v52;
          v9 = v48;
          goto LABEL_52;
        }
      }

      else
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        if (v20)
        {
          goto LABEL_36;
        }
      }

      v47 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_39;
    }

    if (pickerCopy && (([pickerCopy canUndo] & 1) != 0 || objc_msgSend(pickerCopy, "canRedo")))
    {
      v21 = managerCopy[2](managerCopy, 1);
      v22 = [(PKSqueezePaletteButtonFactory *)self[1] makeUndoButtonIsLTR:provider];
      v23 = [(PKSqueezePaletteButtonFactory *)self[1] makeRedoButtonIsLTR:provider];
      self = [[PKSqueezePaletteViewUndoRedoLayout alloc] initWithUndoButton:v22 redoButton:v23 startAngle:v21];
LABEL_52:

      goto LABEL_53;
    }

    self = 0;
  }

LABEL_53:

  return self;
}

- (id)makeExpandedUndoRedoLayoutWithContext:(int)context isLTR:
{
  if (self)
  {
    v5 = a2;
    v6 = [PKSqueezePaletteViewExpandedUndoRedoLayout alloc];
    v7 = [(PKSqueezePaletteButtonFactory *)*(self + 8) sliderButtonConfigurationIsLTR:context];
    v8 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)&v6->super.isa initWithContext:v5 sliderButtonConfiguration:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeExpandedToolsLayoutWithContext:(void *)context drawingTools:(void *)tools selectedToolIndex:(void *)index visibleToolsCount:(void *)count delegate:
{
  if (self)
  {
    countCopy = count;
    contextCopy = context;
    v12 = a2;
    v13 = [[PKSqueezePaletteViewExpandedToolsLayout alloc] initWithContext:v12 drawingTools:contextCopy selectedToolIndex:tools visibleToolsCount:index];

    if (v13)
    {
      objc_storeWeak(v13 + 7, countCopy);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)makeExpandedColorsLayoutWithContext:(void *)context colors:(void *)colors selectedColor:
{
  v7 = a2;
  contextCopy = context;
  colorsCopy = colors;
  if (self)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(contextCopy, "count")}];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __94__PKSqueezePaletteViewLayoutFactory_makeExpandedColorsLayoutWithContext_colors_selectedColor___block_invoke;
    v18 = &unk_1E82DC238;
    selfCopy = self;
    v11 = v10;
    v20 = v11;
    v21 = colorsCopy;
    v22 = &v23;
    [contextCopy enumerateObjectsUsingBlock:&v15];
    makeBackButton = [self[1] makeBackButton];
    v13 = [PKSqueezePaletteViewExpandedColorsLayout alloc];
    self = [(PKSqueezePaletteViewExpandedColorsLayout *)&v13->super.isa initWithContext:v7 colorButtons:v11 selectedColorIndex:v24[3] backButton:makeBackButton];

    _Block_object_dispose(&v23, 8);
  }

  return self;
}

void __94__PKSqueezePaletteViewLayoutFactory_makeExpandedColorsLayoutWithContext_colors_selectedColor___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  v8 = [(PKSqueezePaletteButtonFactory *)v5 makeColorSwatchButtonWithColor:v6];
  [*(a1 + 40) addObject:?];
  v7 = [v6 color];

  LODWORD(v6) = DKUColorIsEqualToColorIgnoringOpacityWithTolerance([v7 CGColor], objc_msgSend(*(a1 + 48), "CGColor"), 1, 0.000000999999997);
  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = a3;
  }
}

- (id)makeExpandedOptionsLayoutWithContext:(id *)context
{
  contextCopy = context;
  if (context)
  {
    v3 = a2;
    v4 = [PKSqueezePaletteViewExpandedOptionsLayout alloc];
    makeBackButton = [contextCopy[1] makeBackButton];
    makeTextBoxButton = [contextCopy[1] makeTextBoxButton];
    makeSignatureButton = [contextCopy[1] makeSignatureButton];
    makeShapesButton = [contextCopy[1] makeShapesButton];
    v9 = PKIsDeviceLocked();
    if (v9)
    {
      makeStickersButton = 0;
    }

    else
    {
      makeStickersButton = [contextCopy[1] makeStickersButton];
    }

    makeGearButton = [contextCopy[1] makeGearButton];
    contextCopy = [(PKSqueezePaletteViewExpandedOptionsLayout *)&v4->super.isa initWithContext:v3 backButton:makeBackButton textBoxButton:makeTextBoxButton signatureButton:makeSignatureButton shapesButton:makeShapesButton stickersButton:makeStickersButton gearButton:makeGearButton];

    if (!v9)
    {
    }
  }

  return contextCopy;
}

- (void)makeExpandedInkingToolLayoutWithContext:(void *)context
{
  contextCopy = context;
  if (context)
  {
    v3 = a2;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 3);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = objc_opt_new();
    if (v6)
    {
      v8 = v6[102];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    _configuration = [v9 _configuration];
    strokeWeightsToButtonImages = [_configuration strokeWeightsToButtonImages];

    allKeys = [strokeWeightsToButtonImages allKeys];
    v13 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PKSqueezePaletteViewLayoutFactory_makeExpandedInkingToolLayoutWithContext___block_invoke;
    v17[3] = &unk_1E82DC260;
    v17[4] = contextCopy;
    v18 = v6;
    v19 = v7;
    v14 = v7;
    v15 = v6;
    [v13 enumerateObjectsUsingBlock:v17];
    contextCopy = [[PKSqueezePaletteViewExpandedInkingToolLayout alloc] initWithContext:v4 strokeWeightButtons:v14];
  }

  return contextCopy;
}

void __77__PKSqueezePaletteViewLayoutFactory_makeExpandedInkingToolLayoutWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  if (v3)
  {
    v6 = *(v3 + 816);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 floatValue];
  v22 = [(PKSqueezePaletteButtonFactory *)v4 makeStrokeWeightButtonForTool:v7 withWeight:v8];

  [*(a1 + 48) addObject:v22];
  [v5 floatValue];
  v10 = v9;

  v11 = v10;
  v12 = [*(a1 + 40) accessibilityLabel];
  [v22 setAccessibilityIdentifier:@"Weight"];
  if (v10 == -1.0 || (fabs(v11 + 1.0) >= 0.000000999999997 ? (v13 = v10 == 10.0) : (v13 = 1), v13 || (fabs(v11 + -10.0) >= 0.00000999999997 ? (v14 = v10 == 1.5) : (v14 = 1), v14 || fabs(v11 + -1.5) < 0.0000015)))
  {
    [v22 setAccessibilityLabel:@"Very Light"];
  }

  if (v10 == -0.5 || (fabs(v11 + 0.5) >= 0.000000499999999 ? (v15 = v10 == 20.0) : (v15 = 1), v15 || (fabs(v11 + -20.0) >= 0.0000199999999 ? (v16 = v10 == 2.5) : (v16 = 1), v16 || fabs(v11 + -2.5) < 0.00000249999999)))
  {
    [v22 setAccessibilityLabel:@"Light"];
  }

  if (v10 == 0.0 || v10 == 30.0 || (fabs(v11 + -30.0) >= 0.0000299999999 ? (v17 = v10 == 4.0) : (v17 = 1), v17 || fabs(v11 + -4.0) < 0.00000399999999))
  {
    [v22 setAccessibilityLabel:@"Medium"];
  }

  if (v10 == 0.5 || (fabs(v11 + -0.5) >= 0.000000499999999 ? (v18 = v10 == 60.0) : (v18 = 1), v18 || (fabs(v11 + -60.0) >= 0.0000599999998 ? (v19 = v10 == 8.0) : (v19 = 1), v19 || fabs(v11 + -8.0) < 0.00000799999998)))
  {
    [v22 setAccessibilityLabel:@"Heavy"];
  }

  if (v10 == 1.0 || (fabs(v11 + -1.0) >= 0.000000999999997 ? (v20 = v10 == 50.0) : (v20 = 1), v20 || fabs(v11 + -50.0) < 0.0000499999999 || v10 == 80.0 || fabs(v11 + -80.0) < 0.0000799999998 || v10 == 14.0 || fabs(v11 + -14.0) < 0.000014))
  {
    [v22 setAccessibilityLabel:@"Very Heavy"];
  }

  if (v10 == 40.0 || fabs(v11 + -40.0) < 0.0000399999999)
  {
    if ([v12 isEqual:@"Watercolor"])
    {
      v21 = @"Medium";
    }

    else
    {
      v21 = @"Heavy";
    }

    [v22 setAccessibilityLabel:v21];
  }
}

- (id)makeExpandedLassoToolLayoutWithContext:(uint64_t)context
{
  if (context)
  {
    v2 = a2;
    v3 = [[PKSqueezePaletteViewExpandedLassoToolLayout alloc] initWithContext:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)makeExpandedEraserToolLayoutWithContext:(void *)context
{
  contextCopy = context;
  if (context)
  {
    v3 = a2;
    v4 = objc_opt_new();
    makeObjectEraserButton = [(PKSqueezePaletteButtonFactory *)contextCopy[1] makeObjectEraserButton];
    [v4 addObject:makeObjectEraserButton];
    v6 = [[PKEraserTool alloc] initWithEraserType:1];
    _configuration = [(PKTool *)v6 _configuration];
    strokeWeightsToButtonImages = [_configuration strokeWeightsToButtonImages];

    allKeys = [strokeWeightsToButtonImages allKeys];
    v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PKSqueezePaletteViewLayoutFactory_makeExpandedEraserToolLayoutWithContext___block_invoke;
    v14[3] = &unk_1E82DC260;
    v14[4] = contextCopy;
    v15 = v6;
    v16 = v4;
    v11 = v4;
    v12 = v6;
    [v10 enumerateObjectsUsingBlock:v14];
    contextCopy = [[PKSqueezePaletteViewExpandedEraserToolLayout alloc] initWithContext:v3 attributeButtons:v11];
  }

  return contextCopy;
}

void __77__PKSqueezePaletteViewLayoutFactory_makeExpandedEraserToolLayoutWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  [a2 floatValue];
  v6 = [(PKSqueezePaletteButtonFactory *)v4 makeStrokeWeightButtonForTool:v3 withWeight:v5];
  [*(a1 + 48) addObject:v6];
}

@end