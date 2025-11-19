@interface PKTransformStrokesCommand
+ (id)commandForTransforming:(id)a3 drawing:(id)a4 strokeTransform:(CGAffineTransform *)a5;
+ (id)commandForTransforming:(id)a3 drawing:(id)a4 strokeTransforms:(id)a5;
- (CGAffineTransform)strokeTransform;
- (PKTransformStrokesCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 strokeTransform:(CGAffineTransform *)a6;
- (PKTransformStrokesCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 strokeTransforms:(id)a6;
- (id)description;
- (id)invertedInDrawing:(id)a3;
- (void)applyToDrawing:(id)a3;
@end

@implementation PKTransformStrokesCommand

+ (id)commandForTransforming:(id)a3 drawing:(id)a4 strokeTransform:(CGAffineTransform *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Transform Stroke" value:@"Transform Stroke" table:@"Localizable"];

  v11 = [PKTransformStrokesCommand alloc];
  v12 = [v8 uuid];
  v13 = *&a5->c;
  v16[0] = *&a5->a;
  v16[1] = v13;
  v16[2] = *&a5->tx;
  v14 = [(PKTransformStrokesCommand *)v11 initWithStrokes:v7 drawingUUID:v12 actionName:v10 strokeTransform:v16];

  return v14;
}

+ (id)commandForTransforming:(id)a3 drawing:(id)a4 strokeTransforms:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _PencilKitBundle();
  v11 = [v10 localizedStringForKey:@"Transform Strokes" value:@"Transform Strokes" table:@"Localizable"];

  v12 = [PKTransformStrokesCommand alloc];
  v13 = [v8 uuid];
  v14 = [(PKTransformStrokesCommand *)v12 initWithStrokes:v7 drawingUUID:v13 actionName:v11 strokeTransforms:v9];

  return v14;
}

- (PKTransformStrokesCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 strokeTransform:(CGAffineTransform *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = PKTransformStrokesCommand;
  v13 = [(PKUndoCommand *)&v19 initWithDrawingUUID:v11 actionName:v12];
  if (v13)
  {
    v14 = [v10 copy];
    strokes = v13->_strokes;
    v13->_strokes = v14;

    v17 = *&a6->c;
    v16 = *&a6->tx;
    *&v13->_strokeTransform.a = *&a6->a;
    *&v13->_strokeTransform.c = v17;
    *&v13->_strokeTransform.tx = v16;
  }

  return v13;
}

- (PKTransformStrokesCommand)initWithStrokes:(id)a3 drawingUUID:(id)a4 actionName:(id)a5 strokeTransforms:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = PKTransformStrokesCommand;
  v14 = [(PKUndoCommand *)&v18 initWithDrawingUUID:v11 actionName:v12];
  if (v14)
  {
    v15 = [v10 copy];
    strokes = v14->_strokes;
    v14->_strokes = v15;

    objc_storeStrong(&v14->_strokeTransforms, a6);
  }

  return v14;
}

- (id)invertedInDrawing:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  strokeTransforms = self->_strokeTransforms;
  if (strokeTransforms)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](strokeTransforms, "count")}];
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
          [v6 addObject:v12];
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }

    v13 = [PKTransformStrokesCommand alloc];
    v14 = [(PKTransformStrokesCommand *)self strokes];
    v15 = [(PKUndoCommand *)self drawingUUID];
    v16 = [(PKUndoCommand *)self actionName];
    v17 = [(PKTransformStrokesCommand *)v13 initWithStrokes:v14 drawingUUID:v15 actionName:v16 strokeTransforms:v6];
  }

  else
  {
    v18 = [PKTransformStrokesCommand alloc];
    v6 = [(PKTransformStrokesCommand *)self strokes];
    v14 = [(PKUndoCommand *)self drawingUUID];
    v15 = [(PKUndoCommand *)self actionName];
    v19 = *&self->_strokeTransform.c;
    *&v25.a = *&self->_strokeTransform.a;
    *&v25.c = v19;
    *&v25.tx = *&self->_strokeTransform.tx;
    CGAffineTransformInvert(&v26, &v25);
    v17 = [(PKTransformStrokesCommand *)v18 initWithStrokes:v6 drawingUUID:v14 actionName:v15 strokeTransform:&v26];
  }

  return v17;
}

- (void)applyToDrawing:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(PKUndoCommand *)self drawingUUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    if (self->_strokeTransforms)
    {
      v8 = [(PKTransformStrokesCommand *)self strokes];
      [v4 transformStrokes:v8 withTransforms:self->_strokeTransforms concat:1];
    }

    else
    {
      v8 = [(PKTransformStrokesCommand *)self strokes];
      v9 = *&self->_strokeTransform.c;
      v10[0] = *&self->_strokeTransform.a;
      v10[1] = v9;
      v10[2] = *&self->_strokeTransform.tx;
      [v4 transformStrokes:v8 withTransform:v10 concat:1];
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
  v8 = [(PKUndoCommand *)self drawingUUID];
  v9 = [(PKTransformStrokesCommand *)self strokes];
  v10 = [v3 stringWithFormat:@"<%@ %p transform=%@ drawing=%@ %@>", v5, self, v7, v8, v9];

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