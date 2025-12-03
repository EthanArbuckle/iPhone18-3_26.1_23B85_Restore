@interface SCMADVideoSessionResult
- (SCMADVideoSessionResult)initWithAnalysis:(id)analysis confidenceScore:(id)score;
@end

@implementation SCMADVideoSessionResult

- (SCMADVideoSessionResult)initWithAnalysis:(id)analysis confidenceScore:(id)score
{
  analysisCopy = analysis;
  scoreCopy = score;
  v14.receiver = self;
  v14.super_class = SCMADVideoSessionResult;
  v9 = [(SCMADVideoSessionResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analysis, analysis);
    v11 = [scoreCopy copy];
    confidenceScore = v10->_confidenceScore;
    v10->_confidenceScore = v11;
  }

  return v10;
}

@end