@interface _LTServerEndpointerFeatures
- (_LTServerEndpointerFeatures)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTServerEndpointerFeatures

- (_LTServerEndpointerFeatures)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _LTServerEndpointerFeatures;
  v5 = [(_LTServerEndpointerFeatures *)&v16 init];
  if (v5)
  {
    v5->_wordCount = [v4 decodeIntegerForKey:@"wordCount"];
    v5->_trailingSilenceDuration = [v4 decodeIntegerForKey:@"trailingSilenceDuration"];
    [v4 decodeDoubleForKey:@"eosLikelihood"];
    v5->_eosLikelihood = v6;
    v7 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"pauseCounts"];
    pauseCounts = v5->_pauseCounts;
    v5->_pauseCounts = v10;

    objc_storeStrong(&v5->_pauseCounts, v10);
    [v4 decodeDoubleForKey:@"silencePosterior"];
    v5->_silencePosterior = v12;
    v5->_processedAudioDurationInMilliseconds = [v4 decodeIntegerForKey:@"processedAudioDurationInMilliseconds"];
    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  wordCount = self->_wordCount;
  v5 = a3;
  [v5 encodeInteger:wordCount forKey:@"wordCount"];
  [v5 encodeInteger:self->_trailingSilenceDuration forKey:@"trailingSilenceDuration"];
  [v5 encodeDouble:@"eosLikelihood" forKey:self->_eosLikelihood];
  [v5 encodeObject:self->_pauseCounts forKey:@"pauseCounts"];
  [v5 encodeDouble:@"silencePosterior" forKey:self->_silencePosterior];
  [v5 encodeInteger:self->_processedAudioDurationInMilliseconds forKey:@"processedAudioDurationInMilliseconds"];
}

@end