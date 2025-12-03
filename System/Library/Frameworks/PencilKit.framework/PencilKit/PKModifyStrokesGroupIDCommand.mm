@interface PKModifyStrokesGroupIDCommand
+ (id)commandForModifyingStrokes:(id)strokes drawing:(id)drawing groupID:(id)d actionName:(id)name;
- (PKModifyStrokesGroupIDCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name groupID:(id)iD oldGroupID:(id)groupID;
- (id)applyToDrawingReturnInverted:(id)inverted;
- (id)description;
- (id)invertedInDrawing:(id)drawing;
- (void)applyToDrawing:(id)drawing;
@end

@implementation PKModifyStrokesGroupIDCommand

+ (id)commandForModifyingStrokes:(id)strokes drawing:(id)drawing groupID:(id)d actionName:(id)name
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  dCopy = d;
  nameCopy = name;
  firstObject = [strokesCopy firstObject];
  _groupID = [firstObject _groupID];

  v15 = [PKModifyStrokesGroupIDCommand alloc];
  uuid = [drawingCopy uuid];
  v17 = [(PKModifyStrokesGroupIDCommand *)v15 initWithStrokes:strokesCopy drawingUUID:uuid actionName:nameCopy groupID:dCopy oldGroupID:_groupID];

  return v17;
}

- (PKModifyStrokesGroupIDCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name groupID:(id)iD oldGroupID:(id)groupID
{
  strokesCopy = strokes;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  groupIDCopy = groupID;
  v21.receiver = self;
  v21.super_class = PKModifyStrokesGroupIDCommand;
  v17 = [(PKUndoCommand *)&v21 initWithDrawingUUID:dCopy actionName:nameCopy changesVisibleStrokes:0];
  if (v17)
  {
    v18 = [strokesCopy copy];
    strokes = v17->_strokes;
    v17->_strokes = v18;

    objc_storeStrong(&v17->_groupID, iD);
    objc_storeStrong(&v17->_oldGroupID, groupID);
  }

  return v17;
}

- (id)invertedInDrawing:(id)drawing
{
  v4 = [PKModifyStrokesGroupIDCommand alloc];
  strokes = [(PKModifyStrokesGroupIDCommand *)self strokes];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  actionName = [(PKUndoCommand *)self actionName];
  v8 = [(PKModifyStrokesGroupIDCommand *)v4 initWithStrokes:strokes drawingUUID:drawingUUID actionName:actionName groupID:self->_oldGroupID oldGroupID:self->_groupID];

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
    [drawingCopy setStrokes:self->_strokes groupID:self->_groupID];
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
    groupID = self->_groupID;
    actionName = [(PKUndoCommand *)self actionName];
    v11 = [invertedCopy undoableSetStrokes:strokes groupID:groupID actionName:actionName];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  groupID = [(PKModifyStrokesGroupIDCommand *)self groupID];
  oldGroupID = [(PKModifyStrokesGroupIDCommand *)self oldGroupID];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  strokes = [(PKModifyStrokesGroupIDCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p groupID=%@ (old groupID=%@) drawing=%@ %@>", v5, self, groupID, oldGroupID, drawingUUID, strokes];

  return v10;
}

@end