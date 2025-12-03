@interface SFAcousticFeature
- (SFAcousticFeature)initWithCoder:(id)coder;
- (id)_initWithAcousticFeatureValue:(id)value frameDuration:(double)duration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAcousticFeature

- (id)description
{
  v6.receiver = self;
  v6.super_class = SFAcousticFeature;
  v3 = [(SFAcousticFeature *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", featureValues=%@, frameDuration=%f", self->_acousticFeatureValuePerFrame, *&self->_frameDuration];

  return v4;
}

- (id)_initWithAcousticFeatureValue:(id)value frameDuration:(double)duration
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = SFAcousticFeature;
  v7 = [(SFAcousticFeature *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    acousticFeatureValuePerFrame = v7->_acousticFeatureValuePerFrame;
    v7->_acousticFeatureValuePerFrame = v8;

    v7->_frameDuration = duration;
  }

  return v7;
}

- (SFAcousticFeature)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SFAcousticFeature;
  v5 = [(SFAcousticFeature *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_acousticFeaturePerFrame"];
    acousticFeatureValuePerFrame = v5->_acousticFeatureValuePerFrame;
    v5->_acousticFeatureValuePerFrame = v9;

    [coderCopy decodeDoubleForKey:@"_frameDuration"];
    v5->_frameDuration = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  acousticFeatureValuePerFrame = self->_acousticFeatureValuePerFrame;
  coderCopy = coder;
  [coderCopy encodeObject:acousticFeatureValuePerFrame forKey:@"_acousticFeaturePerFrame"];
  [coderCopy encodeDouble:@"_frameDuration" forKey:self->_frameDuration];
}

@end