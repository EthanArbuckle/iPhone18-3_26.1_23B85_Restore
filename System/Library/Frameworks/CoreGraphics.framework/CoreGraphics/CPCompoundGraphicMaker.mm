@interface CPCompoundGraphicMaker
+ (BOOL)makeCompoundGraphicsInZonesOf:(id)a3;
- (BOOL)findClusterLevel;
- (BOOL)groupOverlappingGraphics;
- (BOOL)makeCompoundGraphics;
- (BOOL)makeCompoundGraphicsFromShapeGroups;
- (CPCompoundGraphicMaker)initWithGraphicsIn:(id)a3 ofClass:(Class)a4;
- (void)addGroupInfoWithIndex:(unsigned int)a3 bounds:(CGRect)a4;
- (void)coalesceShapeGroups;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)makeCompoundGraphicFromShapesAtIndex:(unsigned int)a3 count:(unsigned int)a4;
@end

@implementation CPCompoundGraphicMaker

- (BOOL)makeCompoundGraphics
{
  if (self->shapeCount < 2)
  {
    return 0;
  }

  [-[CPObject page](self->parentChunk "page")];
  v6 = v4 + v5;
  if (v4 + v5 <= 0.0)
  {
    v6 = 1.0;
  }

  self->pageSpread = v6;
  v7 = self->shapeCount - 1;
  v55 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  [*self->shapes renderedBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (self->shapesAreVectorGraphics)
  {
    if (v7)
    {
      v16 = 1;
      v17 = v7;
      v18 = v55;
      do
      {
        [self->shapes[v16] renderedBounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v56.origin.x = v9;
        v56.origin.y = v11;
        v56.size.width = v13;
        v56.size.height = v15;
        v60.origin.x = v20;
        v60.origin.y = v22;
        v60.size.width = v24;
        v60.size.height = v26;
        v57 = CGRectUnion(v56, v60);
        *v18++ = (v57.size.width + v57.size.height) / self->pageSpread;
        ++v16;
        v9 = v20;
        v11 = v22;
        v13 = v24;
        v15 = v26;
        --v17;
      }

      while (v17);
    }

    goto LABEL_29;
  }

  if (v7)
  {
    v27 = 1;
    v28 = v7;
    v29 = v55;
    do
    {
      v30 = v15;
      v31 = v13;
      v32 = v11;
      v33 = v9;
      [self->shapes[v27] renderedBounds];
      v9 = v34;
      v11 = v35;
      v13 = v36;
      v15 = v37;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v39 = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if ((v39 & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_20:
          v40 = v9;
          v41 = v11;
          v42 = v13;
          v43 = v15;
          v44 = v33;
          v45 = v32;
          v46 = v31;
          v47 = v30;
          goto LABEL_21;
        }

        if (fabs(v30 * v31) >= fabs(v13 * v15))
        {
          goto LABEL_20;
        }
      }

      else if ((v39 & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
LABEL_22:
        v58.origin.x = v33;
        v58.origin.y = v32;
        v58.size.width = v31;
        v58.size.height = v30;
        v61.origin.x = v9;
        v61.origin.y = v11;
        v61.size.width = v13;
        v61.size.height = v15;
        v59 = CGRectIntersection(v58, v61);
        v49 = fabs(v59.size.width * v59.size.height);
        v50 = fabs(v30 * v31) + fabs(v13 * v15) - v49;
        if (v50 >= v49)
        {
          v51 = v50;
        }

        else
        {
          v51 = v49;
        }

        v52 = 1.0;
        if (v51 > 0.0)
        {
          v52 = 1.0 - v49 / v51;
        }

        *v29 = v52;
        goto LABEL_28;
      }

      v40 = v33;
      v41 = v32;
      v42 = v31;
      v43 = v30;
      v44 = v9;
      v45 = v11;
      v46 = v13;
      v47 = v15;
LABEL_21:
      nonOverlapOfFirst(v40, v41, v42, v43, v44, v45, v46, v47);
      *v29 = v48;
LABEL_28:
      ++v29;
      ++v27;
      --v28;
    }

    while (v28);
  }

LABEL_29:
  v53 = [[CPCluster alloc] initWithProfile:&kCPClusterProfileCompoundGraphic];
  self->cluster = v53;
  [(CPCluster *)v53 findClustersFromDifferences:v55 count:v7];
  if ([(CPCompoundGraphicMaker *)self findClusterLevel])
  {
    v2 = [(CPCompoundGraphicMaker *)self groupOverlappingGraphics];
  }

  else
  {
    v2 = 0;
  }

  free(v55);
  return v2;
}

- (BOOL)groupOverlappingGraphics
{
  cluster = self->cluster;
  if (cluster)
  {
    [(CPCluster *)cluster largestClusterStatistics];
    v4 = 40 * (v38 + 2);
  }

  else
  {
    v4 = 80;
  }

  self->groupInfoArray = malloc_type_malloc(v4, 0x1000040B4E0BC51uLL);
  v5 = [(CPCluster *)self->cluster clusterCount];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v36 = v5;
    while (1)
    {
      v10 = self->cluster;
      if (!v10)
      {
        v11 = 0;
        v37 = 0;
        goto LABEL_31;
      }

      [(CPCluster *)v10 clusterStatisticsAtIndex:v9];
      v11 = v37;
      if (v37 >= 2)
      {
        v12 = v37 + v8;
        v13 = self->shapes[v8];
        self->groupInfoCount = 0;
        v14 = (v8 + 1);
        if (v14 <= v37 + v8 && v13 != 0)
        {
          break;
        }
      }

LABEL_31:
      v8 = v11 + v8;
      v9 = (v9 + 1);
      if (v9 == v6)
      {
        return v7 & 1;
      }
    }

    v16 = 0;
    width = 0.0;
    v18 = 1;
    x = INFINITY;
    v20 = v8;
    y = INFINITY;
    height = 0.0;
    while (1)
    {
      if (v18 == 1)
      {
        [v13 renderedBounds];
        x = v23;
        y = v24;
        width = v25;
        height = v26;
        v16 = [v13 zOrder];
      }

      if (v14 >= v12)
      {
        break;
      }

      v13 = self->shapes[v14];
      if (!v13)
      {
        goto LABEL_23;
      }

      if (!self->shapesAreVectorGraphics)
      {
        goto LABEL_21;
      }

      if ([v13 zOrder] > v16 + 1)
      {
        goto LABEL_23;
      }

      if (!self->shapesAreVectorGraphics || ([v13 renderedBounds], v42.origin.x = v27, v42.origin.y = v28, v42.size.width = v29, v42.size.height = v30, v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, CGRectIntersectsRect(v39, v42)))
      {
LABEL_21:
        [v13 renderedBounds];
        v43.origin.x = v31;
        v43.origin.y = v32;
        v43.size.width = v33;
        v43.size.height = v34;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v41 = CGRectUnion(v40, v43);
        x = v41.origin.x;
        y = v41.origin.y;
        width = v41.size.width;
        height = v41.size.height;
        ++v18;
        v16 = [v13 zOrder];
        goto LABEL_25;
      }

      [(CPCompoundGraphicMaker *)self addGroupInfoWithIndex:v20 bounds:x, y, width, height];
LABEL_24:
      v18 = 1;
      v20 = v14;
LABEL_25:
      v14 = (v20 + v18);
      if (v14 > v12 || !v13)
      {
        v6 = v36;
        v11 = v37;
        goto LABEL_31;
      }
    }

    v13 = 0;
LABEL_23:
    [(CPCompoundGraphicMaker *)self addGroupInfoWithIndex:v20 bounds:x, y, width, height];
    [(CPCompoundGraphicMaker *)self addGroupInfoWithIndex:v14 bounds:INFINITY, INFINITY, 0.0, 0.0];
    v7 |= [(CPCompoundGraphicMaker *)self makeCompoundGraphicsFromShapeGroups];
    self->groupInfoCount = 0;
    goto LABEL_24;
  }

  LOBYTE(v7) = 0;
  return v7 & 1;
}

- (BOOL)makeCompoundGraphicsFromShapeGroups
{
  if (self->shapesAreVectorGraphics)
  {
    [(CPCompoundGraphicMaker *)self coalesceShapeGroups];
  }

  groupInfoCount = self->groupInfoCount;
  if (groupInfoCount < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  for (i = 1; i < groupInfoCount; ++i)
  {
    groupInfoArray = self->groupInfoArray;
    if (groupInfoArray[v4 + 1].var0 - groupInfoArray[v4].var0 >= 2 && (!self->shapesAreVectorGraphics || groupInfoArray[v4].var1.size.width + groupInfoArray[v4].var1.size.height <= self->pageSpread * 0.4))
    {
      [CPCompoundGraphicMaker makeCompoundGraphicFromShapesAtIndex:"makeCompoundGraphicFromShapesAtIndex:count:" count:?];
      groupInfoCount = self->groupInfoCount;
      v5 = 1;
    }

    ++v4;
  }

  return v5;
}

- (void)coalesceShapeGroups
{
  groupInfoCount = self->groupInfoCount;
  if (groupInfoCount >= 2)
  {
    groupInfoArray = self->groupInfoArray;
    width = groupInfoArray->var1.size.width;
    height = groupInfoArray->var1.size.height;
    x = groupInfoArray->var1.origin.x;
    y = groupInfoArray->var1.origin.y;
    for (i = 1; i < groupInfoCount; ++i)
    {
      p_var0 = &groupInfoArray[i].var0;
      v11 = p_var0[1];
      v12 = p_var0[2];
      v13 = p_var0[3];
      v14 = p_var0[4];
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v20.origin.x = v11;
      v20.origin.y = v12;
      v20.size.width = v13;
      v20.size.height = v14;
      if (CGRectIntersectsRect(v18, v20))
      {
        v15 = groupInfoCount - 1;
        self->groupInfoCount = groupInfoCount - 1;
        groupInfoCount = i;
        v16 = v15 - i;
        if (v16)
        {
          memmove(&groupInfoArray[i], p_var0 + 5, 40 * v16);
          groupInfoArray = self->groupInfoArray;
          groupInfoCount = self->groupInfoCount;
        }

        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v21.origin.x = v11;
        v21.origin.y = v12;
        v21.size.width = v13;
        v21.size.height = v14;
        groupInfoArray[i - 1].var1 = CGRectUnion(v19, v21);
        if (i == 1)
        {
          i = 0;
        }

        else
        {
          i -= 2;
        }

        v17 = &groupInfoArray[i].var0;
        x = v17[1];
        y = v17[2];
        width = v17[3];
        height = v17[4];
      }

      else
      {
        height = v14;
        width = v13;
        y = v12;
        x = v11;
      }
    }
  }
}

- (void)makeCompoundGraphicFromShapesAtIndex:(unsigned int)a3 count:(unsigned int)a4
{
  v12 = objc_alloc_init(CPCompoundGraphic);
  v7 = a4 + a3;
  if (v7 > a3)
  {
    v8 = 0;
    v9 = a3;
LABEL_3:
    v10 = v7 - v9;
    do
    {
      v11 = self->shapes[v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CPChunk *)v12 addChildrenOf:v11];
        [v11 remove];
        ++v9;
        v8 = 1;
        if (v7 != v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }

      [(CPChunk *)v12 add:v11];
      ++v9;
      --v10;
    }

    while (v10);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    [(CPChunk *)v12 sortUsingSelector:sel_compareZ_];
  }

LABEL_11:
  [(CPChunk *)self->parentChunk add:v12];
}

- (void)addGroupInfoWithIndex:(unsigned int)a3 bounds:(CGRect)a4
{
  groupInfoArray = self->groupInfoArray;
  groupInfoArray[self->groupInfoCount].var0 = a3;
  groupInfoCount = self->groupInfoCount;
  groupInfoArray[groupInfoCount].var1 = a4;
  self->groupInfoCount = groupInfoCount + 1;
}

- (BOOL)findClusterLevel
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->shapesAreVectorGraphics)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 0.5;
  }

  if (self->shapesAreVectorGraphics)
  {
    v4 = 0.4;
  }

  else
  {
    v4 = 0.75;
  }

  v5 = [(CPCluster *)self->cluster levels];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v19 = 0u;
      v20 = 0u;
      cluster = self->cluster;
      if (cluster)
      {
        [(CPCluster *)cluster differenceClusterStatisticsAtIndex:v8];
        v11 = *(&v19 + 1);
        v10 = *&v20;
      }

      else
      {
        v10 = 0.0;
        v11 = 0.0;
      }

      v12 = v10 > v4 && v11 < v3;
      v7 |= v12;
      if (v11 >= v3 || v10 > v4)
      {
        break;
      }

      v8 = (v8 + 1);
      if (v6 == v8)
      {
        LODWORD(v8) = v6;
        break;
      }
    }

    if (v7)
    {
      LODWORD(v19) = 1;
      *(&v19 + 1) = v3;
      *&v20 = v3;
      *(&v20 + 1) = v3;
      v21 = 1;
      v22 = v4;
      v23 = v4;
      v24 = v4;
      LODWORD(v8) = v8 + [(CPCluster *)self->cluster applyDifferenceHints:&v19 count:2];
    }

    else if (v8 >= 2)
    {
      v14 = self->cluster;
      if (v14)
      {
        [(CPCluster *)v14 differenceClusterStatisticsAtIndex:(v8 - 1)];
        v15 = *&v18;
        v14 = self->cluster;
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0.0;
      }

      LODWORD(v8) = 1;
      LODWORD(v19) = 1;
      if (v15 < v3)
      {
        v15 = v3;
      }

      *(&v19 + 1) = v15;
      *&v20 = v15;
      *(&v20 + 1) = v15;
      [(CPCluster *)v14 applyDifferenceHints:&v19 count:1, v17, v18];
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  return v8 != 0;
}

- (void)dealloc
{
  [(CPCompoundGraphicMaker *)self dispose];

  v3.receiver = self;
  v3.super_class = CPCompoundGraphicMaker;
  [(CPCompoundGraphicMaker *)&v3 dealloc];
}

- (void)finalize
{
  [(CPCompoundGraphicMaker *)self dispose];
  v3.receiver = self;
  v3.super_class = CPCompoundGraphicMaker;
  [(CPCompoundGraphicMaker *)&v3 finalize];
}

- (void)dispose
{
  if (!self->disposed)
  {
    [(CPCluster *)self->cluster dispose];
    free(self->groupInfoArray);
    free(self->shapes);
    self->disposed = 1;
  }
}

- (CPCompoundGraphicMaker)initWithGraphicsIn:(id)a3 ofClass:(Class)a4
{
  v18.receiver = self;
  v18.super_class = CPCompoundGraphicMaker;
  v6 = [(CPCompoundGraphicMaker *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->parentChunk = a3;
    v6->shapesAreVectorGraphics = objc_opt_class() == a4;
    v8 = [(CPObject *)v7->parentChunk countOfClass:a4];
    v7->shapeCount = v8;
    if (v8)
    {
      v7->shapes = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
      v9 = [(CPObject *)v7->parentChunk children];
      shapes = v7->shapes;
      shapeCount = v7->shapeCount;
      v12 = [v9 count];
      v13 = v12;
      if (v12)
      {
        v14 = 0;
        v15 = &shapes[shapeCount];
        do
        {
          v16 = [v9 objectAtIndex:v14];
          if (objc_opt_isKindOfClass())
          {
            *shapes++ = v16;
            if (shapes == v15)
            {
              break;
            }
          }

          ++v14;
        }

        while (v13 != v14);
      }

      qsort(v7->shapes, v7->shapeCount, 8uLL, compareZOrder);
    }
  }

  return v7;
}

+ (BOOL)makeCompoundGraphicsInZonesOf:(id)a3
{
  v4 = [[CPCompoundGraphicMaker alloc] initWithGraphicsIn:a3 ofClass:objc_opt_class()];
  v5 = [(CPCompoundGraphicMaker *)v4 makeCompoundGraphics];
  [(CPCompoundGraphicMaker *)v4 dispose];

  v6 = [[CPCompoundGraphicMaker alloc] initWithGraphicsIn:a3 ofClass:objc_opt_class()];
  v7 = [(CPCompoundGraphicMaker *)v6 makeCompoundGraphics]|| v5;
  [(CPCompoundGraphicMaker *)v6 dispose];

  v8 = [a3 children];
  v9 = [v8 count];
  v10 = v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = [v8 objectAtIndex:v11];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 |= [CPCompoundGraphicMaker makeCompoundGraphicsInZonesOf:v12];
      }

      ++v11;
    }

    while (v10 != v11);
  }

  return v7 & 1;
}

@end