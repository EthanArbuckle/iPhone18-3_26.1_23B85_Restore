@interface SFTranscription
- (BOOL)isEqual:(id)a3;
- (SFTranscription)initWithCoder:(id)a3;
- (id)_initWithSegments:(id)a3 formattedString:(id)a4 speakingRate:(double)a5 averagePauseDuration:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTranscription

- (id)_initWithSegments:(id)a3 formattedString:(id)a4 speakingRate:(double)a5 averagePauseDuration:(double)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = SFTranscription;
  v12 = [(SFTranscription *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    segments = v12->_segments;
    v12->_segments = v13;

    v15 = [v11 copy];
    formattedString = v12->_formattedString;
    v12->_formattedString = v15;

    v12->_speakingRate = a5;
    v12->_averagePauseDuration = a6;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  segments = self->_segments;
  v5 = a3;
  [v5 encodeObject:segments forKey:@"_segments"];
  [v5 encodeObject:self->_formattedString forKey:@"_formattedString"];
  [v5 encodeDouble:@"_speakingRate" forKey:self->_speakingRate];
  [v5 encodeDouble:@"_avgPauseDuration" forKey:self->_averagePauseDuration];
}

- (SFTranscription)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SFTranscription;
  v5 = [(SFTranscription *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_segments"];
    segments = v5->_segments;
    v5->_segments = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_formattedString"];
    formattedString = v5->_formattedString;
    v5->_formattedString = v11;

    [v4 decodeDoubleForKey:@"_speakingRate"];
    v5->_speakingRate = v13;
    [v4 decodeDoubleForKey:@"_avgPauseDuration"];
    v5->_averagePauseDuration = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SFTranscription;
  v3 = [(SFTranscription *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", formattedString=%@, segments=%@, speakingRate=%f, averagePauseDuration=%f", self->_formattedString, self->_segments, *&self->_speakingRate, *&self->_averagePauseDuration];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    segments = self->_segments;
    if (segments == v4[2] || [(NSArray *)segments isEqual:?])
    {
      formattedString = self->_formattedString;
      if (formattedString == v4[1] || [(NSString *)formattedString isEqual:?])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

@end