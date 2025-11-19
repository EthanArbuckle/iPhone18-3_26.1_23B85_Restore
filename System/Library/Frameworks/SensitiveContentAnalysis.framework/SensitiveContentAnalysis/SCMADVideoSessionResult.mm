@interface SCMADVideoSessionResult
- (SCMADVideoSessionResult)initWithAnalysis:(id)a3 confidenceScore:(id)a4;
@end

@implementation SCMADVideoSessionResult

- (SCMADVideoSessionResult)initWithAnalysis:(id)a3 confidenceScore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SCMADVideoSessionResult;
  v9 = [(SCMADVideoSessionResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analysis, a3);
    v11 = [v8 copy];
    confidenceScore = v10->_confidenceScore;
    v10->_confidenceScore = v11;
  }

  return v10;
}

@end