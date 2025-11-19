@interface SFAcousticFeature
- (SFAcousticFeature)initWithCoder:(id)a3;
- (id)_initWithAcousticFeatureValue:(id)a3 frameDuration:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithAcousticFeatureValue:(id)a3 frameDuration:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SFAcousticFeature;
  v7 = [(SFAcousticFeature *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    acousticFeatureValuePerFrame = v7->_acousticFeatureValuePerFrame;
    v7->_acousticFeatureValuePerFrame = v8;

    v7->_frameDuration = a4;
  }

  return v7;
}

- (SFAcousticFeature)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_acousticFeaturePerFrame"];
    acousticFeatureValuePerFrame = v5->_acousticFeatureValuePerFrame;
    v5->_acousticFeatureValuePerFrame = v9;

    [v4 decodeDoubleForKey:@"_frameDuration"];
    v5->_frameDuration = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  acousticFeatureValuePerFrame = self->_acousticFeatureValuePerFrame;
  v5 = a3;
  [v5 encodeObject:acousticFeatureValuePerFrame forKey:@"_acousticFeaturePerFrame"];
  [v5 encodeDouble:@"_frameDuration" forKey:self->_frameDuration];
}

@end