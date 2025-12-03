@interface EARAcousticFeature
- (EARAcousticFeature)initWithCoder:(id)coder;
- (EARAcousticFeature)initWithFeature:(id)feature;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARAcousticFeature

- (EARAcousticFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = EARAcousticFeature;
  v5 = [(EARAcousticFeature *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"acousticFeatureValuePerFrame"];
    acousticFeatureValuePerFrame = v5->_acousticFeatureValuePerFrame;
    v5->_acousticFeatureValuePerFrame = v6;

    [coderCopy decodeDoubleForKey:@"frameDuration"];
    v5->_frameDuration = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  acousticFeatureValuePerFrame = self->_acousticFeatureValuePerFrame;
  coderCopy = coder;
  [coderCopy encodeObject:acousticFeatureValuePerFrame forKey:@"acousticFeatureValuePerFrame"];
  [coderCopy encodeDouble:@"frameDuration" forKey:self->_frameDuration];
}

- (EARAcousticFeature)initWithFeature:(id)feature
{
  featureCopy = feature;
  v11.receiver = self;
  v11.super_class = EARAcousticFeature;
  v5 = [(EARAcousticFeature *)&v11 init];
  if (v5)
  {
    acousticFeatureValuePerFrame = [featureCopy acousticFeatureValuePerFrame];
    v7 = [acousticFeatureValuePerFrame copy];
    acousticFeatureValuePerFrame = v5->_acousticFeatureValuePerFrame;
    v5->_acousticFeatureValuePerFrame = v7;

    [featureCopy frameDuration];
    v5->_frameDuration = v9;
  }

  return v5;
}

@end