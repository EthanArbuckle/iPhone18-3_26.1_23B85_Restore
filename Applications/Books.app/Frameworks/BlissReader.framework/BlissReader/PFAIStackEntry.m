@interface PFAIStackEntry
+ (id)makeLayoutModeStateWithStackEntry:(id)a3 parentEntryOrientationState:(id)a4 documentOrientationState:(id)a5;
- (PFAIEntryOrientationState)currentEntryOrientationState;
- (PFAIStackEntry)initWithParentEntry:(id)a3 reader:(id)a4 elementName:(const char *)a5 elementNamespace:(const char *)a6 cfiPath:(id)a7 readerState:(id)a8;
- (id)currentPresentationType;
- (void)addAttributeName:(const char *)a3 withValue:(id)a4;
- (void)addChildAttributesToParentForResult:(id)a3;
- (void)addResultFromChildEntry:(id)a3;
- (void)dealloc;
@end

@implementation PFAIStackEntry

+ (id)makeLayoutModeStateWithStackEntry:(id)a3 parentEntryOrientationState:(id)a4 documentOrientationState:(id)a5
{
  v7 = [[PFAIEntryOrientationState alloc] initWithStackEntry:a3 parentEntryOrientationState:a4];
  if (v7)
  {
    if (a4)
    {
      -[PFXHtmlEntryMediaState setStartCharIndex:](v7, "setStartCharIndex:", [objc_msgSend(a4 "storage")]);
      [a4 blockWidth];
      [(PFXHtmlEntryMediaState *)v7 setBlockWidth:?];
      v8 = [a4 processOrientation];
    }

    else
    {
      v9 = [a5 bodyStorage];
      [(PFXHtmlEntryMediaState *)v7 setOverriddenStorage:v9];
      -[PFXHtmlEntryMediaState setStartCharIndex:](v7, "setStartCharIndex:", [v9 length]);
      [objc_msgSend(a5 "readerState")];
      [(PFXHtmlEntryMediaState *)v7 setBlockWidth:?];
      v8 = &dword_0 + 1;
    }

    [(PFXHtmlEntryMediaState *)v7 setProcessOrientation:v8];
    -[PFXHtmlEntryMediaState setStylesheet:](v7, "setStylesheet:", [a5 stylesheet]);
  }

  return v7;
}

- (PFAIStackEntry)initWithParentEntry:(id)a3 reader:(id)a4 elementName:(const char *)a5 elementNamespace:(const char *)a6 cfiPath:(id)a7 readerState:(id)a8
{
  v12.receiver = self;
  v12.super_class = PFAIStackEntry;
  v10 = [(PFXHtmlStackEntry *)&v12 initWithParentEntry:a3 reader:a4 elementName:a5 elementNamespace:a6 cfiPath:a7 readerState:?];
  if (v10)
  {
    v10->mFlowState = [objc_opt_class() makeLayoutModeStateWithStackEntry:v10 parentEntryOrientationState:objc_msgSend(a3 documentOrientationState:{"flowState"), objc_msgSend(a8, "flowState")}];
    v10->mPaginatedState = [objc_opt_class() makeLayoutModeStateWithStackEntry:v10 parentEntryOrientationState:objc_msgSend(a3 documentOrientationState:{"paginatedState"), objc_msgSend(a8, "paginatedState")}];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIStackEntry;
  [(PFXHtmlStackEntry *)&v3 dealloc];
}

- (void)addAttributeName:(const char *)a3 withValue:(id)a4
{
  if ([(PFXXmlStackEntry *)self xmlElementId]|| !xmlStrEqual("data-original-id", a3))
  {
    v8.receiver = self;
    v8.super_class = PFAIStackEntry;
    [(PFXHtmlStackEntry *)&v8 addAttributeName:a3 withValue:a4];
  }

  else
  {
    v7 = [a4 xmlString];

    [(PFXXmlStackEntry *)self setElementId:v7];
  }
}

- (void)addResultFromChildEntry:(id)a3
{
  v8.receiver = self;
  v8.super_class = PFAIStackEntry;
  [(PFXXmlStackEntry *)&v8 addResultFromChildEntry:?];
  objc_opt_class();
  v5 = [a3 xmlElementName];
  v6 = [a3 flowState];
  v7 = [a3 paginatedState];
  -[PFXHtmlEntryMediaState addElementName:result:](self->mFlowState, "addElementName:result:", v5, [v6 result]);
  -[PFXHtmlEntryMediaState addElementName:result:](self->mPaginatedState, "addElementName:result:", v5, [v7 result]);
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
  v2 = [(PFXXmlStreamReaderState *)self->super.super.mReaderState currentDocOrientationState];

  return [v2 presentationType];
}

- (void)addChildAttributesToParentForResult:(id)a3
{
  v5 = [(PFXXmlStreamReaderState *)self->super.super.mReaderState paginatedIsCurrent];
  mParentEntry = self->super.super.mParentEntry;
  if (v5)
  {
    v7 = [(PFXXmlStackEntry *)mParentEntry paginatedState];
  }

  else
  {
    v7 = [(PFXXmlStackEntry *)mParentEntry flowState];
  }

  v8 = v7;
  v9 = [(PFXXmlStackEntry *)self xmlAttributes];

  [v8 addAttributes:v9 forResult:a3];
}

@end