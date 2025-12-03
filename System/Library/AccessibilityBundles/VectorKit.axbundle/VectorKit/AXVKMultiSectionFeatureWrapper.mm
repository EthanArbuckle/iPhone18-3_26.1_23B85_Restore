@interface AXVKMultiSectionFeatureWrapper
- (AXVKMultiSectionFeatureWrapper)initWithFeature:(id)feature;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)featureName;
- (void)dealloc;
- (void)setFeature:(id)feature;
@end

@implementation AXVKMultiSectionFeatureWrapper

- (AXVKMultiSectionFeatureWrapper)initWithFeature:(id)feature
{
  featureCopy = feature;
  v9.receiver = self;
  v9.super_class = AXVKMultiSectionFeatureWrapper;
  v5 = [(AXVKMultiSectionFeatureWrapper *)&v9 init];
  if (v5)
  {
    if (featureCopy)
    {
      v6 = GEOMultiSectionFeatureRetain();
      feature = v5->_feature;
      v5->_feature = v6;
    }

    v5->_creationTime = CFAbsoluteTimeGetCurrent();
  }

  return v5;
}

- (void)dealloc
{
  if (self->_feature)
  {
    GEOMultiSectionFeatureRelease();
  }

  v3.receiver = self;
  v3.super_class = AXVKMultiSectionFeatureWrapper;
  [(AXVKMultiSectionFeatureWrapper *)&v3 dealloc];
}

- (void)setFeature:(id)feature
{
  featureCopy = feature;
  feature = self->_feature;
  if (feature != featureCopy)
  {
    v8 = featureCopy;
    if (feature)
    {
      GEOMultiSectionFeatureRelease();
    }

    v6 = v8;
    if (v8)
    {
      v6 = GEOMultiSectionFeatureRetain();
    }

    v7 = self->_feature;
    self->_feature = v6;

    featureCopy = v8;
  }
}

- (id)featureName
{
  feature = [(GEOMultiSectionFeature *)self->_feature feature];
  name = [feature name];

  if (name)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:name];
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  featureName = [(AXVKMultiSectionFeatureWrapper *)self featureName];
  v6 = [v3 stringWithFormat:@"%@:%p: %@", v4, self, featureName];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      feature = [(AXVKMultiSectionFeatureWrapper *)self feature];
      feature2 = [(AXVKMultiSectionFeatureWrapper *)v5 feature];
      v8 = AXVKMultiSectionFeatureEqualToMultiSectionFeature(feature, feature2);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end