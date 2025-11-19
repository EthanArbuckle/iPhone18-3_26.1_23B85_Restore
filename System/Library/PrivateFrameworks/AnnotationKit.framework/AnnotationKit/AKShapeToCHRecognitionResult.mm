@interface AKShapeToCHRecognitionResult
- (AKShapeToCHRecognitionResult)initWith:(int64_t)a3 result:(id)a4;
- (CGRect)doodlePathBoundsInInputView;
@end

@implementation AKShapeToCHRecognitionResult

- (AKShapeToCHRecognitionResult)initWith:(int64_t)a3 result:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AKShapeToCHRecognitionResult;
  v8 = [(AKShapeToCHRecognitionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_tag = a3;
    objc_storeStrong(&v8->_result, a4);
  }

  return v9;
}

- (CGRect)doodlePathBoundsInInputView
{
  objc_copyStruct(v6, &self->_doodlePathBoundsInInputView, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end