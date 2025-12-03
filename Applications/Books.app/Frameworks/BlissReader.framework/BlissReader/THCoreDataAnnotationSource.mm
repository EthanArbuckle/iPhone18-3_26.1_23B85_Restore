@interface THCoreDataAnnotationSource
- (NSArray)annotations;
- (THAnnotation)temporaryAnnotation;
- (THCoreDataAnnotationSource)initWithAnnotationController:(id)controller contentNode:(id)node storageId:(id)id storageLength:(unint64_t)length;
- (id)annotationsForRange:(_NSRange)range;
- (void)addInterest:(id)interest;
- (void)annotationControllerTeardown;
- (void)dealloc;
- (void)p_rangeChanged:(_NSRange)changed;
- (void)p_updateCachedAnnotations:(id)annotations;
- (void)removeInterest:(id)interest;
- (void)setTemporaryAnnotation:(id)annotation;
- (void)updateAnnotations;
@end

@implementation THCoreDataAnnotationSource

- (THCoreDataAnnotationSource)initWithAnnotationController:(id)controller contentNode:(id)node storageId:(id)id storageLength:(unint64_t)length
{
  v12.receiver = self;
  v12.super_class = THCoreDataAnnotationSource;
  v9 = [(THCoreDataAnnotationSource *)&v12 init:controller];
  v10 = v9;
  if (v9)
  {
    v9->mContentNode = node;
    v9->mAnnotationController = controller;
    v9->mStorageID = id;
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

- (void)p_rangeChanged:(_NSRange)changed
{
  length = changed.length;
  location = changed.location;
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(TSUMutablePointerSet *)self->mInterestedParties objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
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

      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)p_updateCachedAnnotations:(id)annotations
{
  mCachedAnnotations = self->mCachedAnnotations;
  if (mCachedAnnotations == annotations)
  {
    return;
  }

  if (mCachedAnnotations)
  {
    goto LABEL_5;
  }

  if (annotations)
  {
    mCachedAnnotations = annotations;
LABEL_5:
    v6 = [mCachedAnnotations differenceRangeWithCache:? storageUID:?];
    v8 = v7;
    goto LABEL_6;
  }

  v8 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  self->mCachedAnnotations = 0;
  self->mCachedAnnotations = annotations;
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

- (id)annotationsForRange:(_NSRange)range
{
  if (!range.length)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
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

- (void)setTemporaryAnnotation:(id)annotation
{
  objc_sync_enter(self);
  v5 = [(THAnnotationCache *)self->mCachedAnnotations newAnnotationCacheWithTemporaryAnnotation:annotation];
  [(THCoreDataAnnotationSource *)self p_updateCachedAnnotations:v5];

  objc_sync_exit(self);
}

- (THAnnotation)temporaryAnnotation
{
  objc_sync_enter(self);
  temporaryAnnotation = [(THAnnotationCache *)self->mCachedAnnotations temporaryAnnotation];
  objc_sync_exit(self);
  return temporaryAnnotation;
}

- (void)addInterest:(id)interest
{
  objc_sync_enter(self);
  if (interest)
  {
    [(TSUMutablePointerSet *)self->mInterestedParties addObject:interest];
  }

  ++self->mInterestCount;

  objc_sync_exit(self);
}

- (void)removeInterest:(id)interest
{
  objc_sync_enter(self);
  if (interest)
  {
    [(TSUMutablePointerSet *)self->mInterestedParties removeObject:interest];
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