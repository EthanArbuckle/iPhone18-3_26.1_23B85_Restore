@interface THModelContentNode
+ (id)annotationIDForInfoID:(id)d contentNodeID:(id)iD;
+ (id)legacyBookmarkIDForInfoID:(id)d contentNodeID:(id)iD;
- (BOOL)containsInfo:(id)info;
- (BOOL)hasBodyStorageUID:(id)d;
- (BOOL)hasCachedVersion;
- (BOOL)isBodyStorage:(id)storage;
- (BOOL)nodeBodyExists;
- (BOOL)p_possiblyReplaceCFIFragmentForExistingOffsetEntry:(id)entry newEntry:(id)newEntry;
- (NSString)description;
- (THModelContentNode)initWithTitle:(id)title includeInTOC:(BOOL)c context:(id)context;
- (id)annotationIDForInfo:(id)info;
- (id)bodyStorageForPresentationType:(id)type;
- (id)cfiForOffset:(unint64_t)offset storageUID:(id)d includeFilename:(BOOL)filename pedantic:(BOOL)pedantic;
- (id)cfiForRange:(_NSRange)range storageUID:(id)d includeFilename:(BOOL)filename pedantic:(BOOL)pedantic;
- (id)cfiFragWithOffset:(unint64_t)offset storageUID:(id)d pedantic:(BOOL)pedantic;
- (id)contentNodeForRelativePageIndex:(unint64_t)index forPresentationType:(id)type;
- (id)expandableInfoForWidgetInfo:(id)info forPresentationType:(id)type;
- (id)gutterStorageForPresentationType:(id)type;
- (id)infoForNodeUniqueID:(id)d;
- (id)infoForNodeUniqueID:(id)d forPresentationType:(id)type;
- (id)legacyBookmarkIDForInfo:(id)info;
- (id)nodeBodyForPresentationType:(id)type;
- (id)nodeUniqueIDForInfo:(id)info;
- (id)nodeUniqueIDForInfo:(id)info forPresentationType:(id)type;
- (id)p_bodyForPresentationType:(id)type;
- (id)pageAtRelativeIndex:(unint64_t)index forPresentationType:(id)type;
- (id)pageInfoForStorageAnchor:(id)anchor forPresentationType:(id)type;
- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)index presentationType:(id)type;
- (id)pagesForPresentationType:(id)type;
- (id)storageAnchorAfterAnchor:(id)anchor forNthInstance:(unint64_t)instance ofSearchString:(id)string presentationType:(id)type;
- (id)storageAnchorForAnchorId:(id)id;
- (id)storageAnchorForCfiFrag:(id)frag;
- (id)storageAnchorForCfiInnerPathReader:(id)reader;
- (id)storageAnchorForCfiReader:(id)reader;
- (id)storageAnchorForNodeRelativePageIndex:(unint64_t)index;
- (id)storagesForAllPresentationTypes;
- (id)storagesForPresentationType:(id)type;
- (int)displayStartingPageFormatForPresentationType:(id)type;
- (int64_t)p_binarySearchPageArray:(id)array forCharacterIndex:(unint64_t)index min:(int64_t)min max:(int64_t)max;
- (unint64_t)absolutePhysicalPageIndex:(unint64_t)index forFragment:(id)fragment;
- (unint64_t)bodyCharIndexForGutterDrawableForWidgetInfo:(id)info forPresentationType:(id)type;
- (unint64_t)displayStartingPageNumberForPresentationType:(id)type;
- (unint64_t)pageCountForPresentationType:(id)type;
- (unint64_t)relativeIndexOfPage:(id)page forPresentationType:(id)type;
- (unint64_t)relativePageIndexForBodyCharacterIndex:(unint64_t)index;
- (unint64_t)relativePageIndexForCharacterIndex:(unint64_t)index forInfo:(id)info;
- (unint64_t)relativePageIndexForInfo:(id)info forPresentationType:(id)type;
- (void)accumulateDisplayPageNumbersIntoAbsolutePageIndexMap:(id)map AndDisplayPageNumberArray:(id)array;
- (void)addPageInfo:(id)info insertContext:(id)context forPresentationType:(id)type;
- (void)cancelLoading;
- (void)contentLoadOperation:(id)operation loadedContentBodies:(id)bodies;
- (void)contentLoadOperationFailed:(id)failed;
- (void)dealloc;
- (void)i_flushingBody:(id)body;
- (void)invalidatePresentationType:(id)type;
- (void)p_clearFieldsForFutureLoading;
- (void)p_releaseFlushedBodies;
- (void)p_setStorageAnchorsForCfis:(id)cfis;
- (void)p_setTextChildOffsetStorageAnchorsForCfis:(id)cfis;
- (void)paginationController:(id)controller paginatedBody:(id)body forPresentationType:(id)type;
- (void)performWhenFinishedLoading:(id)loading onError:(id)error;
- (void)releaseBodies;
- (void)retainBodies;
- (void)setAbsolutePhysicalPageIndex:(unint64_t)index forFragment:(id)fragment;
- (void)setAnchorForCfiFrag:(id)frag;
- (void)setCfiBase:(id)base;
- (void)setCfiFragsForTextChildOffsets:(id)offsets;
- (void)setDisplayStartingPageFormat:(int)format presentationType:(id)type;
- (void)setDisplayStartingPageFormats:(id)formats;
- (void)setDisplayStartingPageNumber:(unint64_t)number presentationType:(id)type;
- (void)setDisplayStartingPageNumbers:(id)numbers;
- (void)setFragmentPhysicalPageIndexes:(id)indexes;
- (void)setNodeUniqueID:(id)d forInfo:(id)info presentationType:(id)type;
- (void)setPresentationContentBodies:(id)bodies;
- (void)setStorage:(id)storage range:(_NSRange)range forAnchorId:(id)id;
- (void)setStorageAnchor:(id)anchor forAnchorId:(id)id;
- (void)setStorageAnchorsForAnchorID:(id)d;
- (void)setStorageAnchorsForAnchorIDs:(id)ds;
- (void)setStorageAnchorsForCfiFrag:(id)frag;
- (void)setTextChildOffsetStorageAnchorsForCfiFrag:(id)frag;
- (void)startLoading;
- (void)waitUntilFinishedLoading;
- (void)waitUntilFinishedLoadingAndPaginating;
- (void)willRead;
- (void)willReadJustLoad;
@end

@implementation THModelContentNode

- (void)setPresentationContentBodies:(id)bodies
{
  [(THModelContentNode *)self willModify];
  bodiesCopy = bodies;

  self->mPresentationContentBodies = bodies;
}

- (void)setDisplayStartingPageNumbers:(id)numbers
{
  [(THModelContentNode *)self willModify];
  numbersCopy = numbers;

  self->mDisplayStartingPageNumbers = numbers;
}

- (void)setDisplayStartingPageFormats:(id)formats
{
  [(THModelContentNode *)self willModify];
  formatsCopy = formats;

  self->mDisplayStartingPageFormats = formats;
}

- (void)setFragmentPhysicalPageIndexes:(id)indexes
{
  [(THModelContentNode *)self willModify];
  indexesCopy = indexes;

  self->mFragmentPhysicalPageIndexes = indexes;
}

- (void)setStorageAnchorsForAnchorID:(id)d
{
  [(THModelContentNode *)self willModify];
  dCopy = d;

  self->mStorageAnchorsForAnchorID = d;
}

- (void)setAnchorForCfiFrag:(id)frag
{
  [(THModelContentNode *)self willModify];
  fragCopy = frag;

  self->mAnchorForCfiFrag = frag;
}

- (void)setStorageAnchorsForCfiFrag:(id)frag
{
  [(THModelContentNode *)self willModify];
  fragCopy = frag;

  self->mStorageAnchorsForCfiFrag = frag;
}

- (void)setTextChildOffsetStorageAnchorsForCfiFrag:(id)frag
{
  [(THModelContentNode *)self willModify];
  fragCopy = frag;

  self->mTextChildOffsetStorageAnchorsForCfiFrag = frag;
}

- (void)setCfiFragsForTextChildOffsets:(id)offsets
{
  [(THModelContentNode *)self willModify];
  offsetsCopy = offsets;

  self->mCfiFragsForTextChildOffsets = offsets;
}

- (void)setCfiBase:(id)base
{
  [(THModelContentNode *)self willModify];
  baseCopy = base;

  self->mCfiBase = base;
}

- (THModelContentNode)initWithTitle:(id)title includeInTOC:(BOOL)c context:(id)context
{
  v8.receiver = self;
  v8.super_class = THModelContentNode;
  v5 = [(THModelNode *)&v8 initWithTitle:title includeInTOC:c context:context];
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
  allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v14 + 1) + 8 * v12) ownerRelease];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)i_flushingBody:(id)body
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

- (id)p_bodyForPresentationType:(id)type
{
  if (!type)
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
  v5 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:type];
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
      allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
              objc_enumerationMutation(allValues);
            }

            [*(*(&v7 + 1) + 8 * v6) ownerRelease];
            v6 = v6 + 1;
          }

          while (v4 != v6);
          v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)invalidatePresentationType:(id)type
{
  if ([type isFlow])
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THModelContentNode invalidatePresentationType:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Model/THModelContentNode.m"];

    [v5 handleFailureInFunction:v6 file:v7 lineNumber:192 description:@"Code for unloading the flow presentation type is not done."];
  }

  else if ([type isPaginated])
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

    [(THModelContentNode *)self setDisplayStartingPageNumber:0x7FFFFFFFFFFFFFFFLL presentationType:type];
    [(THModelNode *)self setPageCount:0x7FFFFFFFFFFFFFFFLL forPresentationType:type];

    os_unfair_lock_unlock(&self->mLoadStateLock);
  }
}

- (unint64_t)displayStartingPageNumberForPresentationType:(id)type
{
  if (!type)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self displayStartingPageNumbers] objectForKey:type];
  if (v3)
  {
    return [v3 intValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setDisplayStartingPageNumber:(unint64_t)number presentationType:(id)type
{
  displayStartingPageNumbers = [(THModelContentNode *)self displayStartingPageNumbers];
  v7 = [NSNumber numberWithInteger:number];

  [(TSUNoCopyDictionary *)displayStartingPageNumbers setObject:v7 forUncopiedKey:type];
}

- (int)displayStartingPageFormatForPresentationType:(id)type
{
  if (!type)
  {
    return 0;
  }

  v3 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self displayStartingPageFormats] objectForKey:type];
  if (!v3)
  {
    return 0;
  }

  return [v3 intValue];
}

- (void)setDisplayStartingPageFormat:(int)format presentationType:(id)type
{
  displayStartingPageFormats = [(THModelContentNode *)self displayStartingPageFormats];
  v7 = [NSNumber numberWithInteger:format];

  [(TSUNoCopyDictionary *)displayStartingPageFormats setObject:v7 forUncopiedKey:type];
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
    allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
    v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = v9;
          [v9 ownerAutoreleasedAccess];
        }

        v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
    v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(allValues);
          }
        }

        v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (id)bodyStorageForPresentationType:(id)type
{
  v3 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  return [v3 bodyStorage];
}

- (id)nodeBodyForPresentationType:(id)type
{
  typeCopy = type;
  if (type)
  {
    typeCopy = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:type];
  }

  [typeCopy ownerAutoreleasedAccess];
  return typeCopy;
}

- (unint64_t)pageCountForPresentationType:(id)type
{
  if (!type)
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
  if (!mPageCountByPresentationType || (v6 = -[TSUNoCopyDictionary objectForKey:](mPageCountByPresentationType, "objectForKey:", type)) == 0 || (result = [v6 unsignedIntegerValue], result == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:type];
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

- (id)pagesForPresentationType:(id)type
{
  v3 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  return [v3 pages];
}

- (void)addPageInfo:(id)info insertContext:(id)context forPresentationType:(id)type
{
  if ([(THModelNode *)self state]== 2)
  {
    [info willBeAddedToDocumentRoot:-[THModelContentNode documentRoot](self context:{"documentRoot"), context}];
  }

  [-[THModelContentNode p_bodyForPresentationType:](self p_bodyForPresentationType:{type), "addPageInfo:", info}];
  [info setParent:self];
  if ([(THModelNode *)self state]== 2)
  {
    documentRoot = [(THModelContentNode *)self documentRoot];

    [info wasAddedToDocumentRoot:documentRoot context:context];
  }
}

- (unint64_t)relativePageIndexForInfo:(id)info forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v5 relativePageIndexForInfo:info];
}

- (id)pageAtRelativeIndex:(unint64_t)index forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([objc_msgSend(v5 "pages")] <= index)
  {
    return 0;
  }

  pages = [v6 pages];

  return [pages objectAtIndex:index];
}

- (id)pageInfoForStorageAnchor:(id)anchor forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];
  range = [anchor range];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  pages = [v5 pages];
  v8 = [pages countByEnumeratingWithState:&v17 objects:v21 count:16];
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
      objc_enumerationMutation(pages);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    bodyStorageRange = [v12 bodyStorageRange];
    if (bodyStorageRange <= range && &bodyStorageRange[v14] >= range)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [pages countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (unint64_t)relativeIndexOfPage:(id)page forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  pages = [v5 pages];

  return [pages indexOfObject:page];
}

- (id)contentNodeForRelativePageIndex:(unint64_t)index forPresentationType:(id)type
{
  selfCopy = self;
  v6 = [(THModelContentNode *)self pageCountForPresentationType:type];
  if (v6 <= index || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return selfCopy;
}

- (id)storagesForPresentationType:(id)type
{
  if (self->mLoadState != 4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelContentNode *)self willRead];
  v5 = [[TSKDocumentModelEnumerator alloc] initWithRootModelObject:-[THModelContentNode p_bodyForPresentationType:](self filter:{"p_bodyForPresentationType:", type), &stru_45B780}];

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
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(allKeys);
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
      v7 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  return v3;
}

- (int64_t)p_binarySearchPageArray:(id)array forCharacterIndex:(unint64_t)index min:(int64_t)min max:(int64_t)max
{
  if (max < min)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = min + (max - min) / 2;
  v13 = [array objectAtIndex:v6];
  if ([v13 pageStartCharIndex] <= index)
  {
    if ([v13 pageEndCharIndex] > index)
    {
      return v6;
    }

    minCopy = v6 + 1;
    selfCopy2 = self;
    arrayCopy2 = array;
    indexCopy2 = index;
    maxCopy = max;
  }

  else
  {
    maxCopy = v6 - 1;
    selfCopy2 = self;
    arrayCopy2 = array;
    indexCopy2 = index;
    minCopy = min;
  }

  return [(THModelContentNode *)selfCopy2 p_binarySearchPageArray:arrayCopy2 forCharacterIndex:indexCopy2 min:minCopy max:maxCopy];
}

- (unint64_t)relativePageIndexForBodyCharacterIndex:(unint64_t)index
{
  v5 = [-[THModelContentNode p_bodyForPresentationType:](self p_bodyForPresentationType:{+[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", -[THModelContentNode context](self, "context"))), "pages"}];
  if ([v5 count] == &dword_0 + 1)
  {
    return 0;
  }

  result = -[THModelContentNode p_binarySearchPageArray:forCharacterIndex:min:max:](self, "p_binarySearchPageArray:forCharacterIndex:min:max:", v5, index, 0, [v5 count] - 1);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!index)
    {
      return 0;
    }

    if ([objc_msgSend(v5 objectAtIndex:{objc_msgSend(v5, "count") - 1), "pageEndCharIndex"}] == index)
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

- (unint64_t)relativePageIndexForCharacterIndex:(unint64_t)index forInfo:(id)info
{
  if (!info)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7 && [(THModelContentNode *)self isBodyStorage:v7])
  {

    return [(THModelContentNode *)self relativePageIndexForBodyCharacterIndex:index];
  }

  else
  {
    v9 = [THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self context]];

    return [(THModelContentNode *)self relativePageIndexForInfo:info forPresentationType:v9];
  }
}

- (void)accumulateDisplayPageNumbersIntoAbsolutePageIndexMap:(id)map AndDisplayPageNumberArray:(id)array
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
        v17 = [map objectForKey:v16];
        if (!v17)
        {
          v17 = +[NSMutableArray array];
          [map setObject:v17 forKey:v16];
        }

        [v17 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v9)}];
        if (v16)
        {
          arrayCopy2 = array;
          v19 = v16;
        }

        else
        {
          v19 = +[NSNull null];
          arrayCopy2 = array;
        }

        [arrayCopy2 insertObject:v19 atIndex:v9];
        v13 = (v13 + 1);
        ++v9;
        --v8;
      }

      while (v8);
    }
  }
}

- (id)nodeUniqueIDForInfo:(id)info forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  return [v5 nodeUniqueIDForInfo:info];
}

- (id)infoForNodeUniqueID:(id)d forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  return [v5 infoForNodeUniqueID:d];
}

- (id)infoForNodeUniqueID:(id)d
{
  paginatedPresentationType = [(THModelNode *)self paginatedPresentationType];

  return [(THModelContentNode *)self infoForNodeUniqueID:d forPresentationType:paginatedPresentationType];
}

- (void)setNodeUniqueID:(id)d forInfo:(id)info presentationType:(id)type
{
  v7 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  [v7 setNodeUniqueID:d forInfo:info];
}

- (BOOL)isBodyStorage:(id)storage
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
  allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v13 + 1) + 8 * v11) bodyStorage] == storage)
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)hasBodyStorageUID:(id)d
{
  [(THModelContentNode *)self willReadJustLoad];
  allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([objc_msgSend(*(*(&v11 + 1) + 8 * v9) nodeUniqueIDForInfo:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "bodyStorage")), "isEqualToString:", d}])
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)nodeUniqueIDForInfo:(id)info
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  v5 = self->mLoadState - 1;
  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (v5 <= 1)
  {
    [(THModelContentNode *)self willReadJustLoad];
  }

  os_unfair_lock_lock(&self->mLoadStateLock);
  allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (self->mLoadState < 3u)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      objc_enumerationMutation(allValues);
    }

    result = [*(*(&v12 + 1) + 8 * v10) nodeUniqueIDForInfo:info];
    if (result)
    {
      return result;
    }

    if (v8 == ++v10)
    {
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }
}

- (BOOL)containsInfo:(id)info
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
  allValues = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] allValues];
  os_unfair_lock_unlock(&self->mLoadStateLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * v11) "infos")])
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setStorageAnchor:(id)anchor forAnchorId:(id)id
{
  if ([anchor contentNode] != self)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelContentNode *)self willModify];
  mStorageAnchorsForAnchorID = self->mStorageAnchorsForAnchorID;

  [(NSMutableDictionary *)mStorageAnchorsForAnchorID setObject:anchor forKey:id];
}

- (id)storageAnchorForNodeRelativePageIndex:(unint64_t)index
{
  [(THModelContentNode *)self willRead];
  v5 = [(THModelContentNode *)self pageAtRelativeIndex:index forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self context]]];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  bodyStorageRange = [v5 bodyStorageRange];
  if (bodyStorageRange == 0x7FFFFFFFFFFFFFFFLL)
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

    bodyStorageRange = [v9 hintRangeForRelativePageIndex:index];
    if (bodyStorageRange == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v11 = bodyStorageRange;
  v12 = v8;
  v13 = -[THModelContentNode nodeUniqueIDForInfo:](self, "nodeUniqueIDForInfo:", [v6 bodyStorage]);

  return [THModelStorageAnchor storageAnchorWithContentNode:self storageUID:v13 range:v11, v12];
}

- (id)storageAnchorForAnchorId:(id)id
{
  [(THModelContentNode *)self willRead];
  storageAnchorsForAnchorID = [(THModelContentNode *)self storageAnchorsForAnchorID];

  return [(NSMutableDictionary *)storageAnchorsForAnchorID objectForKey:id];
}

- (void)setStorage:(id)storage range:(_NSRange)range forAnchorId:(id)id
{
  v7 = [THModelStorageAnchor storageAnchorWithContentNode:self storageUID:[(THModelContentNode *)self nodeUniqueIDForInfo:storage] range:range.location, range.length];

  [(THModelContentNode *)self setStorageAnchor:v7 forAnchorId:id];
}

- (void)setAbsolutePhysicalPageIndex:(unint64_t)index forFragment:(id)fragment
{
  [(THModelContentNode *)self willModify];
  fragmentPhysicalPageIndexes = [(THModelContentNode *)self fragmentPhysicalPageIndexes];
  v8 = [NSNumber numberWithUnsignedInteger:index];

  [(NSMutableDictionary *)fragmentPhysicalPageIndexes setObject:v8 forKey:fragment];
}

- (unint64_t)absolutePhysicalPageIndex:(unint64_t)index forFragment:(id)fragment
{
  v4 = [(NSMutableDictionary *)[(THModelContentNode *)self fragmentPhysicalPageIndexes] objectForKey:fragment];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v4 unsignedIntegerValue];
}

- (void)setStorageAnchorsForAnchorIDs:(id)ds
{
  [(NSMutableDictionary *)self->mStorageAnchorsForAnchorID removeAllObjects];
  allKeys = [ds allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [ds objectForKey:v10];
        [v11 setContentNode:self];
        [(NSMutableDictionary *)self->mStorageAnchorsForAnchorID setObject:v11 forKey:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)p_setStorageAnchorsForCfis:(id)cfis
{
  [(NSMutableDictionary *)self->mStorageAnchorsForCfiFrag removeAllObjects];
  allKeys = [cfis allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [cfis objectForKey:v10];
        [v11 setContentNode:self];
        [(NSMutableDictionary *)self->mStorageAnchorsForCfiFrag setObject:v11 forKey:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)p_possiblyReplaceCFIFragmentForExistingOffsetEntry:(id)entry newEntry:(id)newEntry
{
  v6 = [objc_msgSend(entry "first")];
  if (!v6)
  {
    v7 = [objc_msgSend(objc_msgSend(newEntry "second")];
    if (v7 > [objc_msgSend(objc_msgSend(entry "second")])
    {
      [entry setSecond:{objc_msgSend(newEntry, "second")}];
    }
  }

  return v6 == 0;
}

- (void)p_setTextChildOffsetStorageAnchorsForCfis:(id)cfis
{
  [(NSMutableDictionary *)self->mTextChildOffsetStorageAnchorsForCfiFrag removeAllObjects];
  [(NSMutableDictionary *)self->mCfiFragsForTextChildOffsets removeAllObjects];
  allKeys = [cfis allKeys];
  p_cfiFragsForOffsetsComparator = [(THModelContentNode *)self p_cfiFragsForOffsetsComparator];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = allKeys;
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v28 count:16];
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
        v12 = [cfis objectForKey:{v11, v18}];
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
            v15 = [v13 indexOfObject:v14 inSortedRange:0 options:objc_msgSend(v13 usingComparator:{"count"), 1024, p_cfiFragsForOffsetsComparator}];
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

- (id)storageAnchorForCfiFrag:(id)frag
{
  [(THModelContentNode *)self willRead];
  result = [(NSMutableDictionary *)[(THModelContentNode *)self storageAnchorsForCfiFrag] objectForKey:frag];
  if (!result)
  {
    textChildOffsetStorageAnchorsForCfiFrag = [(THModelContentNode *)self textChildOffsetStorageAnchorsForCfiFrag];

    return [(NSMutableDictionary *)textChildOffsetStorageAnchorsForCfiFrag objectForKey:frag];
  }

  return result;
}

- (id)cfiFragWithOffset:(unint64_t)offset storageUID:(id)d pedantic:(BOOL)pedantic
{
  pedanticCopy = pedantic;
  [(THModelContentNode *)self willRead];
  if (pedanticCopy)
  {
    p_cfiFragsForOffsetsComparator = [(THModelContentNode *)self p_cfiFragsForOffsetsComparator];
    v10 = [(NSMutableDictionary *)self->mCfiFragsForTextChildOffsets objectForKeyedSubscript:d];
    if (v10)
    {
      v11 = v10;
      v12 = [NSNumber numberWithUnsignedInteger:offset];
      v13 = [v11 indexOfObject:+[TSUMutablePair pairWithFirst:second:](TSUMutablePair inSortedRange:"pairWithFirst:second:" options:v12 usingComparator:{&stru_471858), 0, objc_msgSend(v11, "count"), 1024, p_cfiFragsForOffsetsComparator}];
      if ([v11 count] > v13 && !objc_msgSend(objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", v13), "first"), "compare:", v12))
      {
        second = [objc_msgSend(v11 objectAtIndexedSubscript:{v13), "second"}];
        v16 = 0;
LABEL_30:
        nextObject2 = second;
        if (second)
        {
          goto LABEL_31;
        }

        return 0;
      }

      if (v13 && [v11 count] > v13 - 1)
      {
        v14 = [v11 objectAtIndexedSubscript:?];
        second = [v14 second];
        v16 = offset - [objc_msgSend(v14 "first")];
        goto LABEL_30;
      }
    }

    return 0;
  }

  keyEnumerator = [(NSMutableDictionary *)self->mStorageAnchorsForCfiFrag keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (!nextObject)
  {
    return 0;
  }

  nextObject2 = nextObject;
  second = 0;
  v16 = -1;
  while (1)
  {
    v20 = [(THModelContentNode *)self storageAnchorForCfiFrag:nextObject2];
    if ([objc_msgSend(v20 "storageUID")])
    {
      break;
    }

LABEL_26:
    nextObject2 = [keyEnumerator nextObject];
    if (!nextObject2)
    {
      goto LABEL_30;
    }
  }

  range = [v20 range];
  v22 = offset - range;
  if (offset != range)
  {
    v24 = v16 == -1 || v22 < v16;
    v25 = !v24;
    if (v24)
    {
      v26 = nextObject2;
    }

    else
    {
      v26 = second;
    }

    if (v25)
    {
      v27 = v16;
    }

    else
    {
      v27 = offset - range;
    }

    if (v22 >= 1)
    {
      second = v26;
      v16 = v27;
    }

    goto LABEL_26;
  }

  v16 = 0;
LABEL_31:
  if (pedanticCopy || (v28 = [(NSMutableDictionary *)self->mAnchorForCfiFrag objectForKey:nextObject2]) == 0)
  {
    v29 = &stru_471858;
  }

  else
  {
    v29 = [NSString stringWithFormat:@"[%@]", v28];
  }

  return [nextObject2 stringByAppendingFormat:@"%@:%ld", v29, v16];
}

- (id)storageAnchorForCfiInnerPathReader:(id)reader
{
  v19 = 0;
  componentCount = [reader componentCount];
  pathStringNoIds = [reader pathStringNoIds];
  if (componentCount)
  {
    stringByDeletingLastPathComponent = pathStringNoIds;
    v8 = 0;
    do
    {
      if (v8)
      {
        [reader componentAtIndex:--componentCount identifier:&v19];
        stringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];
        v9 = 0;
      }

      else
      {
        v9 = [reader characterOffsetTerminatingStepIdentifier:&v19];
        --componentCount;
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

      v11 = [(THModelContentNode *)self storageAnchorForCfiFrag:stringByDeletingLastPathComponent];
      v12 = v11;
      if (!((v11 != 0) | v8 & 1))
      {
        v8 = 1;
      }
    }

    while (!v11 && componentCount);
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
    if (v16 && [reader updateWithCfiFrag:v16 toIndex:componentCount + 1])
    {
      pathStringNoIds2 = [reader pathStringNoIds];
      v18 = v12;
      if (pathStringNoIds2)
      {
        v18 = [(THModelContentNode *)self storageAnchorForCfiFrag:pathStringNoIds2];
        v9 = [reader characterOffsetTerminatingStepIdentifier:&v19];
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
      range = [v12 range];
      return +[THModelStorageAnchor storageAnchorWithContentNode:storageUID:range:](THModelStorageAnchor, "storageAnchorWithContentNode:storageUID:range:", self, [v12 storageUID], &v9[range], v14);
    }
  }

  return 0;
}

- (id)storageAnchorForCfiReader:(id)reader
{
  [(THModelContentNode *)self willRead];
  innerPathReader = [reader innerPathReader];
  innerPathMaxRangeReader = [reader innerPathMaxRangeReader];
  v7 = [(THModelContentNode *)self storageAnchorForCfiInnerPathReader:innerPathReader];
  v8 = [(THModelContentNode *)self storageAnchorForCfiInnerPathReader:innerPathMaxRangeReader];
  if (v7)
  {
    v9 = v8;
    if (v8)
    {
      if ([objc_msgSend(v7 "storageUID")])
      {
        range = [v9 range];
        if (range <= [v7 range])
        {
          range2 = [v9 range];
          range3 = [v7 range];
          v13 = range3 - [v9 range];
        }

        else
        {
          range2 = [v7 range];
          range4 = [v9 range];
          v13 = range4 - [v7 range];
        }

        [v7 setRange:{range2, v13}];
      }

      else
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }
  }

  return v7;
}

- (id)storageAnchorAfterAnchor:(id)anchor forNthInstance:(unint64_t)instance ofSearchString:(id)string presentationType:(id)type
{
  if (!anchor)
  {
    return 0;
  }

  -[THModelContentNode infoForNodeUniqueID:forPresentationType:](self, "infoForNodeUniqueID:forPresentationType:", [anchor storageUID], type);
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    return anchor;
  }

  v10 = v9;
  range = [anchor range];
  v12 = [v10 length];
  range2 = [anchor range];
  if (!instance)
  {
    return anchor;
  }

  v14 = (v12 - range2);
  anchorCopy = anchor;
  do
  {
    if (range == 0x7FFFFFFFFFFFFFFFLL || v14 == 0)
    {
      break;
    }

    v17 = [v10 rangeOfString:string searchOptions:1 range:{range, v14}];
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
    if (instance == 1)
    {
      stringCopy = string;
      contentNode = [anchor contentNode];
      storageUID = [anchor storageUID];
      v24 = contentNode;
      string = stringCopy;
      anchorCopy = [THModelStorageAnchor storageAnchorWithContentNode:v24 storageUID:storageUID range:v20, v19];
    }

    else
    {
      range = &v17[v18];
      v14 = ([v10 length] - &v17[v18]);
    }

    --instance;
  }

  while (instance);
  return anchorCopy;
}

- (id)cfiForOffset:(unint64_t)offset storageUID:(id)d includeFilename:(BOOL)filename pedantic:(BOOL)pedantic
{
  pedanticCopy = pedantic;
  filenameCopy = filename;
  [(THModelContentNode *)self willRead];
  if (!self->mCfiBase)
  {
    self->mCfiBase = &stru_471858;
  }

  v11 = [(THModelContentNode *)self cfiFragWithOffset:offset storageUID:d pedantic:pedanticCopy];
  if (filenameCopy)
  {
    lastPathComponent = [(NSURL *)self->mApplePubURL lastPathComponent];
  }

  else
  {
    lastPathComponent = 0;
  }

  mCfiBase = self->mCfiBase;

  return [THCFIReader cfiWithFilename:lastPathComponent base:mCfiBase innerComponents:v11];
}

- (id)cfiForRange:(_NSRange)range storageUID:(id)d includeFilename:(BOOL)filename pedantic:(BOOL)pedantic
{
  pedanticCopy = pedantic;
  filenameCopy = filename;
  length = range.length;
  location = range.location;
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
      v12 = [(THModelContentNode *)self cfiFragWithOffset:location storageUID:d pedantic:pedanticCopy];
      v13 = [(THModelContentNode *)self cfiFragWithOffset:location + length storageUID:d pedantic:pedanticCopy];
      if (filenameCopy)
      {
        lastPathComponent = [(NSURL *)self->mApplePubURL lastPathComponent];
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        lastPathComponent = 0;
        if (!v12)
        {
          return 0;
        }
      }

      if (v13)
      {
        mCfiBase = self->mCfiBase;

        return [THCFIReader cfiRangeWithFilename:lastPathComponent base:mCfiBase innerComponents1:v12 innerComponents2:v13];
      }

      return 0;
    }
  }

  return [(THModelContentNode *)self cfiForOffset:location storageUID:d includeFilename:filenameCopy pedantic:pedanticCopy];
}

- (id)pageNumberStringForAbsolutePageIndex:(unint64_t)index presentationType:(id)type
{
  v7 = [(THModelContentNode *)self displayStartingPageNumberForPresentationType:type];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12.receiver = self;
    v12.super_class = THModelContentNode;
    return [(THModelNode *)&v12 pageNumberStringForAbsolutePageIndex:index presentationType:type];
  }

  else
  {
    v9 = v7;
    v10 = [(THModelNode *)self relativePageIndexForAbsolutePageIndex:index forPresentationType:type];
    v11 = [(THModelContentNode *)self displayStartingPageFormatForPresentationType:type];

    return [NSString stringForValue:v10 + v9 withListNumberFormat:v11 includeFormatting:0];
  }
}

- (id)gutterStorageForPresentationType:(id)type
{
  v3 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  return [v3 gutterDrawableStorage];
}

- (id)expandableInfoForWidgetInfo:(id)info forPresentationType:(id)type
{
  v5 = [(THModelContentNode *)self p_bodyForPresentationType:type];

  return [v5 expandableInfoForWidgetInfo:info];
}

- (unint64_t)bodyCharIndexForGutterDrawableForWidgetInfo:(id)info forPresentationType:(id)type
{
  v6 = [(THModelContentNode *)self expandableInfoForWidgetInfo:info forPresentationType:?];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = [(THModelContentNode *)self p_bodyForPresentationType:type];

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

- (void)performWhenFinishedLoading:(id)loading onError:(id)error
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
      v10[5] = error;
      v10[6] = loading;
      [(THModelContentLoadOperation *)mLoadOperation appendMainThreadCompletionBlock:v10];
      os_unfair_lock_unlock(&self->mLoadStateLock);
      return;
    }

    error = loading;
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
  if (error)
  {
    v8 = *(error + 2);

    v8(error);
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

- (void)paginationController:(id)controller paginatedBody:(id)body forPresentationType:(id)type
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if (self->mLoadState != 3)
  {
    goto LABEL_15;
  }

  v8 = [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] objectForKey:type];
  if (!v8)
  {
    mLoadedBodyRetainCount = self->mLoadedBodyRetainCount;
    goto LABEL_8;
  }

  v9 = v8;
  [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] removeObjectForKey:type];
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
        bodyCopy = body;
        ++v13;
      }

      while (v13 < *p_mLoadedBodyRetainCount);
    }
  }

  [body ownerRetain];
  [body setParent:self];
  [(TSUNoCopyDictionary *)[(THModelContentNode *)self presentationContentBodies] setObject:body forUncopiedKey:type];
  -[THModelNode setPageCount:forPresentationType:](self, "setPageCount:forPresentationType:", [body pageCount], type);
  if (self->mPreloadingBodyRetainCount >= 1)
  {
    v15 = 0;
    do
    {
      bodyCopy2 = body;
      ++v15;
    }

    while (v15 < self->mPreloadingBodyRetainCount);
  }

  [body ownerAutoreleasedAccess];

  self->_paginationOperation = 0;
  *p_mLoadedBodyRetainCount += self->mPreloadingBodyRetainCount;
  self->mPreloadingBodyRetainCount = 0;
  self->mLoadState = 4;
LABEL_15:

  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)contentLoadOperationFailed:(id)failed
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if ([failed isCancelled])
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
    if (mLoadOperation != failed)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      mLoadOperation = self->mLoadOperation;
    }

    self->mLoadOperation = 0;
  }

  os_unfair_lock_unlock(&self->mLoadStateLock);
}

- (void)contentLoadOperation:(id)operation loadedContentBodies:(id)bodies
{
  os_unfair_lock_lock(&self->mLoadStateLock);
  if ([operation isCancelled])
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
    block[5] = bodies;
    block[6] = v7;
    block[7] = operation;
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

- (id)annotationIDForInfo:(id)info
{
  result = [(THModelContentNode *)self nodeUniqueIDForInfo:info];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_class();
    nodeGUID = [(THModelNode *)self nodeGUID];

    return [v6 annotationIDForInfoID:v5 contentNodeID:nodeGUID];
  }

  return result;
}

+ (id)annotationIDForInfoID:(id)d contentNodeID:(id)iD
{
  if (d && iD)
  {
    return [NSString stringWithFormat:@"%@-%@", iD, d];
  }

  else
  {
    return 0;
  }
}

- (id)legacyBookmarkIDForInfo:(id)info
{
  result = [(THModelContentNode *)self nodeUniqueIDForInfo:info];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_class();
    nodeGUID = [(THModelNode *)self nodeGUID];

    return [v6 legacyBookmarkIDForInfoID:v5 contentNodeID:nodeGUID];
  }

  return result;
}

+ (id)legacyBookmarkIDForInfoID:(id)d contentNodeID:(id)iD
{
  if (iD)
  {
    return d;
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