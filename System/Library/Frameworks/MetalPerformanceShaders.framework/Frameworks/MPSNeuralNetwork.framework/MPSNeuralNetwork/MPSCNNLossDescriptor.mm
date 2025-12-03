@interface MPSCNNLossDescriptor
+ (MPSCNNLossDescriptor)cnnLossDescriptorWithType:(MPSCNNLossType)lossType reductionType:(MPSCNNReductionType)reductionType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)dealloc;
- (void)setDelta:(float)delta;
- (void)setEpsilon:(float)epsilon;
- (void)setLabelSmoothing:(float)labelSmoothing;
- (void)setNumberOfClasses:(NSUInteger)numberOfClasses;
@end

@implementation MPSCNNLossDescriptor

- (void)setLabelSmoothing:(float)labelSmoothing
{
  if (labelSmoothing < 0.0 || labelSmoothing > 1.0)
  {
    selfCopy = self;
    v10 = labelSmoothing;
    v11 = MTLReportFailureTypeEnabled();
    labelSmoothing = v10;
    v12 = v11;
    self = selfCopy;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
      self = selfCopy;
      labelSmoothing = v10;
    }
  }

  if (self->_lossType - 4 <= 0xFFFFFFFD && (v4 = self, v5 = labelSmoothing, v6 = MTLReportFailureTypeEnabled(), labelSmoothing = v5, v7 = v6, self = v4, v7))
  {
    v8 = objc_opt_class();
    NSStringFromClass(v8);
    MTLReportFailure();
    v4->_labelSmoothing = v5;
  }

  else
  {
    self->_labelSmoothing = labelSmoothing;
  }
}

- (void)setNumberOfClasses:(NSUInteger)numberOfClasses
{
  if (!numberOfClasses)
  {
    selfCopy = self;
    v4 = MTLReportFailureTypeEnabled();
    numberOfClasses = 0;
    v5 = v4;
    self = selfCopy;
    if (v5)
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure();
      self = selfCopy;
      numberOfClasses = 0;
    }
  }

  if (self->_lossType == 2 || (v7 = self, v8 = numberOfClasses, v9 = MTLReportFailureTypeEnabled(), numberOfClasses = v8, v10 = v9, self = v7, !v10))
  {
    self->_numberOfClasses = numberOfClasses;
  }

  else
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    MTLReportFailure();
    v7->_numberOfClasses = v8;
  }
}

- (void)setEpsilon:(float)epsilon
{
  if (self->_lossType == 8)
  {
    self->_epsilon = epsilon;
  }

  else
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = epsilon;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure();
      selfCopy2 = self;
      v6 = epsilon;
    }

    selfCopy2->_epsilon = v6;
  }
}

- (void)setDelta:(float)delta
{
  if (self->_lossType == 6)
  {
    self->_delta = delta;
  }

  else
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = delta;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure();
      selfCopy2 = self;
      v6 = delta;
    }

    selfCopy2->_delta = v6;
  }
}

+ (MPSCNNLossDescriptor)cnnLossDescriptorWithType:(MPSCNNLossType)lossType reductionType:(MPSCNNReductionType)reductionType
{
  if (lossType >= MPSCNNLossTypeCount)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
    }

    return 0;
  }

  else if (reductionType >= MPSCNNReductionTypeCount)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      MTLReportFailure();
    }

    return 0;
  }

  else
  {
    result = objc_opt_new();
    if (result)
    {
      result->_lossType = lossType;
      result->_reductionType = reductionType;
      result->_reduceAcrossBatch = 0;
      *&result->_weight = 1065353216;
      result->_numberOfClasses = 1;
      *&result->_epsilon = 0x3F80000033D6BF95;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9, v10, v11);
  if (result)
  {
    *(result + 1) = *&self->_lossType;
    *(result + 16) = self->_reduceAcrossBatch;
    *(result + 5) = LODWORD(self->_weight);
    *(result + 6) = LODWORD(self->_labelSmoothing);
    *(result + 4) = self->_numberOfClasses;
    *(result + 10) = LODWORD(self->_epsilon);
    *(result + 11) = LODWORD(self->_delta);
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNLossDescriptor;
  [(MPSCNNLossDescriptor *)&v2 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNLossDescriptor;
  v4 = [(MPSCNNLossDescriptor *)&v12 debugDescription];
  if (self->_reduceAcrossBatch)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d across batches: %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, "YES", self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d across batches: %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, "NO", self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
  }
}

@end