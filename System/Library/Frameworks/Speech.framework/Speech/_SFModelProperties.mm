@interface _SFModelProperties
- (_SFModelProperties)initWithCoder:(id)coder;
- (_SFModelProperties)initWithModelRoot:(id)root modelVersion:(id)version modelTaskNames:(id)names modelQualityType:(id)type modelSamplingRates:(id)rates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFModelProperties

- (_SFModelProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _SFModelProperties;
  v5 = [(_SFModelProperties *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modelRoot"];
    modelRoot = v5->_modelRoot;
    v5->_modelRoot = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modelVersion"];
    modelVersion = v5->_modelVersion;
    v5->_modelVersion = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_modelTaskNames"];
    modelTaskNames = v5->_modelTaskNames;
    v5->_modelTaskNames = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modelQualityType"];
    modelQualityType = v5->_modelQualityType;
    v5->_modelQualityType = v12;

    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_modelSamplingRates"];
    modelSamplingRates = v5->_modelSamplingRates;
    v5->_modelSamplingRates = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modelRoot = self->_modelRoot;
  coderCopy = coder;
  [coderCopy encodeObject:modelRoot forKey:@"_modelRoot"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"_modelVersion"];
  [coderCopy encodeObject:self->_modelTaskNames forKey:@"_modelTaskNames"];
  [coderCopy encodeObject:self->_modelQualityType forKey:@"_modelQualityType"];
  [coderCopy encodeObject:self->_modelSamplingRates forKey:@"_modelSamplingRates"];
}

- (_SFModelProperties)initWithModelRoot:(id)root modelVersion:(id)version modelTaskNames:(id)names modelQualityType:(id)type modelSamplingRates:(id)rates
{
  rootCopy = root;
  versionCopy = version;
  namesCopy = names;
  typeCopy = type;
  ratesCopy = rates;
  v29.receiver = self;
  v29.super_class = _SFModelProperties;
  v17 = [(_SFModelProperties *)&v29 init];
  if (v17)
  {
    v18 = [rootCopy copy];
    modelRoot = v17->_modelRoot;
    v17->_modelRoot = v18;

    v20 = [versionCopy copy];
    modelVersion = v17->_modelVersion;
    v17->_modelVersion = v20;

    v22 = [namesCopy copy];
    modelTaskNames = v17->_modelTaskNames;
    v17->_modelTaskNames = v22;

    v24 = [typeCopy copy];
    modelQualityType = v17->_modelQualityType;
    v17->_modelQualityType = v24;

    v26 = [ratesCopy copy];
    modelSamplingRates = v17->_modelSamplingRates;
    v17->_modelSamplingRates = v26;
  }

  return v17;
}

@end