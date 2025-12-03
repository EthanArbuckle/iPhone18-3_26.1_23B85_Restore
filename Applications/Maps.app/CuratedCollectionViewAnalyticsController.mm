@interface CuratedCollectionViewAnalyticsController
+ (id)_eventValueForMediaType:(int64_t)type;
- (CuratedCollectionViewAnalyticsController)initWithCollectionIdentifier:(id)identifier;
- (CuratedCollectionViewEvent)_createBaseEvent;
- (void)_captureCollectionViewEvent:(CuratedCollectionViewEvent *)event;
- (void)logClose;
- (void)logDiscoverMoreFromPublisher;
- (void)logOpenAppClipWithURL:(id)l;
- (void)logOpenWebsite;
- (void)logPullUpCuratedCollectionView;
- (void)logPunchOutToPublisherReviewWithIndex:(unint64_t)index;
- (void)logPunchOutToURL:(id)l;
- (void)logPunchOutUsingAppWithIdentifier:(id)identifier;
- (void)logRemoveCuratedCollection;
- (void)logReportAProblem;
- (void)logRevealAppClipWithURL:(id)l;
- (void)logRevealCuratedCollectionView;
- (void)logSaveCuratedCollection;
- (void)logSavePlaceItemToCuratedCollectionWithMUID:(unint64_t)d;
- (void)logScrollDown;
- (void)logScrollUp;
- (void)logShareCuratedCollection;
- (void)logShowMediaAppMenu;
- (void)logTapCollectionItem:(id)item atIndex:(unint64_t)index;
- (void)logTapMediaAppWithIdentifier:(id)identifier;
- (void)logTapMediaIntegrationWithType:(int64_t)type verticalIndex:(int64_t)index;
- (void)logTapShowLessDescription;
- (void)logTapShowMoreDescription;
- (void)logTryAgain;
- (void)updateWithPlaceCollection:(id)collection;
@end

@implementation CuratedCollectionViewAnalyticsController

- (void)_captureCollectionViewEvent:(CuratedCollectionViewEvent *)event
{
  var0 = event->var0;
  if (!var0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v12 = "Assertion failed: event.action != GEOUIAction_UI_ACTION_UNKNOWN";
LABEL_9:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v12, buf, 2u);
    goto LABEL_4;
  }

  var7 = event->var7;
  if (!var7)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v12 = "Assertion failed: event.target != GEOUITarget_UI_TARGET_UNKNOWN";
    goto LABEL_9;
  }

  var1 = event->var1;
  var6 = event->var6;
  v7 = [NSArray arrayWithObjects:&var6 count:1];
  var2 = event->var2;
  var3 = event->var3;
  var4 = event->var4;
  v11 = [NSNumber numberWithInt:event->var8];
  [GEOAPPortal captureCuratedCollectionUserAction:var0 target:var7 value:var1 publisherId:v7 following:0 collectionId:var2 collectionCategory:0 collectionCurrentlySaved:var3 verticalIndex:var4 horizontalIndex:0 placeCardType:v11 possibleActions:0 impossibleActions:0 providerId:event->var5 repeatableSectionIndex:0 modules:0];

LABEL_4:
  sub_1005C8464(event);
}

- (CuratedCollectionViewEvent)_createBaseEvent
{
  *&retstr->var5 = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var1 = 0u;
  retstr->var9 = 0;
  retstr->var10 = 0;
  retstr->var2 = [NSNumber numberWithUnsignedLongLong:[(CuratedCollectionViewAnalyticsController *)self collectionMUID]];
  retstr->var8 = 14;
  retstr->var7 = [(CuratedCollectionViewAnalyticsController *)self target];
  publisher = [(GEOPlaceCollection *)self->_curatedCollection publisher];
  identifier = [publisher identifier];
  retstr->var6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [identifier muid]);

  retstr->var3 = [NSNumber numberWithBool:self->_saved];
  collectionIdentifier = [(GEOPlaceCollection *)self->_curatedCollection collectionIdentifier];
  retstr->var5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [collectionIdentifier resultProviderID]);

  return result;
}

- (void)logRevealAppClipWithURL:(id)l
{
  lCopy = l;
  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 6105;
  DWORD2(v9) = 670;
  absoluteString = [lCopy absoluteString];
  v6 = *(&v8[0] + 1);
  *(&v8[0] + 1) = absoluteString;

  sub_100FE9DEC(v7, v8);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v7];
  }

  else
  {
    sub_1005C8464(v7);
  }

  sub_1005C8464(v8);
}

- (void)logOpenAppClipWithURL:(id)l
{
  lCopy = l;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 6090;
  absoluteString = [lCopy absoluteString];
  v6 = *(&v8[0] + 1);
  *(&v8[0] + 1) = absoluteString;

  sub_100FE9DEC(v7, v8);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v7];
  }

  else
  {
    sub_1005C8464(v7);
  }

  [(CuratedCollectionViewAnalyticsController *)self logRevealAppClipWithURL:lCopy];
  sub_1005C8464(v8);
}

- (void)logOpenWebsite
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 2170;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logDiscoverMoreFromPublisher
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 2102;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logSavePlaceItemToCuratedCollectionWithMUID:(unint64_t)d
{
  memset(v9, 0, sizeof(v9));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v9[0]) = 2073;
  v5 = [NSNumber numberWithUnsignedLongLong:d];
  stringValue = [v5 stringValue];
  v7 = *(&v9[0] + 1);
  *(&v9[0] + 1) = stringValue;

  sub_100FE9DEC(v8, v9);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v8];
  }

  else
  {
    sub_1005C8464(v8);
  }

  sub_1005C8464(v9);
}

- (void)logPunchOutUsingAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  memset(v7, 0, sizeof(v7));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v7[0]) = 260;
  objc_storeStrong(v7 + 1, identifier);
  sub_100FE9DEC(v6, v7);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v6];
  }

  else
  {
    sub_1005C8464(v6);
  }

  sub_1005C8464(v7);
}

- (void)logPunchOutToURL:(id)l
{
  lCopy = l;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 6050;
  absoluteString = [lCopy absoluteString];
  v6 = *(&v8[0] + 1);
  *(&v8[0] + 1) = absoluteString;

  sub_100FE9DEC(v7, v8);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v7];
  }

  else
  {
    sub_1005C8464(v7);
  }

  sub_1005C8464(v8);
}

- (void)logTapMediaAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v7[0]) = 257;
  DWORD2(v8) = 48;
  objc_storeStrong(v7 + 1, identifier);
  sub_100FE9DEC(v6, v7);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v6];
  }

  else
  {
    sub_1005C8464(v6);
  }

  sub_1005C8464(v7);
}

- (void)logShowMediaAppMenu
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 261;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logTapMediaIntegrationWithType:(int64_t)type verticalIndex:(int64_t)index
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v12[0]) = 259;
  v7 = [objc_opt_class() _eventValueForMediaType:type];
  v8 = *(&v12[0] + 1);
  *(&v12[0] + 1) = v7;

  v9 = [NSNumber numberWithInteger:index];
  v10 = v13;
  *&v13 = v9;

  sub_100FE9DEC(v11, v12);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v11];
  }

  else
  {
    sub_1005C8464(v11);
  }

  sub_1005C8464(v12);
}

- (void)logReportAProblem
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 5013;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logPunchOutToPublisherReviewWithIndex:(unint64_t)index
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 9035;
  v5 = [NSNumber numberWithUnsignedInteger:index];
  v6 = v9;
  *&v9 = v5;

  sub_100FE9DEC(v7, v8);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v7];
  }

  else
  {
    sub_1005C8464(v7);
  }

  sub_1005C8464(v8);
}

- (void)logRemoveCuratedCollection
{
  self->_saved = 0;
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 2088;
  sub_100FE9DEC(v3, v4);
  [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  sub_1005C8464(v4);
}

- (void)logSaveCuratedCollection
{
  self->_saved = 1;
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 2091;
  sub_100FE9DEC(v3, v4);
  [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  sub_1005C8464(v4);
}

- (void)logPullUpCuratedCollectionView
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 1;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logTapCollectionItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v15[0]) = 2068;
  mapItem = [itemCopy mapItem];
  _identifier = [mapItem _identifier];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [_identifier muid]);
  stringValue = [v9 stringValue];
  v11 = *(&v15[0] + 1);
  *(&v15[0] + 1) = stringValue;

  v12 = [NSNumber numberWithUnsignedInteger:index];
  v13 = v16;
  *&v16 = v12;

  sub_100FE9DEC(v14, v15);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v14];
  }

  else
  {
    sub_1005C8464(v14);
  }

  sub_1005C8464(v15);
}

- (void)logTapShowLessDescription
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 9039;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logTapShowMoreDescription
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 9040;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logTryAgain
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 2171;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logClose
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 4;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logScrollDown
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 8;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logScrollUp
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 7;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logRevealCuratedCollectionView
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 21;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)logShareCuratedCollection
{
  memset(v4, 0, sizeof(v4));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v4[0]) = 2096;
  sub_100FE9DEC(v3, v4);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v3];
  }

  else
  {
    sub_1005C8464(v3);
  }

  sub_1005C8464(v4);
}

- (void)updateWithPlaceCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_curatedCollection != collectionCopy)
  {
    v8 = collectionCopy;
    objc_storeStrong(&self->_curatedCollection, collection);
    collectionIdentifier = [(GEOPlaceCollection *)self->_curatedCollection collectionIdentifier];
    self->_collectionMUID = [collectionIdentifier muid];

    v7 = +[CuratedCollectionSyncManager sharedManager];
    self->_saved = [v7 collectionIsSaved:v8];

    collectionCopy = v8;
  }
}

- (CuratedCollectionViewAnalyticsController)initWithCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8.receiver = self;
    v8.super_class = CuratedCollectionViewAnalyticsController;
    v5 = [(CuratedCollectionViewAnalyticsController *)&v8 init];
    if (v5)
    {
      v5->_collectionMUID = [identifierCopy muid];
      v5->_saved = 0;
      v5->_target = 259;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: collectionIdentifier != ((void *)0)", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_eventValueForMediaType:(int64_t)type
{
  if (type > 0x14)
  {
    return 0;
  }

  else
  {
    return *(&off_101660E60 + type);
  }
}

@end