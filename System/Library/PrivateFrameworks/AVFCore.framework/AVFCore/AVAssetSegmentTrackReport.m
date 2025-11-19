@interface AVAssetSegmentTrackReport
- (AVAssetSegmentTrackReport)initWithFigSegmentTrackReportDictionary:(id)a3;
- (void)dealloc;
@end

@implementation AVAssetSegmentTrackReport

- (AVAssetSegmentTrackReport)initWithFigSegmentTrackReportDictionary:(id)a3
{
  if (!a3)
  {
    v9 = self;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "figSegmentTrackReportDict != nil"), 0}];
    objc_exception_throw(v15);
  }

  v17.receiver = self;
  v17.super_class = AVAssetSegmentTrackReport;
  v5 = [(AVAssetSegmentTrackReport *)&v17 init];
  if (v5)
  {
    v5->_trackID = [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E6971468]), "longValue"}];
    v5->_mediaType = [AVMediaTypeFromCMMediaType(objc_msgSend(objc_msgSend(a3 objectForKey:{*MEMORY[0x1E6971460]), "longValue")), "copy"}];
    CMTimeMakeFromDictionary(&v16, [a3 objectForKey:*MEMORY[0x1E6971450]]);
    v5->_earliestPresentationTimeStamp = v16;
    CMTimeMakeFromDictionary(&v16, [a3 objectForKey:*MEMORY[0x1E6971448]]);
    v5->_duration = v16;
    v6 = [a3 objectForKey:*MEMORY[0x1E6971458]];
    if (v6)
    {
      v5->_firstVideoSampleInformation = [[AVAssetSegmentReportSampleInformation alloc] initWithFigSegmentReportSampleInformationDictionary:v6];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetSegmentTrackReport;
  [(AVAssetSegmentTrackReport *)&v3 dealloc];
}

@end