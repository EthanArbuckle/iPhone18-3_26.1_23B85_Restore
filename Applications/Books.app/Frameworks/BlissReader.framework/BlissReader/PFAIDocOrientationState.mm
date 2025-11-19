@interface PFAIDocOrientationState
- (id)initWitContentNodeBody:(id)a3 presentationType:(id)a4 readerState:(id)a5;
- (id)pageAtRelativeIndex:(unint64_t)a3;
- (void)clearIDsForTemporaryTableCellStorage;
- (void)dealloc;
- (void)invalidateLineHints;
- (void)popHint;
- (void)setCurrentPageIndex:(int64_t)a3;
@end

@implementation PFAIDocOrientationState

- (id)initWitContentNodeBody:(id)a3 presentationType:(id)a4 readerState:(id)a5
{
  v9 = [a3 bodyStorage];
  v12.receiver = self;
  v12.super_class = PFAIDocOrientationState;
  v10 = [(PFXHtmlDocMediaState *)&v12 initWithStorage:v9 readerState:a5 defaultParagraphStyleIdentifier:kTSWPDefaultContentParagraphStyleIdentifier];
  if (v10)
  {
    v10->mContentNodeBody = a3;
    v10->mPresentationType = a4;
    v10->mPageDrawableMaps = objc_alloc_init(NSMutableArray);
    v10->mHintsExhausted = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIDocOrientationState;
  [(PFXHtmlDocMediaState *)&v3 dealloc];
}

- (void)popHint
{
  self->mLastHintLocation = self->mNextHintLocation;
  objc_opt_class();
  [(NSEnumerator *)self->mHintEnumerator nextObject];
  v3 = TSUDynamicCast();
  self->mNextHintEntry = v3;
  if (v3)
  {

    objc_opt_class();
    [(NSDictionary *)self->mNextHintEntry objectForKey:@"p"];
    self->mNextHintLocation = [TSUDynamicCast() integerValue];
    objc_opt_class();
    [(NSDictionary *)self->mNextHintEntry objectForKey:@"idref"];
    self->mNextHintShapeRef = TSUDynamicCast();
  }

  else
  {
    [(PFAIDocOrientationState *)self invalidateLineHints];
    self->mHintsExhausted = 1;
  }
}

- (void)invalidateLineHints
{
  self->mNextHintLocation = 0x7FFFFFFFFFFFFFFFLL;
  self->mHintEnumerator = 0;

  self->mNextHintShapeRef = 0;
  self->mHintLocations = 0;
}

- (void)setCurrentPageIndex:(int64_t)a3
{
  self->mCurrentPageIndex = a3;
  while ([(NSMutableArray *)self->mPageDrawableMaps count]<= self->mCurrentPageIndex)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableArray *)self->mPageDrawableMaps addObject:v4];
  }
}

- (id)pageAtRelativeIndex:(unint64_t)a3
{
  if ([(NSArray *)[(THModelContentNodeBody *)self->mContentNodeBody pages] count]<= a3)
  {
    return 0;
  }

  v5 = [(THModelContentNodeBody *)self->mContentNodeBody pages];

  return [(NSArray *)v5 objectAtIndex:a3];
}

- (void)clearIDsForTemporaryTableCellStorage
{
  mContentNodeBody = self->mContentNodeBody;
  v3 = [(PFXHtmlDocMediaState *)self temporaryTableCellStorage];

  [(THModelContentNodeBody *)mContentNodeBody clearNodeUniqueIDForInfo:v3];
}

@end