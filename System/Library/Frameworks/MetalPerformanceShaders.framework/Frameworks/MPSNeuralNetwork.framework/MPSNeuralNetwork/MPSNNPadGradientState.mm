@interface MPSNNPadGradientState
+ (id)temporaryStateWithCommandBuffer:(id)a3;
- (MPSNNPadGradientState)initWithResource:(id)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNPadGradientState

- (MPSNNPadGradientState)initWithResource:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNNPadGradientState;
  result = [(MPSState *)&v4 initWithResource:a3];
  if (result)
  {
    result->_fwdPadBefore.y = 0;
    result->_fwdPadBefore.channel = 0;
    result->_fwdPadBefore.x = 0;
    result->_fwdPadAfter.y = 0;
    result->_fwdPadAfter.channel = 0;
    result->_fwdPadAfter.x = 0;
    result->_srcImgFcCount = 0;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MPSNNPadGradientState;
  result = objc_msgSendSuper2(&v4, sel_temporaryStateWithCommandBuffer_, a3);
  if (result)
  {
    *(result + 36) = 0;
    *(result + 37) = 0;
    *(result + 38) = 0;
    *(result + 39) = 0;
    *(result + 40) = 0;
    *(result + 41) = 0;
    *(result + 42) = 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNPadGradientState;
  v4 = [(MPSNNGradientState *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\npad before (x,y,ch) = (%lu, %lu, %lu)\npad after  (x,y,ch) = (%lu, %lu, %lu)\nsecondary source fc count = %lu\n", v6, v7, v8, v9, v10, v4, self->_fwdPadBefore.x, self->_fwdPadBefore.y, self->_fwdPadBefore.channel, self->_fwdPadAfter.x, self->_fwdPadAfter.y, self->_fwdPadAfter.channel, self->_srcImgFcCount);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSNNPadGradientState;
  [(MPSNNGradientState *)&v2 dealloc];
}

@end