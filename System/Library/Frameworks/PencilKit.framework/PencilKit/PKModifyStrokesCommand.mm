@interface PKModifyStrokesCommand
+ (id)commandForErasingAllStrokesInDrawing:(id)drawing;
+ (id)commandForErasingStrokes:(id)strokes drawing:(id)drawing;
+ (id)commandForMakingStrokeVisible:(id)visible drawing:(id)drawing hiding:(BOOL)hiding;
+ (id)commandForMakingStrokesVisible:(id)visible drawing:(id)drawing hiding:(BOOL)hiding;
- (PKModifyStrokesCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name hiding:(BOOL)hiding;
- (id)description;
- (id)invertedInDrawing:(id)drawing;
- (void)applyToDrawing:(id)drawing;
@end

@implementation PKModifyStrokesCommand

+ (id)commandForMakingStrokeVisible:(id)visible drawing:(id)drawing hiding:(BOOL)hiding
{
  hidingCopy = hiding;
  v16[1] = *MEMORY[0x1E69E9840];
  visibleCopy = visible;
  drawingCopy = drawing;
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Stroke" value:@"Stroke" table:@"Localizable"];

  v11 = [PKModifyStrokesCommand alloc];
  v16[0] = visibleCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  uuid = [drawingCopy uuid];
  v14 = [(PKModifyStrokesCommand *)v11 initWithStrokes:v12 drawingUUID:uuid actionName:v10 hiding:hidingCopy];

  return v14;
}

+ (id)commandForMakingStrokesVisible:(id)visible drawing:(id)drawing hiding:(BOOL)hiding
{
  hidingCopy = hiding;
  visibleCopy = visible;
  drawingCopy = drawing;
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Added strokes" value:@"Added strokes" table:@"Localizable"];

  v11 = [PKModifyStrokesCommand alloc];
  uuid = [drawingCopy uuid];
  v13 = [(PKModifyStrokesCommand *)v11 initWithStrokes:visibleCopy drawingUUID:uuid actionName:v10 hiding:hidingCopy];

  return v13;
}

+ (id)commandForErasingAllStrokesInDrawing:(id)drawing
{
  drawingCopy = drawing;
  v4 = _PencilKitBundle();
  v5 = [v4 localizedStringForKey:@"Erase All" value:@"Erase All" table:@"Localizable"];

  v6 = [PKModifyStrokesCommand alloc];
  strokes = [drawingCopy strokes];
  uuid = [drawingCopy uuid];
  v9 = [(PKModifyStrokesCommand *)v6 initWithStrokes:strokes drawingUUID:uuid actionName:v5 hiding:1];

  return v9;
}

+ (id)commandForErasingStrokes:(id)strokes drawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  v7 = _PencilKitBundle();
  v8 = [v7 localizedStringForKey:@"Erase" value:@"Erase" table:@"Localizable"];

  v9 = [PKModifyStrokesCommand alloc];
  uuid = [drawingCopy uuid];
  v11 = [(PKModifyStrokesCommand *)v9 initWithStrokes:strokesCopy drawingUUID:uuid actionName:v8 hiding:1];

  return v11;
}

- (PKModifyStrokesCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name hiding:(BOOL)hiding
{
  strokesCopy = strokes;
  dCopy = d;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = PKModifyStrokesCommand;
  v13 = [(PKUndoCommand *)&v17 initWithDrawingUUID:dCopy actionName:nameCopy];
  if (v13)
  {
    v14 = [strokesCopy copy];
    strokes = v13->_strokes;
    v13->_strokes = v14;

    v13->_hide = hiding;
  }

  return v13;
}

- (id)invertedInDrawing:(id)drawing
{
  hide = [(PKModifyStrokesCommand *)self hide];
  v5 = [PKModifyStrokesCommand alloc];
  strokes = [(PKModifyStrokesCommand *)self strokes];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  actionName = [(PKUndoCommand *)self actionName];
  v9 = [(PKModifyStrokesCommand *)v5 initWithStrokes:strokes drawingUUID:drawingUUID actionName:actionName hiding:!hide];

  return v9;
}

- (void)applyToDrawing:(id)drawing
{
  drawingCopy = drawing;
  uuid = [drawingCopy uuid];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  v6 = [uuid isEqual:drawingUUID];

  if (v6)
  {
    strokes = [(PKModifyStrokesCommand *)self strokes];
    [drawingCopy setStrokes:strokes hidden:{-[PKModifyStrokesCommand hide](self, "hide")}];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  hide = [(PKModifyStrokesCommand *)self hide];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  strokes = [(PKModifyStrokesCommand *)self strokes];
  v9 = [v3 stringWithFormat:@"<%@ %p hide=%d drawing=%@ %@>", v5, self, hide, drawingUUID, strokes];

  return v9;
}

@end