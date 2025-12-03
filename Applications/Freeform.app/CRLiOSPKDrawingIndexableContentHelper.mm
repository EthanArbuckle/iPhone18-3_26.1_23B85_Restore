@interface CRLiOSPKDrawingIndexableContentHelper
+ (id)indexableStringFromDrawing:(id)drawing;
- (CRLiOSPKDrawingIndexableContentHelper)init;
- (id)drawingIndexedContentsFromBoardWithIdentifierString:(id)string;
- (void)dealloc;
- (void)p_currentActiveBoardDidUpdatePKDrawingIndexedContents:(id)contents;
- (void)p_removeAllCachedDrawingIndexedContents:(id)contents;
- (void)p_startCachingDrawingIndexedContents:(id)contents;
- (void)removeDrawingIndexedContentsFromBoardWithIdentifierString:(id)string;
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

- (id)drawingIndexedContentsFromBoardWithIdentifierString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  v5 = [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents objectForKey:stringCopy];

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);

  return v5;
}

- (void)removeDrawingIndexedContentsFromBoardWithIdentifierString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents removeObjectForKey:stringCopy];

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
}

- (void)p_currentActiveBoardDidUpdatePKDrawingIndexedContents:(id)contents
{
  userInfo = [contents userInfo];
  v4 = objc_opt_class();
  v5 = [userInfo objectForKey:@"CRLActiveBoardDidUpdateDrawingIndexedContentsBoardIdentifierString"];
  v6 = sub_100014370(v4, v5);

  v7 = objc_opt_class();
  v8 = [userInfo objectForKey:@"CRLActiveBoardDidUpdateDrawingIndexedContents"];
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

- (void)p_startCachingDrawingIndexedContents:(id)contents
{
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  self->_shouldCacheIndexedContents = 1;

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
}

- (void)p_removeAllCachedDrawingIndexedContents:(id)contents
{
  os_unfair_lock_lock(&self->_indexedContentsAccessLock);
  self->_shouldCacheIndexedContents = 0;
  [(NSMutableDictionary *)self->_boardIdentifierStringsToDrawingIndexedContents removeAllObjects];

  os_unfair_lock_unlock(&self->_indexedContentsAccessLock);
}

+ (id)indexableStringFromDrawing:(id)drawing
{
  v3 = [drawing copy];
  [v3 setRecognitionEnabled:1];
  indexableContent = [v3 indexableContent];
  presentableTextRepresentation = [indexableContent presentableTextRepresentation];
  v6 = +[_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache sharedInstance];
  [v6 cacheString:presentableTextRepresentation asAccessibilityDescriptionForDrawing:v3];

  return presentableTextRepresentation;
}

@end