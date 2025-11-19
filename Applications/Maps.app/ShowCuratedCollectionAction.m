@interface ShowCuratedCollectionAction
- (ShowCuratedCollectionAction)initWithCuratedCollectionID:(unint64_t)a3 resultProviderID:(int)a4;
@end

@implementation ShowCuratedCollectionAction

- (ShowCuratedCollectionAction)initWithCuratedCollectionID:(unint64_t)a3 resultProviderID:(int)a4
{
  v7.receiver = self;
  v7.super_class = ShowCuratedCollectionAction;
  result = [(ShowCuratedCollectionAction *)&v7 init];
  if (result)
  {
    result->_curatedCollectionMUID = a3;
    result->_resultProviderID = a4;
  }

  return result;
}

@end