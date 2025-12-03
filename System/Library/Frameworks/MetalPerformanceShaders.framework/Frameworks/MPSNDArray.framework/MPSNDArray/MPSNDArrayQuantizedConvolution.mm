@interface MPSNDArrayQuantizedConvolution
+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)descriptor device:(void *)device;
+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)descriptor atIndex:(unint64_t)index device:(void *)device;
- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor dataQuantizationDescriptor:(id)quantizationDescriptor weightsQuantizationDescriptor:(id)weightsQuantizationDescriptor;
- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor dataQuantizationDescriptor:(id)quantizationDescriptor weightsQuantizationDescriptor:(id)weightsQuantizationDescriptor sourceCount:(unint64_t)count;
- (void)dealloc;
@end

@implementation MPSNDArrayQuantizedConvolution

+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)descriptor atIndex:(unint64_t)index device:(void *)device
{
  quantizationDataType = [descriptor quantizationDataType];
  v7 = quantizationDataType;
  if ((*(device + 1477) & 4) == 0 || *(device + 368) < 22)
  {
    return (quantizationDataType & 0x10000000) != 0;
  }

  result = 1;
  if ((v7 & 0x10000000) == 0 && (v7 & 0xDFFFFFFF) != 8)
  {
    return 0;
  }

  return result;
}

+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)descriptor device:(void *)device
{
  quantizationDataType = [descriptor quantizationDataType];
  v6 = quantizationDataType;
  if ((*(device + 1477) & 4) == 0 || *(device + 368) < 22)
  {
    return (quantizationDataType & 0x10000000) != 0;
  }

  result = 1;
  if ((v6 & 0x10000000) == 0 && (v6 & 0xDFFFFFFF) != 0x20)
  {
    return 0;
  }

  return result;
}

- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor dataQuantizationDescriptor:(id)quantizationDescriptor weightsQuantizationDescriptor:(id)weightsQuantizationDescriptor
{
  getNDArrayCount = [quantizationDescriptor getNDArrayCount];
  v12 = getNDArrayCount + [weightsQuantizationDescriptor getNDArrayCount] + 2;

  return [(MPSNDArrayQuantizedConvolution *)self initWithDevice:device ndArrayConvolution2DDescriptor:descriptor dataQuantizationDescriptor:quantizationDescriptor weightsQuantizationDescriptor:weightsQuantizationDescriptor sourceCount:v12];
}

- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor dataQuantizationDescriptor:(id)quantizationDescriptor weightsQuantizationDescriptor:(id)weightsQuantizationDescriptor sourceCount:(unint64_t)count
{
  if (quantizationDescriptor)
  {
    v13 = [quantizationDescriptor quantizationScheme] == 1;
    if (weightsQuantizationDescriptor)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 1;
    if (weightsQuantizationDescriptor)
    {
LABEL_3:
      if ((v13 & ([weightsQuantizationDescriptor quantizationScheme] == 1)) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_7:
  if (count >= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16.receiver = self;
  v16.super_class = MPSNDArrayQuantizedConvolution;
  v14 = [(MPSNDArrayConvolution2D *)&v16 initWithDevice:device ndArrayConvolution2DDescriptor:descriptor sourceCount:count];
  v14->super._dataQuantizationDescriptor = [quantizationDescriptor copy];
  v14->super._weightsQuantizationDescriptor = [weightsQuantizationDescriptor copy];
  v14->super.super._encode = EncodeNDArrayQuantizationConvolution2D;
  v14->super.super.super._encodeData = v14;
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayQuantizedConvolution;
  [(MPSNDArrayConvolution2D *)&v3 dealloc];
}

@end