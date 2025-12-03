@interface MPSNDArrayNMS
- (MPSNDArrayNMS)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayNMS)initWithDevice:(id)device scoreThreshold:(float)threshold;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayNMS

- (MPSNDArrayNMS)initWithDevice:(id)device scoreThreshold:(float)threshold
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayNMS;
  v6 = [(MPSNDArrayBinaryKernel *)&v10 initWithDevice:?];
  v7 = v6;
  if (v6)
  {
    v6->super.super._encode = EncodeNMS;
    v6->super.super.super._encodeData = v6;
    v6->_scoreThreshold = threshold;
    v6->_IOUThreshold = 0.0;
    v6->_maxBoxes = -1;
    v6->_reduceArgMaxKernel = [[MPSNDArrayReduction alloc] initWithDevice:device axis:0 operation:7];
    v7->_reduceMaxKernel = [[MPSNDArrayReduction alloc] initWithDevice:device axis:0 operation:1];
    v7->_argSortKernel = [[MPSNDArrayArgSort alloc] initWithDevice:device axis:1 descending:1];
    v8 = [[MPSNDArrayGatherND alloc] initWithDevice:device];
    v7->_gatherKernel = v8;
    [(MPSNDArrayGatherND *)v8 setBatchDimensions:1];
  }

  return v7;
}

- (MPSNDArrayNMS)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayNMS;
  result = [(MPSNDArrayBinaryKernel *)&v10 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeNMS;
    result->super.super.super._encodeData = result;
    v6 = result;
    [coder decodeFloatForKey:@"MPSNDArrayNMS.scoreThreshold"];
    v6->_scoreThreshold = v7;
    [coder decodeFloatForKey:@"MPSNDArrayNMS.IOUThreshold"];
    v6->_IOUThreshold = v8;
    v9 = [coder decodeIntegerForKey:@"MPSNDArrayNMS.maxBoxes"];
    result = v6;
    v6->_maxBoxes = v9;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayNMS;
  [(MPSNDArrayMultiaryBase *)&v7 encodeWithCoder:?];
  *&v5 = self->_scoreThreshold;
  [coder encodeFloat:@"MPSNDArrayNMS.scoreThreshold" forKey:v5];
  *&v6 = self->_IOUThreshold;
  [coder encodeFloat:@"MPSNDArrayNMS.IOUThreshold" forKey:v6];
  [coder encodeInteger:self->_maxBoxes forKey:@"MPSNDArrayNMS.maxBoxes"];
  [(MPSNDArrayReduction *)self->_reduceArgMaxKernel encodeWithCoder:coder];
  [(MPSNDArrayReduction *)self->_reduceMaxKernel encodeWithCoder:coder];
  [(MPSNDArrayMultiaryBase *)self->_argSortKernel encodeWithCoder:coder];
  [(MPSNDArrayGatherND *)self->_gatherKernel encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayNMS;
  result = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 36) = LODWORD(self->_scoreThreshold);
    *(result + 37) = LODWORD(self->_IOUThreshold);
    *(result + 19) = self->_maxBoxes;
    v8 = result;
    *(result + 20) = [(MPSNDArrayReduction *)self->_reduceArgMaxKernel copyWithZone:zone device:device];
    v8[21] = [(MPSNDArrayReduction *)self->_reduceMaxKernel copyWithZone:zone device:device];
    v8[22] = [(MPSNDArrayMultiaryKernel *)self->_argSortKernel copyWithZone:zone device:device];
    v9 = [(MPSNDArrayGatherND *)self->_gatherKernel copyWithZone:zone device:device];
    result = v8;
    v8[23] = v9;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayNMS;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end