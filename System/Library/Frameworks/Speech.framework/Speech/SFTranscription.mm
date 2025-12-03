@interface SFTranscription
- (BOOL)isEqual:(id)equal;
- (SFTranscription)initWithCoder:(id)coder;
- (id)_initWithSegments:(id)segments formattedString:(id)string speakingRate:(double)rate averagePauseDuration:(double)duration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTranscription

- (id)_initWithSegments:(id)segments formattedString:(id)string speakingRate:(double)rate averagePauseDuration:(double)duration
{
  segmentsCopy = segments;
  stringCopy = string;
  v18.receiver = self;
  v18.super_class = SFTranscription;
  v12 = [(SFTranscription *)&v18 init];
  if (v12)
  {
    v13 = [segmentsCopy copy];
    segments = v12->_segments;
    v12->_segments = v13;

    v15 = [stringCopy copy];
    formattedString = v12->_formattedString;
    v12->_formattedString = v15;

    v12->_speakingRate = rate;
    v12->_averagePauseDuration = duration;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  segments = self->_segments;
  coderCopy = coder;
  [coderCopy encodeObject:segments forKey:@"_segments"];
  [coderCopy encodeObject:self->_formattedString forKey:@"_formattedString"];
  [coderCopy encodeDouble:@"_speakingRate" forKey:self->_speakingRate];
  [coderCopy encodeDouble:@"_avgPauseDuration" forKey:self->_averagePauseDuration];
}

- (SFTranscription)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_segments"];
    segments = v5->_segments;
    v5->_segments = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formattedString"];
    formattedString = v5->_formattedString;
    v5->_formattedString = v11;

    [coderCopy decodeDoubleForKey:@"_speakingRate"];
    v5->_speakingRate = v13;
    [coderCopy decodeDoubleForKey:@"_avgPauseDuration"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    segments = self->_segments;
    if (segments == equalCopy[2] || [(NSArray *)segments isEqual:?])
    {
      formattedString = self->_formattedString;
      if (formattedString == equalCopy[1] || [(NSString *)formattedString isEqual:?])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

@end