@interface MPNowPlayingInfoTranscriptAlignment
- (MPNowPlayingInfoTranscriptAlignment)initWithMRTranscriptAlignment:(id)alignment;
- (MPNowPlayingInfoTranscriptAlignment)initWithPlayerStartTime:(double)time playerEndTime:(double)endTime referenceStartTime:(double)startTime referenceEndTime:(double)referenceEndTime matchedBeginning:(BOOL)beginning matchedEnd:(BOOL)end;
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

- (MPNowPlayingInfoTranscriptAlignment)initWithMRTranscriptAlignment:(id)alignment
{
  alignmentCopy = alignment;
  v11.receiver = self;
  v11.super_class = MPNowPlayingInfoTranscriptAlignment;
  v5 = [(MPNowPlayingInfoTranscriptAlignment *)&v11 init];
  if (v5)
  {
    [alignmentCopy playerStartTime];
    v5->_playerStartTime = v6;
    [alignmentCopy playerEndTime];
    v5->_playerEndTime = v7;
    [alignmentCopy referenceStartTime];
    v5->_referenceStartTime = v8;
    [alignmentCopy referenceEndTime];
    v5->_referenceEndTime = v9;
    v5->_matchedBeginning = [alignmentCopy matchedBeginning];
    v5->_matchedEnd = [alignmentCopy matchedEnd];
  }

  return v5;
}

- (MPNowPlayingInfoTranscriptAlignment)initWithPlayerStartTime:(double)time playerEndTime:(double)endTime referenceStartTime:(double)startTime referenceEndTime:(double)referenceEndTime matchedBeginning:(BOOL)beginning matchedEnd:(BOOL)end
{
  v15.receiver = self;
  v15.super_class = MPNowPlayingInfoTranscriptAlignment;
  result = [(MPNowPlayingInfoTranscriptAlignment *)&v15 init];
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