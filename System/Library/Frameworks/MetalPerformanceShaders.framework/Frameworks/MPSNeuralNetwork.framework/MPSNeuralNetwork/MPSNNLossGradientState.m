@interface MPSNNLossGradientState
+ (id)temporaryStateWithCommandBuffer:(id)a3;
- (MPSNNLossGradientState)initWithResource:(id)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNLossGradientState

- (MPSNNLossGradientState)initWithResource:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNNLossGradientState;
  result = [(MPSState *)&v4 initWithResource:a3];
  if (result)
  {
    result->_labelSmoothing = 1.0;
    result->_epsilon = 0.0;
    result->_delta = 0.0;
    LODWORD(result->_lossLabels) = 0;
    result[1].super.super.super.isa = 0;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MPSNNLossGradientState;
  result = objc_msgSendSuper2(&v4, sel_temporaryStateWithCommandBuffer_, a3);
  if (result)
  {
    *(result + 73) = 1065353216;
    *(result + 74) = 0;
    *(result + 75) = 0;
    *(result + 76) = 0;
    *(result + 39) = 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNLossGradientState;
  v4 = [(MPSNNGradientState *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n_weight = %f\n_labelSmoothing = %f\n_epsilon = %f\n_delta = %f\n", v6, v7, v8, v9, v10, v4, self->_labelSmoothing, self->_epsilon, self->_delta, *&self->_lossLabels);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNLossGradientState;
  [(MPSNNGradientState *)&v3 dealloc];
}

@end