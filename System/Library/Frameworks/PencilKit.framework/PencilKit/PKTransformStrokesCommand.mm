@interface PKTransformStrokesCommand
+ (id)commandForTransforming:(id)transforming drawing:(id)drawing strokeTransform:(CGAffineTransform *)transform;
+ (id)commandForTransforming:(id)transforming drawing:(id)drawing strokeTransforms:(id)transforms;
- (CGAffineTransform)strokeTransform;
- (PKTransformStrokesCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name strokeTransform:(CGAffineTransform *)transform;
- (PKTransformStrokesCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name strokeTransforms:(id)transforms;
- (id)description;
- (id)invertedInDrawing:(id)drawing;
- (void)applyToDrawing:(id)drawing;
@end

@implementation PKTransformStrokesCommand

+ (id)commandForTransforming:(id)transforming drawing:(id)drawing strokeTransform:(CGAffineTransform *)transform
{
  transformingCopy = transforming;
  drawingCopy = drawing;
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Transform Stroke" value:@"Transform Stroke" table:@"Localizable"];

  v11 = [PKTransformStrokesCommand alloc];
  uuid = [drawingCopy uuid];
  v13 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v13;
  v16[2] = *&transform->tx;
  v14 = [(PKTransformStrokesCommand *)v11 initWithStrokes:transformingCopy drawingUUID:uuid actionName:v10 strokeTransform:v16];

  return v14;
}

+ (id)commandForTransforming:(id)transforming drawing:(id)drawing strokeTransforms:(id)transforms
{
  transformingCopy = transforming;
  drawingCopy = drawing;
  transformsCopy = transforms;
  v10 = _PencilKitBundle();
  v11 = [v10 localizedStringForKey:@"Transform Strokes" value:@"Transform Strokes" table:@"Localizable"];

  v12 = [PKTransformStrokesCommand alloc];
  uuid = [drawingCopy uuid];
  v14 = [(PKTransformStrokesCommand *)v12 initWithStrokes:transformingCopy drawingUUID:uuid actionName:v11 strokeTransforms:transformsCopy];

  return v14;
}

- (PKTransformStrokesCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name strokeTransform:(CGAffineTransform *)transform
{
  strokesCopy = strokes;
  dCopy = d;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PKTransformStrokesCommand;
  v13 = [(PKUndoCommand *)&v19 initWithDrawingUUID:dCopy actionName:nameCopy];
  if (v13)
  {
    v14 = [strokesCopy copy];
    strokes = v13->_strokes;
    v13->_strokes = v14;

    v17 = *&transform->c;
    v16 = *&transform->tx;
    *&v13->_strokeTransform.a = *&transform->a;
    *&v13->_strokeTransform.c = v17;
    *&v13->_strokeTransform.tx = v16;
  }

  return v13;
}

- (PKTransformStrokesCommand)initWithStrokes:(id)strokes drawingUUID:(id)d actionName:(id)name strokeTransforms:(id)transforms
{
  strokesCopy = strokes;
  dCopy = d;
  nameCopy = name;
  transformsCopy = transforms;
  v18.receiver = self;
  v18.super_class = PKTransformStrokesCommand;
  v14 = [(PKUndoCommand *)&v18 initWithDrawingUUID:dCopy actionName:nameCopy];
  if (v14)
  {
    v15 = [strokesCopy copy];
    strokes = v14->_strokes;
    v14->_strokes = v15;

    objc_storeStrong(&v14->_strokeTransforms, transforms);
  }

  return v14;
}

- (id)invertedInDrawing:(id)drawing
{
  v28 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  strokeTransforms = self->_strokeTransforms;
  if (strokeTransforms)
  {
    strokes2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](strokeTransforms, "count")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_strokeTransforms;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          memset(&v26, 0, sizeof(v26));
          if (v11)
          {
            [v11 CGAffineTransformValue];
          }

          else
          {
            memset(&v25, 0, sizeof(v25));
          }

          CGAffineTransformInvert(&v26, &v25);
          v25 = v26;
          v12 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:&v25];
          [strokes2 addObject:v12];
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }

    v13 = [PKTransformStrokesCommand alloc];
    strokes = [(PKTransformStrokesCommand *)self strokes];
    drawingUUID = [(PKUndoCommand *)self drawingUUID];
    actionName = [(PKUndoCommand *)self actionName];
    v17 = [(PKTransformStrokesCommand *)v13 initWithStrokes:strokes drawingUUID:drawingUUID actionName:actionName strokeTransforms:strokes2];
  }

  else
  {
    v18 = [PKTransformStrokesCommand alloc];
    strokes2 = [(PKTransformStrokesCommand *)self strokes];
    strokes = [(PKUndoCommand *)self drawingUUID];
    drawingUUID = [(PKUndoCommand *)self actionName];
    v19 = *&self->_strokeTransform.c;
    *&v25.a = *&self->_strokeTransform.a;
    *&v25.c = v19;
    *&v25.tx = *&self->_strokeTransform.tx;
    CGAffineTransformInvert(&v26, &v25);
    v17 = [(PKTransformStrokesCommand *)v18 initWithStrokes:strokes2 drawingUUID:strokes actionName:drawingUUID strokeTransform:&v26];
  }

  return v17;
}

- (void)applyToDrawing:(id)drawing
{
  drawingCopy = drawing;
  uuid = [drawingCopy uuid];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  v7 = [uuid isEqual:drawingUUID];

  if (v7)
  {
    if (self->_strokeTransforms)
    {
      strokes = [(PKTransformStrokesCommand *)self strokes];
      [drawingCopy transformStrokes:strokes withTransforms:self->_strokeTransforms concat:1];
    }

    else
    {
      strokes = [(PKTransformStrokesCommand *)self strokes];
      v9 = *&self->_strokeTransform.c;
      v10[0] = *&self->_strokeTransform.a;
      v10[1] = v9;
      v10[2] = *&self->_strokeTransform.tx;
      [drawingCopy transformStrokes:strokes withTransform:v10 concat:1];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *&self->_strokeTransform.c;
  *&transform.a = *&self->_strokeTransform.a;
  *&transform.c = v6;
  *&transform.tx = *&self->_strokeTransform.tx;
  v7 = NSStringFromCGAffineTransform(&transform);
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  strokes = [(PKTransformStrokesCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p transform=%@ drawing=%@ %@>", v5, self, v7, drawingUUID, strokes];

  return v10;
}

- (CGAffineTransform)strokeTransform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

@end