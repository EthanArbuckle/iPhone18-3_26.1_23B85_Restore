@interface EARAcousticFeature
- (EARAcousticFeature)initWithCoder:(id)a3;
- (EARAcousticFeature)initWithFeature:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARAcousticFeature

- (EARAcousticFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EARAcousticFeature;
  v5 = [(EARAcousticFeature *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"acousticFeatureValuePerFrame"];
    acousticFeatureValuePerFrame = v5->_acousticFeatureValuePerFrame;
    v5->_acousticFeatureValuePerFrame = v6;

    [v4 decodeDoubleForKey:@"frameDuration"];
    v5->_frameDuration = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  acousticFeatureValuePerFrame = self->_acousticFeatureValuePerFrame;
  v5 = a3;
  [v5 encodeObject:acousticFeatureValuePerFrame forKey:@"acousticFeatureValuePerFrame"];
  [v5 encodeDouble:@"frameDuration" forKey:self->_frameDuration];
}

- (EARAcousticFeature)initWithFeature:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EARAcousticFeature;
  v5 = [(EARAcousticFeature *)&v11 init];
  if (v5)
  {
    v6 = [v4 acousticFeatureValuePerFrame];
    v7 = [v6 copy];
    acousticFeatureValuePerFrame = v5->_acousticFeatureValuePerFrame;
    v5->_acousticFeatureValuePerFrame = v7;

    [v4 frameDuration];
    v5->_frameDuration = v9;
  }

  return v5;
}

@end