@interface MPSNNPermuteGradientState
+ (id)temporaryStateWithCommandBuffer:(id)buffer;
- (MPSNNPermuteGradientState)initWithResource:(id)resource;
@end

@implementation MPSNNPermuteGradientState

- (MPSNNPermuteGradientState)initWithResource:(id)resource
{
  v4.receiver = self;
  v4.super_class = MPSNNPermuteGradientState;
  result = [(MPSState *)&v4 initWithResource:resource];
  if (result)
  {
    *result->_fwdPermuteOrder.dimensions = xmmword_239D909F0;
    *&result->_fwdPermuteOrder.dimensions[2] = unk_239D90A00;
    *result->_revPermuteOrder.dimensions = xmmword_239D909F0;
    *&result->_revPermuteOrder.dimensions[2] = unk_239D90A00;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)buffer
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MPSNNPermuteGradientState;
  result = objc_msgSendSuper2(&v4, sel_temporaryStateWithCommandBuffer_, buffer);
  if (result)
  {
    *(result + 18) = xmmword_239D909F0;
    *(result + 19) = unk_239D90A00;
  }

  return result;
}

@end