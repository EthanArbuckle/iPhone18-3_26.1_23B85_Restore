@interface THTOCTileModel
- (THModelLink)firstModelLink;
- (THTOCTileModel)initWithTOCModel:(id)model;
- (id)displayPageNumberForPageIndex:(unint64_t)index;
- (id)p_displayPageNumberForPageIndex:(unint64_t)index entries:(id)entries;
- (unint64_t)pageIndex;
- (void)addLargerThumb:(id)thumb;
- (void)addTinyThumb:(id)thumb;
- (void)dealloc;
- (void)setBackImage:(id)image;
- (void)setBackOrdinalText:(id)text;
- (void)setBackTitleText:(id)text;
- (void)setBrowserPageNode:(id)node;
- (void)setFrontImage:(id)image;
- (void)setFrontOrdinalText:(id)text;
- (void)setFrontTitleText:(id)text;
- (void)setLandscapeEntries:(id)entries;
- (void)setNotesThumb:(id)thumb;
- (void)setPortraitEntries:(id)entries;
- (void)setTocThumb:(id)thumb;
@end

@implementation THTOCTileModel

- (void)setLandscapeEntries:(id)entries
{
  [(THTOCTileModel *)self willModify];
  entriesCopy = entries;

  self->mLandscapeEntries = entries;
}

- (void)setPortraitEntries:(id)entries
{
  [(THTOCTileModel *)self willModify];
  entriesCopy = entries;

  self->mPortraitEntries = entries;
}

- (void)setFrontOrdinalText:(id)text
{
  [(THTOCTileModel *)self willModify];
  v5 = [text copy];

  self->mFrontOrdinalText = v5;
}

- (void)setFrontTitleText:(id)text
{
  [(THTOCTileModel *)self willModify];
  v5 = [text copy];

  self->mFrontTitleText = v5;
}

- (void)setFrontImage:(id)image
{
  [(THTOCTileModel *)self willModify];
  imageCopy = image;

  self->mFrontImage = image;
}

- (void)setBackOrdinalText:(id)text
{
  [(THTOCTileModel *)self willModify];
  v5 = [text copy];

  self->mBackOrdinalText = v5;
}

- (void)setBackTitleText:(id)text
{
  [(THTOCTileModel *)self willModify];
  v5 = [text copy];

  self->mBackTitleText = v5;
}

- (void)setBackImage:(id)image
{
  [(THTOCTileModel *)self willModify];
  imageCopy = image;

  self->mBackImage = image;
}

- (void)setTocThumb:(id)thumb
{
  [(THTOCTileModel *)self willModify];
  thumbCopy = thumb;

  self->mTOCThumb = thumb;
}

- (void)setNotesThumb:(id)thumb
{
  [(THTOCTileModel *)self willModify];
  thumbCopy = thumb;

  self->mNotesThumb = thumb;
}

- (void)setBrowserPageNode:(id)node
{
  [(THTOCTileModel *)self willModify];
  nodeCopy = node;

  self->mBrowserPageNode = node;
}

- (void)addTinyThumb:(id)thumb
{
  mTinyThumbs = self->mTinyThumbs;
  if (!mTinyThumbs)
  {
    mTinyThumbs = objc_alloc_init(NSMutableArray);
    self->mTinyThumbs = mTinyThumbs;
  }

  [(NSMutableArray *)mTinyThumbs addObject:thumb];
}

- (void)addLargerThumb:(id)thumb
{
  mLargerThumbs = self->mLargerThumbs;
  if (!mLargerThumbs)
  {
    mLargerThumbs = objc_alloc_init(NSMutableArray);
    self->mLargerThumbs = mLargerThumbs;
  }

  [(NSMutableArray *)mLargerThumbs addObject:thumb];
}

- (THTOCTileModel)initWithTOCModel:(id)model
{
  v5.receiver = self;
  v5.super_class = THTOCTileModel;
  result = -[THTOCTileModel initWithContext:](&v5, "initWithContext:", [model context]);
  if (result)
  {
    result->mTOCModel = model;
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

- (id)p_displayPageNumberForPageIndex:(unint64_t)index entries:(id)entries
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [entries countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(entries);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([v11 pageIndex] > index)
      {
        break;
      }

      if ([v11 displayPageNumberForPageIndex:index])
      {
        v8 = v11;
      }

      if (v7 == ++v10)
      {
        v7 = [entries countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        return [v8 displayPageNumberForPageIndex:index];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return [v8 displayPageNumberForPageIndex:index];
}

- (id)displayPageNumberForPageIndex:(unint64_t)index
{
  portraitEntries = [(THTOCTileModel *)self portraitEntries];

  return [(THTOCTileModel *)self p_displayPageNumberForPageIndex:index entries:portraitEntries];
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