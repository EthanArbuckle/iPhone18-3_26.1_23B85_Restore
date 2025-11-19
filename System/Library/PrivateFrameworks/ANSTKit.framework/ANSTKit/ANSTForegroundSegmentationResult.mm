@interface ANSTForegroundSegmentationResult
+ (id)new;
- (ANSTForegroundSegmentationResult)init;
- (ANSTForegroundSegmentationResult)initWithMask:(__CVBuffer *)a3;
- (void)dealloc;
@end

@implementation ANSTForegroundSegmentationResult

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTForegroundSegmentationResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTForegroundSegmentationResult)initWithMask:(__CVBuffer *)a3
{
  v6.receiver = self;
  v6.super_class = ANSTForegroundSegmentationResult;
  v4 = [(ANSTResult *)&v6 _init];
  if (v4)
  {
    v4->_semanticMap = CVBufferRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_semanticMap);
  v3.receiver = self;
  v3.super_class = ANSTForegroundSegmentationResult;
  [(ANSTForegroundSegmentationResult *)&v3 dealloc];
}

@end