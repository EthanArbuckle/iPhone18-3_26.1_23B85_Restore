@interface ShowCuratedCollectionAction
- (ShowCuratedCollectionAction)initWithCuratedCollectionID:(unint64_t)d resultProviderID:(int)iD;
@end

@implementation ShowCuratedCollectionAction

- (ShowCuratedCollectionAction)initWithCuratedCollectionID:(unint64_t)d resultProviderID:(int)iD
{
  v7.receiver = self;
  v7.super_class = ShowCuratedCollectionAction;
  result = [(ShowCuratedCollectionAction *)&v7 init];
  if (result)
  {
    result->_curatedCollectionMUID = d;
    result->_resultProviderID = iD;
  }

  return result;
}

@end