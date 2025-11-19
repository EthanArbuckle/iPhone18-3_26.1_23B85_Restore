@interface CRLAdditionalTransformCoordinateSpace
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (CRLAdditionalTransformCoordinateSpace)initWithCoordinateSpace:(id)a3 identifier:(id)a4;
@end

@implementation CRLAdditionalTransformCoordinateSpace

- (CRLAdditionalTransformCoordinateSpace)initWithCoordinateSpace:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CRLAdditionalTransformCoordinateSpace;
  v9 = [(CRLAdditionalTransformCoordinateSpace *)&v19 init];
  if (v9)
  {
    if (!v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101378AB0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101378AD8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101378B88();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLAdditionalTransformCoordinateSpace initWithCoordinateSpace:identifier:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLAdditionalTransformCoordinateSpace.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:23 isFatal:0 description:"invalid nil value for '%{public}s'", "coordinateSpace"];
    }

    objc_storeStrong(&v9->_originalCoordinateSpace, a3);
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101378BB0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101378BD8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101378C88();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLAdditionalTransformCoordinateSpace initWithCoordinateSpace:identifier:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLAdditionalTransformCoordinateSpace.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:25 isFatal:0 description:"invalid nil value for '%{public}s'", "identifier"];
    }

    v16 = [v8 copy];
    identifier = v9->_identifier;
    v9->_identifier = v16;
  }

  return v9;
}

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(self, *&a2);

  [(CRLAdditionalTransformCoordinateSpace *)self convertRect:a4 toCoordinateSpace:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(self, *&a2);

  [(CRLAdditionalTransformCoordinateSpace *)self convertRect:a4 fromCoordinateSpace:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (v9 != self)
  {
    memset(&v22, 0, sizeof(v22));
    originalCoordinateSpace = self->_originalCoordinateSpace;
    if (originalCoordinateSpace)
    {
      [(CRLAdditionallyTransformedCoordinateSpace *)originalCoordinateSpace additionalTransformIntoCoordinateSpace:self];
      v11 = self->_originalCoordinateSpace;
    }

    else
    {
      v11 = 0;
    }

    v20 = v22;
    CGAffineTransformInvert(&v21, &v20);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24 = CGRectApplyAffineTransform(v23, &v21);
    [(CRLAdditionallyTransformedCoordinateSpace *)v11 convertRect:v9 toCoordinateSpace:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (v9 != self)
  {
    memset(&v15[1], 0, sizeof(CGAffineTransform));
    originalCoordinateSpace = self->_originalCoordinateSpace;
    if (originalCoordinateSpace)
    {
      [(CRLAdditionallyTransformedCoordinateSpace *)originalCoordinateSpace additionalTransformIntoCoordinateSpace:self];
      originalCoordinateSpace = self->_originalCoordinateSpace;
    }

    [(CRLAdditionallyTransformedCoordinateSpace *)originalCoordinateSpace convertRect:v9 fromCoordinateSpace:x, y, width, height];
    v15[0] = v15[1];
    v17 = CGRectApplyAffineTransform(v16, v15);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)bounds
{
  memset(&v4[1], 0, sizeof(CGAffineTransform));
  originalCoordinateSpace = self->_originalCoordinateSpace;
  if (originalCoordinateSpace)
  {
    [(CRLAdditionallyTransformedCoordinateSpace *)originalCoordinateSpace additionalTransformIntoCoordinateSpace:self];
    originalCoordinateSpace = self->_originalCoordinateSpace;
  }

  [(CRLAdditionallyTransformedCoordinateSpace *)originalCoordinateSpace bounds];
  v4[0] = v4[1];
  return CGRectApplyAffineTransform(v5, v4);
}

@end