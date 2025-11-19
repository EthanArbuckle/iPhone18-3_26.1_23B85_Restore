@interface CPGuideFinder
+ (BOOL)guideSeparates:(id)a3 from:(id)a4;
+ (BOOL)gutterSeparates:(id)a3 from:(id)a4;
+ (void)reclusterBetweenGuides:(id)a3;
+ (void)reclusterPreservingAlignment:(id)a3;
- (BOOL)addStripTo:(id)a3 bottom:(double)a4 left:(double)a5 top:(double)a6 right:(double)a7;
- (BOOL)hasGutters;
- (BOOL)hasLeftGuides;
- (BOOL)hasRightGuides;
- (CPGuideFinder)initWithContentZone:(id)a3;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)findGuides;
- (void)findGutters;
- (void)findWordEdgeClusters;
- (void)func:(id)a3 and:(id)a4 and:(unsigned int)a5 and:(unsigned int)a6;
- (void)getWordEdges;
- (void)markTextLines;
- (void)setAlignForWordWithExtent:(id *)a3 stripArray:(id)a4 stripMax:(double)a5;
- (void)splitTextLines;
- (void)splitTextLinesAtBorderWords;
- (void)splitTextLinesBetweenBorderWords;
- (void)subdivideGutterFrom:(unsigned int)a3 to:(unsigned int)a4;
- (void)subdivideLeftGuideAt:(unsigned int)a3;
- (void)subdivideRightGuideAt:(unsigned int)a3;
- (void)subdivideStripInto:(id)a3 from:(double)a4 to:(double)a5 borderedBy:(id *)a6 ofCount:(unsigned int)a7 crossedBy:(id *)a8 ofCount:(unsigned int)a9;
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

  v4 = [(CPZone *)self->contentZone textLinesInZone];
  v5 = [v4 count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v8 = [v4 objectAtIndex:v7];
      if ([v8 levels] >= 3)
      {
        v15 = [v8 firstWord];
        v16 = [v8 lastWord];
        [v8 mapToWordPairs:markSplitByGuide passing:&v13];
        v9 = v15;
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
    v3 = 1;
  }

  else if ([(CPGuideFinder *)self hasLeftGuides])
  {
    v3 = [(CPGuideFinder *)self hasRightGuides];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CPZone *)self->contentZone textLinesInZone];
  v5 = [v4 count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v12 = 0;
    v13 = 0;
    v8 = v5;
    do
    {
      v9 = [v4 objectAtIndex:v7];
      if ([v9 levels] >= 3)
      {
        v12 = [v9 firstWord];
        v13 = [v9 lastWord];
        if ((v3 & [v9 removeTextLines:v4 whereTrue:isSplitByGuide passing:&v11]) == 1)
        {
          v10 = [v4 count];
          [(CPGuideFinder *)self func:v4 and:v9 and:v6 and:v10];
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
    v3 = 1;
  }

  else if ([(CPGuideFinder *)self hasLeftGuides])
  {
    v3 = [(CPGuideFinder *)self hasRightGuides];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CPZone *)self->contentZone textLinesInZone];
  v5 = [v4 count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = [v4 objectAtIndex:v7];
      v11[1] = [v9 lastWord];
      if ((v3 & [v9 removeTextLines:v4 whereTrue:isAlignedWithGuide passing:v11]) == 1)
      {
        v10 = [v4 count];
        [(CPGuideFinder *)self func:v4 and:v9 and:v6 and:v10];
        v6 = v10;
      }

      ++v7;
    }

    while (v8 != v7);
  }
}

- (void)func:(id)a3 and:(id)a4 and:(unsigned int)a5 and:(unsigned int)a6
{
  LODWORD(v7) = a5;
  v10 = [a4 hasJustifiedAlignment];
  if (a6 <= v7 || (v10 & 1) != 0)
  {
LABEL_8:
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v11 = v7;
    v12 = a4;
    while (1)
    {
      v13 = [a3 objectAtIndex:v11];
      if (([v13 hasJustifiedAlignment] & 1) != 0 || +[CPGuideFinder gutterSeparates:from:](CPGuideFinder, "gutterSeparates:from:", v12, v13))
      {
        break;
      }

      v10 = [v12 changesFontAt:v13];
      if (++v11 < a6)
      {
        v12 = v13;
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_8;
    }
  }

  [CPGuideFinder reclusterPreservingAlignment:a4];
  v14 = a6 >= v7;
  v15 = a6 - v7;
  if (v15 != 0 && v14)
  {
    v7 = v7;
    do
    {
      +[CPGuideFinder reclusterPreservingAlignment:](CPGuideFinder, "reclusterPreservingAlignment:", [a3 objectAtIndex:v7++]);
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
  v3 = [(CPCluster *)self->anchors clusterCount];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      [(CPGuideFinder *)self subdivideLeftGuideAt:v5];
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  v6 = [(CPCluster *)self->rightHandSides clusterCount];
  if (v6)
  {
    v7 = v6;
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
  v5 = [(CPCluster *)self->anchors clusterCount];
  v6 = [(CPCluster *)self->rightHandSides clusterCount];
  if (v5)
  {
    v7 = v6;
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

    while (v8 != v5);
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

- (void)subdivideRightGuideAt:(unsigned int)a3
{
  memset(v11, 0, sizeof(v11));
  rightHandSides = self->rightHandSides;
  if (rightHandSides)
  {
    [rightHandSides clusterStatisticsAtIndex:*&a3];
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

- (void)subdivideLeftGuideAt:(unsigned int)a3
{
  memset(v11, 0, sizeof(v11));
  anchors = self->anchors;
  if (anchors)
  {
    [anchors clusterStatisticsAtIndex:*&a3];
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

- (void)subdivideGutterFrom:(unsigned int)a3 to:(unsigned int)a4
{
  v4 = *&a4;
  v6 = 0uLL;
  memset(v17, 0, sizeof(v17));
  rightHandSides = self->rightHandSides;
  if (rightHandSides)
  {
    [(CPCluster *)rightHandSides clusterStatisticsAtIndex:*&a3];
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

- (void)subdivideStripInto:(id)a3 from:(double)a4 to:(double)a5 borderedBy:(id *)a6 ofCount:(unsigned int)a7 crossedBy:(id *)a8 ofCount:(unsigned int)a9
{
  qsort(a6, a7, 0x38uLL, compareWordExtentBottomAscendingLeftDescending);
  v58 = a9;
  v54 = a8;
  qsort(a8, a9, 0x38uLL, compareWordExtentBottomAscendingLeftDescending);
  if (a7)
  {
    v16 = a7;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
    var6 = 0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = a6;
    v56 = a6;
    v57 = v16;
    v26 = a9;
    do
    {
      if (v16 <= v20 + 1)
      {
        v27 = v20 + 1;
      }

      else
      {
        v27 = v16;
      }

      v55 = v27;
      v28 = &v25[v20];
      v20 = v20;
      v29 = v22;
      v30 = v23;
      v31 = v18;
      while (1)
      {
        v18 = v31;
        v23 = v30;
        v22 = v29;
        v32 = &v25[v20];
        var2 = v32->var2;
        var3 = v32->var3;
        var0 = v32->var0;
        var1 = v32->var1;
        if (v31 < 1)
        {
          break;
        }

        if (v19 != v26 && var3 > v24)
        {
          if (v31 < 5 || v17 < 1)
          {
            v17 = 0;
          }

          else
          {
            if ([(CPGuideFinder *)self addStripTo:a3 bottom:v29 left:a4 top:v30 right:a5])
            {
              v45 = v18;
              v46 = v18 + 1;
              v47 = &v28[-v45];
              do
              {
                [(CPGuideFinder *)self setAlignForWordWithExtent:v47 stripArray:a3 stripMax:a5];
                --v46;
                ++v47;
              }

              while (v46 > 1);
              v18 = 0;
            }

            v17 = 0;
            v25 = v56;
            v16 = v57;
            v26 = v58;
          }

          break;
        }

        v37 = v31 == 1 && v17 <= 0;
        v38 = !v37;
        var4 = v32->var4;
        if ((var4 & 2) != 0 && var1 <= a5)
        {
          v40 = 1;
        }

        else
        {
          v40 = var4 & (var0 >= a4);
        }

        if (self->gutters == a3 || (v40 & v38 & 1) != 0 || (v41 = CPPDFStyleEqual(var6, v32->var6, 0xFFFF), v16 = v57, v26 = v58, v25 = v56, (v41 & 1) != 0))
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
              if ([(CPGuideFinder *)self addStripTo:a3 bottom:v22 left:a4 top:v23 right:a5])
              {
                v42 = v18;
                v43 = v18 + 1;
                v44 = &v28[-v42];
                do
                {
                  [(CPGuideFinder *)self setAlignForWordWithExtent:v44 stripArray:a3 stripMax:a5];
                  --v43;
                  ++v44;
                }

                while (v43 > 1);
              }

              v17 = 0;
              v31 = 1;
              v30 = var3;
              v29 = var2;
              v25 = v56;
              v16 = v57;
              v26 = v58;
            }
          }
        }

        v17 += v40;
        var6 = v32->var6;
        ++v20;
        ++v28;
        if (v20 >= v16)
        {
          LODWORD(v20) = v55;
          v23 = v30;
          v22 = v29;
          v18 = v31;
          break;
        }
      }

      if (v20 == v16)
      {
        break;
      }

      if (v19 < v26)
      {
        v48 = &v54[v19];
        while (v48->var3 <= var2)
        {
          ++v19;
          ++v48;
          if (v19 >= v26)
          {
            v24 = v48[-1].var2;
            v19 = v26;
            goto LABEL_59;
          }
        }

        v24 = v48->var2;
        if (var3 <= v24)
        {
          v49 = v32->var4;
          if ((v49 & 2) != 0 && var1 <= a5 || (v49 & 1) != 0 && var0 >= a4)
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

      if (v19 == v26)
      {
LABEL_59:
        v50 = v32->var4;
        if ((v50 & 2) != 0 && var1 <= a5 || (v50 & 1) != 0 && var0 >= a4)
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

    while (v20 < v16 && v19 <= v26);
    if (v18 >= 5 && v17 >= 1)
    {
      v51 = v25;
      if ([(CPGuideFinder *)self addStripTo:a3 bottom:v22 left:a4 top:v23 right:a5])
      {
        v52 = v18 + 1;
        v53 = v57 - v18;
        do
        {
          [(CPGuideFinder *)self setAlignForWordWithExtent:&v51[v53] stripArray:a3 stripMax:a5];
          --v52;
          ++v53;
        }

        while (v52 > 1);
      }
    }
  }
}

- (void)setAlignForWordWithExtent:(id *)a3 stripArray:(id)a4 stripMax:(double)a5
{
  if (self->leftGuides == a4)
  {
    v5 = 1;
  }

  else if (self->rightGuides == a4)
  {
    v5 = 2;
  }

  else if (a3->var0 >= a5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 8;
  }

  *a3->var5 |= v5;
}

- (BOOL)addStripTo:(id)a3 bottom:(double)a4 left:(double)a5 top:(double)a6 right:(double)a7
{
  v16 = a5;
  v17 = a4;
  v7 = a6 - a4;
  v18 = a7 - a5;
  v19 = v7;
  v8 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v9 = fabs(a7 - a5);
  v12 = v8 && *&v9 < 0x7FF0000000000000 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (v12)
  {
    v14 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:&v16 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [a3 addObject:{v14, *&v16, *&v17, *&v18, *&v19}];
  }

  return v12;
}

- (void)getWordEdges
{
  v3 = [(CPZone *)self->contentZone wordCount];
  self->countOfWordsInZone = v3;
  if (v3)
  {
    self->anchorArray = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
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

- (CPGuideFinder)initWithContentZone:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPGuideFinder;
  v4 = [(CPGuideFinder *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->contentZone = a3;
    v4->gutters = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->leftGuides = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->rightGuides = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v5;
}

+ (void)reclusterBetweenGuides:(id)a3
{
  if ([a3 wordCount])
  {
    v4 = [a3 wordArray];
    v6 = *(v4 + 8);
    v5 = *(v4 + 12);
    v7 = v5 & 0x55;
    v22 = 0;
    v8 = v5 & 0xAA;
    if ([a3 wordCount] < 2)
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
        v12 = *(v4 + 48 * v10 + 12);
        v13 = v12 & 0x55;
        if (v8 | v13)
        {
          v22 = v10 - v9;
          [CPCluster reclusterTextLine:a3 fromWordIndex:v9 count:&v22];
          v14 = [a3 wordArray];
          v4 = v14;
          v15 = v14 + 48 * v9;
          v16 = *(v15 + 12) | v7;
          *(v15 + 8) = v6;
          *(v15 + 12) = v16;
          v9 = (v22 + v9);
          if (v22)
          {
            *(v14 + 48 * (v9 - 1) + 12) |= v8;
          }

          v17 = v14 + 48 * v9;
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

      while (v10 < [a3 wordCount]);
    }

    v22 = v10 - v9;
    [CPCluster reclusterTextLine:a3 fromWordIndex:v9 count:&v22];
    v18 = [a3 wordArray];
    v19 = v18 + 48 * v9;
    v20 = *(v19 + 12) | v7;
    *(v19 + 8) = v6;
    *(v19 + 12) = v20;
    if (v22)
    {
      v21 = v18 + 48 * (v9 + v22 - 1);
      *(v21 + 12) |= v8;
    }

    if ([a3 levels] <= v11)
    {
      [a3 setLevels:(v11 + 1)];
    }
  }
}

+ (void)reclusterPreservingAlignment:(id)a3
{
  v4 = [a3 wordCount];
  if (v4)
  {
    v5 = v4;
    v6 = 48 * v4;
    v7 = malloc_type_malloc(v6, 0x6230A59DuLL);
    memcpy(v7, [a3 wordArray], v6);
    [CPCluster clusterTextLine:a3];
    v8 = [a3 wordCount];
    v9 = [a3 wordArray];
    if (v8)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &v7[48 * v10];
        v13 = (v9 + 48 * v11);
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

      while (v10 < v5 && v11 < v8);
    }

    free(v7);
  }
}

+ (BOOL)gutterSeparates:(id)a3 from:(id)a4
{
  v5 = [a3 lastWord];
  v6 = [a4 firstWord];
  result = 0;
  if (v5 && v6)
  {
    return (*(v5 + 12) & 0x88) != 0 || (*(v6 + 12) & 0x44) != 0;
  }

  return result;
}

+ (BOOL)guideSeparates:(id)a3 from:(id)a4
{
  v5 = [a3 lastWord];
  v6 = [a4 firstWord];
  result = 0;
  if (v5 && v6)
  {
    return (*(v5 + 12) & 0xAA) != 0 || (*(v6 + 12) & 0x55) != 0;
  }

  return result;
}

@end