@interface MPNowPlayingInfoTranscriptAlignment
- (MPNowPlayingInfoTranscriptAlignment)initWithMRTranscriptAlignment:(id)a3;
- (MPNowPlayingInfoTranscriptAlignment)initWithPlayerStartTime:(double)a3 playerEndTime:(double)a4 referenceStartTime:(double)a5 referenceEndTime:(double)a6 matchedBeginning:(BOOL)a7 matchedEnd:(BOOL)a8;
- (MPTranscriptAlignment)mpTranscriptAlignment;
- (MRTranscriptAlignment)mrTranscriptAlignment;
@end

@implementation MPNowPlayingInfoTranscriptAlignment

- (MPTranscriptAlignment)mpTranscriptAlignment
{
  v2 = [[MPTranscriptAlignment alloc] initWithPlayerStartTime:self->_matchedBeginning playerEndTime:self->_matchedEnd referenceStartTime:self->_playerStartTime referenceEndTime:self->_playerEndTime matchedBeginning:self->_referenceStartTime matchedEnd:self->_referenceEndTime];

  return v2;
}

- (MRTranscriptAlignment)mrTranscriptAlignment
{
  v2 = [objc_alloc(MEMORY[0x1E69B0B18]) initWithPlayerStartTime:self->_matchedBeginning playerEndTime:self->_matchedEnd referenceStartTime:self->_playerStartTime referenceEndTime:self->_playerEndTime matchedBeginning:self->_referenceStartTime matchedEnd:self->_referenceEndTime];

  return v2;
}

- (MPNowPlayingInfoTranscriptAlignment)initWithMRTranscriptAlignment:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPNowPlayingInfoTranscriptAlignment;
  v5 = [(MPNowPlayingInfoTranscriptAlignment *)&v11 init];
  if (v5)
  {
    [v4 playerStartTime];
    v5->_playerStartTime = v6;
    [v4 playerEndTime];
    v5->_playerEndTime = v7;
    [v4 referenceStartTime];
    v5->_referenceStartTime = v8;
    [v4 referenceEndTime];
    v5->_referenceEndTime = v9;
    v5->_matchedBeginning = [v4 matchedBeginning];
    v5->_matchedEnd = [v4 matchedEnd];
  }

  return v5;
}

- (MPNowPlayingInfoTranscriptAlignment)initWithPlayerStartTime:(double)a3 playerEndTime:(double)a4 referenceStartTime:(double)a5 referenceEndTime:(double)a6 matchedBeginning:(BOOL)a7 matchedEnd:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = MPNowPlayingInfoTranscriptAlignment;
  result = [(MPNowPlayingInfoTranscriptAlignment *)&v15 init];
  if (result)
  {
    result->_playerStartTime = a3;
    result->_playerEndTime = a4;
    result->_referenceStartTime = a5;
    result->_referenceEndTime = a6;
    result->_matchedBeginning = a7;
    result->_matchedEnd = a8;
  }

  return result;
}

@end