@interface PKStrokeSelection
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 drawingClass:(Class)a5 error:(id *)a6;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)strokeSelectionFromData:(id)a3;
+ (id)strokeSelectionFromData:(id)a3 forDrawingClass:(Class)a4;
- (BOOL)containsBitmapData;
- (CGRect)bounds;
- (CGRect)boundsWithoutLasso;
- (CGRect)externalElementsBounds;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (NSString)description;
- (PKStrokeSelection)initWithStrokes:(id)a3 externalElements:(id)a4 lassoStroke:(id)a5 drawing:(id)a6;
- (PKStrokeSelection)initWithStrokes:(id)a3 lassoStroke:(id)a4 drawing:(id)a5;
- (id)_newDrawingWithStrokes;
- (id)imageDataForSelection;
- (id)legacyStrokeDataForSelection;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)strokeDataForSelection;
- (int64_t)requiredContentVersion;
- (void)generateImageWithConfig:(id)a3 fullSizeConfig:(id)a4 selectionInteraction:(id)a5 withCompletion:(id)a6;
- (void)newExternalElementsCGImageFromCGImage:(CGImage *)a3 withConfig:(id)a4 selectionInteraction:(id)a5 renderImage:(BOOL)a6 withCompletion:(id)a7;
@end

@implementation PKStrokeSelection

- (PKStrokeSelection)initWithStrokes:(id)a3 lassoStroke:(id)a4 drawing:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = PKStrokeSelection;
  v11 = [(PKStrokeSelection *)&v27 init];
  if (v11)
  {
    v12 = [v8 copy];
    strokes = v11->_strokes;
    v11->_strokes = v12;

    objc_storeStrong(&v11->_lassoStroke, a4);
    objc_storeStrong(&v11->_drawing, a5);
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

          v20 = [*(*(&v23 + 1) + 8 * v19) _strokeUUID];
          [(NSSet *)v14 addObject:v20];

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

- (PKStrokeSelection)initWithStrokes:(id)a3 externalElements:(id)a4 lassoStroke:(id)a5 drawing:(id)a6
{
  v10 = a4;
  v11 = [(PKStrokeSelection *)self initWithStrokes:a3 lassoStroke:a5 drawing:a6];
  if (v11)
  {
    v12 = [v10 copy];
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

      v8 = [*(*(&v10 + 1) + 8 * v7) requiredContentVersion];
      if (v6 <= v8)
      {
        v6 = v8;
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

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [PKStrokeSelection objectWithItemProviderData:v8 typeIdentifier:v7 drawingClass:objc_opt_class() error:a5];

  return v9;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 drawingClass:(Class)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (([v9 isEqual:@"com.apple.pencilkit.strokes"] & 1) != 0 || objc_msgSend(v9, "isEqual:", @"com.apple.drawing"))
  {
    v10 = [PKStrokeSelection strokeSelectionFromData:v8 forDrawingClass:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:@"com.apple.drawing"];
  v3 = [MEMORY[0x1E69DCAB8] writableTypeIdentifiersForItemProvider];
  [v2 addObjectsFromArray:v3];

  v4 = [*MEMORY[0x1E6983060] identifier];
  [v2 addObject:v4];

  return v2;
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 addObject:@"com.apple.drawing"];
  if (![(PKStrokeSelection *)self containsBitmapData])
  {
    [v3 addObject:@"com.apple.pencilkit.strokes"];
  }

  v4 = [MEMORY[0x1E69DCAB8] writableTypeIdentifiersForItemProvider];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:@"com.apple.drawing"])
  {
    v8 = [(PKStrokeSelection *)self strokeDataForSelection];
LABEL_3:
    v9 = v8;
    v7[2](v7, v8, 0);
LABEL_4:

    goto LABEL_14;
  }

  if ([v6 isEqual:@"com.apple.pencilkit.strokes"] && !-[PKStrokeSelection containsBitmapData](self, "containsBitmapData"))
  {
    v8 = [(PKStrokeSelection *)self legacyStrokeDataForSelection];
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E69DCAB8] readableTypeIdentifiersForItemProvider];
  v11 = [v10 containsObject:v6];

  if (v11)
  {
    strokeImage = self->_strokeImage;
    if (strokeImage)
    {
      v13 = [(PKStrokeSelectionImage *)strokeImage fullSizeConfig];
      if (v13)
      {
        v14 = v13;
        v15 = [(PKStrokeSelectionImage *)self->_strokeImage fullSizeConfig];
        v16 = [(PKStrokeSelectionImage *)self->_strokeImage config];
        v17 = [v15 isEqual:v16];

        if ((v17 & 1) == 0)
        {
          v19 = [(PKStrokeSelectionImage *)self->_strokeImage fullSizeConfig];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __81__PKStrokeSelection_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
          v21[3] = &unk_1E82D8E08;
          v22 = v6;
          v23 = v7;
          [(PKStrokeSelection *)self generateImageWithConfig:v19 fullSizeConfig:0 selectionInteraction:0 withCompletion:v21];

          goto LABEL_14;
        }
      }

      v9 = [(PKStrokeSelectionImage *)self->_strokeImage combinedImage];
      v18 = [v9 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
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
  v2 = [(PKStrokeSelectionImage *)self->_strokeImage combinedImage];
  v3 = UIImagePNGRepresentation(v2);

  return v3;
}

- (id)_newDrawingWithStrokes
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(NSOrderedSet *)self->_strokes array];
  v5 = [v3 initWithStrokes:v4 fromDrawing:self->_drawing];

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
    v2 = [(PKStrokeSelection *)self _newDrawingWithStrokes];
    v3 = [v2 serializeWithVersion:0];
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
    v2 = [(PKStrokeSelection *)self _newDrawingWithStrokes];
    v3 = [v2 serializeTransiently];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)strokeSelectionFromData:(id)a3
{
  v4 = a3;
  v5 = [a1 strokeSelectionFromData:v4 forDrawingClass:objc_opt_class()];

  return v5;
}

+ (id)strokeSelectionFromData:(id)a3 forDrawingClass:(Class)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [[a4 alloc] initWithData:v5 loadNonInkingStrokes:1 error:0];
    v7 = MEMORY[0x1E695DFA0];
    v8 = [v6 strokes];
    v23 = [v7 orderedSetWithArray:v8];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v6;
    v9 = [v6 _rootStrokes];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [v14 ink];
        v16 = [v15 identifier];
        v17 = [v16 isEqual:@"com.apple.ink.lasso"];

        if (v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  v2 = [(PKStrokeSelection *)self _newDrawingWithStrokes];
  v3 = [v2 _minimumSerializationVersion] > 1;

  return v3;
}

- (void)newExternalElementsCGImageFromCGImage:(CGImage *)a3 withConfig:(id)a4 selectionInteraction:(id)a5 renderImage:(BOOL)a6 withCompletion:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!a3)
  {
    goto LABEL_13;
  }

  v15 = [(PKStrokeSelection *)self externalElements];
  if (![v15 count])
  {

    goto LABEL_13;
  }

  v16 = [v13 delegate];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
LABEL_13:
    v14[2](v14, 0);
    goto LABEL_14;
  }

  v28 = a6;
  v27 = CGBitmapContextCreateForFlatteningImage();
  v18 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = [(PKStrokeSelection *)self externalElements];
  v20 = [v19 reversedOrderedSet];

  v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v34 + 1) + 8 * v24) identifier];
        [v18 addObject:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v22);
  }

  v26 = [v13 delegate];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __118__PKStrokeSelection_newExternalElementsCGImageFromCGImage_withConfig_selectionInteraction_renderImage_withCompletion___block_invoke;
  v29[3] = &unk_1E82D8E30;
  v33 = v28;
  v31 = a3;
  v32 = v27;
  v30 = v14;
  [v26 selectionInteraction:v13 renderPreviewForElements:v18 inContext:v27 withConfig:v12 inAttachment:0 withCompletion:v29];

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

- (void)generateImageWithConfig:(id)a3 fullSizeConfig:(id)a4 selectionInteraction:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 sixChannel];
  v15 = [v10 transparentBlending];
  v16 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v16 scale];
  v18 = v17;

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__13;
  v66 = __Block_byref_object_dispose__13;
  v19 = [PKImageRenderer alloc];
  [v10 imageSize];
  v67 = -[PKImageRenderer initWithSize:scale:renderQueue:sixChannelBlending:transparentBlending:extendedDynamicRange:](v19, "initWithSize:scale:renderQueue:sixChannelBlending:transparentBlending:extendedDynamicRange:", 0, v14, v15, [v10 extendedDynamicRange], v20, v21, v18);
  v22 = [v10 invertedColors];
  [v63[5] setInvertColors:v22];
  v23 = v63[5];
  [(PKStrokeSelection *)self strokes];
  if (v14)
    v24 = {;
    v25 = [v24 array];
    [v10 strokeBounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [v10 scale];
    v35 = v34;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke;
    v55[3] = &unk_1E82D8E80;
    v56 = v10;
    v57 = v11;
    v58 = self;
    v59 = v12;
    v61 = &v62;
    v60 = v13;
    [v23 sixChannelCGRenderStrokes:v25 clippedToStrokeSpaceRect:v55 scale:v27 completion:{v29, v31, v33, v35}];

    v36 = v56;
  }

  else
    v37 = {;
    v38 = [v37 array];
    [v10 strokeBounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [v10 scale];
    v48 = v47;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __96__PKStrokeSelection_generateImageWithConfig_fullSizeConfig_selectionInteraction_withCompletion___block_invoke_3;
    v49[3] = &unk_1E82D8ED0;
    v49[4] = self;
    v50 = v10;
    v51 = v12;
    v54 = &v62;
    v53 = v13;
    v52 = v11;
    [v23 renderCGStrokes:v38 clippedToStrokeSpaceRect:v49 scale:v40 completion:{v42, v44, v46, v48}];

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
  v4 = [(PKStrokeSelection *)self strokeIdentifiers];
  v5 = [v4 count];
  v6 = [(PKStrokeSelection *)self externalElements];
  v7 = [v3 stringWithFormat:@"<PKStrokeSelection: %p %ld strokes, %ld elements>", self, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end