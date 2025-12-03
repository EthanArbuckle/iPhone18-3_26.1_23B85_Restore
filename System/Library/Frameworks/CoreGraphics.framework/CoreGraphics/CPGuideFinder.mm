@interface CPGuideFinder
+ (BOOL)guideSeparates:(id)separates from:(id)from;
+ (BOOL)gutterSeparates:(id)separates from:(id)from;
+ (void)reclusterBetweenGuides:(id)guides;
+ (void)reclusterPreservingAlignment:(id)alignment;
- (BOOL)addStripTo:(id)to bottom:(double)bottom left:(double)left top:(double)top right:(double)right;
- (BOOL)hasGutters;
- (BOOL)hasLeftGuides;
- (BOOL)hasRightGuides;
- (CPGuideFinder)initWithContentZone:(id)zone;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)findGuides;
- (void)findGutters;
- (void)findWordEdgeClusters;
- (void)func:(id)func and:(id)and and:(unsigned int)a5 and:(unsigned int)a6;
- (void)getWordEdges;
- (void)markTextLines;
- (void)setAlignForWordWithExtent:(id *)extent stripArray:(id)array stripMax:(double)max;
- (void)splitTextLines;
- (void)splitTextLinesAtBorderWords;
- (void)splitTextLinesBetweenBorderWords;
- (void)subdivideGutterFrom:(unsigned int)from to:(unsigned int)to;
- (void)subdivideLeftGuideAt:(unsigned int)at;
- (void)subdivideRightGuideAt:(unsigned int)at;
- (void)subdivideStripInto:(id)into from:(double)from to:(double)to borderedBy:(id *)by ofCount:(unsigned int)count crossedBy:(id *)crossedBy ofCount:(unsigned int)ofCount;
@end

@implementation CPGuideFinder

- (BOOL)hasRightGuides
{
  rightGuides = self->rightGuides;
  if (rightGuides)
  {
    LOBYTE(rightGuides) = [(NSMutableArray *)rightGuides count]!= 0;
  }

  return rightGuides;
}

- (BOOL)hasLeftGuides
{
  leftGuides = self->leftGuides;
  if (leftGuides)
  {
    LOBYTE(leftGuides) = [(NSMutableArray *)leftGuides count]!= 0;
  }

  return leftGuides;
}

- (BOOL)hasGutters
{
  gutters = self->gutters;
  if (gutters)
  {
    LOBYTE(gutters) = [(NSMutableArray *)gutters count]!= 0;
  }

  return gutters;
}

- (void)markTextLines
{
  v13 = *&self->gutters;
  rightGuides = self->rightGuides;
  if ([(CPGuideFinder *)self hasGutters])
  {
    LOBYTE(v3) = 0;
  }

  else if ([(CPGuideFinder *)self hasLeftGuides])
  {
    v3 = ![(CPGuideFinder *)self hasRightGuides];
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  textLinesInZone = [(CPZone *)self->contentZone textLinesInZone];
  v5 = [textLinesInZone count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    firstWord = 0;
    lastWord = 0;
    do
    {
      v8 = [textLinesInZone objectAtIndex:v7];
      if ([v8 levels] >= 3)
      {
        firstWord = [v8 firstWord];
        lastWord = [v8 lastWord];
        [v8 mapToWordPairs:markSplitByGuide passing:&v13];
        v9 = firstWord;
        v10 = v9 == [v8 firstWord] ? 1 : v3;
        if ((v10 & 1) == 0)
        {
          if ((v11 = *([v8 firstWord] + 12), v12 = v11, (v11 & 0x45) != 0) && (v11 & 0x8A) != 0 || (objc_msgSend(v8, "mapToWordPairs:passing:", hasConsistentSpacing, &v12) & 1) == 0)
          {
            [CPGuideFinder reclusterBetweenGuides:v8];
          }
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

- (void)splitTextLines
{
  [(CPGuideFinder *)self splitTextLinesAtBorderWords];

  [(CPGuideFinder *)self splitTextLinesBetweenBorderWords];
}

- (void)splitTextLinesBetweenBorderWords
{
  if ([(CPGuideFinder *)self hasGutters:self->gutters])
  {
    hasRightGuides = 1;
  }

  else if ([(CPGuideFinder *)self hasLeftGuides])
  {
    hasRightGuides = [(CPGuideFinder *)self hasRightGuides];
  }

  else
  {
    hasRightGuides = 0;
  }

  textLinesInZone = [(CPZone *)self->contentZone textLinesInZone];
  v5 = [textLinesInZone count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    firstWord = 0;
    lastWord = 0;
    v8 = v5;
    do
    {
      v9 = [textLinesInZone objectAtIndex:v7];
      if ([v9 levels] >= 3)
      {
        firstWord = [v9 firstWord];
        lastWord = [v9 lastWord];
        if ((hasRightGuides & [v9 removeTextLines:textLinesInZone whereTrue:isSplitByGuide passing:&v11]) == 1)
        {
          v10 = [textLinesInZone count];
          [(CPGuideFinder *)self func:textLinesInZone and:v9 and:v6 and:v10];
          v6 = v10;
        }
      }

      ++v7;
    }

    while (v8 != v7);
  }
}

- (void)splitTextLinesAtBorderWords
{
  if ([(CPGuideFinder *)self hasGutters])
  {
    hasRightGuides = 1;
  }

  else if ([(CPGuideFinder *)self hasLeftGuides])
  {
    hasRightGuides = [(CPGuideFinder *)self hasRightGuides];
  }

  else
  {
    hasRightGuides = 0;
  }

  textLinesInZone = [(CPZone *)self->contentZone textLinesInZone];
  v5 = [textLinesInZone count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = [textLinesInZone objectAtIndex:v7];
      v11[1] = [v9 lastWord];
      if ((hasRightGuides & [v9 removeTextLines:textLinesInZone whereTrue:isAlignedWithGuide passing:v11]) == 1)
      {
        v10 = [textLinesInZone count];
        [(CPGuideFinder *)self func:textLinesInZone and:v9 and:v6 and:v10];
        v6 = v10;
      }

      ++v7;
    }

    while (v8 != v7);
  }
}

- (void)func:(id)func and:(id)and and:(unsigned int)a5 and:(unsigned int)a6
{
  LODWORD(v7) = a5;
  hasJustifiedAlignment = [and hasJustifiedAlignment];
  if (a6 <= v7 || (hasJustifiedAlignment & 1) != 0)
  {
LABEL_8:
    if (!hasJustifiedAlignment)
    {
      return;
    }
  }

  else
  {
    v11 = v7;
    andCopy = and;
    while (1)
    {
      v13 = [func objectAtIndex:v11];
      if (([v13 hasJustifiedAlignment] & 1) != 0 || +[CPGuideFinder gutterSeparates:from:](CPGuideFinder, "gutterSeparates:from:", andCopy, v13))
      {
        break;
      }

      hasJustifiedAlignment = [andCopy changesFontAt:v13];
      if (++v11 < a6)
      {
        andCopy = v13;
        if (!hasJustifiedAlignment)
        {
          continue;
        }
      }

      goto LABEL_8;
    }
  }

  [CPGuideFinder reclusterPreservingAlignment:and];
  v14 = a6 >= v7;
  v15 = a6 - v7;
  if (v15 != 0 && v14)
  {
    v7 = v7;
    do
    {
      +[CPGuideFinder reclusterPreservingAlignment:](CPGuideFinder, "reclusterPreservingAlignment:", [func objectAtIndex:v7++]);
      --v15;
    }

    while (v15);
  }
}

- (void)findGuides
{
  [(NSMutableArray *)self->leftGuides removeAllObjects];
  [(NSMutableArray *)self->rightGuides removeAllObjects];
  [(CPGuideFinder *)self findWordEdgeClusters];
  clusterCount = [(CPCluster *)self->anchors clusterCount];
  if (clusterCount)
  {
    v4 = clusterCount;
    v5 = 0;
    do
    {
      [(CPGuideFinder *)self subdivideLeftGuideAt:v5];
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  clusterCount2 = [(CPCluster *)self->rightHandSides clusterCount];
  if (clusterCount2)
  {
    v7 = clusterCount2;
    v8 = 0;
    do
    {
      [(CPGuideFinder *)self subdivideRightGuideAt:v8];
      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }
}

- (void)findGutters
{
  [(NSMutableArray *)self->gutters removeAllObjects];
  [(CPGuideFinder *)self findWordEdgeClusters];
  medianFontSizeOfFirstCharacter = self->medianFontSizeOfFirstCharacter;
  medianFontSizeOfLastCharacter = self->medianFontSizeOfLastCharacter;
  clusterCount = [(CPCluster *)self->anchors clusterCount];
  clusterCount2 = [(CPCluster *)self->rightHandSides clusterCount];
  if (clusterCount)
  {
    v7 = clusterCount2;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = medianFontSizeOfLastCharacter * 0.2 + medianFontSizeOfFirstCharacter * 0.05;
    do
    {
      anchors = self->anchors;
      if (anchors)
      {
        [(CPCluster *)anchors clusterStatisticsAtIndex:v8];
        v14 = *(&v20 + 1);
      }

      else
      {
        v20 = 0u;
        v14 = 0.0;
      }

      if (v9 >= v7)
      {
        v16 = v9;
      }

      else
      {
        v15 = 0;
        while (1)
        {
          v16 = v9;
          rightHandSides = self->rightHandSides;
          if (rightHandSides)
          {
            [(CPCluster *)rightHandSides clusterStatisticsAtIndex:v9];
            v18 = v19;
          }

          else
          {
            v19 = 0.0;
            v18 = 0.0;
          }

          if (v12 + v18 >= v14)
          {
            break;
          }

          v9 = (v9 + 1);
          v15 = 1;
          v10 = v16;
          v11 = v8;
          if (v7 == v9)
          {
            [(CPGuideFinder *)self subdivideGutterFrom:v16 to:v8];
            return;
          }
        }

        if (v15)
        {
          [(CPGuideFinder *)self subdivideGutterFrom:v10 to:v11];
        }
      }

      v8 = (v8 + 1);
      v9 = v16;
    }

    while (v8 != clusterCount);
  }
}

- (void)findWordEdgeClusters
{
  if (!self->anchors)
  {
    [(CPGuideFinder *)self getWordEdges];
    self->anchors = [[CPCluster alloc] initWithProfile:&kCPClusterProfileWordAlignment];
    self->rightHandSides = [[CPCluster alloc] initWithProfile:&kCPClusterProfileWordAlignment];
    v3 = rint(fmax([-[CPZone textLinesInZone](self->contentZone "textLinesInZone")] * 0.05, 5.0));
    v4 = self->medianFontSizeOfFirstCharacter * 0.05;
    v5 = self->medianFontSizeOfLastCharacter * 0.2;
    [(CPCluster *)self->anchors setMinimumClusterSize:v3];
    [(CPCluster *)self->anchors setMaximumClusterSpread:v4];
    [(CPCluster *)self->rightHandSides setMinimumClusterSize:v3];
    [(CPCluster *)self->rightHandSides setMaximumClusterSpread:v5];
    [(CPCluster *)self->anchors findDensityClusters:self->anchorArray count:self->countOfWordsInZone];
    [(CPCluster *)self->rightHandSides findDensityClusters:self->rightHandSideArray count:self->countOfWordsInZone];
    if ([(CPCluster *)self->anchors clusterCount]|| [(CPCluster *)self->rightHandSides clusterCount])
    {
      countOfWordsInZone = self->countOfWordsInZone;
      if (countOfWordsInZone)
      {
        self->crossingWordArray = malloc_type_malloc(56 * countOfWordsInZone, 0x1030040FAAEECD9uLL);
      }
    }
  }
}

- (void)subdivideRightGuideAt:(unsigned int)at
{
  memset(v11, 0, sizeof(v11));
  rightHandSides = self->rightHandSides;
  if (rightHandSides)
  {
    [rightHandSides clusterStatisticsAtIndex:*&at];
    rightHandSides = 56 * LODWORD(v11[0]);
  }

  v5 = malloc_type_malloc(rightHandSides, 0x1030040FAAEECD9uLL);
  crossingWordArray = self->crossingWordArray;
  v7[0] = v5;
  v7[1] = crossingWordArray;
  v8 = 0;
  LODWORD(v8) = self->countOfWordsInZone;
  v9 = *(v11 + 8);
  v10 = *(v11 + 8);
  [(CPZone *)self->contentZone mapToWordPairsWithIndex:accumulateRightGuideIntersections passing:v7];
  if (LODWORD(v11[0]) < -1227133513 * ((v7[0] - v5) >> 3))
  {
    __assert_rtn("[CPGuideFinder subdivideRightGuideAt:]", "CPGuideFinder.m", 696, "borderWordCount <= rhsStats.count");
  }

  [CPGuideFinder subdivideStripInto:"subdivideStripInto:from:to:borderedBy:ofCount:crossedBy:ofCount:" from:self->rightGuides to:v5 borderedBy:v9 ofCount:? crossedBy:? ofCount:?];
  free(v5);
}

- (void)subdivideLeftGuideAt:(unsigned int)at
{
  memset(v11, 0, sizeof(v11));
  anchors = self->anchors;
  if (anchors)
  {
    [anchors clusterStatisticsAtIndex:*&at];
    anchors = 56 * LODWORD(v11[0]);
  }

  v5 = malloc_type_malloc(anchors, 0x1030040FAAEECD9uLL);
  crossingWordArray = self->crossingWordArray;
  v7[0] = v5;
  v7[1] = crossingWordArray;
  v8 = 0;
  LODWORD(v8) = self->countOfWordsInZone;
  v9 = *(v11 + 8);
  v10 = *(v11 + 8);
  [(CPZone *)self->contentZone mapToWordPairsWithIndex:accumulateLeftGuideIntersections passing:v7];
  if (LODWORD(v11[0]) < -1227133513 * ((v7[0] - v5) >> 3))
  {
    __assert_rtn("[CPGuideFinder subdivideLeftGuideAt:]", "CPGuideFinder.m", 669, "borderWordCount <= anchorStats.count");
  }

  [CPGuideFinder subdivideStripInto:"subdivideStripInto:from:to:borderedBy:ofCount:crossedBy:ofCount:" from:self->leftGuides to:v5 borderedBy:v10 ofCount:? crossedBy:? ofCount:?];
  free(v5);
}

- (void)subdivideGutterFrom:(unsigned int)from to:(unsigned int)to
{
  v4 = *&to;
  v6 = 0uLL;
  memset(v17, 0, sizeof(v17));
  rightHandSides = self->rightHandSides;
  if (rightHandSides)
  {
    [(CPCluster *)rightHandSides clusterStatisticsAtIndex:*&from];
    v6 = 0uLL;
  }

  *v16 = v6;
  *&v16[16] = v6;
  anchors = self->anchors;
  if (anchors)
  {
    [(CPCluster *)anchors clusterStatisticsAtIndex:v4];
    v9 = *v16;
  }

  else
  {
    v9 = 0;
  }

  v10 = malloc_type_malloc(56 * (v9 + LODWORD(v17[0])), 0x1030040FAAEECD9uLL);
  crossingWordArray = self->crossingWordArray;
  v12[0] = v10;
  v12[1] = crossingWordArray;
  v13 = 0;
  LODWORD(v13) = self->countOfWordsInZone;
  v14 = *(v17 + 8);
  v15 = *&v16[8];
  [(CPZone *)self->contentZone mapToWordPairsWithIndex:accumulateGutterIntersections passing:v12];
  if (*v16 + LODWORD(v17[0]) < -1227133513 * ((v12[0] - v10) >> 3))
  {
    __assert_rtn("[CPGuideFinder subdivideGutterFrom:to:]", "CPGuideFinder.m", 642, "borderWordCount <= rhsStats.count + anchorStats.count");
  }

  [CPGuideFinder subdivideStripInto:"subdivideStripInto:from:to:borderedBy:ofCount:crossedBy:ofCount:" from:self->gutters to:v10 borderedBy:*(&v14 + 1) ofCount:*&v15 crossedBy:? ofCount:?];
  free(v10);
}

- (void)subdivideStripInto:(id)into from:(double)from to:(double)to borderedBy:(id *)by ofCount:(unsigned int)count crossedBy:(id *)crossedBy ofCount:(unsigned int)ofCount
{
  qsort(by, count, 0x38uLL, compareWordExtentBottomAscendingLeftDescending);
  ofCountCopy = ofCount;
  crossedByCopy = crossedBy;
  qsort(crossedBy, ofCount, 0x38uLL, compareWordExtentBottomAscendingLeftDescending);
  if (count)
  {
    countCopy = count;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
    var6 = 0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    byCopy = by;
    byCopy2 = by;
    v57 = countCopy;
    ofCountCopy2 = ofCount;
    do
    {
      if (countCopy <= v20 + 1)
      {
        v27 = v20 + 1;
      }

      else
      {
        v27 = countCopy;
      }

      v55 = v27;
      v28 = &byCopy[v20];
      v20 = v20;
      v29 = v22;
      v30 = v23;
      v31 = v18;
      while (1)
      {
        v18 = v31;
        v23 = v30;
        v22 = v29;
        v32 = &byCopy[v20];
        var2 = v32->var2;
        var3 = v32->var3;
        var0 = v32->var0;
        var1 = v32->var1;
        if (v31 < 1)
        {
          break;
        }

        if (v19 != ofCountCopy2 && var3 > v24)
        {
          if (v31 < 5 || v17 < 1)
          {
            v17 = 0;
          }

          else
          {
            if ([(CPGuideFinder *)self addStripTo:into bottom:v29 left:from top:v30 right:to])
            {
              v45 = v18;
              v46 = v18 + 1;
              v47 = &v28[-v45];
              do
              {
                [(CPGuideFinder *)self setAlignForWordWithExtent:v47 stripArray:into stripMax:to];
                --v46;
                ++v47;
              }

              while (v46 > 1);
              v18 = 0;
            }

            v17 = 0;
            byCopy = byCopy2;
            countCopy = v57;
            ofCountCopy2 = ofCountCopy;
          }

          break;
        }

        v37 = v31 == 1 && v17 <= 0;
        v38 = !v37;
        var4 = v32->var4;
        if ((var4 & 2) != 0 && var1 <= to)
        {
          v40 = 1;
        }

        else
        {
          v40 = var4 & (var0 >= from);
        }

        if (self->gutters == into || (v40 & v38 & 1) != 0 || (v41 = CPPDFStyleEqual(var6, v32->var6, 0xFFFF), countCopy = v57, ofCountCopy2 = ofCountCopy, byCopy = byCopy2, (v41 & 1) != 0))
        {
          if (var3 <= v23)
          {
            v30 = v23;
          }

          else
          {
            v30 = var3;
          }

          v31 = (v18 + 1);
          v29 = v22;
        }

        else
        {
          v31 = 1;
          if (v18 < 5)
          {
            v17 = 0;
            v30 = var3;
            v29 = var2;
          }

          else
          {
            v30 = var3;
            v29 = var2;
            v37 = v17 < 1;
            v17 = 0;
            if (!v37)
            {
              if ([(CPGuideFinder *)self addStripTo:into bottom:v22 left:from top:v23 right:to])
              {
                v42 = v18;
                v43 = v18 + 1;
                v44 = &v28[-v42];
                do
                {
                  [(CPGuideFinder *)self setAlignForWordWithExtent:v44 stripArray:into stripMax:to];
                  --v43;
                  ++v44;
                }

                while (v43 > 1);
              }

              v17 = 0;
              v31 = 1;
              v30 = var3;
              v29 = var2;
              byCopy = byCopy2;
              countCopy = v57;
              ofCountCopy2 = ofCountCopy;
            }
          }
        }

        v17 += v40;
        var6 = v32->var6;
        ++v20;
        ++v28;
        if (v20 >= countCopy)
        {
          LODWORD(v20) = v55;
          v23 = v30;
          v22 = v29;
          v18 = v31;
          break;
        }
      }

      if (v20 == countCopy)
      {
        break;
      }

      if (v19 < ofCountCopy2)
      {
        v48 = &crossedByCopy[v19];
        while (v48->var3 <= var2)
        {
          ++v19;
          ++v48;
          if (v19 >= ofCountCopy2)
          {
            v24 = v48[-1].var2;
            v19 = ofCountCopy2;
            goto LABEL_59;
          }
        }

        v24 = v48->var2;
        if (var3 <= v24)
        {
          v49 = v32->var4;
          if ((v49 & 2) != 0 && var1 <= to || (v49 & 1) != 0 && var0 >= from)
          {
            v17 = 1;
          }

          var6 = v32->var6;
          v18 = 1;
          v23 = var3;
          v22 = var2;
        }

        LODWORD(v20) = v20 + 1;
      }

      if (v19 == ofCountCopy2)
      {
LABEL_59:
        v50 = v32->var4;
        if ((v50 & 2) != 0 && var1 <= to || (v50 & 1) != 0 && var0 >= from)
        {
          v17 = 1;
        }

        var6 = v32->var6;
        LODWORD(v20) = v20 + 1;
        v18 = 1;
        v23 = var3;
        v22 = var2;
      }
    }

    while (v20 < countCopy && v19 <= ofCountCopy2);
    if (v18 >= 5 && v17 >= 1)
    {
      v51 = byCopy;
      if ([(CPGuideFinder *)self addStripTo:into bottom:v22 left:from top:v23 right:to])
      {
        v52 = v18 + 1;
        v53 = v57 - v18;
        do
        {
          [(CPGuideFinder *)self setAlignForWordWithExtent:&v51[v53] stripArray:into stripMax:to];
          --v52;
          ++v53;
        }

        while (v52 > 1);
      }
    }
  }
}

- (void)setAlignForWordWithExtent:(id *)extent stripArray:(id)array stripMax:(double)max
{
  if (self->leftGuides == array)
  {
    v5 = 1;
  }

  else if (self->rightGuides == array)
  {
    v5 = 2;
  }

  else if (extent->var0 >= max)
  {
    v5 = 4;
  }

  else
  {
    v5 = 8;
  }

  *extent->var5 |= v5;
}

- (BOOL)addStripTo:(id)to bottom:(double)bottom left:(double)left top:(double)top right:(double)right
{
  leftCopy = left;
  bottomCopy = bottom;
  v7 = top - bottom;
  v18 = right - left;
  v19 = v7;
  v8 = (*&bottom & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&left & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v9 = fabs(right - left);
  v12 = v8 && *&v9 < 0x7FF0000000000000 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (v12)
  {
    v14 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:&leftCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [to addObject:{v14, *&leftCopy, *&bottomCopy, *&v18, *&v19}];
  }

  return v12;
}

- (void)getWordEdges
{
  wordCount = [(CPZone *)self->contentZone wordCount];
  self->countOfWordsInZone = wordCount;
  if (wordCount)
  {
    self->anchorArray = malloc_type_malloc(8 * wordCount, 0x100004000313F17uLL);
    self->rightHandSideArray = malloc_type_malloc(8 * self->countOfWordsInZone, 0x100004000313F17uLL);
    v4 = malloc_type_malloc(8 * self->countOfWordsInZone, 0x100004000313F17uLL);
    v5 = malloc_type_malloc(8 * self->countOfWordsInZone, 0x100004000313F17uLL);
    v6 = *&self->anchorArray;
    v7 = v4;
    v8 = v5;
    [(CPZone *)self->contentZone mapToWordsWithIndex:accumulateWordAlignmentData passing:&v6];
    qsort(self->anchorArray, self->countOfWordsInZone, 8uLL, compareDouble);
    qsort(self->rightHandSideArray, self->countOfWordsInZone, 8uLL, compareDouble);
    self->medianFontSizeOfFirstCharacter = medianDouble(v4, self->countOfWordsInZone);
    self->medianFontSizeOfLastCharacter = medianDouble(v5, self->countOfWordsInZone);
    free(v5);
    free(v4);
  }
}

- (void)dealloc
{
  [(CPGuideFinder *)self dispose];

  v3.receiver = self;
  v3.super_class = CPGuideFinder;
  [(CPGuideFinder *)&v3 dealloc];
}

- (void)finalize
{
  [(CPGuideFinder *)self dispose];
  v3.receiver = self;
  v3.super_class = CPGuideFinder;
  [(CPGuideFinder *)&v3 finalize];
}

- (void)dispose
{
  if (self->contentZone)
  {
    [(CPCluster *)self->anchors dispose];
    [(CPCluster *)self->rightHandSides dispose];
    free(self->anchorArray);
    free(self->rightHandSideArray);
    free(self->crossingWordArray);
    self->contentZone = 0;
  }
}

- (CPGuideFinder)initWithContentZone:(id)zone
{
  v7.receiver = self;
  v7.super_class = CPGuideFinder;
  v4 = [(CPGuideFinder *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->contentZone = zone;
    v4->gutters = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->leftGuides = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->rightGuides = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v5;
}

+ (void)reclusterBetweenGuides:(id)guides
{
  if ([guides wordCount])
  {
    wordArray = [guides wordArray];
    v6 = *(wordArray + 8);
    v5 = *(wordArray + 12);
    v7 = v5 & 0x55;
    v22 = 0;
    v8 = v5 & 0xAA;
    if ([guides wordCount] < 2)
    {
      v9 = 0;
      v10 = 1;
      v11 = v6;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      v11 = v6;
      do
      {
        v12 = *(wordArray + 48 * v10 + 12);
        v13 = v12 & 0x55;
        if (v8 | v13)
        {
          v22 = v10 - v9;
          [CPCluster reclusterTextLine:guides fromWordIndex:v9 count:&v22];
          wordArray2 = [guides wordArray];
          wordArray = wordArray2;
          v15 = wordArray2 + 48 * v9;
          v16 = *(v15 + 12) | v7;
          *(v15 + 8) = v6;
          *(v15 + 12) = v16;
          v9 = (v22 + v9);
          if (v22)
          {
            *(wordArray2 + 48 * (v9 - 1) + 12) |= v8;
          }

          v17 = wordArray2 + 48 * v9;
          v6 = *(v17 + 8);
          v12 = *(v17 + 12);
          if (v11 <= v6)
          {
            v11 = v6;
          }

          v7 = v13;
          v10 = v9;
        }

        ++v10;
        v8 = v12 & 0xAA;
      }

      while (v10 < [guides wordCount]);
    }

    v22 = v10 - v9;
    [CPCluster reclusterTextLine:guides fromWordIndex:v9 count:&v22];
    wordArray3 = [guides wordArray];
    v19 = wordArray3 + 48 * v9;
    v20 = *(v19 + 12) | v7;
    *(v19 + 8) = v6;
    *(v19 + 12) = v20;
    if (v22)
    {
      v21 = wordArray3 + 48 * (v9 + v22 - 1);
      *(v21 + 12) |= v8;
    }

    if ([guides levels] <= v11)
    {
      [guides setLevels:(v11 + 1)];
    }
  }
}

+ (void)reclusterPreservingAlignment:(id)alignment
{
  wordCount = [alignment wordCount];
  if (wordCount)
  {
    v5 = wordCount;
    v6 = 48 * wordCount;
    v7 = malloc_type_malloc(v6, 0x6230A59DuLL);
    memcpy(v7, [alignment wordArray], v6);
    [CPCluster clusterTextLine:alignment];
    wordCount2 = [alignment wordCount];
    wordArray = [alignment wordArray];
    if (wordCount2)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &v7[48 * v10];
        v13 = (wordArray + 48 * v11);
        v14 = v13[1];
        if (*v13 == *v12)
        {
          v15 = *(v12 + 1);
          v16 = *(v12 + 3);
          if (v14 == v15)
          {
            goto LABEL_10;
          }

          v13[3] |= v16 & 0x55;
          if (v14 <= v15)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v17 = v14 + *v13;
          v18 = *(v12 + 1) + *v12;
          if (v17 == v18)
          {
            v16 = v13[3] | *(v12 + 3) & 0xAA;
LABEL_10:
            v13[3] = v16;
            ++v10;
LABEL_11:
            ++v11;
            continue;
          }

          if (v17 <= v18)
          {
            goto LABEL_11;
          }
        }

        ++v10;
      }

      while (v10 < v5 && v11 < wordCount2);
    }

    free(v7);
  }
}

+ (BOOL)gutterSeparates:(id)separates from:(id)from
{
  lastWord = [separates lastWord];
  firstWord = [from firstWord];
  result = 0;
  if (lastWord && firstWord)
  {
    return (*(lastWord + 12) & 0x88) != 0 || (*(firstWord + 12) & 0x44) != 0;
  }

  return result;
}

+ (BOOL)guideSeparates:(id)separates from:(id)from
{
  lastWord = [separates lastWord];
  firstWord = [from firstWord];
  result = 0;
  if (lastWord && firstWord)
  {
    return (*(lastWord + 12) & 0xAA) != 0 || (*(firstWord + 12) & 0x55) != 0;
  }

  return result;
}

@end