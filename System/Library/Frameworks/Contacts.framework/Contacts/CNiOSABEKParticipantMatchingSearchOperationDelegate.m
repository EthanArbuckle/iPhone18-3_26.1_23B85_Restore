@interface CNiOSABEKParticipantMatchingSearchOperationDelegate
- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4;
@end

@implementation CNiOSABEKParticipantMatchingSearchOperationDelegate

- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4
{
  if (a4)
  {
    v5 = [(CNiOSABEKParticipantMatchingSearchOperationDelegate *)self completionHandler];
    (v5)[2](v5, a4);
  }

  return a4 == 0;
}

@end