@interface PKModifyStrokeInkCommand
+ (id)commandForModifyingStrokes:(id)strokes drawing:(id)drawing inks:(id)inks;
- (PKModifyStrokeInkCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name inks:(id)inks oldInks:(id)oldInks;
- (id)applyToDrawingReturnInverted:(id)inverted;
- (id)description;
- (id)invertedInDrawing:(id)drawing;
- (void)applyToDrawing:(id)drawing;
@end

@implementation PKModifyStrokeInkCommand

+ (id)commandForModifyingStrokes:(id)strokes drawing:(id)drawing inks:(id)inks
{
  v28 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  drawingCopy = drawing;
  inksCopy = inks;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = strokesCopy;
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
  uuid = [drawingCopy uuid];
  v21 = [(PKModifyStrokeInkCommand *)v19 initWithStrokes:v11 drawingUUID:uuid actionName:v18 inks:inksCopy oldInks:v10];

  return v21;
}

- (PKModifyStrokeInkCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name inks:(id)inks oldInks:(id)oldInks
{
  strokesCopy = strokes;
  inksCopy = inks;
  oldInksCopy = oldInks;
  v23.receiver = self;
  v23.super_class = PKModifyStrokeInkCommand;
  v15 = [(PKUndoCommand *)&v23 initWithDrawingUUID:d actionName:name];
  if (v15)
  {
    v16 = [strokesCopy copy];
    strokes = v15->_strokes;
    v15->_strokes = v16;

    v18 = [inksCopy copy];
    inks = v15->_inks;
    v15->_inks = v18;

    v20 = [oldInksCopy copy];
    oldInks = v15->_oldInks;
    v15->_oldInks = v20;
  }

  return v15;
}

- (id)invertedInDrawing:(id)drawing
{
  v4 = [PKModifyStrokeInkCommand alloc];
  strokes = [(PKModifyStrokeInkCommand *)self strokes];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  actionName = [(PKUndoCommand *)self actionName];
  v8 = [(PKModifyStrokeInkCommand *)v4 initWithStrokes:strokes drawingUUID:drawingUUID actionName:actionName inks:self->_oldInks oldInks:self->_inks];

  return v8;
}

- (void)applyToDrawing:(id)drawing
{
  drawingCopy = drawing;
  uuid = [drawingCopy uuid];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  v6 = [uuid isEqual:drawingUUID];

  if (v6)
  {
    strokes = self->_strokes;
    inks = [(PKModifyStrokeInkCommand *)self inks];
    [drawingCopy setStrokes:strokes inks:inks];
  }
}

- (id)applyToDrawingReturnInverted:(id)inverted
{
  invertedCopy = inverted;
  uuid = [invertedCopy uuid];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  v7 = [uuid isEqual:drawingUUID];

  if (v7)
  {
    strokes = self->_strokes;
    inks = [(PKModifyStrokeInkCommand *)self inks];
    v10 = [invertedCopy undoableSetStrokes:strokes inks:inks];
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
  inks = [(PKModifyStrokeInkCommand *)self inks];
  v7 = [inks objectAtIndexedSubscript:0];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  strokes = [(PKModifyStrokeInkCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p ink=%@ drawing=%@ %@>", v5, self, v7, drawingUUID, strokes];

  return v10;
}

@end