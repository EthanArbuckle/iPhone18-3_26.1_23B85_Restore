@interface PKModifyStrokeInkCommand
+ (id)commandForModifyingStrokes:(id)a3 drawing:(id)a4 inks:(id)a5;
- (PKModifyStrokeInkCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 inks:(id)a6 oldInks:(id)a7;
- (id)applyToDrawingReturnInverted:(id)a3;
- (id)description;
- (id)invertedInDrawing:(id)a3;
- (void)applyToDrawing:(id)a3;
@end

@implementation PKModifyStrokeInkCommand

+ (id)commandForModifyingStrokes:(id)a3 drawing:(id)a4 inks:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v23 + 1) + 8 * i) ink];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = _PencilKitBundle();
  v18 = [v17 localizedStringForKey:@"Modify Stroke Ink" value:@"Modify Stroke Ink" table:@"Localizable"];

  v19 = [PKModifyStrokeInkCommand alloc];
  v20 = [v8 uuid];
  v21 = [(PKModifyStrokeInkCommand *)v19 initWithStrokes:v11 drawingUUID:v20 actionName:v18 inks:v9 oldInks:v10];

  return v21;
}

- (PKModifyStrokeInkCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 inks:(id)a6 oldInks:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = PKModifyStrokeInkCommand;
  v15 = [(PKUndoCommand *)&v23 initWithDrawingUUID:a4 actionName:a5];
  if (v15)
  {
    v16 = [v12 copy];
    strokes = v15->_strokes;
    v15->_strokes = v16;

    v18 = [v13 copy];
    inks = v15->_inks;
    v15->_inks = v18;

    v20 = [v14 copy];
    oldInks = v15->_oldInks;
    v15->_oldInks = v20;
  }

  return v15;
}

- (id)invertedInDrawing:(id)a3
{
  v4 = [PKModifyStrokeInkCommand alloc];
  v5 = [(PKModifyStrokeInkCommand *)self strokes];
  v6 = [(PKUndoCommand *)self drawingUUID];
  v7 = [(PKUndoCommand *)self actionName];
  v8 = [(PKModifyStrokeInkCommand *)v4 initWithStrokes:v5 drawingUUID:v6 actionName:v7 inks:self->_oldInks oldInks:self->_inks];

  return v8;
}

- (void)applyToDrawing:(id)a3
{
  v9 = a3;
  v4 = [v9 uuid];
  v5 = [(PKUndoCommand *)self drawingUUID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    strokes = self->_strokes;
    v8 = [(PKModifyStrokeInkCommand *)self inks];
    [v9 setStrokes:strokes inks:v8];
  }
}

- (id)applyToDrawingReturnInverted:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(PKUndoCommand *)self drawingUUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    strokes = self->_strokes;
    v9 = [(PKModifyStrokeInkCommand *)self inks];
    v10 = [v4 undoableSetStrokes:strokes inks:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKModifyStrokeInkCommand *)self inks];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [(PKUndoCommand *)self drawingUUID];
  v9 = [(PKModifyStrokeInkCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p ink=%@ drawing=%@ %@>", v5, self, v7, v8, v9];

  return v10;
}

@end