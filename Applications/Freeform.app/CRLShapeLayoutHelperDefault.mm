@interface CRLShapeLayoutHelperDefault
- (BOOL)shouldComputeSeparateClippedPathBounds;
- (CGRect)aliasedAlignmentFrameForScale:(double)a3;
- (CGRect)boundsOfLineEndForHead:(BOOL)a3 transform:(CGAffineTransform *)a4;
- (CGRect)computeClippedPathBoundsWithTransform:(CGAffineTransform *)a3;
- (CGRect)computePathBounds;
- (CRLShapeLayoutHelperDefault)initWithShapeLayout:(id)a3;
@end

@implementation CRLShapeLayoutHelperDefault

- (CRLShapeLayoutHelperDefault)initWithShapeLayout:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLShapeLayoutHelperDefault;
  v5 = [(CRLShapeLayoutHelperDefault *)&v11 init];
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

- (BOOL)shouldComputeSeparateClippedPathBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeInfo);
  v4 = [WeakRetained headLineEnd];

  if (v4 && ![v4 isNone])
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_shapeInfo);
    v6 = [v5 tailLineEnd];

    v7 = v6 && ![v6 isNone];
  }

  return v7;
}

- (CGRect)computePathBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v4 = [WeakRetained stroke];

  v5 = objc_loadWeakRetained(&self->_shapeLayout);
  v6 = [v5 path];
  [v6 boundsIncludingCRLStroke:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = objc_loadWeakRetained(&self->_shapeLayout);
  if ([v15 pathIsOpen])
  {
    v16 = [v4 supportsWidth];

    if (v16)
    {
      v34 = *&CGAffineTransformIdentity.c;
      v36 = *&CGAffineTransformIdentity.a;
      v35 = v36;
      v37 = v34;
      v38 = *&CGAffineTransformIdentity.tx;
      v33 = v38;
      [(CRLShapeLayoutHelperDefault *)self boundsOfLineEndForHead:1 transform:&v36];
      v44.origin.x = v17;
      v44.origin.y = v18;
      v44.size.width = v19;
      v44.size.height = v20;
      v39.origin.x = v8;
      v39.origin.y = v10;
      v39.size.width = v12;
      v39.size.height = v14;
      v40 = CGRectUnion(v39, v44);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      v36 = v35;
      v37 = v34;
      v38 = v33;
      [(CRLShapeLayoutHelperDefault *)self boundsOfLineEndForHead:0 transform:&v36];
      v45.origin.x = v25;
      v45.origin.y = v26;
      v45.size.width = v27;
      v45.size.height = v28;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v42 = CGRectUnion(v41, v45);
      v8 = v42.origin.x;
      v10 = v42.origin.y;
      v12 = v42.size.width;
      v14 = v42.size.height;
    }
  }

  else
  {
  }

  v29 = v8;
  v30 = v10;
  v31 = v12;
  v32 = v14;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)computeClippedPathBoundsWithTransform:(CGAffineTransform *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v6 = [WeakRetained clippedPathForLineEnds];
  v7 = [v6 copy];

  v8 = *&a3->c;
  v23[0] = *&a3->a;
  v23[1] = v8;
  v23[2] = *&a3->tx;
  [v7 transformUsingAffineTransform:v23];
  v9 = objc_loadWeakRetained(&self->_shapeLayout);
  v10 = [v9 stroke];
  [v7 boundsIncludingCRLStroke:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)boundsOfLineEndForHead:(BOOL)a3 transform:(CGAffineTransform *)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained strokeHeadLineEnd];
  }

  else
  {
    [WeakRetained strokeTailLineEnd];
  }
  v9 = ;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;

  if (v9 && ([v9 isNone] & 1) == 0)
  {
    v14 = objc_loadWeakRetained(&self->_shapeLayout);
    v15 = v14;
    if (v5)
    {
      [v14 headLineEndPoint];
      v17 = v16;
      v19 = v18;

      v20 = objc_loadWeakRetained(&self->_shapeLayout);
      [v20 headLineEndAngle];
    }

    else
    {
      [v14 tailLineEndPoint];
      v17 = v22;
      v19 = v23;

      v20 = objc_loadWeakRetained(&self->_shapeLayout);
      [v20 tailLineEndAngle];
    }

    v24 = v21;

    v25 = objc_loadWeakRetained(&self->_shapeLayout);
    [v25 lineEndScale:v5];
    v27 = v26;

    v28 = objc_loadWeakRetained(&self->_shapeLayout);
    v29 = [v28 stroke];
    v30 = *&a4->c;
    v39[0] = *&a4->a;
    v39[1] = v30;
    v39[2] = *&a4->tx;
    [v29 boundsForLineEnd:v9 atPoint:v39 atAngle:v17 withScale:v19 transform:{v24, v27}];
    x = v31;
    y = v32;
    width = v33;
    height = v34;
  }

  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)a3
{
  v58 = 0.0;
  v59 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v54 = 0;
  v55 = 0;
  [WeakRetained aliasPathForScale:&v55 adjustedStroke:&v54 adjustedPath:&v58 startDelta:&v56 endDelta:a3];
  v6 = v55;
  v7 = v54;

  v8 = objc_loadWeakRetained(&self->_shapeLayout);
  [v8 pathBounds];
  v10 = v9;
  v12 = v11;

  memset(&v53, 0, sizeof(v53));
  v13 = objc_loadWeakRetained(&self->_shapeLayout);
  v14 = v13;
  if (v13)
  {
    [v13 transform];
  }

  else
  {
    memset(&v53, 0, sizeof(v53));
  }

  v51 = v53;
  CGAffineTransformTranslate(&v52, &v51, -v10, -v12);
  v53 = v52;
  v15 = v6;
  v16 = [v7 copy];
  v52 = v53;
  [v16 transformUsingAffineTransform:&v52];
  [v16 boundsIncludingCRLStroke:v15];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = objc_loadWeakRetained(&self->_shapeLayout);
  v26 = [v25 pathIsOpen];

  if (v26)
  {
    v52 = v53;
    [(CRLShapeLayoutHelperDefault *)self boundsOfLineEndForHead:1 transform:&v52];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    CGAffineTransformMakeTranslation(&v52, v58, v59);
    v60.origin.x = v28;
    v60.origin.y = v30;
    v60.size.width = v32;
    v60.size.height = v34;
    v67 = CGRectApplyAffineTransform(v60, &v52);
    v61.origin.x = v18;
    v61.origin.y = v20;
    v61.size.width = v22;
    v61.size.height = v24;
    v62 = CGRectUnion(v61, v67);
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    v52 = v53;
    [(CRLShapeLayoutHelperDefault *)self boundsOfLineEndForHead:0 transform:&v52];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    CGAffineTransformMakeTranslation(&v52, v56, v57);
    v63.origin.x = v40;
    v63.origin.y = v42;
    v63.size.width = v44;
    v63.size.height = v46;
    v68 = CGRectApplyAffineTransform(v63, &v52);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v65 = CGRectUnion(v64, v68);
    v18 = v65.origin.x;
    v20 = v65.origin.y;
    v22 = v65.size.width;
    v24 = v65.size.height;
  }

  v47 = v18;
  v48 = v20;
  v49 = v22;
  v50 = v24;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

@end