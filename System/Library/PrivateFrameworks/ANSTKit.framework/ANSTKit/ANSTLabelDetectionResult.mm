@interface ANSTLabelDetectionResult
+ (id)new;
- (ANSTLabelDetectionResult)init;
- (ANSTLabelDetectionResult)initWithLabels:(id)labels;
@end

@implementation ANSTLabelDetectionResult

- (ANSTLabelDetectionResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTLabelDetectionResult)initWithLabels:(id)labels
{
  labelsCopy = labels;
  v9.receiver = self;
  v9.super_class = ANSTLabelDetectionResult;
  _init = [(ANSTResult *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, labels);
  }

  return v7;
}

@end