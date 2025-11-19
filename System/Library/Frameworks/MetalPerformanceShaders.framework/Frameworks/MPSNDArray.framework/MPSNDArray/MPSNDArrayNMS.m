@interface MPSNDArrayNMS
- (MPSNDArrayNMS)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayNMS)initWithDevice:(id)a3 scoreThreshold:(float)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayNMS

- (MPSNDArrayNMS)initWithDevice:(id)a3 scoreThreshold:(float)a4
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayNMS;
  v6 = [(MPSNDArrayBinaryKernel *)&v10 initWithDevice:?];
  v7 = v6;
  if (v6)
  {
    v6->super.super._encode = EncodeNMS;
    v6->super.super.super._encodeData = v6;
    v6->_scoreThreshold = a4;
    v6->_IOUThreshold = 0.0;
    v6->_maxBoxes = -1;
    v6->_reduceArgMaxKernel = [[MPSNDArrayReduction alloc] initWithDevice:a3 axis:0 operation:7];
    v7->_reduceMaxKernel = [[MPSNDArrayReduction alloc] initWithDevice:a3 axis:0 operation:1];
    v7->_argSortKernel = [[MPSNDArrayArgSort alloc] initWithDevice:a3 axis:1 descending:1];
    v8 = [[MPSNDArrayGatherND alloc] initWithDevice:a3];
    v7->_gatherKernel = v8;
    [(MPSNDArrayGatherND *)v8 setBatchDimensions:1];
  }

  return v7;
}

- (MPSNDArrayNMS)initWithCoder:(id)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayNMS;
  result = [(MPSNDArrayBinaryKernel *)&v10 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeNMS;
    result->super.super.super._encodeData = result;
    v6 = result;
    [a3 decodeFloatForKey:@"MPSNDArrayNMS.scoreThreshold"];
    v6->_scoreThreshold = v7;
    [a3 decodeFloatForKey:@"MPSNDArrayNMS.IOUThreshold"];
    v6->_IOUThreshold = v8;
    v9 = [a3 decodeIntegerForKey:@"MPSNDArrayNMS.maxBoxes"];
    result = v6;
    v6->_maxBoxes = v9;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayNMS;
  [(MPSNDArrayMultiaryBase *)&v7 encodeWithCoder:?];
  *&v5 = self->_scoreThreshold;
  [a3 encodeFloat:@"MPSNDArrayNMS.scoreThreshold" forKey:v5];
  *&v6 = self->_IOUThreshold;
  [a3 encodeFloat:@"MPSNDArrayNMS.IOUThreshold" forKey:v6];
  [a3 encodeInteger:self->_maxBoxes forKey:@"MPSNDArrayNMS.maxBoxes"];
  [(MPSNDArrayReduction *)self->_reduceArgMaxKernel encodeWithCoder:a3];
  [(MPSNDArrayReduction *)self->_reduceMaxKernel encodeWithCoder:a3];
  [(MPSNDArrayMultiaryBase *)self->_argSortKernel encodeWithCoder:a3];
  [(MPSNDArrayGatherND *)self->_gatherKernel encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
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
    *(result + 20) = [(MPSNDArrayReduction *)self->_reduceArgMaxKernel copyWithZone:a3 device:a4];
    v8[21] = [(MPSNDArrayReduction *)self->_reduceMaxKernel copyWithZone:a3 device:a4];
    v8[22] = [(MPSNDArrayMultiaryKernel *)self->_argSortKernel copyWithZone:a3 device:a4];
    v9 = [(MPSNDArrayGatherND *)self->_gatherKernel copyWithZone:a3 device:a4];
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