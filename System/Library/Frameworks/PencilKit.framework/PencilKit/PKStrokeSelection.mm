@interface PKStrokeSelection
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier drawingClass:(Class)class error:(id *)error;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)strokeSelectionFromData:(id)data;
+ (id)strokeSelectionFromData:(id)data forDrawingClass:(Class)class;
- (BOOL)containsBitmapData;
- (CGRect)bounds;
- (CGRect)boundsWithoutLasso;
- (CGRect)externalElementsBounds;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (NSString)description;
- (PKStrokeSelection)initWithStrokes:(id)strokes externalElements:(id)elements lassoStroke:(id)stroke drawing:(id)drawing;
- (PKStrokeSelection)initWithStrokes:(id)strokes lassoStroke:(id)stroke drawing:(id)drawing;
- (id)_newDrawingWithStrokes;
- (id)imageDataForSelection;
- (id)legacyStrokeDataForSelection;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)strokeDataForSelection;
- (int64_t)requiredContentVersion;
- (void)generateImageWithConfig:(id)config fullSizeConfig:(id)sizeConfig selectionInteraction:(id)interaction withCompletion:(id)completion;
- (void)newExternalElementsCGImageFromCGImage:(CGImage *)image withConfig:(id)config selectionInteraction:(id)interaction renderImage:(BOOL)renderImage withCompletion:(id)completion;
@end

@implementation PKStrokeSelection

- (PKStrokeSelection)initWithStrokes:(id)strokes lassoStroke:(id)stroke drawing:(id)drawing
{
  v29 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  strokeCopy = stroke;
  drawingCopy = drawing;
  v27.receiver = self;
  v27.super_class = PKStrokeSelection;
  v11 = [(PKStrokeSelection *)&v27 init];
  if (v11)
  {
    v12 = [strokesCopy copy];
    strokes = v11->_strokes;
    v11->_strokes = v12;

    objc_storeStrong(&v11->_lassoStroke, stroke);
    objc_storeStrong(&v11->_drawing, drawing);
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v11->_strokes;
    v16 = [(NSOrderedSet *)v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          _strokeUUID = [*(*(&v23 + 1) + 8 * v19) _strokeUUID];
          [(NSSet *)v14 addObject:_strokeUUID];

          ++v19;
        }

        while (v17 != v19);
        v17 = [(NSOrderedSet *)v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v17);
    }

    strokeIdentifiers = v11->_strokeIdentifiers;
    v11->_strokeIdentifiers = v14;
  }

  return v11;
}

- (PKStrokeSelection)initWithStrokes:(id)strokes externalElements:(id)elements lassoStroke:(id)stroke drawing:(id)drawing
{
  elementsCopy = elements;
  v11 = [(PKStrokeSelection *)self initWithStrokes:strokes lassoStroke:stroke drawing:drawing];
  if (v11)
  {
    v12 = [elementsCopy copy];
    externalElements = v11->_externalElements;
    v11->_externalElements = v12;
  }

  return v11;
}

- (int64_t)requiredContentVersion
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_strokes;
  v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      requiredContentVersion = [*(*(&v10 + 1) + 8 * v7) requiredContentVersion];
      if (v6 <= requiredContentVersion)
      {
        v6 = requiredContentVersion;
      }

      if (v6 == 4)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (CGRect)bounds
{
  [(PKStrokeSelection *)self boundsWithoutLasso];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  lassoStroke = self->_lassoStroke;
  if (lassoStroke)
  {
    [(PKStroke *)lassoStroke _bounds];
    v23.origin.x = v12;
    v23.origin.y = v13;
    v23.size.width = v14;
    v23.size.height = v15;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectUnion(v20, v23);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)boundsWithoutLasso
{
  v25 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_strokes;
  v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v20 + 1) + 8 * v11) _bounds];
        v30.origin.x = v12;
        v30.origin.y = v13;
        v30.size.width = v14;
        v30.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v30);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(PKStrokeSelection *)self externalElementsBounds];
  v31.origin.x = v16;
  v31.origin.y = v17;
  v31.size.width = v18;
  v31.size.height = v19;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  return CGRectUnion(v28, v31);
}

- (CGRect)externalElementsBounds
{
  v24 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_externalElements;
  v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v10) boundingBox];
        v28.origin.x = v11;
        v28.origin.y = v12;
        v28.size.width = v13;
        v28.size.height = v14;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.drawing";
  v4[1] = @"com.apple.pencilkit.strokes";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  dataCopy = data;
  v9 = [PKStrokeSelection objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy drawingClass:objc_opt_class() error:error];

  return v9;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier drawingClass:(Class)class error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  if (([identifierCopy isEqual:@"com.apple.pencilkit.strokes"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqual:", @"com.apple.drawing"))
  {
    v10 = [PKStrokeSelection strokeSelectionFromData:dataCopy forDrawingClass:class];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"com.apple.drawing"];
  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E69DCAB8] writableTypeIdentifiersForItemProvider];
  [array addObjectsFromArray:writableTypeIdentifiersForItemProvider];

  identifier = [*MEMORY[0x1E6983060] identifier];
  [array addObject:identifier];

  return array;
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"com.apple.drawing"];
  if (![(PKStrokeSelection *)self containsBitmapData])
  {
    [array addObject:@"com.apple.pencilkit.strokes"];
  }

  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E69DCAB8] writableTypeIdentifiersForItemProvider];
  [array addObjectsFromArray:writableTypeIdentifiersForItemProvider];

  return array;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqual:@"com.apple.drawing"])
  {
    strokeDataForSelection = [(PKStrokeSelection *)self strokeDataForSelection];
LABEL_3:
    combinedImage = strokeDataForSelection;
    handlerCopy[2](handlerCopy, strokeDataForSelection, 0);
LABEL_4:

    goto LABEL_14;
  }

  if ([identifierCopy isEqual:@"com.apple.pencilkit.strokes"] && !-[PKStrokeSelection containsBitmapData](self, "containsBitmapData"))
  {
    strokeDataForSelection = [(PKStrokeSelection *)self legacyStrokeDataForSelection];
    goto LABEL_3;
  }

  readableTypeIdentifiersForItemProvider = [MEMORY[0x1E69DCAB8] readableTypeIdentifiersForItemProvider];
  v11 = [readableTypeIdentifiersForItemProvider containsObject:identifierCopy];

  if (v11)
  {
    strokeImage = self->_strokeImage;
    if (strokeImage)
    {
      fullSizeConfig = [(PKStrokeSelectionImage *)strokeImage fullSizeConfig];
      if (fullSizeConfig)
      {
        v14 = fullSizeConfig;
        fullSizeConfig2 = [(PKStrokeSelectionImage *)self->_strokeImage fullSizeConfig];
        config = [(PKStrokeSelectionImage *)self->_strokeImage config];
        v17 = [fullSizeConfig2 isEqual:config];

        if ((v17 & 1) == 0)
        {
          fullSizeConfig3 = [(PKStrokeSelectionImage *)self->_strokeImage fullSizeConfig];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __81__PKStrokeSelection_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
          v21[3] = &unk_1E82D8E08;
          v22 = identifierCopy;
          v23 = handlerCopy;
          [(PKStrokeSelection *)self generateImageWithConfig:fullSizeConfig3 fullSizeConfig:0 selectionInteraction:0 withCompletion:v21];

          goto LABEL_14;
        }
      }

      combinedImage = [(PKStrokeSelectionImage *)self->_strokeImage combinedImage];
      v18 = [combinedImage loadDataWithTypeIdentifier:identifierCopy forItemProviderCompletionHandler:handlerCopy];
      goto LABEL_4;
    }
  }

LABEL_14:

  return 0;
}

void __81__PKStrokeSelection_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 combinedImage];
  v3 = [v4 loadDataWithTypeIdentifier:*(a1 + 32) forItemProviderCompletionHandler:*(a1 + 40)];
}

- (id)imageDataForSelection
{
  combinedImage = [(PKStrokeSelectionImage *)self->_strokeImage combinedImage];
  v3 = UIImagePNGRepresentation(combinedImage);

  return v3;
}

- (id)_newDrawingWithStrokes
{
  v3 = objc_alloc(objc_opt_class());
  array = [(NSOrderedSet *)self->_strokes array];
  v5 = [v3 initWithStrokes:array fromDrawing:self->_drawing];

  if (self->_lassoStroke)
  {
    v6 = [v5 _addStroke:?];
    v7 = [v5 setStroke:v6 hidden:0];
  }

  return v5;
}

- (id)legacyStrokeDataForSelection
{
  if (self->_strokes && self->_drawing)
  {
    _newDrawingWithStrokes = [(PKStrokeSelection *)self _newDrawingWithStrokes];
    v3 = [_newDrawingWithStrokes serializeWithVersion:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)strokeDataForSelection
{
  if (self->_strokes && self->_drawing)
  {
    _newDrawingWithStrokes = [(PKStrokeSelection *)self _newDrawingWithStrokes];
    serializeTransiently = [_newDrawingWithStrokes serializeTransiently];
  }

  else
  {
    serializeTransiently = 0;
  }

  return serializeTransiently;
}

+ (id)strokeSelectionFromData:(id)data
{
  dataCopy = data;
  v5 = [self strokeSelectionFromData:dataCopy forDrawingClass:objc_opt_class()];

  return v5;
}

+ (id)strokeSelectionFromData:(id)data forDrawingClass:(Class)class
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v6 = [[class alloc] initWithData:dataCopy loadNonInkingStrokes:1 error:0];
    v7 = MEMORY[0x1E695DFA0];
    strokes = [v6 strokes];
    v23 = [v7 orderedSetWithArray:strokes];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v6;
    _rootStrokes = [v6 _rootStrokes];
    v10 = [_rootStrokes countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(_rootStrokes);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [v14 ink];
        identifier = [v15 identifier];
        v17 = [identifier isEqual:@"com.apple.ink.lasso"];

        if (v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [_rootStrokes countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = v14;

      if (!v18)
      {
        goto LABEL_14;
      }

      v19 = v23;
      v20 = v24;
      if ([v23 containsObject:v18])
      {
        [v23 removeObject:v18];
      }
    }

    else
    {
LABEL_10:

      v18 = 0;
LABEL_14:
      v19 = v23;
      v20 = v24;
    }

    v21 = [[PKStrokeSelection alloc] initWithStrokes:v19 lassoStroke:v18 drawing:0];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)containsBitmapData
{
  _newDrawingWithStrokes = [(PKStrokeSelection *)self _newDrawingWithStrokes];
  v3 = [_newDrawingWithStrokes _minimumSerializationVersion] > 1;

  return v3;
}

- (void)newExternalElementsCGImageFromCGImage:(CGImage *)image withConfig:(id)config selectionInteraction:(id)interaction renderImage:(BOOL)renderImage withCompletion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  configCopy = config;
  interactionCopy = interaction;
  completionCopy = completion;
  if (!image)
  {
    goto LABEL_13;
  }

  externalElements = [(PKStrokeSelection *)self externalElements];
  if (![externalElements count])
  {

    goto LABEL_13;
  }

  delegate = [interactionCopy delegate];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
LABEL_13:
    completionCopy[2](completionCopy, 0);
    goto LABEL_14;
  }

  renderImageCopy = renderImage;
  v27 = CGBitmapContextCreateForFlatteningImage();
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  externalElements2 = [(PKStrokeSelection *)self externalElements];
  reversedOrderedSet = [externalElements2 reversedOrderedSet];

  v21 = [reversedOrderedSet countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(reversedOrderedSet);
        }

        identifier = [*(*(&v34 + 1) + 8 * v24) identifier];
        [array addObject:identifier];

        ++v24;
      }

      while (v22 != v24);
      v22 = [reversedOrderedSet countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v22);
  }

  delegate2 = [interactionCopy delegate];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __118__PKStrokeSelection_newExternalElementsCGImageFromCGImage_withConfig_selectionInteraction_renderImage_withCompletion___block_invoke;
  v29[3] = &unk_1E82D8E30;
  v33 = renderImageCopy;
  imageCopy = image;
  v32 = v27;
  v30 = completionCopy;
  [delegate2 selectionInteraction:interactionCopy renderPreviewForElements:array inContext:v27 withConfig:configCopy inAttachment:0 withCompletion:v29];

LABEL_14:
}

uint64_t __118__PKStrokeSelection_newExternalElementsCGImageFromCGImage_withConfig_selectionInteraction_renderImage_withCompletion___block_invoke(uint64_t a1)
{
  Width = CGImageGetWidth(*(a1 + 40));
  Height = CGImageGetHeight(*(a1 + 40));
  if (*(a1 + 56))
  {
    v7.origin.x = 0.0;
    v7.origin.y = 0.0;
    v7.size.width = Width;
    v7.size.height = Height;
    CGContextDrawImage(*(a1 + 48), v7, *(a1 + 40));
  }

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = Width;
  v8.size.height = Height;
  CGContextClipToRect(*(a1 + 48), v8);
  CGBitmapContextCreateImage(*(a1 + 48));
  CGContextRelease(*(a1 + 48));
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)generateImageWithConfig:(id)config fullSizeConfig:(id)sizeConfig selectionInteraction:(id)interaction withCompletion:(id)completion
{
  configCopy = config;
  sizeConfigCopy = sizeConfig;
  interactionCopy = interaction;
  completionCopy = completion;
  sixChannel = [configCopy sixChannel];
  transparentBlending = [configCopy transparentBlending];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v18 = v17;

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__13;
  v66 = __Block_byref_object_dispose__13;
  v19 = [PKImageRenderer alloc];
  [configCopy imageSize];
  v67 = -[PKImageRenderer initWithSize:scale:renderQueue:sixChannelBlending:transparentBlending:extendedDynamicRange:](v19, "initWithSize:scale:renderQueue:sixChannelBlending:transparentBlending:extendedDynamicRange:", 0, sixChannel, transparentBlending, [configCopy extendedDynamicRange], v20, v21, v18);
  invertedColors = [configCopy invertedColors];
  [v63[5] setInvertColors:invertedColors];
  v23 = v63[5];
  [(PKStrokeSelection *)self strokes];
  if (sixChannel)
    v24 = {;
    array = [v24 array];
    [configCopy strokeBounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [configCopy scale];
    v35 = v34;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke;
    v55[3] = &unk_1E82D8E80;
    v56 = configCopy;
    v57 = sizeConfigCopy;
    selfCopy = self;
    v59 = interactionCopy;
    v61 = &v62;
    v60 = completionCopy;
    [v23 sixChannelCGRenderStrokes:array clippedToStrokeSpaceRect:v55 scale:v27 completion:{v29, v31, v33, v35}];

    v36 = v56;
  }

  else
    v37 = {;
    array2 = [v37 array];
    [configCopy strokeBounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [configCopy scale];
    v48 = v47;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_3;
    v49[3] = &unk_1E82D8ED0;
    v49[4] = self;
    v50 = configCopy;
    v51 = interactionCopy;
    v54 = &v62;
    v53 = completionCopy;
    v52 = sizeConfigCopy;
    [v23 renderCGStrokes:array2 clippedToStrokeSpaceRect:v49 scale:v40 completion:{v42, v44, v46, v48}];

    v36 = v50;
  }

  _Block_object_dispose(&v62, 8);
}

void __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [[PKStrokeSelectionImage alloc] initWithImage:0 config:*(a1 + 32) fullSizeConfig:*(a1 + 40)];
  if (a2)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
    [(PKStrokeSelectionImage *)v6 setAddImage:v7];
  }

  if (a3)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3];
    [(PKStrokeSelectionImage *)v6 setMulImage:v8];
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_2;
  v15[3] = &unk_1E82D8E58;
  v16 = v6;
  v14 = *(a1 + 64);
  v12 = v14;
  v17 = v14;
  v13 = v6;
  [v10 newExternalElementsCGImageFromCGImage:a2 withConfig:v9 selectionInteraction:v11 renderImage:0 withCompletion:v15];
}

void __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_2(uint64_t a1, CGImage *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x1E69DCAB8];
    [*(*(*(a1 + 48) + 8) + 40) scale];
    v5 = [v4 imageWithCGImage:a2 scale:0 orientation:?];
    [*(a1 + 32) setImage:v5];

    CGImageRelease(a2);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    *(v6 + 40) = 0;
  }
}

void __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_4;
  v7[3] = &unk_1E82D8EA8;
  v11 = *(a1 + 72);
  v12 = a2;
  v8 = v4;
  v10 = *(a1 + 64);
  v9 = *(a1 + 56);
  [v5 newExternalElementsCGImageFromCGImage:a2 withConfig:v8 selectionInteraction:v6 renderImage:1 withCompletion:v7];
}

void __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_4(uint64_t a1, CGImage *a2)
{
  v3 = *(a1 + 64);
  if (a2)
  {
    CGImageRelease(*(a1 + 64));
    v3 = a2;
LABEL_4:
    v5 = MEMORY[0x1E69DCAB8];
    [*(*(*(a1 + 56) + 8) + 40) scale];
    v9 = [v5 imageWithCGImage:v3 scale:0 orientation:?];
    goto LABEL_5;
  }

  if (v3)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:
  if ([*(a1 + 32) rotated])
  {
    v6 = [v9 pk_imageRotated90DegreesClockwise:0];

    v9 = v6;
  }

  CGImageRelease(v3);
  v7 = *(a1 + 48);
  v8 = [[PKStrokeSelectionImage alloc] initWithImage:v9 config:*(a1 + 32) fullSizeConfig:*(a1 + 40)];
  (*(v7 + 16))(v7, v8);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  strokeIdentifiers = [(PKStrokeSelection *)self strokeIdentifiers];
  v5 = [strokeIdentifiers count];
  externalElements = [(PKStrokeSelection *)self externalElements];
  v7 = [v3 stringWithFormat:@"<PKStrokeSelection: %p %ld strokes, %ld elements>", self, v5, objc_msgSend(externalElements, "count")];

  return v7;
}

@end