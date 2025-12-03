@interface PKUndoCommand
- (PKUndoCommand)initWithDrawingUUID:(id)d actionName:(id)name changesVisibleStrokes:(BOOL)strokes;
- (id)applyToDrawingReturnInverted:(id)inverted;
- (void)registerWithUndoManager:(id)manager target:(id)target selector:(SEL)selector;
@end

@implementation PKUndoCommand

- (PKUndoCommand)initWithDrawingUUID:(id)d actionName:(id)name changesVisibleStrokes:(BOOL)strokes
{
  dCopy = d;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PKUndoCommand;
  v11 = [(PKUndoCommand *)&v15 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    actionName = v11->_actionName;
    v11->_actionName = v12;

    objc_storeStrong(&v11->_drawingUUID, d);
    v11->_changesVisibleStrokes = strokes;
  }

  return v11;
}

- (void)registerWithUndoManager:(id)manager target:(id)target selector:(SEL)selector
{
  targetCopy = target;
  managerCopy = manager;
  actionName = [(PKUndoCommand *)self actionName];
  [managerCopy setActionName:actionName];

  [managerCopy registerUndoWithTarget:targetCopy selector:selector object:self];
}

- (id)applyToDrawingReturnInverted:(id)inverted
{
  invertedCopy = inverted;
  v5 = [(PKUndoCommand *)self invertedInDrawing:invertedCopy];
  [(PKUndoCommand *)self applyToDrawing:invertedCopy];

  return v5;
}

@end