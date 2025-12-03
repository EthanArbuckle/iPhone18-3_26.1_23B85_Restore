@interface MPSNDArrayMultiaryMultiDestinationBase
- (MPSNDArrayMultiaryMultiDestinationBase)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMultiaryMultiDestinationBase)initWithDevice:(id)device sourceCount:(unint64_t)count destinationCount:(unint64_t)destinationCount;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMultiaryMultiDestinationBase

- (MPSNDArrayMultiaryMultiDestinationBase)initWithDevice:(id)device sourceCount:(unint64_t)count destinationCount:(unint64_t)destinationCount
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (count)
    {
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else if (!count)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_13:
      v11 = objc_opt_class();
      NSStringFromClass(v11);
      NSStringFromSelector(a2);
      MTLReportFailure();
    }

LABEL_14:

    return 0;
  }

  if (!destinationCount)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12.receiver = self;
  v12.super_class = MPSNDArrayMultiaryMultiDestinationBase;
  result = [(MPSKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->_srcCount = count;
    result->_dstCount = destinationCount;
    result->_encodeData = result;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSNDArrayMultiaryMultiDestinationBase;
  [(MPSKernel *)&v2 dealloc];
}

- (MPSNDArrayMultiaryMultiDestinationBase)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayMultiaryMultiDestinationBase;
  v6 = [(MPSKernel *)&v10 initWithCoder:coder device:device];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if ((*(&v6->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) == 0x100)
  {
    v6->_srcCount = [coder decodeIntegerForKey:@"MultiaryMultiDestinationNDArrayBase.srcCount"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || v7->_srcCount)
    {
      v7->_dstCount = [coder decodeIntegerForKey:@"MultiaryMultiDestinationNDArrayBase.dstCount"];
      v7->_encodeData = v7;
      return v7;
    }
  }

  else if ((*(&v6->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) != 0x10000 && MTLReportFailureTypeEnabled())
  {
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    NSStringFromSelector(a2);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358]) = *(&self->super.super.isa + *MEMORY[0x277CD7358]) | 0x10100;
  v5.receiver = self;
  v5.super_class = MPSNDArrayMultiaryMultiDestinationBase;
  [(MPSKernel *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_srcCount forKey:@"MultiaryMultiDestinationNDArrayBase.srcCount"];
  [coder encodeInteger:self->_dstCount forKey:@"MultiaryMultiDestinationNDArrayBase.dstCount"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryMultiDestinationBase;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 11) = self->_srcCount;
    *(result + 12) = self->_dstCount;
    *(result + 13) = result;
  }

  return result;
}

@end