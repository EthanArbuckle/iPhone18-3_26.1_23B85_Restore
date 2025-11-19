@interface CRLBoardItemFactoryObjCHelperSlicedStroke
- (CRLBoardItemFactoryObjCHelperSlicedStroke)initWithBezierPath:(id)a3 compactData:(id)a4;
@end

@implementation CRLBoardItemFactoryObjCHelperSlicedStroke

- (CRLBoardItemFactoryObjCHelperSlicedStroke)initWithBezierPath:(id)a3 compactData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLBoardItemFactoryObjCHelperSlicedStroke;
  v9 = [(CRLBoardItemFactoryObjCHelperSlicedStroke *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bezierPath, a3);
    objc_storeStrong(&v10->_compactData, a4);
  }

  return v10;
}

@end