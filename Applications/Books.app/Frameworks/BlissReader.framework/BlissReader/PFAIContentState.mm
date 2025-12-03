@interface PFAIContentState
- (BOOL)setFlowAsCurrent;
- (BOOL)setPaginatedAsCurrent;
- (PFAIContentState)initWithDocumentRoot:(id)root contentNode:(id)node flowNodeBody:(id)body paginatedNodeBody:(id)nodeBody archive:(id)archive documentEntryUri:(id)uri;
- (id)hintCollectionWithUrl:(id)url data:(id)data;
- (id)hintCollectorForStorage:(id)storage;
- (id)readerForCurrentMediaStateWithStackEntry:(id)entry;
- (id)setUniqueIdForInfo:(id)info withPostfix:(id)postfix fromStackEntry:(id)entry;
- (id)uniqueIdForInfo:(id)info;
- (int64_t)referenceAnchorStartForEntryOrientation:(id)orientation;
- (void)_setCfiPathForInfo:(id)info childIndex:(unint64_t)index fromStackEntry:(id)entry;
- (void)dealloc;
- (void)popReader;
- (void)processHints;
- (void)setCfiPathForCurrentStorage;
- (void)setCfiPathForTextRun:(unint64_t)run;
- (void)setCurrentReferenceAnchor:(id)anchor forEntryOrientation:(id)orientation;
- (void)setInTable:(BOOL)table;
- (void)setReferenceAnchorStart:(int64_t)start forEntryOrientation:(id)orientation;
- (void)setUniqueIdForTableCellStorage:(id)storage withInfoId:(id)id;
- (void)switchToOrientation:(unint64_t)orientation;
@end

@implementation PFAIContentState

- (PFAIContentState)initWithDocumentRoot:(id)root contentNode:(id)node flowNodeBody:(id)body paginatedNodeBody:(id)nodeBody archive:(id)archive documentEntryUri:(id)uri
{
  v12.receiver = self;
  v12.super_class = PFAIContentState;
  v10 = [(PFXHtmlReaderState *)&v12 initWithDocumentRoot:root contentNode:node entry:uri inArchive:archive];
  if (v10)
  {
    v10->mFlowState = [[PFAIDocOrientationState alloc] initWitContentNodeBody:body presentationType:[THPresentationType readerState:"flowPresentationTypeInContext:" flowPresentationTypeInContext:?], v10];
    v10->mPaginatedState = [[PFAIDocOrientationState alloc] initWitContentNodeBody:nodeBody presentationType:[THPresentationType readerState:"paginatedPresentationTypeInContext:" paginatedPresentationTypeInContext:?], v10];
    v10->mCurrentReferenceAnchorForEntryOrientation = objc_alloc_init(TSUNoCopyDictionary);
    v10->mReferenceAnchorStartForEntryOrientation = objc_alloc_init(TSUNoCopyDictionary);
    v10->mHintCollectors = objc_alloc_init(TSURetainedPointerKeyDictionary);
    v10->mHints = objc_alloc_init(NSMutableDictionary);
    v10->mFlowHeader = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIContentState;
  [(PFXHtmlReaderState *)&v3 dealloc];
}

- (void)setInTable:(BOOL)table
{
  tableCopy = table;
  [PFAIReferenceAnchor endCurrentReferenceAnchorForEntryOrientation:[(PFXXmlStackEntry *)self->super.super.mCurrentEntry currentEntryOrientationState] contentState:self];
  v5.receiver = self;
  v5.super_class = PFAIContentState;
  [(PFXHtmlReaderState *)&v5 setInTable:tableCopy];
}

- (BOOL)setPaginatedAsCurrent
{
  self->mCurrentOrientationState = self->mPaginatedState;
  paginatedState = [(PFXXmlStackEntry *)self->super.super.mCurrentEntry paginatedState];

  return [paginatedState processOrientation];
}

- (BOOL)setFlowAsCurrent
{
  self->mCurrentOrientationState = self->mFlowState;
  flowState = [(PFXXmlStackEntry *)self->super.super.mCurrentEntry flowState];

  return [flowState processOrientation];
}

- (void)switchToOrientation:(unint64_t)orientation
{
  if (orientation == 1)
  {
    [(PFAIContentState *)self setFlowAsCurrent];
  }

  else if (!orientation)
  {
    [(PFAIContentState *)self setPaginatedAsCurrent];
  }
}

- (id)hintCollectionWithUrl:(id)url data:(id)data
{
  v7 = [(NSMutableDictionary *)self->mHints objectForKey:?];
  if (!v7)
  {
    v7 = [[TSWPLineHintCollection alloc] initWithApplePubData:data context:{-[THDocumentRoot context](-[PFXHtmlReaderState thDocumentRoot](self, "thDocumentRoot"), "context")}];
    if (v7)
    {
      [(NSMutableDictionary *)self->mHints setObject:v7 forKey:url];
      v8 = v7;
    }
  }

  return v7;
}

- (id)hintCollectorForStorage:(id)storage
{
  v5 = [(TSUNoCopyDictionary *)self->mHintCollectors objectForKey:?];
  if (!v5)
  {
    v5 = [[PFAIHintCollector alloc] initWithStorage:storage];
    [(TSUNoCopyDictionary *)self->mHintCollectors setObject:v5 forUncopiedKey:storage];
    v6 = v5;
  }

  return v5;
}

- (void)processHints
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(TSUNoCopyDictionary *)self->mHintCollectors objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v7 + 1) + 8 * v6) processHintCollections];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCurrentReferenceAnchor:(id)anchor forEntryOrientation:(id)orientation
{
  mCurrentReferenceAnchorForEntryOrientation = self->mCurrentReferenceAnchorForEntryOrientation;
  if (anchor)
  {
    [(TSUNoCopyDictionary *)mCurrentReferenceAnchorForEntryOrientation setObject:anchor forUncopiedKey:orientation];
  }

  else
  {
    [(TSUNoCopyDictionary *)mCurrentReferenceAnchorForEntryOrientation removeObjectForKey:orientation];
  }
}

- (int64_t)referenceAnchorStartForEntryOrientation:(id)orientation
{
  v3 = [(TSUNoCopyDictionary *)self->mReferenceAnchorStartForEntryOrientation objectForKey:orientation];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v3 integerValue];
}

- (void)setReferenceAnchorStart:(int64_t)start forEntryOrientation:(id)orientation
{
  mReferenceAnchorStartForEntryOrientation = self->mReferenceAnchorStartForEntryOrientation;
  v6 = [NSNumber numberWithInteger:start];

  [(TSUNoCopyDictionary *)mReferenceAnchorStartForEntryOrientation setObject:v6 forUncopiedKey:orientation];
}

- (void)_setCfiPathForInfo:(id)info childIndex:(unint64_t)index fromStackEntry:(id)entry
{
  contentNodeBody = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];

  [(PFXHtmlReaderState *)self setCfiPathForInfo:info childIndex:index nodeBody:contentNodeBody fromStackEntry:entry];
}

- (void)setCfiPathForCurrentStorage
{
  currentStackEntry = [(PFAIContentState *)self currentStackEntry];
  v4 = [-[PFAIStackEntry currentEntryMediaState](currentStackEntry "currentEntryMediaState")];

  [(PFAIContentState *)self setCfiPathForInfo:v4 fromStackEntry:currentStackEntry];
}

- (void)setCfiPathForTextRun:(unint64_t)run
{
  if (run >= 2)
  {
    currentStackEntry = [(PFAIContentState *)self currentStackEntry];
    v7 = [-[PFAIStackEntry currentEntryMediaState](currentStackEntry "currentEntryMediaState")];

    [(PFAIContentState *)self _setCfiPathForInfo:v7 childIndex:run fromStackEntry:currentStackEntry];
  }
}

- (void)setUniqueIdForTableCellStorage:(id)storage withInfoId:(id)id
{
  contentNodeBody = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];
  if ([(THModelContentNodeBody *)contentNodeBody infoForNodeUniqueID:id])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelContentNodeBody *)contentNodeBody setNodeUniqueID:id forInfo:storage];
}

- (id)uniqueIdForInfo:(id)info
{
  contentNodeBody = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];

  return [(THModelContentNodeBody *)contentNodeBody nodeUniqueIDForInfo:info];
}

- (id)setUniqueIdForInfo:(id)info withPostfix:(id)postfix fromStackEntry:(id)entry
{
  contentNodeBody = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];

  return [(PFXHtmlReaderState *)self setUniqueIdForInfo:info nodeBody:contentNodeBody withPostfix:postfix fromStackEntry:entry];
}

- (void)popReader
{
  if ((self->super.super.mContextStack.var0 - self->super.super.mContextStack.__begin_) <= &stru_20)
  {
    [TCProgressContext setProgress:xmlTextReaderByteConsumed(self->super.super.mStreamAPI)];
  }

  v3.receiver = self;
  v3.super_class = PFAIContentState;
  [(PFXXmlStreamReaderState *)&v3 popReader];
}

- (id)readerForCurrentMediaStateWithStackEntry:(id)entry
{
  reader = [entry reader];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    return reader;
  }

  v6 = v5;
  applePubReaderState = [entry applePubReaderState];

  return [v6 currentSubreaderWithState:applePubReaderState];
}

@end