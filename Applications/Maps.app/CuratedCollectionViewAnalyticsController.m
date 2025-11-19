@interface CuratedCollectionViewAnalyticsController
+ (id)_eventValueForMediaType:(int64_t)a3;
- (CuratedCollectionViewAnalyticsController)initWithCollectionIdentifier:(id)a3;
- (CuratedCollectionViewEvent)_createBaseEvent;
- (void)_captureCollectionViewEvent:(CuratedCollectionViewEvent *)a3;
- (void)logClose;
- (void)logDiscoverMoreFromPublisher;
- (void)logOpenAppClipWithURL:(id)a3;
- (void)logOpenWebsite;
- (void)logPullUpCuratedCollectionView;
- (void)logPunchOutToPublisherReviewWithIndex:(unint64_t)a3;
- (void)logPunchOutToURL:(id)a3;
- (void)logPunchOutUsingAppWithIdentifier:(id)a3;
- (void)logRemoveCuratedCollection;
- (void)logReportAProblem;
- (void)logRevealAppClipWithURL:(id)a3;
- (void)logRevealCuratedCollectionView;
- (void)logSaveCuratedCollection;
- (void)logSavePlaceItemToCuratedCollectionWithMUID:(unint64_t)a3;
- (void)logScrollDown;
- (void)logScrollUp;
- (void)logShareCuratedCollection;
- (void)logShowMediaAppMenu;
- (void)logTapCollectionItem:(id)a3 atIndex:(unint64_t)a4;
- (void)logTapMediaAppWithIdentifier:(id)a3;
- (void)logTapMediaIntegrationWithType:(int64_t)a3 verticalIndex:(int64_t)a4;
- (void)logTapShowLessDescription;
- (void)logTapShowMoreDescription;
- (void)logTryAgain;
- (void)updateWithPlaceCollection:(id)a3;
@end

@implementation CuratedCollectionViewAnalyticsController

- (void)_captureCollectionViewEvent:(CuratedCollectionViewEvent *)a3
{
  var0 = a3->var0;
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

  var7 = a3->var7;
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

  var1 = a3->var1;
  var6 = a3->var6;
  v7 = [NSArray arrayWithObjects:&var6 count:1];
  var2 = a3->var2;
  var3 = a3->var3;
  var4 = a3->var4;
  v11 = [NSNumber numberWithInt:a3->var8];
  [GEOAPPortal captureCuratedCollectionUserAction:var0 target:var7 value:var1 publisherId:v7 following:0 collectionId:var2 collectionCategory:0 collectionCurrentlySaved:var3 verticalIndex:var4 horizontalIndex:0 placeCardType:v11 possibleActions:0 impossibleActions:0 providerId:a3->var5 repeatableSectionIndex:0 modules:0];

LABEL_4:
  sub_1005C8464(a3);
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
  v5 = [(GEOPlaceCollection *)self->_curatedCollection publisher];
  v6 = [v5 identifier];
  retstr->var6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 muid]);

  retstr->var3 = [NSNumber numberWithBool:self->_saved];
  v8 = [(GEOPlaceCollection *)self->_curatedCollection collectionIdentifier];
  retstr->var5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 resultProviderID]);

  return result;
}

- (void)logRevealAppClipWithURL:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 6105;
  DWORD2(v9) = 670;
  v5 = [v4 absoluteString];
  v6 = *(&v8[0] + 1);
  *(&v8[0] + 1) = v5;

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

- (void)logOpenAppClipWithURL:(id)a3
{
  v4 = a3;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 6090;
  v5 = [v4 absoluteString];
  v6 = *(&v8[0] + 1);
  *(&v8[0] + 1) = v5;

  sub_100FE9DEC(v7, v8);
  if (self)
  {
    [(CuratedCollectionViewAnalyticsController *)self _captureCollectionViewEvent:v7];
  }

  else
  {
    sub_1005C8464(v7);
  }

  [(CuratedCollectionViewAnalyticsController *)self logRevealAppClipWithURL:v4];
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

- (void)logSavePlaceItemToCuratedCollectionWithMUID:(unint64_t)a3
{
  memset(v9, 0, sizeof(v9));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v9[0]) = 2073;
  v5 = [NSNumber numberWithUnsignedLongLong:a3];
  v6 = [v5 stringValue];
  v7 = *(&v9[0] + 1);
  *(&v9[0] + 1) = v6;

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

- (void)logPunchOutUsingAppWithIdentifier:(id)a3
{
  v5 = a3;
  memset(v7, 0, sizeof(v7));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v7[0]) = 260;
  objc_storeStrong(v7 + 1, a3);
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

- (void)logPunchOutToURL:(id)a3
{
  v4 = a3;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 6050;
  v5 = [v4 absoluteString];
  v6 = *(&v8[0] + 1);
  *(&v8[0] + 1) = v5;

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

- (void)logTapMediaAppWithIdentifier:(id)a3
{
  v5 = a3;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v7[0]) = 257;
  DWORD2(v8) = 48;
  objc_storeStrong(v7 + 1, a3);
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

- (void)logTapMediaIntegrationWithType:(int64_t)a3 verticalIndex:(int64_t)a4
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v12[0]) = 259;
  v7 = [objc_opt_class() _eventValueForMediaType:a3];
  v8 = *(&v12[0] + 1);
  *(&v12[0] + 1) = v7;

  v9 = [NSNumber numberWithInteger:a4];
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

- (void)logPunchOutToPublisherReviewWithIndex:(unint64_t)a3
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v8[0]) = 9035;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
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

- (void)logTapCollectionItem:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  [(CuratedCollectionViewAnalyticsController *)self _createBaseEvent];
  LODWORD(v15[0]) = 2068;
  v7 = [v6 mapItem];
  v8 = [v7 _identifier];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 muid]);
  v10 = [v9 stringValue];
  v11 = *(&v15[0] + 1);
  *(&v15[0] + 1) = v10;

  v12 = [NSNumber numberWithUnsignedInteger:a4];
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

- (void)updateWithPlaceCollection:(id)a3
{
  v5 = a3;
  if (self->_curatedCollection != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_curatedCollection, a3);
    v6 = [(GEOPlaceCollection *)self->_curatedCollection collectionIdentifier];
    self->_collectionMUID = [v6 muid];

    v7 = +[CuratedCollectionSyncManager sharedManager];
    self->_saved = [v7 collectionIsSaved:v8];

    v5 = v8;
  }
}

- (CuratedCollectionViewAnalyticsController)initWithCollectionIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = CuratedCollectionViewAnalyticsController;
    v5 = [(CuratedCollectionViewAnalyticsController *)&v8 init];
    if (v5)
    {
      v5->_collectionMUID = [v4 muid];
      v5->_saved = 0;
      v5->_target = 259;
    }

    self = v5;
    v6 = self;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: collectionIdentifier != ((void *)0)", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)_eventValueForMediaType:(int64_t)a3
{
  if (a3 > 0x14)
  {
    return 0;
  }

  else
  {
    return *(&off_101660E60 + a3);
  }
}

@end