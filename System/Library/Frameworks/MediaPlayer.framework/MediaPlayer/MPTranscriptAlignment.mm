@interface MPTranscriptAlignment
- (MPTranscriptAlignment)initWithPlayerStartTime:(double)time playerEndTime:(double)endTime referenceStartTime:(double)startTime referenceEndTime:(double)referenceEndTime matchedBeginning:(BOOL)beginning matchedEnd:(BOOL)end;
- (id)description;
@end

@implementation MPTranscriptAlignment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MPTranscriptAlignment *)self playerStartTime];
  v7 = v6;
  [(MPTranscriptAlignment *)self playerEndTime];
  v9 = v8;
  [(MPTranscriptAlignment *)self referenceStartTime];
  v11 = v10;
  [(MPTranscriptAlignment *)self referenceEndTime];
  v13 = [v3 stringWithFormat:@"<%@: %p, Player: [%0.2f, %0.2f], Reference: [%0.2f, %0.2f]>", v5, self, v7, v9, v11, v12];

  return v13;
}

- (MPTranscriptAlignment)initWithPlayerStartTime:(double)time playerEndTime:(double)endTime referenceStartTime:(double)startTime referenceEndTime:(double)referenceEndTime matchedBeginning:(BOOL)beginning matchedEnd:(BOOL)end
{
  v15.receiver = self;
  v15.super_class = MPTranscriptAlignment;
  result = [(MPTranscriptAlignment *)&v15 init];
  if (result)
  {
    result->_playerStartTime = time;
    result->_playerEndTime = endTime;
    result->_referenceStartTime = startTime;
    result->_referenceEndTime = referenceEndTime;
    result->_matchedBeginning = beginning;
    result->_matchedEnd = end;
  }

  return result;
}

@end