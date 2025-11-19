@interface THTOCTileModel
- (THModelLink)firstModelLink;
- (THTOCTileModel)initWithTOCModel:(id)a3;
- (id)displayPageNumberForPageIndex:(unint64_t)a3;
- (id)p_displayPageNumberForPageIndex:(unint64_t)a3 entries:(id)a4;
- (unint64_t)pageIndex;
- (void)addLargerThumb:(id)a3;
- (void)addTinyThumb:(id)a3;
- (void)dealloc;
- (void)setBackImage:(id)a3;
- (void)setBackOrdinalText:(id)a3;
- (void)setBackTitleText:(id)a3;
- (void)setBrowserPageNode:(id)a3;
- (void)setFrontImage:(id)a3;
- (void)setFrontOrdinalText:(id)a3;
- (void)setFrontTitleText:(id)a3;
- (void)setLandscapeEntries:(id)a3;
- (void)setNotesThumb:(id)a3;
- (void)setPortraitEntries:(id)a3;
- (void)setTocThumb:(id)a3;
@end

@implementation THTOCTileModel

- (void)setLandscapeEntries:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mLandscapeEntries = a3;
}

- (void)setPortraitEntries:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mPortraitEntries = a3;
}

- (void)setFrontOrdinalText:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = [a3 copy];

  self->mFrontOrdinalText = v5;
}

- (void)setFrontTitleText:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = [a3 copy];

  self->mFrontTitleText = v5;
}

- (void)setFrontImage:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mFrontImage = a3;
}

- (void)setBackOrdinalText:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = [a3 copy];

  self->mBackOrdinalText = v5;
}

- (void)setBackTitleText:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = [a3 copy];

  self->mBackTitleText = v5;
}

- (void)setBackImage:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mBackImage = a3;
}

- (void)setTocThumb:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mTOCThumb = a3;
}

- (void)setNotesThumb:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mNotesThumb = a3;
}

- (void)setBrowserPageNode:(id)a3
{
  [(THTOCTileModel *)self willModify];
  v5 = a3;

  self->mBrowserPageNode = a3;
}

- (void)addTinyThumb:(id)a3
{
  mTinyThumbs = self->mTinyThumbs;
  if (!mTinyThumbs)
  {
    mTinyThumbs = objc_alloc_init(NSMutableArray);
    self->mTinyThumbs = mTinyThumbs;
  }

  [(NSMutableArray *)mTinyThumbs addObject:a3];
}

- (void)addLargerThumb:(id)a3
{
  mLargerThumbs = self->mLargerThumbs;
  if (!mLargerThumbs)
  {
    mLargerThumbs = objc_alloc_init(NSMutableArray);
    self->mLargerThumbs = mLargerThumbs;
  }

  [(NSMutableArray *)mLargerThumbs addObject:a3];
}

- (THTOCTileModel)initWithTOCModel:(id)a3
{
  v5.receiver = self;
  v5.super_class = THTOCTileModel;
  result = -[THTOCTileModel initWithContext:](&v5, "initWithContext:", [a3 context]);
  if (result)
  {
    result->mTOCModel = a3;
  }

  return result;
}

- (THModelLink)firstModelLink
{
  result = [(NSArray *)[(THTOCTileModel *)self portraitEntries] count];
  if (result)
  {
    v4 = [(NSArray *)[(THTOCTileModel *)self portraitEntries] objectAtIndex:0];

    return [v4 modelLink];
  }

  return result;
}

- (unint64_t)pageIndex
{
  result = [(NSArray *)[(THTOCTileModel *)self portraitEntries] count];
  if (result)
  {
    v4 = [(NSArray *)[(THTOCTileModel *)self portraitEntries] objectAtIndex:0];

    return [v4 pageIndex];
  }

  return result;
}

- (id)p_displayPageNumberForPageIndex:(unint64_t)a3 entries:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(a4);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([v11 pageIndex] > a3)
      {
        break;
      }

      if ([v11 displayPageNumberForPageIndex:a3])
      {
        v8 = v11;
      }

      if (v7 == ++v10)
      {
        v7 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        return [v8 displayPageNumberForPageIndex:a3];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return [v8 displayPageNumberForPageIndex:a3];
}

- (id)displayPageNumberForPageIndex:(unint64_t)a3
{
  v5 = [(THTOCTileModel *)self portraitEntries];

  return [(THTOCTileModel *)self p_displayPageNumberForPageIndex:a3 entries:v5];
}

- (void)dealloc
{
  self->mTOCModel = 0;

  self->mLandscapeEntries = 0;
  self->mPortraitEntries = 0;

  self->mFrontOrdinalText = 0;
  self->mFrontTitleText = 0;

  self->mFrontImage = 0;
  self->mBackOrdinalText = 0;

  self->mBackTitleText = 0;
  self->mBackImage = 0;

  self->mTinyThumbs = 0;
  self->mLargerThumbs = 0;

  self->mBrowserPageNode = 0;
  self->mTOCThumb = 0;

  self->mNotesThumb = 0;
  v3.receiver = self;
  v3.super_class = THTOCTileModel;
  [(THTOCTileModel *)&v3 dealloc];
}

@end