@interface MPSNNGramGradientState
+ (id)temporaryStateWithCommandBuffer:(id)buffer;
- (MPSNNGramGradientState)initWithResource:(id)resource;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNGramGradientState

- (MPSNNGramGradientState)initWithResource:(id)resource
{
  v4.receiver = self;
  v4.super_class = MPSNNGramGradientState;
  result = [(MPSState *)&v4 initWithResource:resource];
  if (result)
  {
    result->_alpha = 1.0;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)buffer
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MPSNNGramGradientState;
  result = objc_msgSendSuper2(&v4, sel_temporaryStateWithCommandBuffer_, buffer);
  if (result)
  {
    *(result + 72) = 1065353216;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNGramGradientState;
  v4 = [(MPSNNGradientState *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\nalpha = %f\n", v6, v7, v8, v9, v10, v4, self->_alpha);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSNNGramGradientState;
  [(MPSNNGradientState *)&v2 dealloc];
}

@end