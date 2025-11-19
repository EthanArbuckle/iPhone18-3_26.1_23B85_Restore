@interface CRLBrushStrokeStorageBezierPathContainer
- (BOOL)isEqual:(id)a3;
- (CRLBrushStrokeStorageBezierPathContainer)initWithOriginalPath:(id)a3 pathWithPossibleSmoothing:(id)a4;
- (unint64_t)hash;
@end

@implementation CRLBrushStrokeStorageBezierPathContainer

- (CRLBrushStrokeStorageBezierPathContainer)initWithOriginalPath:(id)a3 pathWithPossibleSmoothing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLBrushStrokeStorageBezierPathContainer;
  v9 = [(CRLBrushStrokeStorageBezierPathContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalPath, a3);
    objc_storeStrong(&v10->_pathWithPossibleSmoothing, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6 && (-[CRLBrushStrokeStorageBezierPathContainer originalPath](self, "originalPath"), v7 = objc_claimAutoreleasedReturnValue(), [v6 originalPath], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    v10 = [(CRLBrushStrokeStorageBezierPathContainer *)self pathWithPossibleSmoothing];
    v11 = [v6 pathWithPossibleSmoothing];
    v12 = [v10 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(CRLBrushStrokeStorageBezierPathContainer *)self originalPath];
  v4 = [v3 hash];
  v5 = [(CRLBrushStrokeStorageBezierPathContainer *)self pathWithPossibleSmoothing];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end