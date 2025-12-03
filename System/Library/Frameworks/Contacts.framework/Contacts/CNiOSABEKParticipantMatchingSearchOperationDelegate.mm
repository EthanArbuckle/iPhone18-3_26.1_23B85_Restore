@interface CNiOSABEKParticipantMatchingSearchOperationDelegate
- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record;
@end

@implementation CNiOSABEKParticipantMatchingSearchOperationDelegate

- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record
{
  if (record)
  {
    completionHandler = [(CNiOSABEKParticipantMatchingSearchOperationDelegate *)self completionHandler];
    (completionHandler)[2](completionHandler, record);
  }

  return record == 0;
}

@end