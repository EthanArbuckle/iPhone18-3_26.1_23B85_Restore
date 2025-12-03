@interface AFConversationTransaction
- (AFConversationTransaction)initWithUpdatedItemIndexPaths:(id)paths insertedItemIndexPaths:(id)indexPaths presentationStateChangedItemIndexPaths:(id)itemIndexPaths;
@end

@implementation AFConversationTransaction

- (AFConversationTransaction)initWithUpdatedItemIndexPaths:(id)paths insertedItemIndexPaths:(id)indexPaths presentationStateChangedItemIndexPaths:(id)itemIndexPaths
{
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  itemIndexPathsCopy = itemIndexPaths;
  v15.receiver = self;
  v15.super_class = AFConversationTransaction;
  v12 = [(AFConversationTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedItemIndexPaths, paths);
    objc_storeStrong(&v13->_insertedItemIndexPaths, indexPaths);
    objc_storeStrong(&v13->_presentationStateChangedItemIndexPaths, itemIndexPaths);
  }

  return v13;
}

@end