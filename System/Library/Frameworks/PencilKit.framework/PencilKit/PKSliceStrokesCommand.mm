@interface PKSliceStrokesCommand
- (PKSliceStrokesCommand)initWithDrawingUUID:(id)a3 actionName:(id)a4 substrokes:(id)a5 strokesHidden:(id)a6 hiding:(BOOL)a7;
- (id)description;
- (id)invertedInDrawing:(id)a3;
- (void)applyToDrawing:(id)a3;
@end

@implementation PKSliceStrokesCommand

- (PKSliceStrokesCommand)initWithDrawingUUID:(id)a3 actionName:(id)a4 substrokes:(id)a5 strokesHidden:(id)a6 hiding:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = PKSliceStrokesCommand;
  v16 = [(PKModifyStrokesCommand *)&v20 initWithStrokes:v15 drawingUUID:v12 actionName:v13 hiding:v7];
  if (v16)
  {
    v17 = [v14 copy];
    substrokes = v16->_substrokes;
    v16->_substrokes = v17;
  }

  return v16;
}

- (id)invertedInDrawing:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v16 _rootStrokes];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __43__PKSliceStrokesCommand_invertedInDrawing___block_invoke;
        v17[3] = &unk_1E82DA110;
        v17[4] = self;
        v18 = v4;
        [v9 _visitVisibleSubstrokes:v17 inDrawing:v16];
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = [PKSliceStrokesCommand alloc];
  v11 = [(PKUndoCommand *)self drawingUUID];
  v12 = [(PKUndoCommand *)self actionName];
  v13 = [(PKModifyStrokesCommand *)self strokes];
  v14 = [(PKSliceStrokesCommand *)v10 initWithDrawingUUID:v11 actionName:v12 substrokes:v4 strokesHidden:v13 hiding:[(PKModifyStrokesCommand *)self hide]^ 1];

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

- (void)applyToDrawing:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSliceStrokesCommand;
  [(PKModifyStrokesCommand *)&v9 applyToDrawing:v4];
  v5 = [v4 uuid];
  v6 = [(PKUndoCommand *)self drawingUUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(PKSliceStrokesCommand *)self substrokes];
    [v4 setStrokeSubstrokes:v8];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKUndoCommand *)self drawingUUID];
  v7 = [(PKSliceStrokesCommand *)self substrokes];
  v8 = [(PKModifyStrokesCommand *)self hide];
  v9 = [(PKModifyStrokesCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p drawing=%@ %@ hide=%d %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

@end