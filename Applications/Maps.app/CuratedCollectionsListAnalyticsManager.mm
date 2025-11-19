@interface CuratedCollectionsListAnalyticsManager
- (CuratedCollectionsListAnalyticsManager)init;
- (void)cleanup;
- (void)curatedCollectionTappedWithMuid:(unint64_t)a3 verticalIndex:(unint64_t)a4 isCollectionSaved:(BOOL)a5;
@end

@implementation CuratedCollectionsListAnalyticsManager

- (void)cleanup
{
  self->_event.action = 17099;
  collectionId = self->_event.collectionId;
  self->_event.collectionId = 0;

  collectionCurrentlySaved = self->_event.collectionCurrentlySaved;
  self->_event.collectionCurrentlySaved = 0;

  verticalIndex = self->_event.verticalIndex;
  self->_event.verticalIndex = 0;
}

- (void)curatedCollectionTappedWithMuid:(unint64_t)a3 verticalIndex:(unint64_t)a4 isCollectionSaved:(BOOL)a5
{
  v5 = a5;
  [(CuratedCollectionsListAnalyticsManager *)self cleanup];
  self->_event.action = 2099;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  collectionId = self->_event.collectionId;
  self->_event.collectionId = v9;

  v11 = [NSNumber numberWithBool:v5];
  collectionCurrentlySaved = self->_event.collectionCurrentlySaved;
  self->_event.collectionCurrentlySaved = v11;

  v13 = [NSNumber numberWithUnsignedInteger:a4];
  verticalIndex = self->_event.verticalIndex;
  self->_event.verticalIndex = v13;

  [(CuratedCollectionsListAnalyticsManager *)self logEvent];
}

- (CuratedCollectionsListAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionsListAnalyticsManager;
  result = [(CuratedCollectionsListAnalyticsManager *)&v3 init];
  if (result)
  {
    result->_event.target = 260;
  }

  return result;
}

@end