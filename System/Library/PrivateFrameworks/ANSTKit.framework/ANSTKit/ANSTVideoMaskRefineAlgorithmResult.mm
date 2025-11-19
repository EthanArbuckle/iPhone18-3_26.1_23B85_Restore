@interface ANSTVideoMaskRefineAlgorithmResult
+ (id)new;
- (ANSTVideoMaskRefineAlgorithmResult)init;
- (ANSTVideoMaskRefineAlgorithmResult)initWithSkinMask:(__CVBuffer *)a3 hairMask:(__CVBuffer *)a4 personMask:(__CVBuffer *)a5;
- (__CVBuffer)refinedMaskForSemanticCategory:(id)a3;
- (void)dealloc;
@end

@implementation ANSTVideoMaskRefineAlgorithmResult

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefineAlgorithmResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefineAlgorithmResult)initWithSkinMask:(__CVBuffer *)a3 hairMask:(__CVBuffer *)a4 personMask:(__CVBuffer *)a5
{
  v10.receiver = self;
  v10.super_class = ANSTVideoMaskRefineAlgorithmResult;
  v8 = [(ANSTResult *)&v10 _init];
  if (v8)
  {
    v8->_skinMask = CVPixelBufferRetain(a3);
    v8->_hairMask = CVPixelBufferRetain(a4);
    v8->_personMask = CVPixelBufferRetain(a5);
  }

  return v8;
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

- (__CVBuffer)refinedMaskForSemanticCategory:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (@"Skin" == v4 || (objc_msgSend_isEqualToString_(v4, v5, @"Skin") & 1) != 0)
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