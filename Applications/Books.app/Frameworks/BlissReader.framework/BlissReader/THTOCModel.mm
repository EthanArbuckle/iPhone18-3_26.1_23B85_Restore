@interface THTOCModel
- (id)displayPageNumberForPageIndex:(unint64_t)index;
- (id)toc:(id)toc tileModelForChapterIndex:(int64_t)index;
- (unint64_t)pageIndex;
- (unint64_t)toc:(id)toc numberOfTilesInDivision:(int64_t)division;
- (void)dealloc;
- (void)setBookSubtitle:(id)subtitle;
- (void)setBookTitle:(id)title;
- (void)setTiles:(id)tiles;
- (void)setTocHeaderImageData:(id)data;
@end

@implementation THTOCModel

- (void)setTiles:(id)tiles
{
  [(THTOCModel *)self willModify];
  tilesCopy = tiles;

  self->mTiles = tiles;
}

- (void)setBookTitle:(id)title
{
  [(THTOCModel *)self willModify];
  v5 = [title copy];

  self->mBookTitle = v5;
}

- (void)setBookSubtitle:(id)subtitle
{
  [(THTOCModel *)self willModify];
  v5 = [subtitle copy];

  self->mBookSubtitle = v5;
}

- (void)setTocHeaderImageData:(id)data
{
  [(THTOCModel *)self willModify];
  dataCopy = data;

  self->mTocHeaderImageData = data;
}

- (void)dealloc
{
  self->mTiles = 0;

  self->mBookTitle = 0;
  self->mBookSubtitle = 0;

  self->mTocHeaderImageData = 0;
  self->_figureReference = 0;
  v3.receiver = self;
  v3.super_class = THTOCModel;
  [(THTOCModel *)&v3 dealloc];
}

- (unint64_t)pageIndex
{
  result = [(NSArray *)[(THTOCModel *)self tiles] count];
  if (result)
  {
    v4 = [(NSArray *)[(THTOCModel *)self tiles] objectAtIndex:0];

    return [v4 pageIndex];
  }

  return result;
}

- (id)displayPageNumberForPageIndex:(unint64_t)index
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tiles = [(THTOCModel *)self tiles];
  v5 = [(NSArray *)tiles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(tiles);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 pageIndex] > index)
      {
        break;
      }

      if ([v10 displayPageNumberForPageIndex:index])
      {
        v7 = v10;
      }

      if (v6 == ++v9)
      {
        v6 = [(NSArray *)tiles countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return [v7 displayPageNumberForPageIndex:index];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return [v7 displayPageNumberForPageIndex:index];
}

- (unint64_t)toc:(id)toc numberOfTilesInDivision:(int64_t)division
{
  if (![(NSArray *)[(THTOCModel *)self tiles:toc] count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  tiles = [(THTOCModel *)self tiles];

  return [(NSArray *)tiles count];
}

- (id)toc:(id)toc tileModelForChapterIndex:(int64_t)index
{
  if ([(NSArray *)[(THTOCModel *)self tiles] count]<= index)
  {
    return 0;
  }

  tiles = [(THTOCModel *)self tiles];

  return [(NSArray *)tiles objectAtIndex:index];
}

@end