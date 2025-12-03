@interface ATXCandidateRelevanceModelDataPoint
- (ATXCandidateRelevanceModelDataPoint)initWithContext:(id)context candidate:(id)candidate engaged:(BOOL)engaged contextDefinedSessionId:(id)id;
@end

@implementation ATXCandidateRelevanceModelDataPoint

- (ATXCandidateRelevanceModelDataPoint)initWithContext:(id)context candidate:(id)candidate engaged:(BOOL)engaged contextDefinedSessionId:(id)id
{
  contextCopy = context;
  candidateCopy = candidate;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = ATXCandidateRelevanceModelDataPoint;
  v14 = [(ATXCandidateRelevanceModelDataPoint *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, context);
    objc_storeStrong(&v15->_candidate, candidate);
    v15->_engaged = engaged;
    objc_storeStrong(&v15->_contextDefinedSessionId, id);
  }

  return v15;
}

@end