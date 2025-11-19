@interface MPSNDArrayQuantizedConvolution
+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)a3 device:(void *)a4;
+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)a3 atIndex:(unint64_t)a4 device:(void *)a5;
- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4 dataQuantizationDescriptor:(id)a5 weightsQuantizationDescriptor:(id)a6;
- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4 dataQuantizationDescriptor:(id)a5 weightsQuantizationDescriptor:(id)a6 sourceCount:(unint64_t)a7;
- (void)dealloc;
@end

@implementation MPSNDArrayQuantizedConvolution

+ (BOOL)supportsSourceQuantizationWithDescriptor:(id)a3 atIndex:(unint64_t)a4 device:(void *)a5
{
  v6 = [a3 quantizationDataType];
  v7 = v6;
  if ((*(a5 + 1477) & 4) == 0 || *(a5 + 368) < 22)
  {
    return (v6 & 0x10000000) != 0;
  }

  result = 1;
  if ((v7 & 0x10000000) == 0 && (v7 & 0xDFFFFFFF) != 8)
  {
    return 0;
  }

  return result;
}

+ (BOOL)supportsDestinationQuantizationWithDescriptor:(id)a3 device:(void *)a4
{
  v5 = [a3 quantizationDataType];
  v6 = v5;
  if ((*(a4 + 1477) & 4) == 0 || *(a4 + 368) < 22)
  {
    return (v5 & 0x10000000) != 0;
  }

  result = 1;
  if ((v6 & 0x10000000) == 0 && (v6 & 0xDFFFFFFF) != 0x20)
  {
    return 0;
  }

  return result;
}

- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4 dataQuantizationDescriptor:(id)a5 weightsQuantizationDescriptor:(id)a6
{
  v11 = [a5 getNDArrayCount];
  v12 = v11 + [a6 getNDArrayCount] + 2;

  return [(MPSNDArrayQuantizedConvolution *)self initWithDevice:a3 ndArrayConvolution2DDescriptor:a4 dataQuantizationDescriptor:a5 weightsQuantizationDescriptor:a6 sourceCount:v12];
}

- (MPSNDArrayQuantizedConvolution)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4 dataQuantizationDescriptor:(id)a5 weightsQuantizationDescriptor:(id)a6 sourceCount:(unint64_t)a7
{
  if (a5)
  {
    v13 = [a5 quantizationScheme] == 1;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 1;
    if (a6)
    {
LABEL_3:
      if ((v13 & ([a6 quantizationScheme] == 1)) != 0)
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
  if (a7 >= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16.receiver = self;
  v16.super_class = MPSNDArrayQuantizedConvolution;
  v14 = [(MPSNDArrayConvolution2D *)&v16 initWithDevice:a3 ndArrayConvolution2DDescriptor:a4 sourceCount:a7];
  v14->super._dataQuantizationDescriptor = [a5 copy];
  v14->super._weightsQuantizationDescriptor = [a6 copy];
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