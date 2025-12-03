@interface CRLShapeLayoutHelperFreehandDrawing
- (CGRect)aliasedAlignmentFrameForScale:(double)scale;
- (CGRect)boundsOfLineEndForHead:(BOOL)head transform:(CGAffineTransform *)transform;
- (CGRect)computeClippedPathBoundsWithTransform:(CGAffineTransform *)transform;
- (CGRect)computePathBounds;
- (CGRect)p_computePathBoundsWithTransform:(CGAffineTransform *)transform;
- (CRLShapeLayoutHelperFreehandDrawing)initWithShapeLayout:(id)layout;
- (id)p_possibleCopyOfPathUsingTransform:(CGAffineTransform *)transform;
@end

@implementation CRLShapeLayoutHelperFreehandDrawing

- (CRLShapeLayoutHelperFreehandDrawing)initWithShapeLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = CRLShapeLayoutHelperFreehandDrawing;
  v5 = [(CRLShapeLayoutHelperFreehandDrawing *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shapeLayout, layoutCopy);
    v7 = objc_opt_class();
    info = [layoutCopy info];
    v9 = sub_100013F00(v7, info);
    objc_storeWeak(&v6->_shapeInfo, v9);
  }

  return v6;
}

- (CGRect)computePathBounds
{
  v2 = *&CGAffineTransformIdentity.c;
  v7[0] = *&CGAffineTransformIdentity.a;
  v7[1] = v2;
  v7[2] = *&CGAffineTransformIdentity.tx;
  [(CRLShapeLayoutHelperFreehandDrawing *)self p_computePathBoundsWithTransform:v7];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)computeClippedPathBoundsWithTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v3;
  v8[2] = *&transform->tx;
  [(CRLShapeLayoutHelperFreehandDrawing *)self p_computePathBoundsWithTransform:v8];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_computePathBoundsWithTransform:(CGAffineTransform *)transform
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  stroke = [WeakRetained stroke];

  if (stroke && ![stroke isNullStroke])
  {
    v17 = objc_loadWeakRetained(&self->_shapeLayout);
    pencilKitStrokes = [v17 pencilKitStrokes];

    if (pencilKitStrokes)
    {
      v18 = *&transform->c;
      *&v35.a = *&transform->a;
      *&v35.c = v18;
      *&v35.tx = *&transform->tx;
      if (CGAffineTransformIsIdentity(&v35))
      {
        v19 = pencilKitStrokes;
      }

      else
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1005726F4;
        v31[3] = &unk_101845998;
        v26 = *&transform->c;
        v32 = *&transform->a;
        v33 = v26;
        v34 = *&transform->tx;
        v19 = [pencilKitStrokes crl_arrayByTransformingWithBlock:v31];
      }

      v21 = v19;
      [CRLPencilKitInkStroke boundsOfStrokes:v19];
    }

    else
    {
      v20 = *&transform->c;
      *&v35.a = *&transform->a;
      *&v35.c = v20;
      *&v35.tx = *&transform->tx;
      v21 = [(CRLShapeLayoutHelperFreehandDrawing *)self p_possibleCopyOfPathUsingTransform:&v35];
      [v21 bounds];
    }

    v10 = v22;
    v12 = v23;
    v14 = v24;
    v16 = v25;
  }

  else
  {
    v7 = *&transform->c;
    *&v35.a = *&transform->a;
    *&v35.c = v7;
    *&v35.tx = *&transform->tx;
    pencilKitStrokes = [(CRLShapeLayoutHelperFreehandDrawing *)self p_possibleCopyOfPathUsingTransform:&v35];
    [pencilKitStrokes bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v27 = v10;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)p_possibleCopyOfPathUsingTransform:(CGAffineTransform *)transform
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  path = [WeakRetained path];

  v6 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v6;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformIsIdentity(&v10))
  {
    v7 = [path copy];

    v8 = *&transform->c;
    *&v10.a = *&transform->a;
    *&v10.c = v8;
    *&v10.tx = *&transform->tx;
    [v7 transformUsingAffineTransform:&v10];
    path = v7;
  }

  return path;
}

- (CGRect)boundsOfLineEndForHead:(BOOL)head transform:(CGAffineTransform *)transform
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)scale
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  [WeakRetained alignmentFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end