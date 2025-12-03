@interface VNCoreMLFeatureValueObservation
- (VNCoreMLFeatureValueObservation)initWithCoder:(id)coder;
- (VNCoreMLFeatureValueObservation)initWithOriginatingRequestSpecifier:(id)specifier featureName:(id)name featureValue:(id)value;
- (id)description;
- (id)vn_cloneObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNCoreMLFeatureValueObservation

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = VNCoreMLFeatureValueObservation;
  v4 = [(VNObservation *)&v10 description];
  featureName = [(VNCoreMLFeatureValueObservation *)self featureName];
  featureValue = [(VNCoreMLFeatureValueObservation *)self featureValue];
  [(VNObservation *)self confidence];
  v8 = [v3 initWithFormat:@"%@ %@ - %@ (%f)", v4, featureName, featureValue, v7];

  return v8;
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VNCoreMLFeatureValueObservation;
  vn_cloneObject = [(VNObservation *)&v9 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(MLFeatureValue *)self->_featureValue copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;

    v6 = [(NSString *)self->_featureName copy];
    v7 = vn_cloneObject[13];
    vn_cloneObject[13] = v6;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNCoreMLFeatureValueObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_featureValue forKey:@"featureValue"];
  [coderCopy encodeObject:self->_featureName forKey:@"featureName"];
}

- (VNCoreMLFeatureValueObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VNCoreMLFeatureValueObservation;
  v5 = [(VNObservation *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureValue"];
    v7 = [v6 copy];
    featureValue = v5->_featureValue;
    v5->_featureValue = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureName"];
    v10 = [v9 copy];
    featureName = v5->_featureName;
    v5->_featureName = v10;

    v12 = v5;
  }

  return v5;
}

- (VNCoreMLFeatureValueObservation)initWithOriginatingRequestSpecifier:(id)specifier featureName:(id)name featureValue:(id)value
{
  specifierCopy = specifier;
  nameCopy = name;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = VNCoreMLFeatureValueObservation;
  v11 = [(VNObservation *)&v19 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v11)
  {
    v12 = [valueCopy copy];
    featureValue = v11->_featureValue;
    v11->_featureValue = v12;

    v14 = [nameCopy copy];
    featureName = v11->_featureName;
    v11->_featureName = v14;

    LODWORD(v16) = 1.0;
    [(VNObservation *)v11 setConfidence:v16];
    v17 = v11;
  }

  return v11;
}

@end