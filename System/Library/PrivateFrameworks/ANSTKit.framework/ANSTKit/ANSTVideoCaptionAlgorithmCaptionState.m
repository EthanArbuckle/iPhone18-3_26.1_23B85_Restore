@interface ANSTVideoCaptionAlgorithmCaptionState
+ (id)new;
- (ANSTVideoCaptionAlgorithmCaptionState)init;
- (ANSTVideoCaptionAlgorithmCaptionState)initWithHiddenTensorDescriptor:(id)a3;
@end

@implementation ANSTVideoCaptionAlgorithmCaptionState

- (ANSTVideoCaptionAlgorithmCaptionState)init
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

- (ANSTVideoCaptionAlgorithmCaptionState)initWithHiddenTensorDescriptor:(id)a3
{
  v7.receiver = self;
  v7.super_class = ANSTVideoCaptionAlgorithmCaptionState;
  v3 = [(ANSTVideoCaptionAlgorithmCaptionState *)&v7 init];
  v4 = v3;
  if (v3)
  {
    currentCaption = v3->_currentCaption;
    v3->_currentCaption = &stru_28431E810;
  }

  return v4;
}

@end