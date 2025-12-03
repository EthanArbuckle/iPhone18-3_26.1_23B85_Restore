@interface ANSTVideoMaskRefineAlgorithmResult
+ (id)new;
- (ANSTVideoMaskRefineAlgorithmResult)init;
- (ANSTVideoMaskRefineAlgorithmResult)initWithSkinMask:(__CVBuffer *)mask hairMask:(__CVBuffer *)hairMask personMask:(__CVBuffer *)personMask;
- (__CVBuffer)refinedMaskForSemanticCategory:(id)category;
- (void)dealloc;
@end

@implementation ANSTVideoMaskRefineAlgorithmResult

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefineAlgorithmResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefineAlgorithmResult)initWithSkinMask:(__CVBuffer *)mask hairMask:(__CVBuffer *)hairMask personMask:(__CVBuffer *)personMask
{
  v10.receiver = self;
  v10.super_class = ANSTVideoMaskRefineAlgorithmResult;
  _init = [(ANSTResult *)&v10 _init];
  if (_init)
  {
    _init->_skinMask = CVPixelBufferRetain(mask);
    _init->_hairMask = CVPixelBufferRetain(hairMask);
    _init->_personMask = CVPixelBufferRetain(personMask);
  }

  return _init;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_skinMask);
  CVPixelBufferRelease(self->_hairMask);
  CVPixelBufferRelease(self->_personMask);
  v3.receiver = self;
  v3.super_class = ANSTVideoMaskRefineAlgorithmResult;
  [(ANSTVideoMaskRefineAlgorithmResult *)&v3 dealloc];
}

- (__CVBuffer)refinedMaskForSemanticCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (@"Skin" == categoryCopy || (objc_msgSend_isEqualToString_(categoryCopy, v5, @"Skin") & 1) != 0)
  {
    v8 = &OBJC_IVAR___ANSTVideoMaskRefineAlgorithmResult__skinMask;
  }

  else if (@"Hair" == v6 || (objc_msgSend_isEqualToString_(v6, v7, @"Hair") & 1) != 0)
  {
    v8 = &OBJC_IVAR___ANSTVideoMaskRefineAlgorithmResult__hairMask;
  }

  else
  {
    if (@"Person" != v6 && !objc_msgSend_isEqualToString_(v6, v9, @"Person"))
    {
      v10 = 0;
      goto LABEL_11;
    }

    v8 = &OBJC_IVAR___ANSTVideoMaskRefineAlgorithmResult__personMask;
  }

  v10 = *(&self->super.super.isa + *v8);
LABEL_11:

  return v10;
}

@end