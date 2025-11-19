@interface PFAIContentState
- (BOOL)setFlowAsCurrent;
- (BOOL)setPaginatedAsCurrent;
- (PFAIContentState)initWithDocumentRoot:(id)a3 contentNode:(id)a4 flowNodeBody:(id)a5 paginatedNodeBody:(id)a6 archive:(id)a7 documentEntryUri:(id)a8;
- (id)hintCollectionWithUrl:(id)a3 data:(id)a4;
- (id)hintCollectorForStorage:(id)a3;
- (id)readerForCurrentMediaStateWithStackEntry:(id)a3;
- (id)setUniqueIdForInfo:(id)a3 withPostfix:(id)a4 fromStackEntry:(id)a5;
- (id)uniqueIdForInfo:(id)a3;
- (int64_t)referenceAnchorStartForEntryOrientation:(id)a3;
- (void)_setCfiPathForInfo:(id)a3 childIndex:(unint64_t)a4 fromStackEntry:(id)a5;
- (void)dealloc;
- (void)popReader;
- (void)processHints;
- (void)setCfiPathForCurrentStorage;
- (void)setCfiPathForTextRun:(unint64_t)a3;
- (void)setCurrentReferenceAnchor:(id)a3 forEntryOrientation:(id)a4;
- (void)setInTable:(BOOL)a3;
- (void)setReferenceAnchorStart:(int64_t)a3 forEntryOrientation:(id)a4;
- (void)setUniqueIdForTableCellStorage:(id)a3 withInfoId:(id)a4;
- (void)switchToOrientation:(unint64_t)a3;
@end

@implementation PFAIContentState

- (PFAIContentState)initWithDocumentRoot:(id)a3 contentNode:(id)a4 flowNodeBody:(id)a5 paginatedNodeBody:(id)a6 archive:(id)a7 documentEntryUri:(id)a8
{
  v12.receiver = self;
  v12.super_class = PFAIContentState;
  v10 = [(PFXHtmlReaderState *)&v12 initWithDocumentRoot:a3 contentNode:a4 entry:a8 inArchive:a7];
  if (v10)
  {
    v10->mFlowState = [[PFAIDocOrientationState alloc] initWitContentNodeBody:a5 presentationType:[THPresentationType readerState:"flowPresentationTypeInContext:" flowPresentationTypeInContext:?], v10];
    v10->mPaginatedState = [[PFAIDocOrientationState alloc] initWitContentNodeBody:a6 presentationType:[THPresentationType readerState:"paginatedPresentationTypeInContext:" paginatedPresentationTypeInContext:?], v10];
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

- (void)setInTable:(BOOL)a3
{
  v3 = a3;
  [PFAIReferenceAnchor endCurrentReferenceAnchorForEntryOrientation:[(PFXXmlStackEntry *)self->super.super.mCurrentEntry currentEntryOrientationState] contentState:self];
  v5.receiver = self;
  v5.super_class = PFAIContentState;
  [(PFXHtmlReaderState *)&v5 setInTable:v3];
}

- (BOOL)setPaginatedAsCurrent
{
  self->mCurrentOrientationState = self->mPaginatedState;
  v2 = [(PFXXmlStackEntry *)self->super.super.mCurrentEntry paginatedState];

  return [v2 processOrientation];
}

- (BOOL)setFlowAsCurrent
{
  self->mCurrentOrientationState = self->mFlowState;
  v2 = [(PFXXmlStackEntry *)self->super.super.mCurrentEntry flowState];

  return [v2 processOrientation];
}

- (void)switchToOrientation:(unint64_t)a3
{
  if (a3 == 1)
  {
    [(PFAIContentState *)self setFlowAsCurrent];
  }

  else if (!a3)
  {
    [(PFAIContentState *)self setPaginatedAsCurrent];
  }
}

- (id)hintCollectionWithUrl:(id)a3 data:(id)a4
{
  v7 = [(NSMutableDictionary *)self->mHints objectForKey:?];
  if (!v7)
  {
    v7 = [[TSWPLineHintCollection alloc] initWithApplePubData:a4 context:{-[THDocumentRoot context](-[PFXHtmlReaderState thDocumentRoot](self, "thDocumentRoot"), "context")}];
    if (v7)
    {
      [(NSMutableDictionary *)self->mHints setObject:v7 forKey:a3];
      v8 = v7;
    }
  }

  return v7;
}

- (id)hintCollectorForStorage:(id)a3
{
  v5 = [(TSUNoCopyDictionary *)self->mHintCollectors objectForKey:?];
  if (!v5)
  {
    v5 = [[PFAIHintCollector alloc] initWithStorage:a3];
    [(TSUNoCopyDictionary *)self->mHintCollectors setObject:v5 forUncopiedKey:a3];
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
  v2 = [(TSUNoCopyDictionary *)self->mHintCollectors objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) processHintCollections];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCurrentReferenceAnchor:(id)a3 forEntryOrientation:(id)a4
{
  mCurrentReferenceAnchorForEntryOrientation = self->mCurrentReferenceAnchorForEntryOrientation;
  if (a3)
  {
    [(TSUNoCopyDictionary *)mCurrentReferenceAnchorForEntryOrientation setObject:a3 forUncopiedKey:a4];
  }

  else
  {
    [(TSUNoCopyDictionary *)mCurrentReferenceAnchorForEntryOrientation removeObjectForKey:a4];
  }
}

- (int64_t)referenceAnchorStartForEntryOrientation:(id)a3
{
  v3 = [(TSUNoCopyDictionary *)self->mReferenceAnchorStartForEntryOrientation objectForKey:a3];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v3 integerValue];
}

- (void)setReferenceAnchorStart:(int64_t)a3 forEntryOrientation:(id)a4
{
  mReferenceAnchorStartForEntryOrientation = self->mReferenceAnchorStartForEntryOrientation;
  v6 = [NSNumber numberWithInteger:a3];

  [(TSUNoCopyDictionary *)mReferenceAnchorStartForEntryOrientation setObject:v6 forUncopiedKey:a4];
}

- (void)_setCfiPathForInfo:(id)a3 childIndex:(unint64_t)a4 fromStackEntry:(id)a5
{
  v9 = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];

  [(PFXHtmlReaderState *)self setCfiPathForInfo:a3 childIndex:a4 nodeBody:v9 fromStackEntry:a5];
}

- (void)setCfiPathForCurrentStorage
{
  v3 = [(PFAIContentState *)self currentStackEntry];
  v4 = [-[PFAIStackEntry currentEntryMediaState](v3 "currentEntryMediaState")];

  [(PFAIContentState *)self setCfiPathForInfo:v4 fromStackEntry:v3];
}

- (void)setCfiPathForTextRun:(unint64_t)a3
{
  if (a3 >= 2)
  {
    v6 = [(PFAIContentState *)self currentStackEntry];
    v7 = [-[PFAIStackEntry currentEntryMediaState](v6 "currentEntryMediaState")];

    [(PFAIContentState *)self _setCfiPathForInfo:v7 childIndex:a3 fromStackEntry:v6];
  }
}

- (void)setUniqueIdForTableCellStorage:(id)a3 withInfoId:(id)a4
{
  v6 = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];
  if ([(THModelContentNodeBody *)v6 infoForNodeUniqueID:a4])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THModelContentNodeBody *)v6 setNodeUniqueID:a4 forInfo:a3];
}

- (id)uniqueIdForInfo:(id)a3
{
  v4 = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];

  return [(THModelContentNodeBody *)v4 nodeUniqueIDForInfo:a3];
}

- (id)setUniqueIdForInfo:(id)a3 withPostfix:(id)a4 fromStackEntry:(id)a5
{
  v9 = [(PFAIDocOrientationState *)[(PFAIContentState *)self currentDocOrientationState] contentNodeBody];

  return [(PFXHtmlReaderState *)self setUniqueIdForInfo:a3 nodeBody:v9 withPostfix:a4 fromStackEntry:a5];
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

- (id)readerForCurrentMediaStateWithStackEntry:(id)a3
{
  v4 = [a3 reader];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = [a3 applePubReaderState];

  return [v6 currentSubreaderWithState:v7];
}

@end