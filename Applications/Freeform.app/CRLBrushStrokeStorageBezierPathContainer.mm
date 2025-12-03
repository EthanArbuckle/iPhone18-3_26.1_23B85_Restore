@interface CRLBrushStrokeStorageBezierPathContainer
- (BOOL)isEqual:(id)equal;
- (CRLBrushStrokeStorageBezierPathContainer)initWithOriginalPath:(id)path pathWithPossibleSmoothing:(id)smoothing;
- (unint64_t)hash;
@end

@implementation CRLBrushStrokeStorageBezierPathContainer

- (CRLBrushStrokeStorageBezierPathContainer)initWithOriginalPath:(id)path pathWithPossibleSmoothing:(id)smoothing
{
  pathCopy = path;
  smoothingCopy = smoothing;
  v12.receiver = self;
  v12.super_class = CRLBrushStrokeStorageBezierPathContainer;
  v9 = [(CRLBrushStrokeStorageBezierPathContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalPath, path);
    objc_storeStrong(&v10->_pathWithPossibleSmoothing, smoothing);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6 && (-[CRLBrushStrokeStorageBezierPathContainer originalPath](self, "originalPath"), v7 = objc_claimAutoreleasedReturnValue(), [v6 originalPath], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    pathWithPossibleSmoothing = [(CRLBrushStrokeStorageBezierPathContainer *)self pathWithPossibleSmoothing];
    pathWithPossibleSmoothing2 = [v6 pathWithPossibleSmoothing];
    v12 = [pathWithPossibleSmoothing isEqual:pathWithPossibleSmoothing2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  originalPath = [(CRLBrushStrokeStorageBezierPathContainer *)self originalPath];
  v4 = [originalPath hash];
  pathWithPossibleSmoothing = [(CRLBrushStrokeStorageBezierPathContainer *)self pathWithPossibleSmoothing];
  v6 = [pathWithPossibleSmoothing hash];

  return v6 ^ v4;
}

@end