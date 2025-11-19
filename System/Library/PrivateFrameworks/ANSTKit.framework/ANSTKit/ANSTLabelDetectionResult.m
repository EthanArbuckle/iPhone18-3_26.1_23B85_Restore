@interface ANSTLabelDetectionResult
+ (id)new;
- (ANSTLabelDetectionResult)init;
- (ANSTLabelDetectionResult)initWithLabels:(id)a3;
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
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTLabelDetectionResult)initWithLabels:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ANSTLabelDetectionResult;
  v6 = [(ANSTResult *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

@end