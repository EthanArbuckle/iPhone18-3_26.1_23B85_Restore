@interface CRLBoardItemFactoryObjCHelperSlicedStroke
- (CRLBoardItemFactoryObjCHelperSlicedStroke)initWithBezierPath:(id)path compactData:(id)data;
@end

@implementation CRLBoardItemFactoryObjCHelperSlicedStroke

- (CRLBoardItemFactoryObjCHelperSlicedStroke)initWithBezierPath:(id)path compactData:(id)data
{
  pathCopy = path;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = CRLBoardItemFactoryObjCHelperSlicedStroke;
  v9 = [(CRLBoardItemFactoryObjCHelperSlicedStroke *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bezierPath, path);
    objc_storeStrong(&v10->_compactData, data);
  }

  return v10;
}

@end