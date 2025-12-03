@interface AVAssetSegmentReportSampleInformation
- (AVAssetSegmentReportSampleInformation)initWithFigSegmentReportSampleInformationDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation AVAssetSegmentReportSampleInformation

- (AVAssetSegmentReportSampleInformation)initWithFigSegmentReportSampleInformationDictionary:(id)dictionary
{
  if (!dictionary)
  {
    selfCopy = self;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "figSampleInformationoDict != nil"), 0}];
    objc_exception_throw(v15);
  }

  v17.receiver = self;
  v17.super_class = AVAssetSegmentReportSampleInformation;
  v5 = [(AVAssetSegmentReportSampleInformation *)&v17 init];
  if (v5)
  {
    CMTimeMakeFromDictionary(&v16, [dictionary objectForKey:*MEMORY[0x1E6971440]]);
    v6 = *&v16.value;
    *(v5 + 3) = v16.epoch;
    *(v5 + 8) = v6;
    *(v5 + 4) = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6971438]), "integerValue"}];
    *(v5 + 5) = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6971430]), "integerValue"}];
    v5[48] = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6971428]), "BOOLValue"}];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVAssetSegmentReportSampleInformation;
  [(AVAssetSegmentReportSampleInformation *)&v2 dealloc];
}

@end