@interface AFUserUtteranceSelectionResults
- (AFUserUtteranceSelectionResults)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFUserUtteranceSelectionResults

- (AFUserUtteranceSelectionResults)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AFUserUtteranceSelectionResults;
  v5 = [(AFUserUtteranceSelectionResults *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_combinedRank"];
    combinedRank = v5->_combinedRank;
    v5->_combinedRank = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_combinedScore"];
    combinedScore = v5->_combinedScore;
    v5->_combinedScore = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interactionId"];
    interactionId = v5->_interactionId;
    v5->_interactionId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_onDeviceUtterancesPresent"];
    onDeviceUtterancesPresent = v5->_onDeviceUtterancesPresent;
    v5->_onDeviceUtterancesPresent = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalRank"];
    originalRank = v5->_originalRank;
    v5->_originalRank = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalScore"];
    originalScore = v5->_originalScore;
    v5->_originalScore = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_previousUtterance"];
    previousUtterance = v5->_previousUtterance;
    v5->_previousUtterance = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sessionId"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_utteranceSource"];
    utteranceSource = v5->_utteranceSource;
    v5->_utteranceSource = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  combinedRank = self->_combinedRank;
  v5 = a3;
  [v5 encodeObject:combinedRank forKey:@"_combinedRank"];
  [v5 encodeObject:self->_combinedScore forKey:@"_combinedScore"];
  [v5 encodeObject:self->_interactionId forKey:@"_interactionId"];
  [v5 encodeObject:self->_onDeviceUtterancesPresent forKey:@"_onDeviceUtterancesPresent"];
  [v5 encodeObject:self->_originalRank forKey:@"_originalRank"];
  [v5 encodeObject:self->_originalScore forKey:@"_originalScore"];
  [v5 encodeObject:self->_previousUtterance forKey:@"_previousUtterance"];
  [v5 encodeObject:self->_sessionId forKey:@"_sessionId"];
  [v5 encodeObject:self->_utteranceSource forKey:@"_utteranceSource"];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AFUserUtteranceSelectionResults;
  v3 = [(AFUserUtteranceSelectionResults *)&v8 description];
  v4 = *&self->_combinedRank;
  v5 = *&self->_originalRank;
  v6 = [v3 stringByAppendingFormat:@"combinedRank: %@ combinedScore: %@ interactionId: %@ onDeviceUtterancesPresent: %@ originalRank: %@ originalScore: %@ previousUtterance %@ sessionId: %@ utteranceSource: %@", self->_combinedRank, self->_combinedScore, self->_interactionId, self->_onDeviceUtterancesPresent, self->_originalRank, self->_originalScore, self->_previousUtterance, self->_sessionId, self->_utteranceSource];;

  return v6;
}

@end