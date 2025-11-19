@interface AXVKMultiSectionFeatureWrapper
- (AXVKMultiSectionFeatureWrapper)initWithFeature:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)featureName;
- (void)dealloc;
- (void)setFeature:(id)a3;
@end

@implementation AXVKMultiSectionFeatureWrapper

- (AXVKMultiSectionFeatureWrapper)initWithFeature:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXVKMultiSectionFeatureWrapper;
  v5 = [(AXVKMultiSectionFeatureWrapper *)&v9 init];
  if (v5)
  {
    if (v4)
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

- (void)setFeature:(id)a3
{
  v4 = a3;
  feature = self->_feature;
  if (feature != v4)
  {
    v8 = v4;
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

    v4 = v8;
  }
}

- (id)featureName
{
  v2 = [(GEOMultiSectionFeature *)self->_feature feature];
  v3 = [v2 name];

  if (v3)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v3];
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
  v5 = [(AXVKMultiSectionFeatureWrapper *)self featureName];
  v6 = [v3 stringWithFormat:@"%@:%p: %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXVKMultiSectionFeatureWrapper *)self feature];
      v7 = [(AXVKMultiSectionFeatureWrapper *)v5 feature];
      v8 = AXVKMultiSectionFeatureEqualToMultiSectionFeature(v6, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end