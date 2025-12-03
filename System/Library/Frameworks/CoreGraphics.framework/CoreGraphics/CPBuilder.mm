@interface CPBuilder
- (void)cluster:(id)cluster andPutTextLinesInto:(id)into;
- (void)prepareZone:(id)zone;
@end

@implementation CPBuilder

- (void)prepareZone:(id)zone
{
  [zone mapSafely:sel_prepareZone_ target:self childrenOfClass:objc_opt_class()];
  v7 = objc_alloc_init(CPTextLineMaker);
  v5 = [(CPTextLineMaker *)v7 makeTextLines:zone];
  v6 = v7;
  if (v5)
  {
    [(CPBuilder *)self cluster:[(CPTextLineMaker *)v7 textLines] andPutTextLinesInto:zone];
    if (v5 == 1 && [CPHighlighter reconstructHighlightFor:zone])
    {

      return;
    }

    [zone sortUsingSelector:sel_compareYDescending_];
    v6 = v7;
  }

  [CPGraphicMaker makeCombinedShapesIn:zone];
}

- (void)cluster:(id)cluster andPutTextLinesInto:(id)into
{
  page = [into page];
  v7 = [cluster count];
  textLinesInZone = [into textLinesInZone];
  if (v7 >= 1)
  {
    v9 = textLinesInZone;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      v12 = [cluster objectAtIndex:v10];
      if ([v12 length])
      {
        v13 = objc_alloc_init(CPTextLine);
        [(CPObject *)v13 setPage:page];
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