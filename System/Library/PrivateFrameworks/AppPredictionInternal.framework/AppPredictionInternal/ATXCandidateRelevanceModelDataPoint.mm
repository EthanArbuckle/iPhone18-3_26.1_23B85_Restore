@interface ATXCandidateRelevanceModelDataPoint
- (ATXCandidateRelevanceModelDataPoint)initWithContext:(id)a3 candidate:(id)a4 engaged:(BOOL)a5 contextDefinedSessionId:(id)a6;
@end

@implementation ATXCandidateRelevanceModelDataPoint

- (ATXCandidateRelevanceModelDataPoint)initWithContext:(id)a3 candidate:(id)a4 engaged:(BOOL)a5 contextDefinedSessionId:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ATXCandidateRelevanceModelDataPoint;
  v14 = [(ATXCandidateRelevanceModelDataPoint *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, a3);
    objc_storeStrong(&v15->_candidate, a4);
    v15->_engaged = a5;
    objc_storeStrong(&v15->_contextDefinedSessionId, a6);
  }

  return v15;
}

@end