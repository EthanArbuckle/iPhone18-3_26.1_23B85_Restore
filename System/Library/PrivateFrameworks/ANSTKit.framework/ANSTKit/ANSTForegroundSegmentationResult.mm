@interface ANSTForegroundSegmentationResult
+ (id)new;
- (ANSTForegroundSegmentationResult)init;
- (ANSTForegroundSegmentationResult)initWithMask:(__CVBuffer *)mask;
- (void)dealloc;
@end

@implementation ANSTForegroundSegmentationResult

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTForegroundSegmentationResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTForegroundSegmentationResult)initWithMask:(__CVBuffer *)mask
{
  v6.receiver = self;
  v6.super_class = ANSTForegroundSegmentationResult;
  _init = [(ANSTResult *)&v6 _init];
  if (_init)
  {
    _init->_semanticMap = CVBufferRetain(mask);
  }

  return _init;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_semanticMap);
  v3.receiver = self;
  v3.super_class = ANSTForegroundSegmentationResult;
  [(ANSTForegroundSegmentationResult *)&v3 dealloc];
}

@end