@interface PFAIDocOrientationState
- (id)initWitContentNodeBody:(id)body presentationType:(id)type readerState:(id)state;
- (id)pageAtRelativeIndex:(unint64_t)index;
- (void)clearIDsForTemporaryTableCellStorage;
- (void)dealloc;
- (void)invalidateLineHints;
- (void)popHint;
- (void)setCurrentPageIndex:(int64_t)index;
@end

@implementation PFAIDocOrientationState

- (id)initWitContentNodeBody:(id)body presentationType:(id)type readerState:(id)state
{
  bodyStorage = [body bodyStorage];
  v12.receiver = self;
  v12.super_class = PFAIDocOrientationState;
  v10 = [(PFXHtmlDocMediaState *)&v12 initWithStorage:bodyStorage readerState:state defaultParagraphStyleIdentifier:kTSWPDefaultContentParagraphStyleIdentifier];
  if (v10)
  {
    v10->mContentNodeBody = body;
    v10->mPresentationType = type;
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

- (void)setCurrentPageIndex:(int64_t)index
{
  self->mCurrentPageIndex = index;
  while ([(NSMutableArray *)self->mPageDrawableMaps count]<= self->mCurrentPageIndex)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableArray *)self->mPageDrawableMaps addObject:v4];
  }
}

- (id)pageAtRelativeIndex:(unint64_t)index
{
  if ([(NSArray *)[(THModelContentNodeBody *)self->mContentNodeBody pages] count]<= index)
  {
    return 0;
  }

  pages = [(THModelContentNodeBody *)self->mContentNodeBody pages];

  return [(NSArray *)pages objectAtIndex:index];
}

- (void)clearIDsForTemporaryTableCellStorage
{
  mContentNodeBody = self->mContentNodeBody;
  temporaryTableCellStorage = [(PFXHtmlDocMediaState *)self temporaryTableCellStorage];

  [(THModelContentNodeBody *)mContentNodeBody clearNodeUniqueIDForInfo:temporaryTableCellStorage];
}

@end