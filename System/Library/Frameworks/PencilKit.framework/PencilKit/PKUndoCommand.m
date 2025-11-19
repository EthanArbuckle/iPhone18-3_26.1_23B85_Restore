@interface PKUndoCommand
- (PKUndoCommand)initWithDrawingUUID:(id)a3 actionName:(id)a4 changesVisibleStrokes:(BOOL)a5;
- (id)applyToDrawingReturnInverted:(id)a3;
- (void)registerWithUndoManager:(id)a3 target:(id)a4 selector:(SEL)a5;
@end

@implementation PKUndoCommand

- (PKUndoCommand)initWithDrawingUUID:(id)a3 actionName:(id)a4 changesVisibleStrokes:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PKUndoCommand;
  v11 = [(PKUndoCommand *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    actionName = v11->_actionName;
    v11->_actionName = v12;

    objc_storeStrong(&v11->_drawingUUID, a3);
    v11->_changesVisibleStrokes = a5;
  }

  return v11;
}

- (void)registerWithUndoManager:(id)a3 target:(id)a4 selector:(SEL)a5
{
  v8 = a4;
  v10 = a3;
  v9 = [(PKUndoCommand *)self actionName];
  [v10 setActionName:v9];

  [v10 registerUndoWithTarget:v8 selector:a5 object:self];
}

- (id)applyToDrawingReturnInverted:(id)a3
{
  v4 = a3;
  v5 = [(PKUndoCommand *)self invertedInDrawing:v4];
  [(PKUndoCommand *)self applyToDrawing:v4];

  return v5;
}

@end