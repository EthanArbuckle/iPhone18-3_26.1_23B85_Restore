@interface THCoreDataAnnotationSource
- (NSArray)annotations;
- (THAnnotation)temporaryAnnotation;
- (THCoreDataAnnotationSource)initWithAnnotationController:(id)a3 contentNode:(id)a4 storageId:(id)a5 storageLength:(unint64_t)a6;
- (id)annotationsForRange:(_NSRange)a3;
- (void)addInterest:(id)a3;
- (void)annotationControllerTeardown;
- (void)dealloc;
- (void)p_rangeChanged:(_NSRange)a3;
- (void)p_updateCachedAnnotations:(id)a3;
- (void)removeInterest:(id)a3;
- (void)setTemporaryAnnotation:(id)a3;
- (void)updateAnnotations;
@end

@implementation THCoreDataAnnotationSource

- (THCoreDataAnnotationSource)initWithAnnotationController:(id)a3 contentNode:(id)a4 storageId:(id)a5 storageLength:(unint64_t)a6
{
  v12.receiver = self;
  v12.super_class = THCoreDataAnnotationSource;
  v9 = [(THCoreDataAnnotationSource *)&v12 init:a3];
  v10 = v9;
  if (v9)
  {
    v9->mContentNode = a4;
    v9->mAnnotationController = a3;
    v9->mStorageID = a5;
    v10->mInterestedParties = objc_alloc_init(TSUMutablePointerSet);
    v10->mCachedAnnotations = [(THAnnotationStorageController *)v10->mAnnotationController cachedAnnotationsForContentNode:v10->mContentNode];
    [(THAnnotationStorageController *)v10->mAnnotationController registerAnnotationObserver:v10 forContentNode:v10->mContentNode];
    [(THCoreDataAnnotationSource *)v10 updateAnnotations];
  }

  return v10;
}

- (void)dealloc
{
  self->mStorageID = 0;

  self->mInterestedParties = 0;
  self->mCachedAnnotations = 0;
  self->mAnnotationController = 0;
  v3.receiver = self;
  v3.super_class = THCoreDataAnnotationSource;
  [(THCoreDataAnnotationSource *)&v3 dealloc];
}

- (void)p_rangeChanged:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(TSUMutablePointerSet *)self->mInterestedParties objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        v16.location = [v10 rangeOfInterest];
        v17.location = location;
        v17.length = length;
        if (NSIntersectionRange(v16, v17).length)
        {
          [v10 annotationsChangedInRange:{location, length}];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
}

- (void)updateAnnotations
{
  v3 = [-[THAnnotationStorageController cachedAnnotationsForContentNode:](self->mAnnotationController cachedAnnotationsForContentNode:{self->mContentNode), "newAnnotationCacheWithTemporaryAnnotation:", -[THCoreDataAnnotationSource temporaryAnnotation](self, "temporaryAnnotation")}];
  objc_sync_enter(self);
  [(THCoreDataAnnotationSource *)self p_updateCachedAnnotations:v3];
  objc_sync_exit(self);
}

- (void)p_updateCachedAnnotations:(id)a3
{
  mCachedAnnotations = self->mCachedAnnotations;
  if (mCachedAnnotations == a3)
  {
    return;
  }

  if (mCachedAnnotations)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    mCachedAnnotations = a3;
LABEL_5:
    v6 = [mCachedAnnotations differenceRangeWithCache:? storageUID:?];
    v8 = v7;
    goto LABEL_6;
  }

  v8 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  self->mCachedAnnotations = 0;
  self->mCachedAnnotations = a3;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0)
  {

    [(THCoreDataAnnotationSource *)self p_rangeChanged:v6, v8];
  }
}

- (NSArray)annotations
{
  objc_sync_enter(self);
  v3 = [(THAnnotationCache *)self->mCachedAnnotations annotationsForStorageUID:self->mStorageID];
  objc_sync_exit(self);
  v4 = v3;

  return v4;
}

- (id)annotationsForRange:(_NSRange)a3
{
  if (!a3.length)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  result = [(THCoreDataAnnotationSource *)self annotations];
  if (result)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_127CB0;
    v6[3] = &unk_45DCB8;
    v6[4] = location;
    v6[5] = length;
    return [result tsu_arrayOfObjectsPassingTest:v6];
  }

  return result;
}

- (void)setTemporaryAnnotation:(id)a3
{
  objc_sync_enter(self);
  v5 = [(THAnnotationCache *)self->mCachedAnnotations newAnnotationCacheWithTemporaryAnnotation:a3];
  [(THCoreDataAnnotationSource *)self p_updateCachedAnnotations:v5];

  objc_sync_exit(self);
}

- (THAnnotation)temporaryAnnotation
{
  objc_sync_enter(self);
  v3 = [(THAnnotationCache *)self->mCachedAnnotations temporaryAnnotation];
  objc_sync_exit(self);
  return v3;
}

- (void)addInterest:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    [(TSUMutablePointerSet *)self->mInterestedParties addObject:a3];
  }

  ++self->mInterestCount;

  objc_sync_exit(self);
}

- (void)removeInterest:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    [(TSUMutablePointerSet *)self->mInterestedParties removeObject:a3];
  }

  --self->mInterestCount;

  objc_sync_exit(self);
}

- (void)annotationControllerTeardown
{
  [(THAnnotationStorageController *)self->mAnnotationController unregisterAnnotationObserver:self forContentNode:self->mContentNode];

  self->mAnnotationController = 0;
}

@end