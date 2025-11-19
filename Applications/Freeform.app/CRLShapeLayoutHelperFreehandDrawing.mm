@interface CRLShapeLayoutHelperFreehandDrawing
- (CGRect)aliasedAlignmentFrameForScale:(double)a3;
- (CGRect)boundsOfLineEndForHead:(BOOL)a3 transform:(CGAffineTransform *)a4;
- (CGRect)computeClippedPathBoundsWithTransform:(CGAffineTransform *)a3;
- (CGRect)computePathBounds;
- (CGRect)p_computePathBoundsWithTransform:(CGAffineTransform *)a3;
- (CRLShapeLayoutHelperFreehandDrawing)initWithShapeLayout:(id)a3;
- (id)p_possibleCopyOfPathUsingTransform:(CGAffineTransform *)a3;
@end

@implementation CRLShapeLayoutHelperFreehandDrawing

- (CRLShapeLayoutHelperFreehandDrawing)initWithShapeLayout:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLShapeLayoutHelperFreehandDrawing;
  v5 = [(CRLShapeLayoutHelperFreehandDrawing *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shapeLayout, v4);
    v7 = objc_opt_class();
    v8 = [v4 info];
    v9 = sub_100013F00(v7, v8);
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

- (CGRect)computeClippedPathBoundsWithTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v3;
  v8[2] = *&a3->tx;
  [(CRLShapeLayoutHelperFreehandDrawing *)self p_computePathBoundsWithTransform:v8];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_computePathBoundsWithTransform:(CGAffineTransform *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v6 = [WeakRetained stroke];

  if (v6 && ![v6 isNullStroke])
  {
    v17 = objc_loadWeakRetained(&self->_shapeLayout);
    v8 = [v17 pencilKitStrokes];

    if (v8)
    {
      v18 = *&a3->c;
      *&v35.a = *&a3->a;
      *&v35.c = v18;
      *&v35.tx = *&a3->tx;
      if (CGAffineTransformIsIdentity(&v35))
      {
        v19 = v8;
      }

      else
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1005726F4;
        v31[3] = &unk_101845998;
        v26 = *&a3->c;
        v32 = *&a3->a;
        v33 = v26;
        v34 = *&a3->tx;
        v19 = [v8 crl_arrayByTransformingWithBlock:v31];
      }

      v21 = v19;
      [CRLPencilKitInkStroke boundsOfStrokes:v19];
    }

    else
    {
      v20 = *&a3->c;
      *&v35.a = *&a3->a;
      *&v35.c = v20;
      *&v35.tx = *&a3->tx;
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
    v7 = *&a3->c;
    *&v35.a = *&a3->a;
    *&v35.c = v7;
    *&v35.tx = *&a3->tx;
    v8 = [(CRLShapeLayoutHelperFreehandDrawing *)self p_possibleCopyOfPathUsingTransform:&v35];
    [v8 bounds];
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

- (id)p_possibleCopyOfPathUsingTransform:(CGAffineTransform *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v5 = [WeakRetained path];

  v6 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v6;
  *&v10.tx = *&a3->tx;
  if (!CGAffineTransformIsIdentity(&v10))
  {
    v7 = [v5 copy];

    v8 = *&a3->c;
    *&v10.a = *&a3->a;
    *&v10.c = v8;
    *&v10.tx = *&a3->tx;
    [v7 transformUsingAffineTransform:&v10];
    v5 = v7;
  }

  return v5;
}

- (CGRect)boundsOfLineEndForHead:(BOOL)a3 transform:(CGAffineTransform *)a4
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

- (CGRect)aliasedAlignmentFrameForScale:(double)a3
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