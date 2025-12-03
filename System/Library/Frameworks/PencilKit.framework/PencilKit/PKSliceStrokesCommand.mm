@interface PKSliceStrokesCommand
- (PKSliceStrokesCommand)initWithDrawingUUID:(id)d actionName:(id)name substrokes:(id)substrokes strokesHidden:(id)hidden hiding:(BOOL)hiding;
- (id)description;
- (id)invertedInDrawing:(id)drawing;
- (void)applyToDrawing:(id)drawing;
@end

@implementation PKSliceStrokesCommand

- (PKSliceStrokesCommand)initWithDrawingUUID:(id)d actionName:(id)name substrokes:(id)substrokes strokesHidden:(id)hidden hiding:(BOOL)hiding
{
  hidingCopy = hiding;
  dCopy = d;
  nameCopy = name;
  substrokesCopy = substrokes;
  hiddenCopy = hidden;
  v20.receiver = self;
  v20.super_class = PKSliceStrokesCommand;
  v16 = [(PKModifyStrokesCommand *)&v20 initWithStrokes:hiddenCopy drawingUUID:dCopy actionName:nameCopy hiding:hidingCopy];
  if (v16)
  {
    v17 = [substrokesCopy copy];
    substrokes = v16->_substrokes;
    v16->_substrokes = v17;
  }

  return v16;
}

- (id)invertedInDrawing:(id)drawing
{
  v24 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  _rootStrokes = [drawingCopy _rootStrokes];
  v6 = [_rootStrokes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(_rootStrokes);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __43__PKSliceStrokesCommand_invertedInDrawing___block_invoke;
        v17[3] = &unk_1E82DA110;
        v17[4] = self;
        v18 = dictionary;
        [v9 _visitVisibleSubstrokes:v17 inDrawing:drawingCopy];
      }

      v6 = [_rootStrokes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = [PKSliceStrokesCommand alloc];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  actionName = [(PKUndoCommand *)self actionName];
  strokes = [(PKModifyStrokesCommand *)self strokes];
  v14 = [(PKSliceStrokesCommand *)v10 initWithDrawingUUID:drawingUUID actionName:actionName substrokes:dictionary strokesHidden:strokes hiding:[(PKModifyStrokesCommand *)self hide]^ 1];

  return v14;
}

uint64_t __43__PKSliceStrokesCommand_invertedInDrawing___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 48);
  v7 = [v5 _strokeUUID];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v5 _substrokes];
    v10 = *(a1 + 40);
    v11 = [v5 _strokeUUID];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v12 = [*(a1 + 40) count];
    if (v12 == [*(*(a1 + 32) + 48) count])
    {
      *a3 = 1;
    }
  }

  return 1;
}

- (void)applyToDrawing:(id)drawing
{
  drawingCopy = drawing;
  v9.receiver = self;
  v9.super_class = PKSliceStrokesCommand;
  [(PKModifyStrokesCommand *)&v9 applyToDrawing:drawingCopy];
  uuid = [drawingCopy uuid];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  v7 = [uuid isEqual:drawingUUID];

  if (v7)
  {
    substrokes = [(PKSliceStrokesCommand *)self substrokes];
    [drawingCopy setStrokeSubstrokes:substrokes];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  substrokes = [(PKSliceStrokesCommand *)self substrokes];
  hide = [(PKModifyStrokesCommand *)self hide];
  strokes = [(PKModifyStrokesCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p drawing=%@ %@ hide=%d %@>", v5, self, drawingUUID, substrokes, hide, strokes];

  return v10;
}

@end