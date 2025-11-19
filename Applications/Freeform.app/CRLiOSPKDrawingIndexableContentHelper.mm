@interface CRLiOSPKDrawingIndexableContentHelper
+ (id)indexableStringFromDrawing:(id)a3;
- (CRLiOSPKDrawingIndexableContentHelper)init;
- (id)drawingIndexedContentsFromBoardWithIdentifierString:(id)a3;
- (void)dealloc;
- (void)p_currentActiveBoardDidUpdatePKDrawingIndexedContents:(id)a3;
- (void)p_removeAllCachedDrawingIndexedContents:(id)a3;
- (void)p_startCachingDrawingIndexedContents:(id)a3;
- (void)removeDrawingIndexedContentsFromBoardWithIdentifierString:(id)a3;
@end

@implementation CRLiOSPKDrawingIndexableContentHelper

- (CRLiOSPKDrawingIndexableContentHelper)init
{
  v10.receiver = self;
  v10.super_class = CRLiOSPKDrawingIndexableContentHelper;
  v2 = [(CRLiOSPKDrawingIndexableContentHelper *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_indexedContentsAccessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    boardIdentifierStringsToDrawingIndexedContents = v3->_boardIdentifierStringsToDrawingIndexedContents;
    v3->_boardIdentifierStringsToDrawingIndexedContents = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"p_currentActiveBoardDidUpdatePKDrawingIndexedContents:" name:@"CRLActiveBoardDidUpdateDrawingIndexedContentsNotification" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"p_startCachingDrawingIndexedContents:" name:@"CRLActiveBoardDidOpenToCacheAllDrawingIndexedContents" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"p_removeAllCachedDrawingIndexedContents:" name:@"CRLActiveBoardDidCloseToRemoveAllCachedDrawingIndexedContents" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"CRLActiveBoardDidUpdateDrawingIndexedContentsNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"CRLActiveBoardDidOpenToCacheAllDrawingIndexedContents" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"CRLActiveBoardDidCloseToRemoveAllCachedDrawingIndexedContents" object:0];

  [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents removeAllObjects];
  boardIdentifierStringsToDrawingIndexedContents = self->_boardIdentifierStringsToDrawingIndexedContents;
  self->_boardIdentifierStringsToDrawingIndexedContents = 0;

  v7.receiver = self;
  v7.super_class = CRLiOSPKDrawingIndexableContentHelper;
  [(CRLiOSPKDrawingIndexableContentHelper *)&v7 dealloc];
}

- (id)drawingIndexedContentsFromBoardWithIdentifierString:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  v5 = [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents objectForKey:v4];

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);

  return v5;
}

- (void)removeDrawingIndexedContentsFromBoardWithIdentifierString:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
}

- (void)p_currentActiveBoardDidUpdatePKDrawingIndexedContents:(id)a3
{
  v11 = [a3 userInfo];
  v4 = objc_opt_class();
  v5 = [v11 objectForKey:@"CRLActiveBoardDidUpdateDrawingIndexedContentsBoardIdentifierString"];
  v6 = sub_100014370(v4, v5);

  v7 = objc_opt_class();
  v8 = [v11 objectForKey:@"CRLActiveBoardDidUpdateDrawingIndexedContents"];
  v9 = sub_100014370(v7, v8);

  if (v6)
  {
    if ([v6 length] && v9 != 0)
    {
      os_unfair_lock_lock(&self->_indexedContentsAccessLock);
      if (self->_shouldCacheIndexedContents)
      {
        [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents setObject:v9 forKey:v6];
      }

      os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
    }
  }
}

- (void)p_startCachingDrawingIndexedContents:(id)a3
{
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  self->_shouldCacheIndexedContents = 1;

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
}

- (void)p_removeAllCachedDrawingIndexedContents:(id)a3
{
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  self->_shouldCacheIndexedContents = 0;
  [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents removeAllObjects];

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
}

+ (id)indexableStringFromDrawing:(id)a3
{
  v3 = [a3 copy];
  [v3 setRecognitionEnabled:1];
  v4 = [v3 indexableContent];
  v5 = [v4 presentableTextRepresentation];
  v6 = +[_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache sharedInstance];
  [v6 cacheString:v5 asAccessibilityDescriptionForDrawing:v3];

  return v5;
}

@end