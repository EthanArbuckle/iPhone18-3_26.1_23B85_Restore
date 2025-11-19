@interface _SFModelProperties
- (_SFModelProperties)initWithCoder:(id)a3;
- (_SFModelProperties)initWithModelRoot:(id)a3 modelVersion:(id)a4 modelTaskNames:(id)a5 modelQualityType:(id)a6 modelSamplingRates:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFModelProperties

- (_SFModelProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SFModelProperties;
  v5 = [(_SFModelProperties *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelRoot"];
    modelRoot = v5->_modelRoot;
    v5->_modelRoot = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelVersion"];
    modelVersion = v5->_modelVersion;
    v5->_modelVersion = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_modelTaskNames"];
    modelTaskNames = v5->_modelTaskNames;
    v5->_modelTaskNames = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelQualityType"];
    modelQualityType = v5->_modelQualityType;
    v5->_modelQualityType = v12;

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_modelSamplingRates"];
    modelSamplingRates = v5->_modelSamplingRates;
    v5->_modelSamplingRates = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modelRoot = self->_modelRoot;
  v5 = a3;
  [v5 encodeObject:modelRoot forKey:@"_modelRoot"];
  [v5 encodeObject:self->_modelVersion forKey:@"_modelVersion"];
  [v5 encodeObject:self->_modelTaskNames forKey:@"_modelTaskNames"];
  [v5 encodeObject:self->_modelQualityType forKey:@"_modelQualityType"];
  [v5 encodeObject:self->_modelSamplingRates forKey:@"_modelSamplingRates"];
}

- (_SFModelProperties)initWithModelRoot:(id)a3 modelVersion:(id)a4 modelTaskNames:(id)a5 modelQualityType:(id)a6 modelSamplingRates:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = _SFModelProperties;
  v17 = [(_SFModelProperties *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    modelRoot = v17->_modelRoot;
    v17->_modelRoot = v18;

    v20 = [v13 copy];
    modelVersion = v17->_modelVersion;
    v17->_modelVersion = v20;

    v22 = [v14 copy];
    modelTaskNames = v17->_modelTaskNames;
    v17->_modelTaskNames = v22;

    v24 = [v15 copy];
    modelQualityType = v17->_modelQualityType;
    v17->_modelQualityType = v24;

    v26 = [v16 copy];
    modelSamplingRates = v17->_modelSamplingRates;
    v17->_modelSamplingRates = v26;
  }

  return v17;
}

@end