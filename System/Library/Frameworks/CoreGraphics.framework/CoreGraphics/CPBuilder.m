@interface CPBuilder
- (void)cluster:(id)a3 andPutTextLinesInto:(id)a4;
- (void)prepareZone:(id)a3;
@end

@implementation CPBuilder

- (void)prepareZone:(id)a3
{
  [a3 mapSafely:sel_prepareZone_ target:self childrenOfClass:objc_opt_class()];
  v7 = objc_alloc_init(CPTextLineMaker);
  v5 = [(CPTextLineMaker *)v7 makeTextLines:a3];
  v6 = v7;
  if (v5)
  {
    [(CPBuilder *)self cluster:[(CPTextLineMaker *)v7 textLines] andPutTextLinesInto:a3];
    if (v5 == 1 && [CPHighlighter reconstructHighlightFor:a3])
    {

      return;
    }

    [a3 sortUsingSelector:sel_compareYDescending_];
    v6 = v7;
  }

  [CPGraphicMaker makeCombinedShapesIn:a3];
}

- (void)cluster:(id)a3 andPutTextLinesInto:(id)a4
{
  v6 = [a4 page];
  v7 = [a3 count];
  v8 = [a4 textLinesInZone];
  if (v7 >= 1)
  {
    v9 = v8;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      v12 = [a3 objectAtIndex:v10];
      if ([v12 length])
      {
        v13 = objc_alloc_init(CPTextLine);
        [(CPObject *)v13 setPage:v6];
        [(CPTextLine *)v13 setCharSequence:v12];
        if ([v12 wasMerged])
        {
          [(CPTextLine *)v13 setBaselineToNull];
        }

        else
        {
          -[CPTextLine setBaseline:](v13, "setBaseline:", *([v12 charAtIndex:0] + 104));
        }

        [v9 addObject:v13];
        [CPCluster clusterTextLine:v13];
      }

      ++v10;
    }

    while (v11 != v10);
  }
}

@end