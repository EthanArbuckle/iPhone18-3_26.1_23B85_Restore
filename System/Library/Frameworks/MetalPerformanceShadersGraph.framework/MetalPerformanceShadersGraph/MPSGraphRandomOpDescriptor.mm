@interface MPSGraphRandomOpDescriptor
+ (MPSGraphRandomOpDescriptor)descriptorWithDistribution:(MPSGraphRandomDistribution)distribution dataType:(MPSDataType)dataType;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphRandomOpDescriptor

+ (MPSGraphRandomOpDescriptor)descriptorWithDistribution:(MPSGraphRandomDistribution)distribution dataType:(MPSDataType)dataType
{
  v4 = *&dataType;
  if (dataType <= 268435487)
  {
    if (dataType == MPSDataTypeBFloat16 || dataType == MPSDataTypeFloat16)
    {
      goto LABEL_10;
    }
  }

  else if (dataType == MPSDataTypeFloat32 || dataType == MPSDataTypeInt32 || dataType == MPSDataTypeInt64)
  {
    goto LABEL_10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_10:
  v6 = objc_alloc_init(MPSGraphRandomOpDescriptor);
  [(MPSGraphRandomOpDescriptor *)v6 setDistribution:distribution];
  [(MPSGraphRandomOpDescriptor *)v6 setDataType:v4];
  [(MPSGraphRandomOpDescriptor *)v6 setSamplingMethod:0];
  [(MPSGraphRandomOpDescriptor *)v6 setMin:0.0];
  [(MPSGraphRandomOpDescriptor *)v6 setMinInteger:0];
  [(MPSGraphRandomOpDescriptor *)v6 setMax:0.0];
  [(MPSGraphRandomOpDescriptor *)v6 setMaxInteger:0];
  [(MPSGraphRandomOpDescriptor *)v6 setMean:0.0];
  [(MPSGraphRandomOpDescriptor *)v6 setStandardDeviation:0.0];
  if (distribution)
  {
    if (distribution != MPSGraphRandomDistributionNormal)
    {
      if (distribution != MPSGraphRandomDistributionTruncatedNormal)
      {
        goto LABEL_19;
      }

      LODWORD(v7) = -2.0;
      [(MPSGraphRandomOpDescriptor *)v6 setMin:v7];
      LODWORD(v8) = 2.0;
      [(MPSGraphRandomOpDescriptor *)v6 setMax:v8];
    }

    if (v4 != 268435472 && v4 != 268435488 && v4 != -1879048176 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [(MPSGraphRandomOpDescriptor *)v6 setMean:0.0];
    LODWORD(v9) = 1.0;
    [(MPSGraphRandomOpDescriptor *)v6 setStandardDeviation:v9];
  }

  else
  {
    [(MPSGraphRandomOpDescriptor *)v6 setMin:0.0];
    [(MPSGraphRandomOpDescriptor *)v6 setMinInteger:0];
    LODWORD(v10) = 1.0;
    [(MPSGraphRandomOpDescriptor *)v6 setMax:v10];
    [(MPSGraphRandomOpDescriptor *)v6 setMaxInteger:0x40000000];
  }

LABEL_19:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphRandomOpDescriptor alloc];
  [(MPSGraphRandomOpDescriptor *)v4 setDistribution:self->_distribution];
  [(MPSGraphRandomOpDescriptor *)v4 setDataType:self->_dataType];
  *&v5 = self->_min;
  [(MPSGraphRandomOpDescriptor *)v4 setMin:v5];
  *&v6 = self->_max;
  [(MPSGraphRandomOpDescriptor *)v4 setMax:v6];
  [(MPSGraphRandomOpDescriptor *)v4 setMinInteger:self->_minInteger];
  [(MPSGraphRandomOpDescriptor *)v4 setMaxInteger:self->_maxInteger];
  *&v7 = self->_mean;
  [(MPSGraphRandomOpDescriptor *)v4 setMean:v7];
  *&v8 = self->_standardDeviation;
  [(MPSGraphRandomOpDescriptor *)v4 setStandardDeviation:v8];
  return v4;
}

@end