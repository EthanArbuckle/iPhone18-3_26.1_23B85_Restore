@interface THTOCModel
- (id)displayPageNumberForPageIndex:(unint64_t)a3;
- (id)toc:(id)a3 tileModelForChapterIndex:(int64_t)a4;
- (unint64_t)pageIndex;
- (unint64_t)toc:(id)a3 numberOfTilesInDivision:(int64_t)a4;
- (void)dealloc;
- (void)setBookSubtitle:(id)a3;
- (void)setBookTitle:(id)a3;
- (void)setTiles:(id)a3;
- (void)setTocHeaderImageData:(id)a3;
@end

@implementation THTOCModel

- (void)setTiles:(id)a3
{
  [(THTOCModel *)self willModify];
  v5 = a3;

  self->mTiles = a3;
}

- (void)setBookTitle:(id)a3
{
  [(THTOCModel *)self willModify];
  v5 = [a3 copy];

  self->mBookTitle = v5;
}

- (void)setBookSubtitle:(id)a3
{
  [(THTOCModel *)self willModify];
  v5 = [a3 copy];

  self->mBookSubtitle = v5;
}

- (void)setTocHeaderImageData:(id)a3
{
  [(THTOCModel *)self willModify];
  v5 = a3;

  self->mTocHeaderImageData = a3;
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

- (id)displayPageNumberForPageIndex:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(THTOCModel *)self tiles];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 pageIndex] > a3)
      {
        break;
      }

      if ([v10 displayPageNumberForPageIndex:a3])
      {
        v7 = v10;
      }

      if (v6 == ++v9)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return [v7 displayPageNumberForPageIndex:a3];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return [v7 displayPageNumberForPageIndex:a3];
}

- (unint64_t)toc:(id)a3 numberOfTilesInDivision:(int64_t)a4
{
  if (![(NSArray *)[(THTOCModel *)self tiles:a3] count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THTOCModel *)self tiles];

  return [(NSArray *)v5 count];
}

- (id)toc:(id)a3 tileModelForChapterIndex:(int64_t)a4
{
  if ([(NSArray *)[(THTOCModel *)self tiles] count]<= a4)
  {
    return 0;
  }

  v6 = [(THTOCModel *)self tiles];

  return [(NSArray *)v6 objectAtIndex:a4];
}

@end