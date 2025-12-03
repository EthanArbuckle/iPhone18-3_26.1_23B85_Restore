@interface CRLAASBoardTracker
- (void)boardItemDidInsert:(id)insert;
@end

@implementation CRLAASBoardTracker

- (void)boardItemDidInsert:(id)insert
{
  insertCopy = insert;

  sub_10074FC50(insertCopy);
}

@end