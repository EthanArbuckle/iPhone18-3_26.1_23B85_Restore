@interface MPSImageStatisticsMean
- (MPSImageStatisticsMean)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageStatisticsMean)initWithDevice:(id)device;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageStatisticsMean

- (MPSImageStatisticsMean)initWithDevice:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSImageStatisticsMean;
  result = [(MPSUnaryImageKernel *)&v12 initWithDevice:device];
  if (result)
  {
    v9 = result;
    objc_msgSend_initEncoder(result, v4, v5, v6, v7, v8);
    result = v9;
    v9->super._checkFlags = 515;
    v10 = *MEMORY[0x277CD7200];
    v11 = *(MEMORY[0x277CD7200] + 32);
    *&v9->_clipRectSource.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&v9->_clipRectSource.size.height = v11;
    *&v9->_clipRectSource.origin.x = v10;
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSImageStatisticsMean;
  v3 = [(MPSUnaryImageKernel *)&v9 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n", v5, v6, v7, v3);
}

- (MPSImageStatisticsMean)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v38.receiver = self;
  v38.super_class = MPSImageStatisticsMean;
  v5 = [(MPSUnaryImageKernel *)&v38 initWithCoder:aDecoder device:device];
  v11 = v5;
  if (!v5)
  {
    return v11;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_initEncoder(v5, v6, v7, v8, v9, v10);
    v11->super._checkFlags = 515;
    v11->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSImageStatistics.clipRectSource.origin.x", v13, v14, v15);
    v11->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v16, @"MPSImageStatistics.clipRectSource.origin.y", v17, v18, v19);
    v11->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSImageStatistics.clipRectSource.origin.z", v21, v22, v23);
    v11->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v24, @"MPSImageStatistics.clipRectSource.size.width", v25, v26, v27);
    v11->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v28, @"MPSImageStatistics.clipRectSource.size.height", v29, v30, v31);
    v11->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v32, @"MPSImageStatistics.clipRectSource.size.depth", v33, v34, v35);
    return v11;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v37 = objc_opt_class();
    NSStringFromClass(v37);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v23.receiver = self;
  v23.super_class = MPSImageStatisticsMean;
  [(MPSUnaryImageKernel *)&v23 encodeWithCoder:?];
  selfCopy += 26;
  objc_msgSend_encodeInt64_forKey_(coder, v5, *selfCopy, @"MPSImageStatistics.clipRectSource.origin.x", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, selfCopy[1], @"MPSImageStatistics.clipRectSource.origin.y", v9, v10);
  objc_msgSend_encodeInt64_forKey_(coder, v11, selfCopy[2], @"MPSImageStatistics.clipRectSource.origin.z", v12, v13);
  objc_msgSend_encodeInt64_forKey_(coder, v14, selfCopy[3], @"MPSImageStatistics.clipRectSource.size.width", v15, v16);
  objc_msgSend_encodeInt64_forKey_(coder, v17, selfCopy[4], @"MPSImageStatistics.clipRectSource.size.height", v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, selfCopy[5], @"MPSImageStatistics.clipRectSource.size.depth", v21, v22);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSImageStatisticsMean;
  result = [(MPSUnaryImageKernel *)&v14 copyWithZone:zone device:device];
  if (result)
  {
    v12 = *&self->_clipRectSource.origin.z;
    v11 = *&self->_clipRectSource.size.height;
    *(result + 13) = *&self->_clipRectSource.origin.x;
    *(result + 14) = v12;
    *(result + 15) = v11;
    v13 = result;
    objc_msgSend_initEncoder(self, v6, v7, v8, v9, v10);
    return v13;
  }

  return result;
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[4].size.height;
  *&retstr->origin.x = *&self[4].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[5].origin.x;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end