@interface CPCluster
+ (unsigned)createOrderIndexFor:(double *)for ofSize:(unsigned int)size;
+ (void)clusterTextLine:(id)line;
+ (void)clusterTextLine:(id)line withCluster:(id)cluster atLevel:(unsigned int)level withMaximumWordGap:(double *)gap andMaximumLetterGap:(double *)letterGap;
+ (void)reclusterTextLine:(id)line fromWordIndex:(unsigned int)index count:(unsigned int *)count;
- ($CAD616572B4749F850842224FCF53B5F)clusterStatisticsAtIndex:(SEL)index;
- ($CAD616572B4749F850842224FCF53B5F)differenceClusterStatisticsAtIndex:(SEL)index;
- ($CAD616572B4749F850842224FCF53B5F)largestClusterStatistics;
- (BOOL)applyDifferenceHints:(id *)hints count:(unsigned int)count;
- (BOOL)coalesceFrom:(unsigned int)from to:(unsigned int)to;
- (BOOL)joinClosestLevelPairFrom:(unsigned int)from to:(unsigned int)to;
- (BOOL)joinLevelsFrom:(unsigned int)from to:(unsigned int)to;
- (BOOL)splitLevelAtIndex:(unsigned int)index betweenValue:(double)value andValue:(double)andValue;
- (CPCluster)initWithProfile:(id *)profile;
- (unsigned)clusterCount;
- (void)analyzeDensities;
- (void)analyzeDifferences;
- (void)assembleDataStats;
- (void)assembleDensityDifferenceStats;
- (void)assembleDifferenceStats;
- (void)computeDataFromDifferences;
- (void)computeDifferencesFromData;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)findClusters:(double *)clusters count:(unsigned int)count;
- (void)findClustersFromCharacterSequence:(id)sequence withSpaceHint:(BOOL)hint;
- (void)findClustersFromDifferences:(double *)differences count:(unsigned int)count;
- (void)findDensityClusters:(double *)clusters count:(unsigned int)count;
- (void)makeWords:(id *)words count:(unsigned int)count fromCharacterSequence:(id)sequence charOffset:(unsigned int)offset;
- (void)resetAnalysis;
- (void)splitSecondDifferences;
- (void)tryLevel0SplitBetween:(double)between and:(double)and usingHints:(id *)hints;
@end

@implementation CPCluster

- ($CAD616572B4749F850842224FCF53B5F)largestClusterStatistics
{
  result = [(CPCluster *)self assembleDataStats];
  xStats = self->xStats;
  if (!xStats)
  {
    goto LABEL_12;
  }

  clusterCount = self->clusterCount;
  if (!clusterCount)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = self->xStats;
  do
  {
    var0 = v11->var0;
    ++v11;
    v12 = var0;
    v14 = var0 > v9;
    if (var0 <= v9)
    {
      v10 = v10;
    }

    else
    {
      v10 = v8;
    }

    if (v14)
    {
      v9 = v12;
    }

    ++v8;
  }

  while (clusterCount != v8);
  if (v9)
  {
    v15 = &xStats[v10];
    v16 = *&v15->var2;
    *&retstr->var0 = *&v15->var0;
    *&retstr->var2 = v16;
  }

  else
  {
LABEL_12:
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

- ($CAD616572B4749F850842224FCF53B5F)differenceClusterStatisticsAtIndex:(SEL)index
{
  v4 = *&self[4].var0;
  if (v4)
  {
    v5 = (v4 + 32 * a4);
    v6 = v5[1];
    *&retstr->var0 = *v5;
    *&retstr->var2 = v6;
  }

  else
  {
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return self;
}

- ($CAD616572B4749F850842224FCF53B5F)clusterStatisticsAtIndex:(SEL)index
{
  result = [(CPCluster *)self assembleDataStats];
  xStats = self->xStats;
  if (xStats)
  {
    v9 = &xStats[a4];
    v10 = *&v9->var2;
    *&retstr->var0 = *&v9->var0;
    *&retstr->var2 = v10;
  }

  else
  {
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

- (unsigned)clusterCount
{
  if (self->minClusterSize || self->maxClusterSpread != 1.79769313e308)
  {
    [(CPCluster *)self assembleDataStats];
    return self->clusterCount;
  }

  else
  {
    interClusterMinIndex = self->interClusterMinIndex;
    xCount = self->xCount;
    v6 = xCount >= interClusterMinIndex;
    v7 = xCount - interClusterMinIndex;
    if (v6)
    {
      result = v7;
    }

    else
    {
      result = 0;
    }

    self->clusterCount = result;
  }

  return result;
}

- (BOOL)applyDifferenceHints:(id *)hints count:(unsigned int)count
{
  v4 = 0;
  if (hints && count && self->levels)
  {
    v7 = 0;
    countCopy = count;
    p_var2 = &hints->var2;
    v10 = 0.0;
    countCopy2 = count;
    do
    {
      if (*(p_var2 - 4))
      {
        if ((v7 & 1) != 0 && *(p_var2 - 1) <= v10)
        {
          v4 = 0;
          return v4 & 1;
        }

        v10 = *p_var2;
        v7 = 1;
      }

      p_var2 += 4;
      --countCopy2;
    }

    while (countCopy2);
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v4 = 0;
    v17 = 0.0;
    do
    {
      v18 = &hints[v12];
      if (v18->var0)
      {
        var1 = v18->var1;
        levels = self->levels;
        dxStats = self->dxStats;
        v22 = levels - 1;
        if (levels == 1)
        {
          LODWORD(v23) = 0;
        }

        else
        {
          v23 = 0;
          v24 = &dxStats->var2;
          while (*v24 < var1)
          {
            ++v23;
            v24 += 4;
            if (v22 == v23)
            {
              LODWORD(v23) = levels - 1;
              break;
            }
          }
        }

        var2 = v18->var2;
        p_var1 = &dxStats[v22].var1;
        do
        {
          if (!--levels)
          {
            break;
          }

          v27 = *p_var1;
          p_var1 -= 4;
        }

        while (v27 > var2);
        v28 = dxStats[v23].var1;
        v29 = &dxStats[levels];
        if (var1 >= v28)
        {
          v30 = var1;
        }

        else
        {
          v30 = v28;
        }

        if (var2 <= v29->var2)
        {
          v31 = var2;
        }

        else
        {
          v31 = v29->var2;
        }

        if (v12)
        {
          v32 = v23;
        }

        else
        {
          v32 = 0;
        }

        if (v32 < levels)
        {
          v13 = [(CPCluster *)self joinLevelsFrom:v32 to:?];
          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = v13;
          }

          v16 |= v33;
        }

        if ((v15 & (v32 <= v14)) == 1)
        {
          v13 = [(CPCluster *)self splitLevelAtIndex:v32 betweenValue:v17 andValue:v30];
          v34 = !v13;
          if (v13)
          {
            v16 |= v32 == 0;
          }

          LOBYTE(v13) = v13;
          if (v34)
          {
            v32 = v32;
          }

          else
          {
            v32 = (v32 + 1);
          }
        }

        if (v12 < v32)
        {
          while ([(CPCluster *)self joinClosestLevelPairFrom:v14 to:v32])
          {
            v16 |= v14 == 0;
            v32 = (v32 - 1);
            if (v32 <= v12)
            {
              LOBYTE(v13) = 1;
              v35 = v32;
              goto LABEL_47;
            }
          }

          LOBYTE(v13) = 0;
        }

        v35 = v32;
LABEL_47:
        if (v12 > v35)
        {
          v36 = (32 * v35) | 8;
          while (1)
          {
            v13 = [(CPCluster *)self splitLevelAtIndex:v35 betweenValue:*(&self->dxStats->var0 + v36) andValue:v30];
            if (!v13)
            {
              break;
            }

            v16 |= v35++ == 0;
            v36 += 32;
            if (v12 == v35)
            {
              v32 = v12;
              goto LABEL_53;
            }
          }

          v32 = v35;
        }

LABEL_53:
        v4 |= v13;
        v15 = 1;
        v14 = v32;
        v17 = v31;
      }

      ++v12;
    }

    while (v12 != countCopy);
    if (v16)
    {
      free(self->xStats);
      self->xStats = 0;
    }
  }

  return v4 & 1;
}

- (void)findDensityClusters:(double *)clusters count:(unsigned int)count
{
  if (count)
  {
    self->xCount = count;
    self->x = clusters;
    [(CPCluster *)self computeDifferencesFromData];

    [(CPCluster *)self analyzeDensities];
  }
}

- (void)findClustersFromDifferences:(double *)differences count:(unsigned int)count
{
  self->xCount = count + 1;
  self->dx = differences;
  [(CPCluster *)self analyzeDifferences];
}

- (void)findClusters:(double *)clusters count:(unsigned int)count
{
  if (count)
  {
    self->xCount = count;
    self->x = clusters;
    [(CPCluster *)self computeDifferencesFromData];

    [(CPCluster *)self analyzeDifferences];
  }
}

- (void)analyzeDensities
{
  if (!self->x)
  {
    __assert_rtn("[CPCluster analyzeDensities]", "CPCluster.m", 844, "x");
  }

  xCount = self->xCount;
  if (xCount >= 2)
  {
    self->dxOrderIndex = [CPCluster createOrderIndexFor:self->dx ofSize:xCount - 1];
    v4 = self->xCount;
    if (v4 == 2)
    {

      [(CPCluster *)self resetAnalysis];
      return;
    }

    v5 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
    *v5 = self->xCount - 1;
    v6 = self->xCount;
    v7 = self->dx[self->dxOrderIndex[v6 - 2]];
    self->interClusterMinIndex = v6 - 1;
    self->clusterCount = 0;
    if (v6)
    {
      v8 = 0;
      v9 = 0.0;
      while (1)
      {
        v10 = v6;
        while (1)
        {
          v6 = v10 - 1;
          clusterCount = self->clusterCount;
          LODWORD(v12) = clusterCount + 1;
          self->clusterCount = clusterCount + 1;
          if ((clusterCount + 1) < 2)
          {
            break;
          }

          if (v7 == 0.0)
          {
            goto LABEL_45;
          }

          v13 = self->dxOrderIndex[v6];
          if (*v5 <= v13)
          {
            v14 = clusterCount;
          }

          else
          {
            v14 = 0;
          }

          if (v14 >= 2)
          {
            v15 = 0;
            v14 = clusterCount;
            do
            {
              if (v5[(v14 + v15) >> 1] <= v13)
              {
                v15 = (v14 + v15) >> 1;
              }

              else
              {
                v14 = (v14 + v15) >> 1;
              }
            }

            while (v15 + 1 < v14);
          }

          v16 = clusterCount - v14;
          if (clusterCount != v14)
          {
            clusterCount = v14;
            memmove(&v5[v14 + 1], &v5[v14], 4 * v16);
          }

          v5[clusterCount] = v13;
          if (v10 == 1 || (v17 = self->dx[self->dxOrderIndex[v10 - 2]] < v7, v7 = self->dx[self->dxOrderIndex[v10 - 2]], v17))
          {
            if (v7 <= self->maxClusterSpread)
            {
              LODWORD(v12) = self->clusterCount;
              break;
            }
          }

          --v10;
          if (!v6)
          {
            goto LABEL_45;
          }
        }

        if (!v12)
        {
          break;
        }

        v18 = 0;
        v19 = 0;
        minClusterSize = self->minClusterSize;
        v21 = 0.0;
        v22 = v5;
        v12 = v12;
        do
        {
          v24 = *v22++;
          v23 = v24;
          v25 = v24 + 1;
          v26 = v24 + 1 - v19;
          if (v26 >= minClusterSize && self->x[v23] - self->x[v19] <= self->maxClusterSpread)
          {
            v21 = v21 + (v26 - minClusterSize) * (v26 - minClusterSize);
            if (v26 <= v8)
            {
              v18 |= v26 == v8;
            }

            else
            {
              self->interClusterMinIndex = v6;
              v8 = v25 - v19;
            }
          }

          v19 = v25;
          --v12;
        }

        while (v12);
        if ((v18 & (v21 > v9)) == 0)
        {
          goto LABEL_41;
        }

        self->interClusterMinIndex = v6;
        interClusterMinIndex = v10 - 1;
LABEL_42:
        if (interClusterMinIndex == v6)
        {
          v9 = v21;
        }

        if (v10 == 1)
        {
          goto LABEL_45;
        }
      }

      v21 = 0.0;
LABEL_41:
      interClusterMinIndex = self->interClusterMinIndex;
      goto LABEL_42;
    }

LABEL_45:
    free(v5);

    [(CPCluster *)self assembleDensityDifferenceStats];
  }
}

- (void)assembleDensityDifferenceStats
{
  if (!self->dxStats)
  {
    v3 = self->interClusterMinIndex + 1 >= self->xCount ? 1 : 2;
    self->levels = v3;
    v4 = malloc_type_malloc(32 * v3, 0x100004089CA3EB1uLL);
    self->dxStats = v4;
    interClusterMinIndex = self->interClusterMinIndex;
    v4->var0 = interClusterMinIndex;
    if (interClusterMinIndex)
    {
      dx = self->dx;
      dxOrderIndex = self->dxOrderIndex;
      v8 = dxOrderIndex[(interClusterMinIndex - 1)];
      v4->var1 = dx[*dxOrderIndex];
      v4->var2 = dx[v8];
      v9 = 0.0;
      v10 = interClusterMinIndex;
      do
      {
        v11 = *dxOrderIndex++;
        v9 = v9 + dx[v11];
        --v10;
      }

      while (v10);
      v4->var3 = v9 / interClusterMinIndex;
    }

    else
    {
      v4->var1 = 0.0;
      v4->var2 = 0.0;
      v4->var3 = 0.0;
    }

    if (self->levels >= 2)
    {
      v12 = self->xCount + ~interClusterMinIndex;
      v4[1].var0 = v12;
      v13 = self->dx;
      v14 = self->dxOrderIndex;
      v15 = self->interClusterMinIndex;
      v4[1].var1 = v13[v14[v15]];
      xCount = self->xCount;
      v4[1].var2 = v13[v14[xCount - 2]];
      v17 = 0.0;
      if (v15 + 1 < xCount)
      {
        v18 = xCount - 1;
        do
        {
          v17 = v17 + v13[v14[v15]];
          LODWORD(v15) = v15 + 1;
        }

        while (v18 != v15);
      }

      v4[1].var3 = v17 / v12;
    }
  }
}

- (void)assembleDataStats
{
  if (!self->xStats)
  {
    interClusterMinIndex = self->interClusterMinIndex;
    xCount = self->xCount;
    v23 = xCount >= interClusterMinIndex;
    v5 = xCount - interClusterMinIndex;
    if (v5 != 0 && v23)
    {
      self->clusterCount = v5;
      [(CPCluster *)self computeDataFromDifferences];
      if (!self->x)
      {
        __assert_rtn("[CPCluster assembleDataStats]", "CPCluster.m", 720, "x");
      }

      v6 = malloc_type_malloc(4 * self->clusterCount, 0x100004052888210uLL);
      v7 = v6;
      clusterCount = self->clusterCount;
      v9 = clusterCount - 1;
      if (clusterCount == 1)
      {
        v9 = 0;
      }

      else
      {
        memcpy(v6, &self->dxOrderIndex[self->interClusterMinIndex], 4 * (clusterCount - 1));
      }

      v7[v9] = self->xCount - 1;
      qsort(v7, self->clusterCount, 4uLL, compareUnsigned);
      if (self->minClusterSize)
      {
        v10 = 0;
      }

      else
      {
        v10 = self->maxClusterSpread == 1.79769313e308;
      }

      v11 = malloc_type_malloc(32 * self->clusterCount, 0x100004089CA3EB1uLL);
      self->xStats = v11;
      v12 = self->clusterCount;
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = self->xCount;
        do
        {
          if (v15 >= v16)
          {
            __assert_rtn("[CPCluster assembleDataStats]", "CPCluster.m", 753, "minIndex<xCount");
          }

          v17 = v7[v13];
          v18 = v17 + 1 - v15;
          x = self->x;
          v20 = x[v15];
          v21 = x[v17];
          if (v10 || v18 >= self->minClusterSize && v21 - v20 <= self->maxClusterSpread)
          {
            v22 = &v11[v14];
            v22->var0 = v18;
            v22->var1 = v20;
            v22->var2 = v21;
            v16 = self->xCount;
            v23 = v15 >= v16 || v17 >= v16;
            if (v23)
            {
              __assert_rtn("[CPCluster assembleDataStats]", "CPCluster.m", 764, "minIndex<xCount && maxIndex<xCount");
            }

            v24 = 0.0;
            while (v15 <= v17)
            {
              v24 = v24 + x[v15++];
            }

            v22->var3 = v24 / v18;
            ++v14;
            v12 = self->clusterCount;
          }

          ++v13;
          v15 = v17 + 1;
        }

        while (v13 < v12);
      }

      else
      {
        v14 = 0;
      }

      self->clusterCount = v14;

      free(v7);
    }
  }
}

- (void)analyzeDifferences
{
  xCount = self->xCount;
  if (xCount >= 2)
  {
    self->dxOrderIndex = [CPCluster createOrderIndexFor:self->dx ofSize:xCount - 1];
    v4 = self->xCount;
    v5 = v4 - 2;
    if (v4 == 2)
    {

      [(CPCluster *)self resetAnalysis];
    }

    else
    {
      v6 = malloc_type_malloc(8 * (v4 - 2), 0x100004000313F17uLL);
      v7 = 0;
      self->ddx = v6;
      dx = self->dx;
      dxOrderIndex = self->dxOrderIndex;
      v12 = *dxOrderIndex;
      v10 = dxOrderIndex + 1;
      v11 = v12;
      do
      {
        v13 = dx[v11];
        v11 = v10[v7];
        v6[v7++] = dx[v11] - v13;
      }

      while (v5 != v7);
      self->ddxOrderIndex = [CPCluster createOrderIndexFor:v6 ofSize:v5];
      [(CPCluster *)self splitSecondDifferences];
      [(CPCluster *)self assembleDifferenceStats];
      if (self->profile->var7)
      {
        levels = self->levels;
        if (levels >= 2)
        {

          [(CPCluster *)self coalesceFrom:0 to:levels - 1];
        }
      }
    }
  }
}

- (void)resetAnalysis
{
  self->interLevelMinIndex = 0;
  self->levels = 1;
  self->interClusterMinIndex = 1;
  v3 = malloc_type_malloc(0x20uLL, 0x100004089CA3EB1uLL);
  self->dxStats = v3;
  v3->var0 = 1;
  dx = self->dx;
  v5 = *dx;
  v3->var1 = *dx;
  v3->var2 = v5;
  v3->var3 = *dx;
}

- (BOOL)coalesceFrom:(unsigned int)from to:(unsigned int)to
{
  levels = self->levels;
  if (levels <= to)
  {
    toCopy = levels - 1;
  }

  else
  {
    toCopy = to;
  }

  if (toCopy <= from)
  {
    v24 = 0;
    return v24 & 1;
  }

  profile = self->profile;
  fromCopy = from;
  var9 = profile->var9;
  var8 = profile->var8;
  var10 = profile->var10;
  var11 = profile->var11;
  var12 = profile->var12;
  var13 = profile->var13;
  var14 = profile->var14;
  var15 = profile->var15;
  var16 = profile->var16;
  var17 = profile->var17;
  var18 = profile->var18;
  var19 = profile->var19;
  v18 = malloc_type_malloc(4 * (toCopy - from + 1), 0x100004052888210uLL);
  v20 = v18;
  v21 = 0;
  v22 = 0;
  dxStats = self->dxStats;
  do
  {
    v22 += dxStats[(fromCopy + v21)].var0;
    v18[v21++] = v22;
  }

  while (fromCopy + v21 <= toCopy);
  v24 = 0;
  v25 = fromCopy;
  do
  {
    if (v25 == from)
    {
      v26 = 0;
      v27 = var8;
      v28 = var10;
      v29 = var12;
      v30 = var14;
      v31 = var16;
    }

    else
    {
      v26 = v20[v25 + ~from];
      v27 = var9;
      v28 = var11;
      v29 = var13;
      v30 = var15;
      v31 = var17;
    }

    v32 = self->dxStats;
    v33 = (v25 + 1);
    v34 = &v32[v33];
    LODWORD(v19) = v34->var0;
    v35 = &v32[v25];
    if (v27 * v35->var0 < *&v19)
    {
      if (v25 > from)
      {
        v36 = v34->var1 - v35->var2;
        v37 = (v25 - 1);
        v38 = v35->var1 - v32[v37].var2;
        if (var18 < 0.0)
        {
          v38 = (var18 + 1.0) * v38;
        }

        else
        {
          v36 = (1.0 - var18) * v36;
        }

        if (v38 >= v36)
        {
          v25 = v25;
        }

        else
        {
          v25 = v37;
        }

        v33 = (v25 + 1);
      }

LABEL_30:
      if ([(CPCluster *)self joinLevelsFrom:v25 to:v33])
      {
        memmove(&v20[v25 - from], &v20[v25 - from + 1], 4 * (toCopy - v25));
        --toCopy;
        v33 = (__PAIR64__(v25, from) - v25) >> 32;
        v24 = 1;
      }

      goto LABEL_32;
    }

    var1 = v34->var1;
    v40 = v35->var1;
    if (v40 > 0.0 || var1 >= self->minInterClusterDiff)
    {
      v40 = 0.0;
    }

    v41 = var1 - v40;
    v42 = v28 * (v35->var2 - v40);
    v19 = v35->var3 - v40;
    v43 = v29 * v19;
    v44 = v41 < v42 || v41 < v43;
    if (v44 || v30 * (v22 - v26) > (v35->var0 + 1) || var1 * v22 < v31 * (v32[toCopy].var2 - v32[fromCopy].var1) || var1 < self->minInterClusterDiff)
    {
      goto LABEL_30;
    }

LABEL_32:
    v25 = v33;
  }

  while (v33 < toCopy);
  if (var19 && toCopy > from + 1)
  {
    v24 |= [CPCluster joinLevelsFrom:"joinLevelsFrom:to:" to:?];
  }

  free(v20);
  return v24 & 1;
}

- (BOOL)splitLevelAtIndex:(unsigned int)index betweenValue:(double)value andValue:(double)andValue
{
  levels = self->levels;
  if (levels <= index)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    dxStats = self->dxStats;
    indexCopy = index;
    v10 = &dxStats[index];
    var1 = v10->var1;
    var2 = v10->var2;
    if (var1 > value)
    {
      value = v10->var1;
    }

    if (var2 < andValue)
    {
      andValue = v10->var2;
    }

    xCount = self->xCount;
    valueCopy2 = value;
    andValueCopy2 = andValue;
    if (xCount >= 3)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      dx = self->dx;
      dxOrderIndex = self->dxOrderIndex;
      v21 = dx[*dxOrderIndex];
      v22 = 0.0;
      valueCopy2 = value;
      andValueCopy2 = andValue;
      v23 = 0.0;
      v24 = 0;
      v25 = 0.0;
LABEL_8:
      ++v16;
      v26 = v21;
      do
      {
        v21 = dx[dxOrderIndex[v16]];
        if (v26 >= var1)
        {
          v25 = v25 + v26;
          ++v24;
        }

        v27 = v21 <= andValue;
        if (v22 == 0.0)
        {
          v27 = 1;
        }

        if (v26 >= value && v27 && v21 - v26 >= v22)
        {
          v18 = 1;
          v22 = v21 - v26;
          valueCopy2 = v26;
          andValueCopy2 = dx[dxOrderIndex[v16]];
          v17 = v24;
          v23 = v25;
          if (v16 != xCount - 2)
          {
            goto LABEL_8;
          }

          goto LABEL_40;
        }

        ++v16;
        v26 = v21;
      }

      while (v16 - (xCount - 2) != 1);
      v25 = v23;
      v24 = v17;
      v21 = andValueCopy2;
      v26 = valueCopy2;
      if (v18)
      {
        goto LABEL_40;
      }
    }

    v31 = 0;
    v32 = 0;
    if (xCount <= 1)
    {
      xCount = 1;
    }

    v33 = 4 * (xCount - 1);
    v34 = 0.0;
    do
    {
      v24 = v32;
      v25 = v34;
      if (v33 == v31)
      {
        v21 = andValueCopy2;
        v26 = v10->var2;
        goto LABEL_40;
      }

      v26 = self->dx[self->dxOrderIndex[v31 / 4]];
      v35 = v34 + v26;
      if (v26 >= var1)
      {
        v34 = v34 + v26;
        ++v32;
      }

      v31 += 4;
    }

    while (v26 < value);
    if (v26 - value <= andValue - v26)
    {
      v25 = v34;
      v24 = v32;
      v21 = andValueCopy2;
    }

    else
    {
      if (v26 >= var1)
      {
        v25 = v35 - v26;
      }

      v21 = v26;
      v26 = valueCopy2;
    }

LABEL_40:
    var0 = v10->var0;
    if (v24)
    {
      var1 = v25 / v24;
    }

    v37 = v10->var2;
    if (var0 >= v24)
    {
      v38 = var0 - v24;
    }

    else
    {
      v38 = 0;
    }

    if (var0 > v24)
    {
      v37 = -(v25 - var0 * v10->var3) / v38;
    }

    v30 = malloc_type_realloc(dxStats, 32 * (levels + 1), 0x100004089CA3EB1uLL);
    if (v30)
    {
      self->dxStats = v30;
      v39 = self->levels;
      self->levels = v39 + 1;
      if (index + 2 < v39 + 1)
      {
        memmove(&v30[indexCopy + 2], &v30[indexCopy + 1], 32 * (v39 + ~index));
        v30 = self->dxStats;
      }

      v40 = &v30[indexCopy];
      v40->var0 = v24;
      v40->var2 = v26;
      v40->var3 = var1;
      v41 = &v30[index + 1];
      v41->var0 = v38;
      v41->var1 = v21;
      v41->var2 = var2;
      v41->var3 = v37;
      if (!index)
      {
        self->interClusterMinIndex = v24;
      }

      LOBYTE(v30) = 1;
    }
  }

  return v30;
}

- (BOOL)joinClosestLevelPairFrom:(unsigned int)from to:(unsigned int)to
{
  levels = self->levels;
  if (levels < 2)
  {
    return 0;
  }

  if (levels <= to)
  {
    toCopy = levels - 1;
  }

  else
  {
    toCopy = to;
  }

  if (toCopy <= from)
  {
    fromCopy = *&from;
  }

  else
  {
    v8 = 0;
    p_var1 = &self->dxStats[from + 1].var1;
    v10 = from - toCopy;
    v4 = 0.0;
    LODWORD(fromCopy) = from;
    do
    {
      v12 = *(p_var1 - 3);
      v13 = *p_var1 - v12 < v4 || v8 == 0;
      if (v13)
      {
        fromCopy = from;
      }

      else
      {
        fromCopy = fromCopy;
      }

      if (v13)
      {
        v4 = *p_var1 - v12;
      }

      ++from;
      --v8;
      p_var1 += 4;
    }

    while (v10 != v8);
  }

  return [(CPCluster *)self joinLevelsFrom:fromCopy to:(fromCopy + 1), v4];
}

- (BOOL)joinLevelsFrom:(unsigned int)from to:(unsigned int)to
{
  levels = self->levels;
  if (levels < 2)
  {
    return 0;
  }

  LODWORD(toCopy) = levels - 1;
  if (levels <= to)
  {
    toCopy = toCopy;
  }

  else
  {
    toCopy = to;
  }

  v8 = from - toCopy;
  if (from >= toCopy)
  {
    return 0;
  }

  v10 = 0;
  dxStats = self->dxStats;
  v12 = (toCopy + 1);
  v13 = v12 - from;
  v14 = &dxStats[from];
  v15 = 0.0;
  v16 = v14;
  do
  {
    var3 = v16->var3;
    var0 = v16->var0;
    ++v16;
    v15 = v15 + var3 * var0;
    v10 += var0;
    --v13;
  }

  while (v13);
  v14->var0 = v10;
  v14->var2 = dxStats[toCopy].var2;
  v14->var3 = v15 / v10;
  memmove(&dxStats[from + 1], &dxStats[v12], 32 * (self->levels + ~toCopy));
  self->levels += v8;
  if (!from)
  {
    self->interClusterMinIndex = v10;
  }

  return 1;
}

- (void)assembleDifferenceStats
{
  if (!self->dxStats)
  {
    interLevelMinIndex = self->interLevelMinIndex;
    xCount = self->xCount;
    if (interLevelMinIndex + 1 >= xCount)
    {
      var0 = 0;
      self->levels = 0;
    }

    else
    {
      v5 = xCount + ~interLevelMinIndex;
      self->levels = v5;
      v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
      v7 = v6;
      levels = self->levels;
      v9 = levels - 1;
      if (levels == 1)
      {
        v9 = 0;
      }

      else
      {
        memcpy(v6, &self->ddxOrderIndex[self->interLevelMinIndex], 4 * (levels - 1));
      }

      v7[v9] = self->xCount - 2;
      qsort(v7, self->levels, 4uLL, compareUnsigned);
      v11 = malloc_type_malloc(32 * self->levels, 0x100004089CA3EB1uLL);
      self->dxStats = v11;
      if (self->levels)
      {
        v12 = 0;
        v13 = 0;
        dx = self->dx;
        dxOrderIndex = self->dxOrderIndex;
        do
        {
          v16 = v7[v12];
          v17 = v16 + 1 - v13;
          v18 = &v11[v12];
          v18->var0 = v17;
          v19 = dxOrderIndex[v16];
          v18->var1 = dx[dxOrderIndex[v13]];
          v18->var2 = dx[v19];
          v20 = 0.0;
          while (v13 <= v16)
          {
            v20 = v20 + dx[dxOrderIndex[v13++]];
          }

          v18->var3 = v20 / v17;
          ++v12;
          v13 = v16 + 1;
        }

        while (v12 < self->levels);
      }

      free(v7);
      var0 = self->levels;
      if (var0)
      {
        var0 = self->dxStats->var0;
      }
    }

    self->interClusterMinIndex = var0;
  }
}

- (void)splitSecondDifferences
{
  xCount = self->xCount;
  v3 = xCount - 4;
  if (xCount < 4)
  {
    return;
  }

  profile = self->profile;
  var0 = profile->var0;
  var1 = profile->var1;
  var2 = profile->var2;
  var3 = profile->var3;
  var4 = profile->var4;
  var5 = profile->var5;
  var6 = profile->var6;
  v13 = xCount - 3;
  v14 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
  v15 = v14;
  v16 = 0;
  ddx = self->ddx;
  ddxOrderIndex = self->ddxOrderIndex;
  v21 = *ddxOrderIndex;
  v19 = ddxOrderIndex + 1;
  v20 = v21;
  do
  {
    v22 = ddx[v20];
    v20 = v19[v16];
    v14[v16++] = ddx[v20] - v22;
  }

  while (v13 != v16);
  v23 = [CPCluster createOrderIndexFor:v14 ofSize:xCount - 3];
  v24 = xCount - 2;
  v25 = malloc_type_malloc(8 * v24, 0x100004000313F17uLL);
  v26 = 0;
  v27 = self->ddx;
  v28 = self->ddxOrderIndex;
  v29 = 0.0;
  do
  {
    v29 = v29 + v27[v28[v26]];
    v25[v26] = v29 / (v26 + 1);
    ++v26;
  }

  while (v24 != v26);
  v30 = 0;
  v31 = v15[v23[v3]];
  v32 = v27[v28[v13]];
  v33 = 4 * v13 - 4;
  v34 = v13;
  while (1)
  {
    v35 = *(v23 + v33);
    if (v35 >= v34)
    {
      goto LABEL_30;
    }

    if (var0 * v24 <= (v35 + 2))
    {
      v36 = v28[v35 + 1];
      v37 = v27[v36];
      if (v37 >= var2 * v27[v28[v35]] && v13 < v35 + var1)
      {
        v39 = v37 <= 0.0 || v37 < var3 * v25[v35];
        if (!v39 && v37 >= self->minInterLevel2ndDiff)
        {
          break;
        }
      }
    }

    v40 = 0;
    if (!v30)
    {
      goto LABEL_28;
    }

LABEL_19:
    minInterLevel2ndDiff = self->minInterLevel2ndDiff;
    if (minInterLevel2ndDiff != 0.0 || !v40)
    {
      if (minInterLevel2ndDiff != 0.0 && v40)
      {
        goto LABEL_29;
      }
    }

    else if (v15[v35] >= var5 * v31 && v27[v28[v35 + 1]] >= var6 * v32)
    {
LABEL_29:
      v31 = v15[v35];
      v32 = v27[v28[v35]];
      v30 = 1;
      v34 = *(v23 + v33);
LABEL_30:
      if (!v33)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    ++v30;
    if (!v33)
    {
      goto LABEL_34;
    }

LABEL_31:
    v33 -= 4;
    if (v30 > var4)
    {
      goto LABEL_34;
    }
  }

  v40 = self->dx[self->dxOrderIndex[(v36 + 1)]] >= self->minInterClusterDiff;
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_28:
  if (v40)
  {
    goto LABEL_29;
  }

  v30 = 0;
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_34:
  self->interLevelMinIndex = v34 + 1;
  free(v25);
  free(v23);

  free(v15);
}

- (void)computeDataFromDifferences
{
  xCount = self->xCount;
  if (xCount && !self->x && (xCount == 1 || self->dx != 0))
  {
    v5 = malloc_type_malloc(8 * xCount, 0x100004000313F17uLL);
    self->x = v5;
    self->ownData = 1;
    *v5 = 0.0;
    v6 = self->xCount - 1;
    if (self->xCount != 1)
    {
      dx = self->dx;
      v8 = v5 + 1;
      v9 = 0.0;
      do
      {
        v10 = *dx++;
        v9 = v9 + v10;
        *v8++ = v9;
        --v6;
      }

      while (v6);
    }
  }
}

- (void)computeDifferencesFromData
{
  xCount = self->xCount;
  if (xCount >= 2 && self->x && !self->dx)
  {
    v4 = xCount - 1;
    v5 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    self->dx = v5;
    self->ownDifferences = 1;
    v6 = self->x + 1;
    do
    {
      *v5++ = *v6 - *(v6 - 1);
      ++v6;
      --v4;
    }

    while (v4);
  }
}

- (void)dealloc
{
  [(CPCluster *)self dispose];
  v3.receiver = self;
  v3.super_class = CPCluster;
  [(CPCluster *)&v3 dealloc];
}

- (void)finalize
{
  [(CPCluster *)self dispose];
  v3.receiver = self;
  v3.super_class = CPCluster;
  [(CPCluster *)&v3 finalize];
}

- (void)dispose
{
  if (self->profile)
  {
    free(self->dxStats);
    free(self->xStats);
    free(self->ddxOrderIndex);
    free(self->ddx);
    free(self->dxOrderIndex);
    if (self->ownData)
    {
      free(self->x);
    }

    if (self->ownDifferences)
    {
      free(self->dx);
    }

    self->profile = 0;
  }
}

- (CPCluster)initWithProfile:(id *)profile
{
  v5.receiver = self;
  v5.super_class = CPCluster;
  result = [(CPCluster *)&v5 init];
  if (result)
  {
    result->profile = profile;
    result->maxClusterSpread = 1.79769313e308;
  }

  return result;
}

+ (unsigned)createOrderIndexFor:(double *)for ofSize:(unsigned int)size
{
  sizeCopy = size;
  v7 = malloc_type_malloc(4 * size, 0x100004052888210uLL);
  v8 = v7;
  if (size)
  {
    v9 = 0;
    v10 = vdupq_n_s64(sizeCopy - 1);
    v11 = xmmword_18439C760;
    v12 = xmmword_18439C670;
    v13 = v7 + 2;
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 2) = v9;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 1) = v9 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = v9 + 2;
        v13[1] = v9 + 3;
      }

      v9 += 4;
      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 4;
    }

    while (((sizeCopy + 3) & 0x1FFFFFFFCLL) != v9);
  }

  qsort_r(v7, sizeCopy, 4uLL, for, compareDoubleIndirect);
  return v8;
}

- (void)makeWords:(id *)words count:(unsigned int)count fromCharacterSequence:(id)sequence charOffset:(unsigned int)offset
{
  countCopy = count;
  if ([(CPCluster *)self clusterCount]< count)
  {
    countCopy = [(CPCluster *)self clusterCount];
  }

  if (countCopy)
  {
    v11 = 0;
    v12 = 0;
    v13 = countCopy;
    while (1)
    {
      v14 = &words[v11];
      v14->var0 = v12 + offset;
      if (v12)
      {
        break;
      }

      v14->var2 = -1;
      if (self)
      {
        goto LABEL_15;
      }

      v18 = 0;
      v23 = 0u;
      v24 = 0u;
LABEL_16:
      v14->var1 = v18;
      [sequence boundsFrom:v12 length:{v18, v23, v24}];
      v14->var4.origin.x = v19;
      v14->var4.origin.y = v20;
      v14->var4.size.width = v21;
      v14->var4.size.height = v22;
      v12 = (v18 + v12);
      ++v11;
      v14->var3 = 0;
      if (v11 == v13)
      {
        return;
      }
    }

    levels = self->levels;
    if (levels)
    {
      v16 = 0;
      p_var2 = &self->dxStats->var2;
      while (self->dx[(v12 - 1)] > *p_var2)
      {
        ++v16;
        p_var2 += 4;
        if (levels == v16)
        {
          goto LABEL_14;
        }
      }

      LODWORD(levels) = v16;
    }

LABEL_14:
    v14->var2 = levels;
LABEL_15:
    [(CPCluster *)self clusterStatisticsAtIndex:v11];
    v18 = v23;
    goto LABEL_16;
  }
}

- (void)findClustersFromCharacterSequence:(id)sequence withSpaceHint:(BOOL)hint
{
  hintCopy = hint;
  v7 = [sequence length];
  v8 = v7;
  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v7 < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  }

  v11 = malloc_type_malloc(0x40uLL, 0x100004089CA3EB1uLL);
  v38[0] = v10;
  v38[1] = v11;
  v39 = 0.0;
  v40 = 0.0;
  [sequence mapToPairsWithIndex:assembleClusterGaps passing:v38];
  v12 = v39;
  v13 = v40;
  v14 = v39 / 5.0;
  [(CPCluster *)self setMinimumRecognizedInterClusterDifference:v14 + v14 * 0.00000011920929 + 1.17549435e-38];
  [(CPCluster *)self setMinimumRecognizedInterLevel2ndDifference:v14 + v14 * 0.00000011920929 + 1.17549435e-38];
  [(CPCluster *)self findClustersFromDifferences:v10 count:v9];
  self->ownDifferences = 1;
  if (v8 < 2 || v12 <= 0.0 || *(v11 + 8))
  {
    goto LABEL_10;
  }

  dxStats = self->dxStats;
  var2 = dxStats->var2;
  if (var2 > v14 && dxStats->var3 <= 0.0 && (self->levels == 1 || dxStats[1].var1 >= v13 * 2.5))
  {
    [(CPCluster *)self tryLevel0SplitBetween:v11 and:dxStats->var1 usingHints:?];
    goto LABEL_10;
  }

  if (!hintCopy)
  {
LABEL_10:
    [(CPCluster *)self applyDifferenceHints:v11 count:2];
    goto LABEL_11;
  }

  v17 = v12 * 0.5;
  var1 = dxStats->var1;
  levels = self->levels;
  if (levels < 2)
  {
    if (var1 > v17 || v12 * 0.85 > var2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = dxStats[1].var1;
    var3 = dxStats[1].var3;
    if (var2 >= v17)
    {
      v23 = 0;
    }

    else
    {
      if (levels == 2 || dxStats[2].var2 >= v13 * 2.5)
      {
        v23 = 0;
      }

      else if (v20 <= v17)
      {
        v23 = 0;
        v14 = dxStats[1].var3;
      }

      else
      {
        v22 = dxStats[2].var3;
        v23 = 1;
        *(v11 + 8) = 1;
        v11[5] = v22;
        v11[6] = v22;
        v11[7] = v22;
      }

      v25 = *v11;
      if (*v11)
      {
        if (v11[2] < v14)
        {
          *v11 = v25 + 1;
          v26 = (v14 + v25 * v11[3]) / (v25 + 1);
          v11[2] = v14;
          v11[3] = v26;
        }
      }

      else
      {
        *v11 = 1;
        v11[1] = v14;
        v11[2] = v14;
        v11[3] = v14;
      }
    }

    if (v12 < var1 + var1 || v20 < v13 + v13 || var3 < v13 * 5.0 || v23 != 0)
    {
      goto LABEL_10;
    }

    if (v12 * 0.85 > var2)
    {
      if (v12 >= var2 + var2 && dxStats[1].var0 <= 0xB)
      {
        v31 = malloc_type_realloc(dxStats, 32 * (self->levels + 1), 0x100004089CA3EB1uLL);
        if (v31)
        {
          self->dxStats = v31;
          v32 = self->levels;
          self->levels = v32 + 1;
          memmove(&v31[2], &v31[1], 32 * (v32 - 1));
          v33 = self->dxStats;
          v33[1].var0 = 0;
          v33[1].var1 = v12;
          v33[1].var2 = v13;
          v33[1].var3 = (v12 + v13) * 0.5;
        }
      }

      goto LABEL_10;
    }
  }

  [CPCluster tryLevel0SplitBetween:"tryLevel0SplitBetween:and:usingHints:" and:v11 usingHints:?];
  v34 = self->levels;
  if ([(CPCluster *)self applyDifferenceHints:v11 count:2]&& self->levels > v34)
  {
    v35 = self->dxStats;
    if (v9 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v9;
    }

    v37 = 2;
    do
    {
      if (*v10 <= v35->var2)
      {
        if (v37 == 1)
        {
          goto LABEL_11;
        }

        v37 = 0;
      }

      else if (*v10 <= v35[1].var2)
      {
        if (!v37)
        {
          goto LABEL_11;
        }

        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      ++v10;
      --v36;
    }

    while (v36);
    [(CPCluster *)self joinLevelsFrom:0 to:1];
  }

LABEL_11:
  free(v11);
}

- (void)tryLevel0SplitBetween:(double)between and:(double)and usingHints:(id *)hints
{
  if (!hints->var0)
  {
    hints->var0 = 1;
    hints->var1 = between;
    hints->var2 = between;
    hints->var3 = between;
    goto LABEL_5;
  }

  if (hints->var2 < and)
  {
LABEL_5:
    hints[1].var0 = 1;
    hints[1].var1 = and;
    hints[1].var2 = and;
    hints[1].var3 = and;
  }
}

+ (void)reclusterTextLine:(id)line fromWordIndex:(unsigned int)index count:(unsigned int *)count
{
  if (count && *count)
  {
    v8 = *count + index;
    v9 = [line wordAtIndex:*&index];
    v10 = [line wordAtIndex:v8 - 1];
    v11 = *v9;
    v12 = v10[1];
    v13 = *v10 - v11;
    v38 = 1.70141173e38;
    v39 = 1.70141173e38;
    v14 = [objc_msgSend(line "charSequence")];
    v15 = v9[3];
    if ((v15 & 4) != 0)
    {
      v17 = 0;
    }

    else
    {
      v16 = (v15 & 1) == 0 || (v10[3] & 2) == 0;
      v17 = (v10[3] & 8) == 0 && v16;
    }

    v18 = [[CPCluster alloc] initWithProfile:&kCPClusterProfileCharAdvance];
    [(CPCluster *)v18 findClustersFromCharacterSequence:v14 withSpaceHint:v17];
    clusterCount = [(CPCluster *)v18 clusterCount];
    wordCount = [line wordCount];
    v21 = [line wordArrayOfSize:wordCount + clusterCount - *count];
    v22 = v21;
    if (*count != clusterCount)
    {
      if (wordCount > v8)
      {
        memmove((v21 + 48 * index + 48 * clusterCount), (v21 + 48 * v8), 48 * (wordCount - v8));
      }

      *count = clusterCount;
    }

    [(CPCluster *)v18 makeWords:v22 + 48 * index count:clusterCount fromCharacterSequence:v14 charOffset:v11];
    levels = [(CPCluster *)v18 levels];
    if (!index)
    {
      [line setIrregular:0];
    }

    if (levels)
    {
      [self clusterTextLine:line withCluster:v18 atLevel:levels withMaximumWordGap:&v38 andMaximumLetterGap:&v39];
      if (levels == 1)
      {
        v25 = v38;
        v24 = v39;
        if (v38 < v39)
        {
          v38 = v39;
          *&v24 = v39;
          [line setMaximumWordGap:{v24, v25}];
        }
      }
    }

    if (index)
    {
      levels2 = [line levels];
      v27 = levels2;
      if (levels && levels2 >= 1)
      {
        v28 = v39;
        [line maximumLetterGap];
        if (v28 > v29)
        {
          HIDWORD(v30) = HIDWORD(v39);
          *&v30 = v39;
          [line setMaximumLetterGap:v30];
        }

        if (levels >= 2 && v27 >= 2)
        {
          v31 = v38;
          [line maximumWordGap];
          if (v31 > v32)
          {
            HIDWORD(v33) = HIDWORD(v38);
            *&v33 = v38;
            [line setMaximumWordGap:v33];
          }
        }
      }

      if (levels <= v27)
      {
        goto LABEL_37;
      }

      [line setLevels:levels];
      if (v27 != 1)
      {
        if (v27)
        {
          goto LABEL_37;
        }

        HIDWORD(v34) = HIDWORD(v39);
        *&v34 = v39;
        [line setMaximumLetterGap:v34];
        if (levels < 2)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      [line setLevels:{levels, v24, v25}];
      HIDWORD(v35) = HIDWORD(v39);
      *&v35 = v39;
      [line setMaximumLetterGap:v35];
    }

    HIDWORD(v36) = HIDWORD(v38);
    *&v36 = v38;
    [line setMaximumWordGap:v36];
LABEL_37:
    [(CPCluster *)v18 dispose];

    [v14 dispose];
  }
}

+ (void)clusterTextLine:(id)line
{
  v13 = 1.70141173e38;
  v14 = 1.70141173e38;
  v5 = [[CPCluster alloc] initWithProfile:&kCPClusterProfileCharAdvance];
  charSequence = [line charSequence];
  -[CPCluster findClustersFromCharacterSequence:withSpaceHint:](v5, "findClustersFromCharacterSequence:withSpaceHint:", charSequence, [line hasJustifiedAlignment] ^ 1);
  clusterCount = [(CPCluster *)v5 clusterCount];
  -[CPCluster makeWords:count:fromCharacterSequence:charOffset:](v5, "makeWords:count:fromCharacterSequence:charOffset:", [line wordArrayOfSize:clusterCount], clusterCount, charSequence, 0);
  levels = [(CPCluster *)v5 levels];
  if (levels)
  {
    [self clusterTextLine:line withCluster:v5 atLevel:levels withMaximumWordGap:&v13 andMaximumLetterGap:&v14];
    if (levels == 1)
    {
      v10 = v13;
      v9 = v14;
      if (v13 < v14)
      {
        v13 = v14;
      }
    }
  }

  [line setLevels:{levels, v9, v10, *&v13}];
  HIDWORD(v11) = HIDWORD(v14);
  *&v11 = v14;
  [line setMaximumLetterGap:v11];
  HIDWORD(v12) = HIDWORD(v13);
  *&v12 = v13;
  [line setMaximumWordGap:v12];
  [(CPCluster *)v5 dispose];
}

+ (void)clusterTextLine:(id)line withCluster:(id)cluster atLevel:(unsigned int)level withMaximumWordGap:(double *)gap andMaximumLetterGap:(double *)letterGap
{
  if (cluster)
  {
    [cluster differenceClusterStatisticsAtIndex:0];
  }

  *letterGap = fabs(0.0) * 0.00000011920929 + 1.17549435e-38 + 0.0;
  if (level >= 2)
  {
    if (cluster)
    {
      [cluster differenceClusterStatisticsAtIndex:1];
      *gap = fabs(0.0) * 0.00000011920929 + 1.17549435e-38 + 0.0;
    }

    else
    {
      *gap = 1.17549435e-38;
    }

    [line setIrregular:{1, 0}];
  }
}

@end