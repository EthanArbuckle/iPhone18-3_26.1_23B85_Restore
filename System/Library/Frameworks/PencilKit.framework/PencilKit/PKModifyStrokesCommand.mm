@interface PKModifyStrokesCommand
+ (id)commandForErasingAllStrokesInDrawing:(id)a3;
+ (id)commandForErasingStrokes:(id)a3 drawing:(id)a4;
+ (id)commandForMakingStrokeVisible:(id)a3 drawing:(id)a4 hiding:(BOOL)a5;
+ (id)commandForMakingStrokesVisible:(id)a3 drawing:(id)a4 hiding:(BOOL)a5;
- (PKModifyStrokesCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 hiding:(BOOL)a6;
- (id)description;
- (id)invertedInDrawing:(id)a3;
- (void)applyToDrawing:(id)a3;
@end

@implementation PKModifyStrokesCommand

+ (id)commandForMakingStrokeVisible:(id)a3 drawing:(id)a4 hiding:(BOOL)a5
{
  v5 = a5;
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Stroke" value:@"Stroke" table:@"Localizable"];

  v11 = [PKModifyStrokesCommand alloc];
  v16[0] = v7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = [v8 uuid];
  v14 = [(PKModifyStrokesCommand *)v11 initWithStrokes:v12 drawingUUID:v13 actionName:v10 hiding:v5];

  return v14;
}

+ (id)commandForMakingStrokesVisible:(id)a3 drawing:(id)a4 hiding:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Added strokes" value:@"Added strokes" table:@"Localizable"];

  v11 = [PKModifyStrokesCommand alloc];
  v12 = [v8 uuid];
  v13 = [(PKModifyStrokesCommand *)v11 initWithStrokes:v7 drawingUUID:v12 actionName:v10 hiding:v5];

  return v13;
}

+ (id)commandForErasingAllStrokesInDrawing:(id)a3
{
  v3 = a3;
  v4 = _PencilKitBundle();
  v5 = [v4 localizedStringForKey:@"Erase All" value:@"Erase All" table:@"Localizable"];

  v6 = [PKModifyStrokesCommand alloc];
  v7 = [v3 strokes];
  v8 = [v3 uuid];
  v9 = [(PKModifyStrokesCommand *)v6 initWithStrokes:v7 drawingUUID:v8 actionName:v5 hiding:1];

  return v9;
}

+ (id)commandForErasingStrokes:(id)a3 drawing:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _PencilKitBundle();
  v8 = [v7 localizedStringForKey:@"Erase" value:@"Erase" table:@"Localizable"];

  v9 = [PKModifyStrokesCommand alloc];
  v10 = [v6 uuid];
  v11 = [(PKModifyStrokesCommand *)v9 initWithStrokes:v5 drawingUUID:v10 actionName:v8 hiding:1];

  return v11;
}

- (PKModifyStrokesCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 hiding:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = PKModifyStrokesCommand;
  v13 = [(PKUndoCommand *)&v17 initWithDrawingUUID:v11 actionName:v12];
  if (v13)
  {
    v14 = [v10 copy];
    strokes = v13->_strokes;
    v13->_strokes = v14;

    v13->_hide = a6;
  }

  return v13;
}

- (id)invertedInDrawing:(id)a3
{
  v4 = [(PKModifyStrokesCommand *)self hide];
  v5 = [PKModifyStrokesCommand alloc];
  v6 = [(PKModifyStrokesCommand *)self strokes];
  v7 = [(PKUndoCommand *)self drawingUUID];
  v8 = [(PKUndoCommand *)self actionName];
  v9 = [(PKModifyStrokesCommand *)v5 initWithStrokes:v6 drawingUUID:v7 actionName:v8 hiding:!v4];

  return v9;
}

- (void)applyToDrawing:(id)a3
{
  v8 = a3;
  v4 = [v8 uuid];
  v5 = [(PKUndoCommand *)self drawingUUID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(PKModifyStrokesCommand *)self strokes];
    [v8 setStrokes:v7 hidden:{-[PKModifyStrokesCommand hide](self, "hide")}];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKModifyStrokesCommand *)self hide];
  v7 = [(PKUndoCommand *)self drawingUUID];
  v8 = [(PKModifyStrokesCommand *)self strokes];
  v9 = [v3 stringWithFormat:@"<%@ %p hide=%d drawing=%@ %@>", v5, self, v6, v7, v8];

  return v9;
}

@end