@interface PFAIStackEntry
+ (id)makeLayoutModeStateWithStackEntry:(id)entry parentEntryOrientationState:(id)state documentOrientationState:(id)orientationState;
- (PFAIEntryOrientationState)currentEntryOrientationState;
- (PFAIStackEntry)initWithParentEntry:(id)entry reader:(id)reader elementName:(const char *)name elementNamespace:(const char *)namespace cfiPath:(id)path readerState:(id)state;
- (id)currentPresentationType;
- (void)addAttributeName:(const char *)name withValue:(id)value;
- (void)addChildAttributesToParentForResult:(id)result;
- (void)addResultFromChildEntry:(id)entry;
- (void)dealloc;
@end

@implementation PFAIStackEntry

+ (id)makeLayoutModeStateWithStackEntry:(id)entry parentEntryOrientationState:(id)state documentOrientationState:(id)orientationState
{
  v7 = [[PFAIEntryOrientationState alloc] initWithStackEntry:entry parentEntryOrientationState:state];
  if (v7)
  {
    if (state)
    {
      -[PFXHtmlEntryMediaState setStartCharIndex:](v7, "setStartCharIndex:", [objc_msgSend(state "storage")]);
      [state blockWidth];
      [(PFXHtmlEntryMediaState *)v7 setBlockWidth:?];
      processOrientation = [state processOrientation];
    }

    else
    {
      bodyStorage = [orientationState bodyStorage];
      [(PFXHtmlEntryMediaState *)v7 setOverriddenStorage:bodyStorage];
      -[PFXHtmlEntryMediaState setStartCharIndex:](v7, "setStartCharIndex:", [bodyStorage length]);
      [objc_msgSend(orientationState "readerState")];
      [(PFXHtmlEntryMediaState *)v7 setBlockWidth:?];
      processOrientation = &dword_0 + 1;
    }

    [(PFXHtmlEntryMediaState *)v7 setProcessOrientation:processOrientation];
    -[PFXHtmlEntryMediaState setStylesheet:](v7, "setStylesheet:", [orientationState stylesheet]);
  }

  return v7;
}

- (PFAIStackEntry)initWithParentEntry:(id)entry reader:(id)reader elementName:(const char *)name elementNamespace:(const char *)namespace cfiPath:(id)path readerState:(id)state
{
  v12.receiver = self;
  v12.super_class = PFAIStackEntry;
  v10 = [(PFXHtmlStackEntry *)&v12 initWithParentEntry:entry reader:reader elementName:name elementNamespace:namespace cfiPath:path readerState:?];
  if (v10)
  {
    v10->mFlowState = [objc_opt_class() makeLayoutModeStateWithStackEntry:v10 parentEntryOrientationState:objc_msgSend(entry documentOrientationState:{"flowState"), objc_msgSend(state, "flowState")}];
    v10->mPaginatedState = [objc_opt_class() makeLayoutModeStateWithStackEntry:v10 parentEntryOrientationState:objc_msgSend(entry documentOrientationState:{"paginatedState"), objc_msgSend(state, "paginatedState")}];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIStackEntry;
  [(PFXHtmlStackEntry *)&v3 dealloc];
}

- (void)addAttributeName:(const char *)name withValue:(id)value
{
  if ([(PFXXmlStackEntry *)self xmlElementId]|| !xmlStrEqual("data-original-id", name))
  {
    v8.receiver = self;
    v8.super_class = PFAIStackEntry;
    [(PFXHtmlStackEntry *)&v8 addAttributeName:name withValue:value];
  }

  else
  {
    xmlString = [value xmlString];

    [(PFXXmlStackEntry *)self setElementId:xmlString];
  }
}

- (void)addResultFromChildEntry:(id)entry
{
  v8.receiver = self;
  v8.super_class = PFAIStackEntry;
  [(PFXXmlStackEntry *)&v8 addResultFromChildEntry:?];
  objc_opt_class();
  xmlElementName = [entry xmlElementName];
  flowState = [entry flowState];
  paginatedState = [entry paginatedState];
  -[PFXHtmlEntryMediaState addElementName:result:](self->mFlowState, "addElementName:result:", xmlElementName, [flowState result]);
  -[PFXHtmlEntryMediaState addElementName:result:](self->mPaginatedState, "addElementName:result:", xmlElementName, [paginatedState result]);
}

- (PFAIEntryOrientationState)currentEntryOrientationState
{
  mReaderState = self->super.super.mReaderState;
  if (([(PFXXmlStreamReaderState *)mReaderState paginatedIsCurrent]& 1) != 0)
  {
    v4 = &OBJC_IVAR___PFAIStackEntry_mPaginatedState;
    return *(&self->super.super.super.isa + *v4);
  }

  if ([(PFXXmlStreamReaderState *)mReaderState flowIsCurrent])
  {
    v4 = &OBJC_IVAR___PFAIStackEntry_mFlowState;
    return *(&self->super.super.super.isa + *v4);
  }

  return 0;
}

- (id)currentPresentationType
{
  currentDocOrientationState = [(PFXXmlStreamReaderState *)self->super.super.mReaderState currentDocOrientationState];

  return [currentDocOrientationState presentationType];
}

- (void)addChildAttributesToParentForResult:(id)result
{
  paginatedIsCurrent = [(PFXXmlStreamReaderState *)self->super.super.mReaderState paginatedIsCurrent];
  mParentEntry = self->super.super.mParentEntry;
  if (paginatedIsCurrent)
  {
    paginatedState = [(PFXXmlStackEntry *)mParentEntry paginatedState];
  }

  else
  {
    paginatedState = [(PFXXmlStackEntry *)mParentEntry flowState];
  }

  v8 = paginatedState;
  xmlAttributes = [(PFXXmlStackEntry *)self xmlAttributes];

  [v8 addAttributes:xmlAttributes forResult:result];
}

@end