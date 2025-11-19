@interface THModelContentNode
+ (id)annotationIDForInfoID:(id)a3 contentNodeID:(id)a4;
+ (id)legacyBookmarkIDForInfoID:(id)a3 contentNodeID:(id)a4;
- (BOOL)containsInfo:(id)a3;
- (BOOL)hasBodyStorageUID:(id)a3;
- (BOOL)hasCachedVersion;
- (BOOL)isBodyStorage:(id)a3;
- (BOOL)nodeBodyExists;
- (BOOL)p_possiblyReplaceCFIFragmentForExistingOffsetEntry:(id)a3 newEntry:(id)a4;
- (NSString)description;
- (THModelContentNode)initWithTitle:(id)a3 includeInTOC:(BOOL)a4 context:(id)a5;
- (id)annotationIDForInfo:(id)a3;
- (id)bodyStorageForPresentationType:(id)a3;
- (id)cfiForOffset:(unint64_t)a3 storageUID:(id)a4 includeFilename:(BOOL)a5 pedantic:(BOOL)a6;
- (id)cfiForRange:(_NSRange)a3 storageUID:(id)a4 includeFilename:(BOOL)a5 pedantic:(BOOL)a6;
- (id)cfiFragWithOffset:(unint64_t)a3 storageUID:(id)a4 pedantic:(BOOL)a5;
- (id)contentNodeForRelativePageIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (id)expandableInfoForWidgetInfo:(id)a3 forPresentationType:(id)a4;
- (id)gutterStorageForPresentationType:(id)a3;
- (id)infoForNodeUniqueID:(id)a3;
- (id)infoForNodeUniqueID:(id)a3 forPresentationType:(id)a4;
- (id)legacyBookmarkIDForInfo:(id)a3;
- (id)nodeBodyForPresentationType:(id)a3;
- (id)nodeUniqueIDForInfo:(id)a3;
- (id)nodeUniqueIDForInfo:(id)a3 forPresentationType:(id)a4;
- (id)p_bodyForPresentationType:(id)a3;
- (id)pageAtRelativeIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (id)pageInfoForStorageAnchor:(id)a3 forPresentationType:(id)a4;
- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)a3 presentationType:(id)a4;
- (id)pagesForPresentationType:(id)a3;
- (id)storageAnchorAfterAnchor:(id)a3 forNthInstance:(unint64_t)a4 ofSearchString:(id)a5 presentationType:(id)a6;
- (id)storageAnchorForAnchorId:(id)a3;
- (id)storageAnchorForCfiFrag:(id)a3;
- (id)storageAnchorForCfiInnerPathReader:(id)a3;
- (id)storageAnchorForCfiReader:(id)a3;
- (id)storageAnchorForNodeRelativePageIndex:(unint64_t)a3;
- (id)storagesForAllPresentationTypes;
- (id)storagesForPresentationType:(id)a3;
- (int)displayStartingPageFormatForPresentationType:(id)a3;
- (int64_t)p_binarySearchPageArray:(id)a3 forCharacterIndex:(unint64_t)a4 min:(int64_t)a5 max:(int64_t)a6;
- (unint64_t)absolutePhysicalPageIndex:(unint64_t)a3 forFragment:(id)a4;
- (unint64_t)bodyCharIndexForGutterDrawableForWidgetInfo:(id)a3 forPresentationType:(id)a4;
- (unint64_t)displayStartingPageNumberForPresentationType:(id)a3;
- (unint64_t)pageCountForPresentationType:(id)a3;
- (unint64_t)relativeIndexOfPage:(id)a3 forPresentationType:(id)a4;
- (unint64_t)relativePageIndexForBodyCharacterIndex:(unint64_t)a3;
- (unint64_t)relativePageIndexForCharacterIndex:(unint64_t)a3 forInfo:(id)a4;
- (unint64_t)relativePageIndexForInfo:(id)a3 forPresentationType:(id)a4;
- (void)accumulateDisplayPageNumbersIntoAbsolutePageIndexMap:(id)a3 AndDisplayPageNumberArray:(id)a4;
- (void)addPageInfo:(id)a3 insertContext:(id)a4 forPresentationType:(id)a5;
- (void)cancelLoading;
- (void)contentLoadOperation:(id)a3 loadedContentBodies:(id)a4;
- (void)contentLoadOperationFailed:(id)a3;
- (void)dealloc;
- (void)i_flushingBody:(id)a3;
- (void)invalidatePresentationType:(id)a3;
- (void)p_clearFieldsForFutureLoading;
- (void)p_releaseFlushedBodies;
- (void)p_setStorageAnchorsForCfis:(id)a3;
- (void)p_setTextChildOffsetStorageAnchorsForCfis:(id)a3;
- (void)paginationController:(id)a3 paginatedBody:(id)a4 forPresentationType:(id)a5;
- (void)performWhenFinishedLoading:(id)a3 onError:(id)a4;
- (void)releaseBodies;
- (void)retainBodies;
- (void)setAbsolutePhysicalPageIndex:(unint64_t)a3 forFragment:(id)a4;
- (void)setAnchorForCfiFrag:(id)a3;
- (void)setCfiBase:(id)a3;
- (void)setCfiFragsForTextChildOffsets:(id)a3;
- (void)setDisplayStartingPageFormat:(int)a3 presentationType:(id)a4;
- (void)setDisplayStartingPageFormats:(id)a3;
- (void)setDisplayStartingPageNumber:(unint64_t)a3 presentationType:(id)a4;
- (void)setDisplayStartingPageNumbers:(id)a3;
- (void)setFragmentPhysicalPageIndexes:(id)a3;
- (void)setNodeUniqueID:(id)a3 forInfo:(id)a4 presentationType:(id)a5;
- (void)setPresentationContentBodies:(id)a3;
- (void)setStorage:(id)a3 range:(_NSRange)a4 forAnchorId:(id)a5;
- (void)setStorageAnchor:(id)a3 forAnchorId:(id)a4;
- (void)setStorageAnchorsForAnchorID:(id)a3;
- (void)setStorageAnchorsForAnchorIDs:(id)a3;
- (void)setStorageAnchorsForCfiFrag:(id)a3;
- (void)setTextChildOffsetStorageAnchorsForCfiFrag:(id)a3;
- (void)startLoading;
- (void)waitUntilFinishedLoading;
- (void)waitUntilFinishedLoadingAndPaginating;
- (void)willRead;
- (void)willReadJustLoad;
@end

@implementation THModelContentNode

- (void)setPresentationContentBodies:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mPresentationContentBodies = a3;
}

- (void)setDisplayStartingPageNumbers:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mDisplayStartingPageNumbers = a3;
}

- (void)setDisplayStartingPageFormats:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mDisplayStartingPageFormats = a3;
}

- (void)setFragmentPhysicalPageIndexes:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mFragmentPhysicalPageIndexes = a3;
}

- (void)setStorageAnchorsForAnchorID:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mStorageAnchorsForAnchorID = a3;
}

- (void)setAnchorForCfiFrag:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mAnchorForCfiFrag = a3;
}

- (void)setStorageAnchorsForCfiFrag:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mStorageAnchorsForCfiFrag = a3;
}

- (void)setTextChildOffsetStorageAnchorsForCfiFrag:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mTextChildOffsetStorageAnchorsForCfiFrag = a3;
}

- (void)setCfiFragsForTextChildOffsets:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mCfiFragsForTextChildOffsets = a3;
}

- (void)setCfiBase:(id)a3
{
  [(THModelContentNode *)self willModify];
  v5 = a3;

  self->mCfiBase = a3;
}

- (THModelContentNode)initWithTitle:(id)a3 includeInTOC:(BOOL)a4 context:(id)a5
{
  v8.receiver = self;
  v8.super_class = THModelContentNode;
  v5 = [(THModelNode *)&v8 initWithTitle:a3 includeInTOC:a4 context:a5];
  if (v5)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    -[THModelContentNode setPresentationContentBodies:](v5, "setPresentationContentBodies:", [[TSUNoCopyDictionary alloc] initWithCFDictionary:Mutable]);
    CFRelease(Mutable);
    [(THModelContentNode *)v5 setStorageAnchorsForAnchorID:+[NSMutableDictionary dictionary]];
    [(THModelContentNode *)v5 setAnchorForCfiFrag:+[NSMutableDictionary dictionary]];
    [(THModelContentNode *)v5 setStorageAnchorsForCfiFrag:+[NSMutableDictionary dictionary]];
    [(THModelContentNode *)v5 setTextChildOffsetStorageAnchorsForCfiFrag:+[NSMutableDictionary dictionary]];
    v5->mCfiFragsForTextChildOffsets = objc_alloc_init(NSMutableDictionary);
    [(THModelContentNode *)v5 setDisplayStartingPageNumbers:+[TSUNoCopyDictionary dictionary]];
    [(THModelContentNode *)v5 setDisplayStartingPageFormats:+[TSUNoCopyDictionary dictionary]];
    [(THModelContentNode *)v5 setFragmentPhysicalPageIndexes:+[NSMutableDictionary dictionary]];
    v5->mLoadState = 0;
    v5->mLoadStateLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)dealloc
{
  mLoadState = self->mLoadState;
  v4 = mLoadState > 5;
  v5 = (1 << mLoadState) & 0x31;
  if (v4 || v5 == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) ownerRelease];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  self->mFragmentPhysicalPageIndexes = 0;
  self->mPresentationContentBodies = 0;

  self->mPublicationContext = 0;
  self->mApplePubURL = 0;

  self->mLoadOperation = 0;
  self->mStorageAnchorsForAnchorID = 0;

  self->mStorageAnchorsForCfiFrag = 0;
  self->mTextChildOffsetStorageAnchorsForCfiFrag = 0;

  self->mCfiFragsForTextChildOffsets = 0;
  self->mAnchorForCfiFrag = 0;

  self->mDisplayStartingPageNumbers = 0;
  self->mDisplayStartingPageFormats = 0;

  self->_paginationOperation = 0;
  self->mBodyObjectsFlushed = 0;
  v13.receiver = self;
  v13.super_class = THModelContentNode;
  [(THModelNode *)&v13 dealloc];
}

- (void)i_flushingBody:(id)a3
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if (self->mLoadState != 4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mBodyObjectsFlushed = 1;

  self->mLoadOperation = 0;

  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (id)p_bodyForPresentationType:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  if (self->mLoadState == 5)
  {
    return 0;
  }

  [(THModelContentNode *)self willRead];
  os_unfair_lock_lock(&self->mLoadStateLock);
  v5 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:a3];
  [v5 ownerAutoreleasedAccess];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  return v5;
}

- (void)p_releaseFlushedBodies
{
  if (self->mBodyObjectsFlushed)
  {
    objc_sync_enter(self);
    if (self->mBodyObjectsFlushed)
    {
      os_unfair_lock_lock(&self->mLoadStateLock);
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        v5 = *v8;
        do
        {
          v6 = 0;
          do
          {
            if (*v8 != v5)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v7 + 1) + 8 * v6) ownerRelease];
            v6 = v6 + 1;
          }

          while (v4 != v6);
          v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        }

        while (v4);
      }

      [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] removeAllObjects];
      self->mBodyObjectsFlushed = 0;
      self->mLoadState = 0;
      [(THModelContentNode *)self setPaginatedBodyStale:0];
      os_unfair_lock_unlock(&self->mLoadStateLock);
    }

    objc_sync_exit(self);
  }
}

- (void)invalidatePresentationType:(id)a3
{
  if ([a3 isFlow])
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THModelContentNode invalidatePresentationType:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelContentNode.m"];

    [v5 handleFailureInFunction:v6 file:v7 lineNumber:192 description:@"Code for unloading the flow presentation type is not done."];
  }

  else if ([a3 isPaginated])
  {
    os_unfair_lock_lock(&self->mLoadStateLock);
    mLoadState = self->mLoadState;
    if ((mLoadState - 3) <= 1)
    {
      if (mLoadState == 3)
      {
        [(THReflowableContentPaginationOperation *)self->_paginationOperation cancel];

        self->_paginationOperation = 0;
      }

      [(THModelContentNode *)self setPaginatedBodyStale:1];
    }

    [(THModelContentNode *)self setDisplayStartingPageNumber:0x7FFFFFFFFFFFFFFFLL presentationType:a3];
    [(THModelNode *)self setPageCount:0x7FFFFFFFFFFFFFFFLL forPresentationType:a3];

    os_unfair_lock_unlock(&self->mLoadStateLock);
  }
}

- (unint64_t)displayStartingPageNumberForPresentationType:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self displayStartingPageNumbers] objectForKey:a3];
  if (v3)
  {
    return [v3 intValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setDisplayStartingPageNumber:(unint64_t)a3 presentationType:(id)a4
{
  v6 = [(THModelContentNode *)self displayStartingPageNumbers];
  v7 = [NSNumber numberWithInteger:a3];

  [(TSUNoCopyDictionary *)v6 setObject:v7 forUncopiedKey:a4];
}

- (int)displayStartingPageFormatForPresentationType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self displayStartingPageFormats] objectForKey:a3];
  if (!v3)
  {
    return 0;
  }

  return [v3 intValue];
}

- (void)setDisplayStartingPageFormat:(int)a3 presentationType:(id)a4
{
  v6 = [(THModelContentNode *)self displayStartingPageFormats];
  v7 = [NSNumber numberWithInteger:a3];

  [(TSUNoCopyDictionary *)v6 setObject:v7 forUncopiedKey:a4];
}

- (void)retainBodies
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  [(THModelContentNode *)self p_releaseFlushedBodies];
  if (self->mLoadState == 4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = &OBJC_IVAR___THModelContentNode_mLoadedBodyRetainCount;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = v9;
          [v9 ownerAutoreleasedAccess];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = &OBJC_IVAR___THModelContentNode_mLoadedBodyRetainCount;
    }
  }

  else
  {
    v7 = &OBJC_IVAR___THModelContentNode_mPreloadingBodyRetainCount;
  }

  ++*&self->super.TSPObject_opaque[*v7];
  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)releaseBodies
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if (self->mLoadState == 4)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      v7 = &OBJC_IVAR___THModelContentNode_mLoadedBodyRetainCount;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = &OBJC_IVAR___THModelContentNode_mLoadedBodyRetainCount;
    }
  }

  else
  {
    v7 = &OBJC_IVAR___THModelContentNode_mPreloadingBodyRetainCount;
  }

  --*&self->super.TSPObject_opaque[*v7];
  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)willRead
{
  if (self->mLoadState != 5)
  {
    [(THModelContentNode *)self startLoading];

    [(THModelContentNode *)self waitUntilFinishedLoadingAndPaginating];
  }
}

- (void)willReadJustLoad
{
  if (self->mLoadState != 5)
  {
    [(THModelContentNode *)self startLoading];

    [(THModelContentNode *)self waitUntilFinishedLoading];
  }
}

- (BOOL)nodeBodyExists
{
  if (self->mLoadState == 4)
  {
    return 1;
  }

  else
  {
    return [(THModelContentNode *)self hasCachedVersion];
  }
}

- (id)bodyStorageForPresentationType:(id)a3
{
  v3 = [(THModelContentNode *)self p_bodyForPresentationType:a3];

  return [v3 bodyStorage];
}

- (id)nodeBodyForPresentationType:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:a3];
  }

  [v3 ownerAutoreleasedAccess];
  return v3;
}

- (unint64_t)pageCountForPresentationType:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_9:
    v9 = [(THReflowablePaginationController *)[(THModelContentNode *)self reflowablePaginationController] paginationResultForContentNode:self];
    if (!v9)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return [v9 pageCount];
  }

  mPageCountByPresentationType = self->super.mPageCountByPresentationType;
  if (!mPageCountByPresentationType || (v6 = -[TSUNoCopyDictionary objectForKey:](mPageCountByPresentationType, "objectForKey:", a3)) == 0 || (result = [v6 unsignedIntegerValue], result == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:a3];
    if (!v8)
    {
      goto LABEL_9;
    }

    result = [v8 pageCount];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }
  }

  return result;
}

- (id)pagesForPresentationType:(id)a3
{
  v3 = [(THModelContentNode *)self p_bodyForPresentationType:a3];

  return [v3 pages];
}

- (void)addPageInfo:(id)a3 insertContext:(id)a4 forPresentationType:(id)a5
{
  if ([(THModelNode *)self state]== 2)
  {
    [a3 willBeAddedToDocumentRoot:-[THModelContentNode documentRoot](self context:{"documentRoot"), a4}];
  }

  [-[THModelContentNode p_bodyForPresentationType:](self p_bodyForPresentationType:{a5), "addPageInfo:", a3}];
  [a3 setParent:self];
  if ([(THModelNode *)self state]== 2)
  {
    v9 = [(THModelContentNode *)self documentRoot];

    [a3 wasAddedToDocumentRoot:v9 context:a4];
  }
}

- (unint64_t)relativePageIndexForInfo:(id)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v5 relativePageIndexForInfo:a3];
}

- (id)pageAtRelativeIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([objc_msgSend(v5 "pages")] <= a3)
  {
    return 0;
  }

  v7 = [v6 pages];

  return [v7 objectAtIndex:a3];
}

- (id)pageInfoForStorageAnchor:(id)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];
  v6 = [a3 range];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 pages];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v18;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v18 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    v13 = [v12 bodyStorageRange];
    if (v13 <= v6 && &v13[v14] >= v6)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (unint64_t)relativeIndexOfPage:(id)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [v5 pages];

  return [v6 indexOfObject:a3];
}

- (id)contentNodeForRelativePageIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  v5 = self;
  v6 = [(THModelContentNode *)self pageCountForPresentationType:a4];
  if (v6 <= a3 || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v5;
}

- (id)storagesForPresentationType:(id)a3
{
  if (self->mLoadState != 4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelContentNode *)self willRead];
  v5 = [[TSKDocumentModelEnumerator alloc] initWithRootModelObject:-[THModelContentNode p_bodyForPresentationType:](self filter:{"p_bodyForPresentationType:", a3), &stru_45B780}];

  return v5;
}

- (id)storagesForAllPresentationTypes
{
  v3 = +[TSUMutablePointerSet set];
  [(THModelContentNode *)self willRead];
  os_unfair_lock_lock(&self->mLoadStateLock);
  v4 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] copy];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v4;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [(THModelContentNode *)self storagesForPresentationType:v10];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v3 addObject:*(*(&v18 + 1) + 8 * v15)];
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  return v3;
}

- (int64_t)p_binarySearchPageArray:(id)a3 forCharacterIndex:(unint64_t)a4 min:(int64_t)a5 max:(int64_t)a6
{
  if (a6 < a5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = a5 + (a6 - a5) / 2;
  v13 = [a3 objectAtIndex:v6];
  if ([v13 pageStartCharIndex] <= a4)
  {
    if ([v13 pageEndCharIndex] > a4)
    {
      return v6;
    }

    v18 = v6 + 1;
    v15 = self;
    v16 = a3;
    v17 = a4;
    v14 = a6;
  }

  else
  {
    v14 = v6 - 1;
    v15 = self;
    v16 = a3;
    v17 = a4;
    v18 = a5;
  }

  return [(THModelContentNode *)v15 p_binarySearchPageArray:v16 forCharacterIndex:v17 min:v18 max:v14];
}

- (unint64_t)relativePageIndexForBodyCharacterIndex:(unint64_t)a3
{
  v5 = [-[THModelContentNode p_bodyForPresentationType:](self p_bodyForPresentationType:{+[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", -[THModelContentNode context](self, "context"))), "pages"}];
  if ([v5 count] == &dword_0 + 1)
  {
    return 0;
  }

  result = -[THModelContentNode p_binarySearchPageArray:forCharacterIndex:min:max:](self, "p_binarySearchPageArray:forCharacterIndex:min:max:", v5, a3, 0, [v5 count] - 1);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a3)
    {
      return 0;
    }

    if ([objc_msgSend(v5 objectAtIndex:{objc_msgSend(v5, "count") - 1), "pageEndCharIndex"}] == a3)
    {
      return [v5 count] - 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (unint64_t)relativePageIndexForCharacterIndex:(unint64_t)a3 forInfo:(id)a4
{
  if (!a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7 && [(THModelContentNode *)self isBodyStorage:v7])
  {

    return [(THModelContentNode *)self relativePageIndexForBodyCharacterIndex:a3];
  }

  else
  {
    v9 = [THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self context]];

    return [(THModelContentNode *)self relativePageIndexForInfo:a4 forPresentationType:v9];
  }
}

- (void)accumulateDisplayPageNumbersIntoAbsolutePageIndexMap:(id)a3 AndDisplayPageNumberArray:(id)a4
{
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self context]];
  v8 = [(THModelContentNode *)self pageCountForPresentationType:v7];
  v9 = [(THModelNode *)self precedingPageCountForPresentationType:v7];
  v10 = [(THModelContentNode *)self displayStartingPageNumberForPresentationType:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v10;
    v14 = [(THModelContentNode *)self displayStartingPageFormatForPresentationType:v7];
    if (v8)
    {
      v15 = v14;
      do
      {
        v16 = [+[NSString stringForValue:withListNumberFormat:includeFormatting:](NSString stringForValue:v13 withListNumberFormat:v15 includeFormatting:0), "lowercaseString"];
        v17 = [a3 objectForKey:v16];
        if (!v17)
        {
          v17 = +[NSMutableArray array];
          [a3 setObject:v17 forKey:v16];
        }

        [v17 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v9)}];
        if (v16)
        {
          v18 = a4;
          v19 = v16;
        }

        else
        {
          v19 = +[NSNull null];
          v18 = a4;
        }

        [v18 insertObject:v19 atIndex:v9];
        v13 = (v13 + 1);
        ++v9;
        --v8;
      }

      while (v8);
    }
  }
}

- (id)nodeUniqueIDForInfo:(id)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];

  return [v5 nodeUniqueIDForInfo:a3];
}

- (id)infoForNodeUniqueID:(id)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];

  return [v5 infoForNodeUniqueID:a3];
}

- (id)infoForNodeUniqueID:(id)a3
{
  v5 = [(THModelNode *)self paginatedPresentationType];

  return [(THModelContentNode *)self infoForNodeUniqueID:a3 forPresentationType:v5];
}

- (void)setNodeUniqueID:(id)a3 forInfo:(id)a4 presentationType:(id)a5
{
  v7 = [(THModelContentNode *)self p_bodyForPresentationType:a5];

  [v7 setNodeUniqueID:a3 forInfo:a4];
}

- (BOOL)isBodyStorage:(id)a3
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  mLoadState = self->mLoadState;
  if ((mLoadState - 3) >= 2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mLoadState = self->mLoadState;
  }

  v6 = mLoadState - 1;
  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (v6 <= 1)
  {
    [(THModelContentNode *)self willReadJustLoad];
  }

  os_unfair_lock_lock(&self->mLoadStateLock);
  v7 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * v11) bodyStorage] == a3)
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (BOOL)hasBodyStorageUID:(id)a3
{
  [(THModelContentNode *)self willReadJustLoad];
  v5 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([objc_msgSend(*(*(&v11 + 1) + 8 * v9) nodeUniqueIDForInfo:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "bodyStorage")), "isEqualToString:", a3}])
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (id)nodeUniqueIDForInfo:(id)a3
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  v5 = self->mLoadState - 1;
  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (v5 <= 1)
  {
    [(THModelContentNode *)self willReadJustLoad];
  }

  os_unfair_lock_lock(&self->mLoadStateLock);
  v6 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (self->mLoadState < 3u)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v7)
  {
LABEL_12:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v8 = v7;
  v9 = *v13;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v13 != v9)
    {
      objc_enumerationMutation(v6);
    }

    result = [*(*(&v12 + 1) + 8 * v10) nodeUniqueIDForInfo:a3];
    if (result)
    {
      return result;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }
}

- (BOOL)containsInfo:(id)a3
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  mLoadState = self->mLoadState;
  if ((mLoadState - 3) >= 2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mLoadState = self->mLoadState;
  }

  v6 = mLoadState - 1;
  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (v6 <= 1)
  {
    [(THModelContentNode *)self willReadJustLoad];
  }

  os_unfair_lock_lock(&self->mLoadStateLock);
  v7 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * v11) "infos")])
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (void)setStorageAnchor:(id)a3 forAnchorId:(id)a4
{
  if ([a3 contentNode] != self)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelContentNode *)self willModify];
  mStorageAnchorsForAnchorID = self->mStorageAnchorsForAnchorID;

  [(NSMutableDictionary *)mStorageAnchorsForAnchorID setObject:a3 forKey:a4];
}

- (id)storageAnchorForNodeRelativePageIndex:(unint64_t)a3
{
  [(THModelContentNode *)self willRead];
  v5 = [(THModelContentNode *)self pageAtRelativeIndex:a3 forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self context]]];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 bodyStorageRange];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(THModelContentNode *)self reflowablePaginationController])
    {
      return 0;
    }

    v9 = [(THReflowablePaginationController *)[(THModelContentNode *)self reflowablePaginationController] paginationResultForContentNode:self];
    if (!v9)
    {
      return 0;
    }

    v7 = [v9 hintRangeForRelativePageIndex:a3];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v11 = v7;
  v12 = v8;
  v13 = -[THModelContentNode nodeUniqueIDForInfo:](self, "nodeUniqueIDForInfo:", [v6 bodyStorage]);

  return [THModelStorageAnchor storageAnchorWithContentNode:self storageUID:v13 range:v11, v12];
}

- (id)storageAnchorForAnchorId:(id)a3
{
  [(THModelContentNode *)self willRead];
  v5 = [(THModelContentNode *)self storageAnchorsForAnchorID];

  return [(NSMutableDictionary *)v5 objectForKey:a3];
}

- (void)setStorage:(id)a3 range:(_NSRange)a4 forAnchorId:(id)a5
{
  v7 = [THModelStorageAnchor storageAnchorWithContentNode:self storageUID:[(THModelContentNode *)self nodeUniqueIDForInfo:a3] range:a4.location, a4.length];

  [(THModelContentNode *)self setStorageAnchor:v7 forAnchorId:a5];
}

- (void)setAbsolutePhysicalPageIndex:(unint64_t)a3 forFragment:(id)a4
{
  [(THModelContentNode *)self willModify];
  v7 = [(THModelContentNode *)self fragmentPhysicalPageIndexes];
  v8 = [NSNumber numberWithUnsignedInteger:a3];

  [(NSMutableDictionary *)v7 setObject:v8 forKey:a4];
}

- (unint64_t)absolutePhysicalPageIndex:(unint64_t)a3 forFragment:(id)a4
{
  v4 = [(NSMutableDictionary *)[(THModelContentNode *)self fragmentPhysicalPageIndexes] objectForKey:a4];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v4 unsignedIntegerValue];
}

- (void)setStorageAnchorsForAnchorIDs:(id)a3
{
  [(NSMutableDictionary *)self->mStorageAnchorsForAnchorID removeAllObjects];
  v5 = [a3 allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [a3 objectForKey:v10];
        [v11 setContentNode:self];
        [(NSMutableDictionary *)self->mStorageAnchorsForAnchorID setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)p_setStorageAnchorsForCfis:(id)a3
{
  [(NSMutableDictionary *)self->mStorageAnchorsForCfiFrag removeAllObjects];
  v5 = [a3 allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [a3 objectForKey:v10];
        [v11 setContentNode:self];
        [(NSMutableDictionary *)self->mStorageAnchorsForCfiFrag setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)p_possiblyReplaceCFIFragmentForExistingOffsetEntry:(id)a3 newEntry:(id)a4
{
  v6 = [objc_msgSend(a3 "first")];
  if (!v6)
  {
    v7 = [objc_msgSend(objc_msgSend(a4 "second")];
    if (v7 > [objc_msgSend(objc_msgSend(a3 "second")])
    {
      [a3 setSecond:{objc_msgSend(a4, "second")}];
    }
  }

  return v6 == 0;
}

- (void)p_setTextChildOffsetStorageAnchorsForCfis:(id)a3
{
  [(NSMutableDictionary *)self->mTextChildOffsetStorageAnchorsForCfiFrag removeAllObjects];
  [(NSMutableDictionary *)self->mCfiFragsForTextChildOffsets removeAllObjects];
  v5 = [a3 allKeys];
  v19 = [(THModelContentNode *)self p_cfiFragsForOffsetsComparator];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 138543362;
    v18 = v7;
    do
    {
      v10 = 0;
      v20 = v8;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [a3 objectForKey:{v11, v18}];
        [v12 setContentNode:self];
        [(NSMutableDictionary *)self->mTextChildOffsetStorageAnchorsForCfiFrag setObject:v12 forKey:v11];
        if ([v12 storageUID])
        {
          if ([v12 storageUID])
          {
            v13 = -[NSMutableDictionary objectForKeyedSubscript:](self->mCfiFragsForTextChildOffsets, "objectForKeyedSubscript:", [v12 storageUID]);
            if (!v13)
            {
              v13 = +[NSMutableArray array];
              -[NSMutableDictionary setObject:forKeyedSubscript:](self->mCfiFragsForTextChildOffsets, "setObject:forKeyedSubscript:", v13, [v12 storageUID]);
            }

            v14 = +[TSUMutablePair pairWithFirst:second:](TSUMutablePair, "pairWithFirst:second:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 range]), v11);
            v15 = [v13 indexOfObject:v14 inSortedRange:0 options:objc_msgSend(v13 usingComparator:{"count"), 1024, v19}];
            v8 = v20;
            if (([v13 count] <= v15 || !-[THModelContentNode p_possiblyReplaceCFIFragmentForExistingOffsetEntry:newEntry:](self, "p_possiblyReplaceCFIFragmentForExistingOffsetEntry:newEntry:", objc_msgSend(v13, "objectAtIndexedSubscript:", v15), v14)) && (!v15 || objc_msgSend(v13, "count") <= v15 - 1 || !-[THModelContentNode p_possiblyReplaceCFIFragmentForExistingOffsetEntry:newEntry:](self, "p_possiblyReplaceCFIFragmentForExistingOffsetEntry:newEntry:", objc_msgSend(v13, "objectAtIndexedSubscript:"), v14)))
            {
              [v13 insertObject:v14 atIndex:v15];
            }
          }
        }

        else
        {
          v16 = THLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v12 description];
            *buf = v18;
            v27 = v17;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Encountered invalid anchor %{public}@.  This can happen when two TSWPStorages share an ID.  Will not use this anchor in the CFI fragment reverse map.", buf, 0xCu);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }
}

- (id)storageAnchorForCfiFrag:(id)a3
{
  [(THModelContentNode *)self willRead];
  result = [(NSMutableDictionary *)[(THModelContentNode *)self storageAnchorsForCfiFrag] objectForKey:a3];
  if (!result)
  {
    v6 = [(THModelContentNode *)self textChildOffsetStorageAnchorsForCfiFrag];

    return [(NSMutableDictionary *)v6 objectForKey:a3];
  }

  return result;
}

- (id)cfiFragWithOffset:(unint64_t)a3 storageUID:(id)a4 pedantic:(BOOL)a5
{
  v5 = a5;
  [(THModelContentNode *)self willRead];
  if (v5)
  {
    v9 = [(THModelContentNode *)self p_cfiFragsForOffsetsComparator];
    v10 = [(NSMutableDictionary *)self->mCfiFragsForTextChildOffsets objectForKeyedSubscript:a4];
    if (v10)
    {
      v11 = v10;
      v12 = [NSNumber numberWithUnsignedInteger:a3];
      v13 = [v11 indexOfObject:+[TSUMutablePair pairWithFirst:second:](TSUMutablePair inSortedRange:"pairWithFirst:second:" options:v12 usingComparator:{&stru_471858), 0, objc_msgSend(v11, "count"), 1024, v9}];
      if ([v11 count] > v13 && !objc_msgSend(objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", v13), "first"), "compare:", v12))
      {
        v15 = [objc_msgSend(v11 objectAtIndexedSubscript:{v13), "second"}];
        v16 = 0;
LABEL_30:
        v19 = v15;
        if (v15)
        {
          goto LABEL_31;
        }

        return 0;
      }

      if (v13 && [v11 count] > v13 - 1)
      {
        v14 = [v11 objectAtIndexedSubscript:?];
        v15 = [v14 second];
        v16 = a3 - [objc_msgSend(v14 "first")];
        goto LABEL_30;
      }
    }

    return 0;
  }

  v17 = [(NSMutableDictionary *)self->mStorageAnchorsForCfiFrag keyEnumerator];
  v18 = [v17 nextObject];
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v15 = 0;
  v16 = -1;
  while (1)
  {
    v20 = [(THModelContentNode *)self storageAnchorForCfiFrag:v19];
    if ([objc_msgSend(v20 "storageUID")])
    {
      break;
    }

LABEL_26:
    v19 = [v17 nextObject];
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  v21 = [v20 range];
  v22 = a3 - v21;
  if (a3 != v21)
  {
    v24 = v16 == -1 || v22 < v16;
    v25 = !v24;
    if (v24)
    {
      v26 = v19;
    }

    else
    {
      v26 = v15;
    }

    if (v25)
    {
      v27 = v16;
    }

    else
    {
      v27 = a3 - v21;
    }

    if (v22 >= 1)
    {
      v15 = v26;
      v16 = v27;
    }

    goto LABEL_26;
  }

  v16 = 0;
LABEL_31:
  if (v5 || (v28 = [(NSMutableDictionary *)self->mAnchorForCfiFrag objectForKey:v19]) == 0)
  {
    v29 = &stru_471858;
  }

  else
  {
    v29 = [NSString stringWithFormat:@"[%@]", v28];
  }

  return [v19 stringByAppendingFormat:@"%@:%ld", v29, v16];
}

- (id)storageAnchorForCfiInnerPathReader:(id)a3
{
  v19 = 0;
  v5 = [a3 componentCount];
  v6 = [a3 pathStringNoIds];
  if (v5)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      if (v8)
      {
        [a3 componentAtIndex:--v5 identifier:&v19];
        v7 = [v7 stringByDeletingLastPathComponent];
        v9 = 0;
      }

      else
      {
        v9 = [a3 characterOffsetTerminatingStepIdentifier:&v19];
        --v5;
      }

      if (v19)
      {
        v10 = [(THModelContentNode *)self storageAnchorForAnchorId:?];
        if (v10)
        {
          v12 = v10;
          if ((v8 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_16;
        }
      }

      v11 = [(THModelContentNode *)self storageAnchorForCfiFrag:v7];
      v12 = v11;
      if (!((v11 != 0) | v8 & 1))
      {
        v8 = 1;
      }
    }

    while (!v11 && v5);
    if ((v8 & 1) == 0)
    {
LABEL_13:
      if (!v12)
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_16:
    v16 = -[THModelContentNode cfiFragWithOffset:storageUID:pedantic:](self, "cfiFragWithOffset:storageUID:pedantic:", [v12 range], objc_msgSend(v12, "storageUID"), 0);
    if (v16 && [a3 updateWithCfiFrag:v16 toIndex:v5 + 1])
    {
      v17 = [a3 pathStringNoIds];
      v18 = v12;
      if (v17)
      {
        v18 = [(THModelContentNode *)self storageAnchorForCfiFrag:v17];
        v9 = [a3 characterOffsetTerminatingStepIdentifier:&v19];
      }
    }

    else
    {
      v18 = v12;
    }

    if (v18)
    {
      v12 = v18;
    }

    else
    {
      v9 = 0;
    }

    if (v12)
    {
LABEL_14:
      v13 = [v12 range];
      return +[THModelStorageAnchor storageAnchorWithContentNode:storageUID:range:](THModelStorageAnchor, "storageAnchorWithContentNode:storageUID:range:", self, [v12 storageUID], &v9[v13], v14);
    }
  }

  return 0;
}

- (id)storageAnchorForCfiReader:(id)a3
{
  [(THModelContentNode *)self willRead];
  v5 = [a3 innerPathReader];
  v6 = [a3 innerPathMaxRangeReader];
  v7 = [(THModelContentNode *)self storageAnchorForCfiInnerPathReader:v5];
  v8 = [(THModelContentNode *)self storageAnchorForCfiInnerPathReader:v6];
  if (v7)
  {
    v9 = v8;
    if (v8)
    {
      if ([objc_msgSend(v7 "storageUID")])
      {
        v10 = [v9 range];
        if (v10 <= [v7 range])
        {
          v11 = [v9 range];
          v14 = [v7 range];
          v13 = v14 - [v9 range];
        }

        else
        {
          v11 = [v7 range];
          v12 = [v9 range];
          v13 = v12 - [v7 range];
        }

        [v7 setRange:{v11, v13}];
      }

      else
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }
  }

  return v7;
}

- (id)storageAnchorAfterAnchor:(id)a3 forNthInstance:(unint64_t)a4 ofSearchString:(id)a5 presentationType:(id)a6
{
  if (!a3)
  {
    return 0;
  }

  -[THModelContentNode infoForNodeUniqueID:forPresentationType:](self, "infoForNodeUniqueID:forPresentationType:", [a3 storageUID], a6);
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    return a3;
  }

  v10 = v9;
  v11 = [a3 range];
  v12 = [v10 length];
  v13 = [a3 range];
  if (!a4)
  {
    return a3;
  }

  v14 = (v12 - v13);
  v15 = a3;
  do
  {
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0)
    {
      break;
    }

    v17 = [v10 rangeOfString:a5 searchOptions:1 range:{v11, v14}];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v19 = v18;
    if (!v18)
    {
      break;
    }

    v20 = v17;
    if (a4 == 1)
    {
      v21 = a5;
      v22 = [a3 contentNode];
      v23 = [a3 storageUID];
      v24 = v22;
      a5 = v21;
      v15 = [THModelStorageAnchor storageAnchorWithContentNode:v24 storageUID:v23 range:v20, v19];
    }

    else
    {
      v11 = &v17[v18];
      v14 = ([v10 length] - &v17[v18]);
    }

    --a4;
  }

  while (a4);
  return v15;
}

- (id)cfiForOffset:(unint64_t)a3 storageUID:(id)a4 includeFilename:(BOOL)a5 pedantic:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  [(THModelContentNode *)self willRead];
  if (!self->mCfiBase)
  {
    self->mCfiBase = &stru_471858;
  }

  v11 = [(THModelContentNode *)self cfiFragWithOffset:a3 storageUID:a4 pedantic:v6];
  if (v7)
  {
    v12 = [(NSURL *)self->mApplePubURL lastPathComponent];
  }

  else
  {
    v12 = 0;
  }

  mCfiBase = self->mCfiBase;

  return [THCFIReader cfiWithFilename:v12 base:mCfiBase innerComponents:v11];
}

- (id)cfiForRange:(_NSRange)a3 storageUID:(id)a4 includeFilename:(BOOL)a5 pedantic:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  length = a3.length;
  location = a3.location;
  [(THModelContentNode *)self willRead];
  if (self->mCfiBase)
  {
    if (length)
    {
      goto LABEL_3;
    }
  }

  else
  {
    self->mCfiBase = &stru_471858;
    if (length)
    {
LABEL_3:
      v12 = [(THModelContentNode *)self cfiFragWithOffset:location storageUID:a4 pedantic:v6];
      v13 = [(THModelContentNode *)self cfiFragWithOffset:location + length storageUID:a4 pedantic:v6];
      if (v7)
      {
        v14 = [(NSURL *)self->mApplePubURL lastPathComponent];
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        if (!v12)
        {
          return 0;
        }
      }

      if (v13)
      {
        mCfiBase = self->mCfiBase;

        return [THCFIReader cfiRangeWithFilename:v14 base:mCfiBase innerComponents1:v12 innerComponents2:v13];
      }

      return 0;
    }
  }

  return [(THModelContentNode *)self cfiForOffset:location storageUID:a4 includeFilename:v7 pedantic:v6];
}

- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)a3 presentationType:(id)a4
{
  v7 = [(THModelContentNode *)self displayStartingPageNumberForPresentationType:a4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12.receiver = self;
    v12.super_class = THModelContentNode;
    return [(THModelNode *)&v12 pageNumberStringForAbsolutePageIndex:a3 presentationType:a4];
  }

  else
  {
    v9 = v7;
    v10 = [(THModelNode *)self relativePageIndexForAbsolutePageIndex:a3 forPresentationType:a4];
    v11 = [(THModelContentNode *)self displayStartingPageFormatForPresentationType:a4];

    return [NSString stringForValue:v10 + v9 withListNumberFormat:v11 includeFormatting:0];
  }
}

- (id)gutterStorageForPresentationType:(id)a3
{
  v3 = [(THModelContentNode *)self p_bodyForPresentationType:a3];

  return [v3 gutterDrawableStorage];
}

- (id)expandableInfoForWidgetInfo:(id)a3 forPresentationType:(id)a4
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:a4];

  return [v5 expandableInfoForWidgetInfo:a3];
}

- (unint64_t)bodyCharIndexForGutterDrawableForWidgetInfo:(id)a3 forPresentationType:(id)a4
{
  v6 = [(THModelContentNode *)self expandableInfoForWidgetInfo:a3 forPresentationType:?];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = [(THModelContentNode *)self p_bodyForPresentationType:a4];

  return [v8 bodyCharIndexOfGutterDrawable:v7];
}

- (void)p_clearFieldsForFutureLoading
{
  self->mStorageAnchorsForAnchorID = 0;

  self->mStorageAnchorsForCfiFrag = 0;
  self->mTextChildOffsetStorageAnchorsForCfiFrag = 0;

  self->mCfiFragsForTextChildOffsets = 0;
  self->mAnchorForCfiFrag = 0;
  [(THModelContentNode *)self setStorageAnchorsForAnchorID:+[NSMutableDictionary dictionary]];
  [(THModelContentNode *)self setStorageAnchorsForCfiFrag:+[NSMutableDictionary dictionary]];
  [(THModelContentNode *)self setTextChildOffsetStorageAnchorsForCfiFrag:+[NSMutableDictionary dictionary]];
  [(THModelContentNode *)self setCfiFragsForTextChildOffsets:+[NSMutableDictionary dictionary]];
  v3 = +[NSMutableDictionary dictionary];

  [(THModelContentNode *)self setAnchorForCfiFrag:v3];
}

- (void)startLoading
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  os_unfair_lock_lock(&self->mLoadStateLock);
  [(THModelContentNode *)self p_releaseFlushedBodies];
  if (!self->mLoadState)
  {
    v3 = _os_activity_create(&dword_0, "Content Node Load", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_36D68;
    block[3] = &unk_45B7E8;
    block[4] = self;
    block[5] = &v8;
    os_activity_apply(v3, block);
  }

  if ([(THModelContentNode *)self paginatedBodyStale])
  {
    v4 = _os_activity_create(&dword_0, "Content Node Load Paginated Body Stale", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_36ED4;
    v6[3] = &unk_45AE58;
    v6[4] = self;
    v6[5] = v4;
    os_activity_apply(v4, v6);
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (*(v9 + 24) == 1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_36F64;
    v5[3] = &unk_45B810;
    v5[4] = self;
    [THPerformanceRegressionLogger logEventWithBlock:v5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)cancelLoading
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  mLoadState = self->mLoadState;
  if ((mLoadState - 1) >= 2)
  {
    if (mLoadState == 3)
    {
      [(THReflowableContentPaginationOperation *)self->_paginationOperation cancel];

      self->_paginationOperation = 0;
    }
  }

  else
  {
    [(THModelContentLoadOperation *)self->mLoadOperation cancel];
    self->mLoadState = 0;

    self->mLoadOperation = 0;
    [(THModelContentNode *)self p_clearFieldsForFutureLoading];
  }

  [(THModelContentNode *)self setPaginatedBodyStale:0];

  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)performWhenFinishedLoading:(id)a3 onError:(id)a4
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  mLoadState = self->mLoadState;
  if (!mLoadState)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mLoadState = self->mLoadState;
  }

  if (mLoadState != 5)
  {
    if (mLoadState != 4)
    {
      mLoadOperation = self->mLoadOperation;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_371B8;
      v10[3] = &unk_45B838;
      v10[4] = self;
      v10[5] = a4;
      v10[6] = a3;
      [(THModelContentLoadOperation *)mLoadOperation appendMainThreadCompletionBlock:v10];
      os_unfair_lock_unlock(&self->mLoadStateLock);
      return;
    }

    a4 = a3;
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (a4)
  {
    v8 = *(a4 + 2);

    v8(a4);
  }
}

- (void)waitUntilFinishedLoading
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  mLoadState = self->mLoadState;
  if (!mLoadState)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mLoadState = self->mLoadState;
  }

  if (mLoadState == 1)
  {
    self->mLoadState = 2;
LABEL_6:
    v4 = self->mLoadOperation;
    goto LABEL_8;
  }

  if (mLoadState <= 2)
  {
    goto LABEL_6;
  }

  v4 = 0;
LABEL_8:
  os_unfair_lock_unlock(&self->mLoadStateLock);
  [(THModelContentLoadOperation *)v4 waitUntilFinished];
}

- (void)waitUntilFinishedLoadingAndPaginating
{
  [(THModelContentNode *)self waitUntilFinishedLoading];
  os_unfair_lock_lock(&self->mLoadStateLock);
  if ([(THModelContentNode *)self paginatedBodyStale])
  {
    v3 = _os_activity_create(&dword_0, "Model Node Wait Until Finished Paginating", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    [(THReflowableContentPaginationOperation *)self->_paginationOperation cancel];

    self->_paginationOperation = 0;
    [(THModelContentNode *)self setPaginatedBodyStale:0];
    self->mLoadState = 3;
    self->_paginationOperation = [(THReflowablePaginationController *)[(THModelContentNode *)self reflowablePaginationController] paginateContentNode:self paginationCompletionDelegate:self priority:8 isForeground:1 activity:v3];
  }

  if (self->mLoadState == 3)
  {
    v4 = self->_paginationOperation;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
  [(THReflowableContentPaginationOperation *)v4 waitUntilFinished];
}

- (void)paginationController:(id)a3 paginatedBody:(id)a4 forPresentationType:(id)a5
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if (self->mLoadState != 3)
  {
    goto LABEL_15;
  }

  v8 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:a5];
  if (!v8)
  {
    mLoadedBodyRetainCount = self->mLoadedBodyRetainCount;
    goto LABEL_8;
  }

  v9 = v8;
  [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] removeObjectForKey:a5];
  [v9 ownerRelease];
  p_mLoadedBodyRetainCount = &self->mLoadedBodyRetainCount;
  if (self->mLoadedBodyRetainCount >= 1)
  {
    v11 = 0;
    do
    {

      ++v11;
      mLoadedBodyRetainCount = *p_mLoadedBodyRetainCount;
    }

    while (v11 < *p_mLoadedBodyRetainCount);
LABEL_8:
    p_mLoadedBodyRetainCount = &self->mLoadedBodyRetainCount;
    if (mLoadedBodyRetainCount >= 1)
    {
      v13 = 0;
      do
      {
        v14 = a4;
        ++v13;
      }

      while (v13 < *p_mLoadedBodyRetainCount);
    }
  }

  [a4 ownerRetain];
  [a4 setParent:self];
  [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] setObject:a4 forUncopiedKey:a5];
  -[THModelNode setPageCount:forPresentationType:](self, "setPageCount:forPresentationType:", [a4 pageCount], a5);
  if (self->mPreloadingBodyRetainCount >= 1)
  {
    v15 = 0;
    do
    {
      v16 = a4;
      ++v15;
    }

    while (v15 < self->mPreloadingBodyRetainCount);
  }

  [a4 ownerAutoreleasedAccess];

  self->_paginationOperation = 0;
  *p_mLoadedBodyRetainCount += self->mPreloadingBodyRetainCount;
  self->mPreloadingBodyRetainCount = 0;
  self->mLoadState = 4;
LABEL_15:

  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)contentLoadOperationFailed:(id)a3
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if ([a3 isCancelled])
  {
    self->mLoadState = 0;

    self->mLoadOperation = 0;
    [(THModelContentNode *)self p_clearFieldsForFutureLoading];
  }

  else
  {
    self->mLoadState = 5;
    [-[THModelContentNode documentRoot](self "documentRoot")];
    mLoadOperation = self->mLoadOperation;
    if (mLoadOperation != a3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      mLoadOperation = self->mLoadOperation;
    }

    self->mLoadOperation = 0;
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)contentLoadOperation:(id)a3 loadedContentBodies:(id)a4
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if ([a3 isCancelled])
  {
    self->mLoadState = 0;

    self->mLoadOperation = 0;
    [(THModelContentNode *)self p_clearFieldsForFutureLoading];
  }

  else
  {
    v7 = _os_activity_create(&dword_0, "Load Operation Finished", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_37874;
    block[3] = &unk_45B330;
    block[4] = self;
    block[5] = a4;
    block[6] = v7;
    block[7] = a3;
    os_activity_apply(v7, block);
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_37D84;
  v8[3] = &unk_45B810;
  v8[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v8];
}

- (id)annotationIDForInfo:(id)a3
{
  result = [(THModelContentNode *)self nodeUniqueIDForInfo:a3];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_class();
    v7 = [(THModelNode *)self nodeGUID];

    return [v6 annotationIDForInfoID:v5 contentNodeID:v7];
  }

  return result;
}

+ (id)annotationIDForInfoID:(id)a3 contentNodeID:(id)a4
{
  if (a3 && a4)
  {
    return [NSString stringWithFormat:@"%@-%@", a4, a3];
  }

  else
  {
    return 0;
  }
}

- (id)legacyBookmarkIDForInfo:(id)a3
{
  result = [(THModelContentNode *)self nodeUniqueIDForInfo:a3];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_class();
    v7 = [(THModelNode *)self nodeGUID];

    return [v6 legacyBookmarkIDForInfoID:v5 contentNodeID:v7];
  }

  return result;
}

+ (id)legacyBookmarkIDForInfoID:(id)a3 contentNodeID:(id)a4
{
  if (a4)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (NSString)description
{
  v3 = [THPresentationType paginatedPresentationTypeInContext:0];
  v4 = [(THModelContentNode *)self displayStartingPageNumberForPresentationType:v3];
  return [NSString stringWithFormat:@"<%@* %p title=%@ pp. %lu-%lu presentations = %@>", objc_opt_class(), self, [(THModelNode *)self title], v4, [(THModelContentNode *)self pageCountForPresentationType:v3]+ v4 - 1, self->mPresentationContentBodies];
}

- (BOOL)hasCachedVersion
{
  if (!self->mApplePubURL || !self->mPublicationContext)
  {
    return 0;
  }

  v3 = [[PFXArchive alloc] initWithPath:[(NSURL *)self->mApplePubURL path]];
  v4 = [(PFXArchive *)v3 entryWithName:self->mPublicationContext]!= 0;

  return v4;
}

@end