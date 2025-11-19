@interface CPZoneBorder
+ (CGRect)extendRect:(CGRect)a3;
+ (int)clockwiseWindingNumberOfShapeWithBorders:(id)a3;
+ (void)addIntersectionBetweenBorder:(id)a3 andBorder:(id)a4 atRect:(CGRect)a5;
+ (void)outerVertices:(CGPoint *)a3 fromBorders:(id)a4 swollenBy:(double)a5;
+ (void)removeIntersectionBetweenBorder:(id)a3 andBorder:(id)a4;
- (BOOL)continues:(id)a3;
- (BOOL)crosses:(id)a3;
- (BOOL)extractCycleTo:(id)a3 goingForward:(BOOL)a4 startingAtIndex:(unsigned int)a5;
- (BOOL)extractCycleTo:(id)a3 goingForward:(BOOL)a4 throughIntersectionIndex:(unsigned int)a5 returningTo:(id)a6 atRect:(CGRect *)a7;
- (BOOL)hasClockwiseVectorAtIndex:(unsigned int)a3 startingForward:(BOOL)a4;
- (BOOL)hasCounterclockwiseVectorAtIndex:(unsigned int)a3 startingForward:(BOOL)a4;
- (BOOL)hasNeighborShape:(id)a3;
- (BOOL)hasNeighborShape:(id)a3 atSide:(int)a4;
- (BOOL)hasVectorGoingForward:(BOOL)a3 startingAtIndex:(unsigned int *)a4;
- (BOOL)intersectsWith:(id)a3 atRect:(CGRect *)a4;
- (BOOL)windsClockwiseOnto:(id)a3;
- (CGRect)bounds;
- (CPZoneBorder)init;
- (CPZoneBorder)initWithGraphicObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutIntersections;
- (id)getNextBorder:(unsigned int)a3;
- (id)initSuper;
- (id)neighborAtIndex:(unsigned int)a3;
- (int64_t)compareXBounds:(id)a3;
- (int64_t)compareYBounds:(id)a3;
- (int64_t)zOrder;
- (unsigned)graphicObjectCount;
- (unsigned)indexOfIntersectionWith:(id)a3;
- (unsigned)intersectionCount;
- (unsigned)neighborCount;
- (void)addGraphicObject:(id)a3;
- (void)addNeighbor:(id)a3;
- (void)combine:(id)a3;
- (void)dealloc;
- (void)instantiateVectors;
- (void)removeFromArray;
- (void)removeFromArrayAtIndex:(unsigned int)a3;
- (void)removeLooseThreadsStartingFrom:(id)a3;
- (void)removeNeighborAtIndex:(unsigned int)a3;
- (void)setSide:(int)a3 ofPage:(id)a4;
- (void)trimToLastIntersections;
@end

@implementation CPZoneBorder

- (int64_t)compareYBounds:(id)a3
{
  y = self->bounds.origin.y;
  [a3 bounds];
  if (y < v4)
  {
    return -1;
  }

  else
  {
    return y != v4;
  }
}

- (int64_t)compareXBounds:(id)a3
{
  x = self->bounds.origin.x;
  [a3 bounds];
  if (x < v4)
  {
    return -1;
  }

  else
  {
    return x != v4;
  }
}

- (void)removeLooseThreadsStartingFrom:(id)a3
{
  if ([(CPZoneBorder *)self intersectionCount])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->intersections objectAtIndex:v5];
      v7 = [v6 intersectingBorder];
      if (v7 != a3)
      {
        v8 = v7;
        [(NSMutableArray *)self->intersections removeObject:v6];
        v9 = [v8 indexOfIntersectionWith:self];
        if (v9 < [v8 intersectionCount])
        {
          [v8[9] removeObjectAtIndex:v9];
        }

        if ([v8 intersectionCount] <= 1)
        {
          if ([v8 intersectionCount] == 1)
          {
            [v8 removeLooseThreadsStartingFrom:self];
          }

          [v8 removeFromArray];
        }

        --v5;
      }

      ++v5;
    }

    while (v5 < [(CPZoneBorder *)self intersectionCount]);
  }
}

- (void)trimToLastIntersections
{
  v3 = [(CPZoneBorder *)self intersectionCount];
  if (v3)
  {
    v4 = v3;
    [-[NSMutableArray objectAtIndex:](self->intersections objectAtIndex:{0), "intersectionRect"}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [-[NSMutableArray objectAtIndex:](self->intersections objectAtIndex:{v4 - 1), "intersectionRect"}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (self->isHorizontal)
    {
      x = self->bounds.origin.x;
      width = self->bounds.size.width;
      self->overhangMin = x;
      self->overhangMax = x + width;
      if (v10 < 0.0 || v12 < 0.0)
      {
        v37.origin.x = v6;
        v37.origin.y = v8;
        v37.size.width = v10;
        v37.size.height = v12;
        v23 = v16;
        v24 = CGRectStandardize(v37);
        v16 = v23;
        v6 = *&v24;
      }

      self->bounds.origin.x = v6;
      if (v18 < 0.0 || v20 < 0.0)
      {
        v38.origin.x = v14;
        v38.origin.y = v16;
        v38.size.width = v18;
        v38.size.height = v20;
        v39 = CGRectStandardize(v38);
        v14 = v39.origin.x;
        v18 = v39.size.width;
      }

      height = self->bounds.size.height;
      if (width < 0.0 || height < 0.0)
      {
        y = self->bounds.origin.y;
        v27 = v6;
        v28 = width;
        *&v6 = CGRectStandardize(*(&height - 3));
      }

      self->bounds.size.width = v14 + v18 - v6;
    }

    else
    {
      v29 = self->bounds.origin.y;
      v30 = self->bounds.size.height;
      self->overhangMin = v29;
      self->overhangMax = v29 + v30;
      if (v10 < 0.0 || v12 < 0.0)
      {
        v40.origin.x = v6;
        v40.origin.y = v8;
        v40.size.width = v10;
        v40.size.height = v12;
        v31 = v16;
        v41 = CGRectStandardize(v40);
        v16 = v31;
        v8 = v41.origin.y;
      }

      self->bounds.origin.y = v8;
      if (v18 < 0.0 || v20 < 0.0)
      {
        v42.origin.x = v14;
        v42.origin.y = v16;
        v42.size.width = v18;
        v42.size.height = v20;
        v43 = CGRectStandardize(v42);
        v16 = v43.origin.y;
        v20 = v43.size.height;
      }

      v32 = v16 + v20;
      v33 = self->bounds.size.width;
      if (v33 < 0.0 || v30 < 0.0)
      {
        v34 = self->bounds.origin.x;
        v35 = v8;
        v36 = v30;
        v44 = CGRectStandardize(*(&v33 - 2));
        v8 = v44.origin.y;
      }

      self->bounds.size.height = v32 - v8;
    }
  }
}

- (void)combine:(id)a3
{
  self->bounds = CGRectUnion(self->bounds, *(a3 + 8));
  v5 = [a3 graphicObjectCount];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      -[CPZoneBorder addGraphicObject:](self, "addGraphicObject:", [a3 graphicObjectAtIndex:v7]);
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }

  v8 = [a3 neighborCount];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      -[CPZoneBorder addNeighbor:](self, "addNeighbor:", [a3 neighborAtIndex:v10]);
      v10 = (v10 + 1);
    }

    while (v9 != v10);
  }

  if (self->hasForwardVector)
  {
    v11 = *(a3 + 81);
  }

  else
  {
    v11 = 0;
  }

  self->hasForwardVector = v11 & 1;
  if (self->hasBackwardVector)
  {
    v12 = *(a3 + 82);
  }

  else
  {
    v12 = 0;
  }

  self->hasBackwardVector = v12 & 1;

  [a3 removeFromArray];
}

- (BOOL)continues:(id)a3
{
  [CPZoneBorder extendRect:self->bounds.origin.x, self->bounds.origin.y, self->bounds.size.width, self->bounds.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [CPZoneBorder extendRect:*(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4)];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;

  return CGRectIntersectsRect(*&v20, *&v13);
}

- (BOOL)crosses:(id)a3
{
  [a3 bounds];
  v8 = v4;
  v9 = v5;
  v10 = fmin(v6, v7) < 0.0;
  rect_24 = v6;
  v69 = v7;
  if (!self->isHorizontal)
  {
    x = v4;
    width = v6;
    if (v10)
    {
      v80 = CGRectStandardize(*&v4);
      x = v80.origin.x;
      width = v80.size.width;
    }

    v41 = self->bounds.origin.x;
    v42 = self->bounds.size.width;
    rect_8a = self->bounds.size.height;
    rect_16 = v9;
    v43 = fmin(v42, rect_8a);
    v44 = v43 < 0.0;
    v45 = v41;
    v46 = v42;
    if (v43 < 0.0)
    {
      v81 = CGRectStandardize(self->bounds);
      v45 = v81.origin.x;
      v46 = v81.size.width;
    }

    v47 = v8;
    if (v10)
    {
      v82.origin.x = v8;
      v82.origin.y = rect_16;
      v82.size.width = rect_24;
      v82.size.height = v69;
      *&v47 = CGRectStandardize(v82);
    }

    v48 = x + width;
    v49 = v45 + v46;
    v50 = v41;
    if (v44)
    {
      v83.origin.y = self->bounds.origin.y;
      v83.origin.x = v41;
      v83.size.width = v42;
      v83.size.height = rect_8a;
      *&v50 = CGRectStandardize(v83);
    }

    if (v47 < v50 && v48 > v49)
    {
      v53 = rect_16;
      v54 = v69;
      if (v10)
      {
        v84.origin.x = v8;
        v84.origin.y = rect_16;
        v84.size.width = rect_24;
        v84.size.height = v69;
        *(&v53 - 1) = CGRectStandardize(v84);
      }

      y = self->bounds.origin.y;
      v56 = y;
      height = rect_8a;
      if (v44)
      {
        v85.origin.x = v41;
        v58 = v53;
        v85.origin.y = self->bounds.origin.y;
        v85.size.width = v42;
        recta = v54;
        v85.size.height = rect_8a;
        v86 = CGRectStandardize(v85);
        v56 = v86.origin.y;
        v53 = v58;
        height = v86.size.height;
        v54 = recta;
      }

      if (v10)
      {
        v87.origin.x = v8;
        v59 = v53;
        v87.origin.y = rect_16;
        v87.size.width = rect_24;
        v60 = v54;
        v87.size.height = v69;
        v88 = CGRectStandardize(v87);
        v54 = v60;
        rect_16 = v88.origin.y;
        v53 = v59;
      }

      v61 = v53 + v54;
      v62 = v56 + height;
      if (v44)
      {
        v89.origin.x = v41;
        v89.origin.y = y;
        v89.size.width = v42;
        v89.size.height = rect_8a;
        v90 = CGRectStandardize(v89);
        y = v90.origin.y;
      }

      v37 = rect_16 > y;
      v38 = v61 < v62;
      return v38 && v37;
    }

    return 0;
  }

  v11 = v5;
  v12 = v7;
  if (v10)
  {
    v70 = CGRectStandardize(*&v4);
    v11 = v70.origin.y;
    v12 = v70.size.height;
  }

  v13 = self->bounds.origin.y;
  v14 = self->bounds.size.height;
  rect = v8;
  rect_8 = self->bounds.size.width;
  v15 = fmin(rect_8, v14);
  v16 = v15 < 0.0;
  v17 = v13;
  v18 = v14;
  if (v15 < 0.0)
  {
    v71 = CGRectStandardize(self->bounds);
    v17 = v71.origin.y;
    v18 = v71.size.height;
  }

  v19 = v9;
  if (v10)
  {
    v72.origin.x = rect;
    v72.origin.y = v9;
    v72.size.width = rect_24;
    v72.size.height = v69;
    v73 = CGRectStandardize(v72);
    v9 = v73.origin.y;
  }

  v20 = v11 + v12;
  v21 = v17 + v18;
  v22 = v13;
  if (v16)
  {
    v74.origin.x = self->bounds.origin.x;
    v74.origin.y = v13;
    v74.size.width = rect_8;
    v74.size.height = v14;
    *(&v22 - 1) = CGRectStandardize(v74);
  }

  if (v9 >= v22 || v20 <= v21)
  {
    return 0;
  }

  v24 = rect;
  v25 = rect_24;
  v26 = v19;
  if (v10)
  {
    v75.origin.x = rect;
    v75.origin.y = v19;
    v75.size.width = rect_24;
    v75.size.height = v69;
    *(&v25 - 2) = CGRectStandardize(v75);
    v24 = v27;
  }

  v28 = self->bounds.origin.x;
  v29 = v28;
  v30 = rect_8;
  if (v16)
  {
    v76.origin.x = self->bounds.origin.x;
    v31 = v24;
    v76.origin.y = v13;
    v32 = v25;
    v76.size.width = rect_8;
    v76.size.height = v14;
    v77 = CGRectStandardize(v76);
    v24 = v31;
    v29 = v77.origin.x;
    v30 = v77.size.width;
    v25 = v32;
    v26 = v19;
  }

  if (v10)
  {
    v78.origin.x = rect;
    v33 = v24;
    v78.origin.y = v26;
    v34 = v25;
    v78.size.width = rect_24;
    v78.size.height = v69;
    v35 = CGRectStandardize(v78);
    v25 = v34;
    v24 = v33;
    rect = *&v35;
  }

  v36 = v24 + v25;
  if (v16)
  {
    v79.origin.x = v28;
    v79.origin.y = v13;
    v79.size.width = rect_8;
    v79.size.height = v14;
    *&v28 = CGRectStandardize(v79);
  }

  v37 = rect > v28;
  v38 = v36 < v29 + v30;
  return v38 && v37;
}

- (BOOL)extractCycleTo:(id)a3 goingForward:(BOOL)a4 throughIntersectionIndex:(unsigned int)a5 returningTo:(id)a6 atRect:(CGRect *)a7
{
  v9 = a4;
  v12 = [(CPZoneBorder *)self copyWithoutIntersections];
  intersections = self->intersections;
  if (v9)
  {
    v14 = [(NSMutableArray *)intersections count]- 1;
    v40 = a5;
    v15 = [(NSMutableArray *)self->intersections objectAtIndex:?];
    if (a6 == self)
    {
      v16 = 1;
    }

    else
    {
      [v15 setForwardVector:0];
      v16 = 0;
    }

    v18 = 1;
  }

  else
  {
    v40 = a5;
    v17 = [(NSMutableArray *)intersections objectAtIndex:?];
    if (a6 == self)
    {
      v14 = 0;
      v18 = -1;
      v16 = 1;
    }

    else
    {
      [v17 setBackwardVector:0];
      v16 = 0;
      v14 = 0;
      v18 = -1;
    }
  }

  v19 = a5 - v14;
  if (!v19)
  {
LABEL_29:
    v28 = 0;
    if (v16)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

  v20 = v18 + a5;
  while (1)
  {
    v21 = [(NSMutableArray *)self->intersections objectAtIndex:v20];
    if ([(CPZoneBorder *)self hasClockwiseVectorAtIndex:v20 startingForward:v9])
    {
      v22 = self->isHorizontal ^ v9;
      goto LABEL_20;
    }

    if (!v9)
    {
      break;
    }

    if (![v21 forwardVector])
    {
      goto LABEL_25;
    }

    [v21 setForwardVector:0];
LABEL_17:
    v20 = (v20 + v18);
    v19 += v18;
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  if ([v21 backwardVector])
  {
    [v21 setBackwardVector:0];
    goto LABEL_17;
  }

LABEL_25:
  if (![(CPZoneBorder *)self hasCounterclockwiseVectorAtIndex:v20 startingForward:v9])
  {
    goto LABEL_29;
  }

  isHorizontal = self->isHorizontal;
  v22 = isHorizontal && v9 || !isHorizontal && !v9;
LABEL_20:
  if ([v21 intersectingBorder] == a6)
  {
    [v21 intersectionRect];
    a7->origin.x = v30;
    a7->origin.y = v31;
    a7->size.width = v32;
    a7->size.height = v33;
  }

  else
  {
    v23 = [v21 intersectingBorder];
    if (![v23 extractCycleTo:a3 goingForward:v22 & 1 throughIntersectionIndex:objc_msgSend(v23 returningTo:"indexOfIntersectionWith:" atRect:{self), a6, a7}])
    {
      goto LABEL_29;
    }

    v24 = [a3 lastObject];
    if (!v24)
    {
      __assert_rtn("[CPZoneBorder extractCycleTo:goingForward:throughIntersectionIndex:returningTo:atRect:]", "CPZoneBorder.m", 683, "nextExtractedBorder");
    }

    v25 = v24;
    [v21 intersectionRect];
    [CPZoneBorder addIntersectionBetweenBorder:v25 andBorder:v12 atRect:?];
    v26 = *(v25 + 72);
    if (v22)
    {
      [objc_msgSend(v26 objectAtIndex:{0), "setForwardVector:", 1}];
    }

    else
    {
      [objc_msgSend(v26 "lastObject")];
    }
  }

  [v12 addToArray:a3];
  if (v16)
  {
    if ([a3 count] >= 2)
    {
      +[CPZoneBorder addIntersectionBetweenBorder:andBorder:atRect:](CPZoneBorder, "addIntersectionBetweenBorder:andBorder:atRect:", v12, [a3 objectAtIndex:0], a7->origin.x, a7->origin.y, a7->size.width, a7->size.height);
      if (!v12)
      {
        __assert_rtn("[CPZoneBorder extractCycleTo:goingForward:throughIntersectionIndex:returningTo:atRect:]", "CPZoneBorder.m", 712, "extractedBorder");
      }

      v34 = v12[9];
      if (v9)
      {
        [objc_msgSend(v34 objectAtIndex:{0), "setForwardVector:", 1}];
      }

      else
      {
        [objc_msgSend(v34 "lastObject")];
      }

      v36 = [a3 count];
      v37 = v36;
      if (v36)
      {
        v38 = 0;
        do
        {
          [objc_msgSend(a3 objectAtIndex:{v38++), "trimToLastIntersections"}];
        }

        while (v37 != v38);
      }
    }

    v28 = 1;
LABEL_30:
    v29 = [(NSMutableArray *)self->intersections objectAtIndex:v40];
    if (v9)
    {
      [v29 setForwardVector:0];
    }

    else
    {
      [v29 setBackwardVector:0];
    }
  }

  else
  {
    v28 = 1;
  }

LABEL_42:

  return v28;
}

- (BOOL)extractCycleTo:(id)a3 goingForward:(BOOL)a4 startingAtIndex:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  [a3 removeAllObjects];
  v9 = [(NSMutableArray *)self->intersections objectAtIndex:v5];
  if (!v6)
  {
    v10 = [v9 backwardVector];
    if (!v10)
    {
      return v10;
    }

LABEL_5:
    v12 = CGRectNull;
    LOBYTE(v10) = [(CPZoneBorder *)self extractCycleTo:a3 goingForward:v6 throughIntersectionIndex:v5 returningTo:self atRect:&v12];
    return v10;
  }

  if ([v9 forwardVector])
  {
    goto LABEL_5;
  }

  LOBYTE(v10) = 0;
  return v10;
}

- (BOOL)hasVectorGoingForward:(BOOL)a3 startingAtIndex:(unsigned int *)a4
{
  v5 = a3;
  v7 = [(CPZoneBorder *)self intersectionCount];
  *a4 = v7;
  if (v7 < 2)
  {
    return 0;
  }

  if (v5)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v7 - 1);
  }

  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  while (1)
  {
    v11 = [(NSMutableArray *)self->intersections objectAtIndex:v9];
    if (!v5)
    {
      break;
    }

    if ([v11 forwardVector])
    {
      goto LABEL_17;
    }

LABEL_15:
    v9 += v10;
    if (v8 == v9)
    {
      return 0;
    }
  }

  if (![v11 backwardVector])
  {
    goto LABEL_15;
  }

LABEL_17:
  *a4 = v9;
  return 1;
}

- (void)instantiateVectors
{
  v3 = [(CPZoneBorder *)self intersectionCount];
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      v6 = v4 + 1;
      if (v4 + 1 < v5)
      {
        [-[NSMutableArray objectAtIndex:](self->intersections objectAtIndex:{v4), "setForwardVector:", self->hasForwardVector}];
      }

      if (v4)
      {
        [-[NSMutableArray objectAtIndex:](self->intersections objectAtIndex:{v4), "setBackwardVector:", self->hasBackwardVector}];
      }

      ++v4;
    }

    while (v5 != v6);
  }
}

- (BOOL)hasCounterclockwiseVectorAtIndex:(unsigned int)a3 startingForward:(BOOL)a4
{
  v4 = a4;
  v6 = [(CPZoneBorder *)self getNextBorder:*&a3];
  if (self->isHorizontal == v4)
  {

    return [v6 forwardVector];
  }

  else
  {

    return [v6 backwardVector];
  }
}

- (BOOL)hasClockwiseVectorAtIndex:(unsigned int)a3 startingForward:(BOOL)a4
{
  v4 = a4;
  v6 = [(CPZoneBorder *)self getNextBorder:*&a3];
  if (self->isHorizontal == v4)
  {

    return [v6 backwardVector];
  }

  else
  {

    return [v6 forwardVector];
  }
}

- (id)getNextBorder:(unsigned int)a3
{
  v4 = [-[NSMutableArray objectAtIndex:](self->intersections objectAtIndex:{a3), "intersectingBorder"}];
  v5 = [v4 indexOfIntersectionWith:self];
  v6 = v4[9];

  return [v6 objectAtIndex:v5];
}

- (BOOL)windsClockwiseOnto:(id)a3
{
  v5 = [(CPZoneBorder *)self indexOfIntersectionWith:?];
  if ([a3 indexOfIntersectionWith:self])
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(CPZoneBorder *)self isHorizontal];
  if (v5)
  {
    v8 = -v6;
  }

  else
  {
    v8 = v6;
  }

  if (!v7)
  {
    v8 = -v8;
  }

  return v8 == 1;
}

- (unsigned)indexOfIntersectionWith:(id)a3
{
  v5 = [(CPZoneBorder *)self intersectionCount];
  if (v5)
  {
    v6 = 0;
    while ([-[NSMutableArray objectAtIndex:](self->intersections objectAtIndex:{v6), "intersectingBorder"}] != a3)
    {
      if (v5 == ++v6)
      {
        return v5;
      }
    }

    return v6;
  }

  return v5;
}

- (BOOL)intersectsWith:(id)a3 atRect:(CGRect *)a4
{
  result = [(CPZoneBorder *)self continues:?];
  if (self->isHorizontal)
  {
    if ((*(a3 + 80) & 1) == 0)
    {
      width = *(a3 + 3);
      y = self->bounds.origin.y;
      a4->origin.x = *(a3 + 1);
      a4->origin.y = y;
      height = self->bounds.size.height;
LABEL_6:
      a4->size.width = width;
      a4->size.height = height;
      return result;
    }
  }

  else if (*(a3 + 80))
  {
    width = self->bounds.size.width;
    v11 = *(a3 + 2);
    a4->origin.x = self->bounds.origin.x;
    a4->origin.y = v11;
    height = *(a3 + 4);
    goto LABEL_6;
  }

  result = 0;
  *a4 = CGRectNull;
  return result;
}

- (unsigned)intersectionCount
{
  intersections = self->intersections;
  if (intersections)
  {
    LODWORD(intersections) = [(NSMutableArray *)intersections count];
  }

  return intersections;
}

- (void)setSide:(int)a3 ofPage:(id)a4
{
  self->page = a4;
  [a4 pageCropBox];
  v10 = v8;
  v11 = v9;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v12 = 0;
LABEL_17:
        self->bounds.origin.x = v6;
        v10 = 0.0;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    self->bounds.origin.x = v6;
LABEL_15:
    v12 = 1;
    v11 = 0.0;
LABEL_18:
    self->bounds.origin.y = v7;
    self->bounds.size.width = v10;
    self->bounds.size.height = v11;
    self->isHorizontal = v12;
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    if (v8 < 0.0 || v9 < 0.0)
    {
      *&v6 = CGRectStandardize(*&v6);
      v11 = v13;
    }

    self->bounds.origin.x = v6;
    v7 = v7 + v11;
    goto LABEL_15;
  }

  if (a3 == 4)
  {
    if (v8 < 0.0 || v9 < 0.0)
    {
      *(&v7 - 1) = CGRectStandardize(*&v6);
      v12 = 0;
      v6 = v14 + v15;
    }

    else
    {
      v12 = 0;
      v6 = v6 + v8;
    }

    goto LABEL_17;
  }

LABEL_19:
  *&self->hasForwardVector = 257;
}

- (BOOL)hasNeighborShape:(id)a3 atSide:(int)a4
{
  neighbors = self->neighbors;
  if (neighbors)
  {
    neighbors = [(NSMutableArray *)neighbors count];
    if (neighbors)
    {
      v8 = 1;
      while (1)
      {
        v9 = [(CPZoneBorder *)self neighborAtIndex:v8 - 1];
        if ([v9 neighborShape] == a3 && objc_msgSend(v9, "shapeSide") == a4)
        {
          break;
        }

        if ([(NSMutableArray *)self->neighbors count]<= v8++)
        {
          LOBYTE(neighbors) = 0;
          return neighbors;
        }
      }

      LOBYTE(neighbors) = 1;
    }
  }

  return neighbors;
}

- (BOOL)hasNeighborShape:(id)a3
{
  neighbors = self->neighbors;
  if (neighbors)
  {
    neighbors = [(NSMutableArray *)neighbors count];
    if (neighbors)
    {
      v6 = 0;
      while (1)
      {
        LOBYTE(neighbors) = [-[CPZoneBorder neighborAtIndex:](self neighborAtIndex:{v6), "neighborShape"}] == a3;
        if (neighbors)
        {
          break;
        }

        v6 = (v6 + 1);
        if ([(NSMutableArray *)self->neighbors count]<= v6)
        {
          LOBYTE(neighbors) = 0;
          return neighbors;
        }
      }
    }
  }

  return neighbors;
}

- (id)neighborAtIndex:(unsigned int)a3
{
  result = self->neighbors;
  if (result)
  {
    return [result objectAtIndex:a3];
  }

  return result;
}

- (void)removeNeighborAtIndex:(unsigned int)a3
{
  neighbors = self->neighbors;
  if (neighbors)
  {
    [(NSMutableArray *)neighbors removeObjectAtIndex:a3];
  }
}

- (void)addNeighbor:(id)a3
{
  if (self->neighbors)
  {
    if (-[CPZoneBorder hasNeighborShape:atSide:](self, "hasNeighborShape:atSide:", [a3 neighborShape], objc_msgSend(a3, "shapeSide")))
    {
      return;
    }

    neighbors = self->neighbors;
  }

  else
  {
    neighbors = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->neighbors = neighbors;
  }

  [(NSMutableArray *)neighbors addObject:a3];
}

- (unsigned)neighborCount
{
  neighbors = self->neighbors;
  if (neighbors)
  {
    LODWORD(neighbors) = [(NSMutableArray *)neighbors count];
  }

  return neighbors;
}

- (void)addGraphicObject:(id)a3
{
  y = self->bounds.origin.y;
  v6 = INFINITY;
  if (self->bounds.origin.x == INFINITY || y == INFINITY)
  {
    [a3 renderedBounds];
    self->bounds.origin.x = v6;
    self->bounds.origin.y = y;
    self->bounds.size.width = v8;
    self->bounds.size.height = v9;
    self->isHorizontal = v8 >= v9;
  }

  if (([(NSMutableArray *)self->graphicObjects containsObject:a3, v6, y]& 1) == 0)
  {
    graphicObjects = self->graphicObjects;

    [(NSMutableArray *)graphicObjects addObject:a3];
  }
}

- (unsigned)graphicObjectCount
{
  graphicObjects = self->graphicObjects;
  if (graphicObjects)
  {
    LODWORD(graphicObjects) = [(NSMutableArray *)graphicObjects count];
  }

  return graphicObjects;
}

- (int64_t)zOrder
{
  v3 = [(CPZoneBorder *)self graphicObjectCount];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = [-[CPZoneBorder graphicObjectAtIndex:](self graphicObjectAtIndex:{v6), "zOrder"}];
    if (v7 > v5)
    {
      v5 = v7;
    }

    v6 = (v6 + 1);
  }

  while (v4 != v6);
  return v5;
}

- (CGRect)bounds
{
  x = self->bounds.origin.x;
  y = self->bounds.origin.y;
  width = self->bounds.size.width;
  height = self->bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)removeFromArrayAtIndex:(unsigned int)a3
{
  ownerArray = self->ownerArray;
  v4 = a3;
  *([(NSMutableArray *)ownerArray objectAtIndex:a3]+ 48) = 0;

  [(NSMutableArray *)ownerArray removeObjectAtIndex:v4];
}

- (void)removeFromArray
{
  ownerArray = self->ownerArray;
  self->ownerArray = 0;
  [(NSMutableArray *)ownerArray removeObject:?];
}

- (id)copyWithoutIntersections
{
  v3 = CPCopyObject(self, 0);
  v4 = v3;
  if (v3)
  {
    v3[6] = 0;
    v3[5] = self->page;
    v3[7] = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->graphicObjects];
    v4[8] = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->neighbors];
    v4[9] = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = CPCopyObject(self, a3);
  v6 = v5;
  if (v5)
  {
    v5[6] = 0;
    v5[5] = self->page;
    v5[7] = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "initWithArray:", self->graphicObjects}];
    v6[8] = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "initWithArray:", self->neighbors}];
    v6[9] = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "initWithArray:", self->intersections}];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPZoneBorder;
  [(CPZoneBorder *)&v3 dealloc];
}

- (id)initSuper
{
  v3.receiver = self;
  v3.super_class = CPZoneBorder;
  return [(CPZoneBorder *)&v3 init];
}

- (CPZoneBorder)initWithGraphicObject:(id)a3
{
  v4 = [(CPZoneBorder *)self init];
  if (v4)
  {
    v4->page = [a3 page];
    [(CPZoneBorder *)v4 addGraphicObject:a3];
    *&v4->hasForwardVector = 257;
  }

  return v4;
}

- (CPZoneBorder)init
{
  v5.receiver = self;
  v5.super_class = CPZoneBorder;
  v2 = [(CPZoneBorder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->bounds = CGRectNull;
    v2->graphicObjects = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3->isHorizontal = 1;
  }

  return v3;
}

+ (CGRect)extendRect:(CGRect)a3
{
  v3 = fmax(a3.size.width, a3.size.height) * 0.0 + 2.0;
  v4 = a3.origin.x - v3;
  v5 = a3.origin.y - v3;
  v6 = a3.size.width + v3 * 2.0;
  v7 = a3.size.height + v3 * 2.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (int)clockwiseWindingNumberOfShapeWithBorders:(id)a3
{
  v4 = [a3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    if (v7 + 1 < v4)
    {
      ++v7;
    }

    else
    {
      v7 = 0;
    }

    if ([objc_msgSend(a3 objectAtIndex:{v5), "windsClockwiseOnto:", objc_msgSend(a3, "objectAtIndex:", v7)}])
    {
      ++v6;
    }

    else
    {
      --v6;
    }

    ++v5;
  }

  while (v4 != v5);
  return v6 / 4;
}

+ (void)outerVertices:(CGPoint *)a3 fromBorders:(id)a4 swollenBy:(double)a5
{
  v8 = [CPZoneBorder clockwiseWindingNumberOfShapeWithBorders:a4];
  v9 = [a4 count];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 + 1 < v9)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      v12 = [a4 objectAtIndex:v10];
      v13 = [a4 objectAtIndex:v11];
      v14 = [v12 indexOfIntersectionWith:v13];
      v15 = [v13 indexOfIntersectionWith:v12];
      [objc_msgSend(v12[9] objectAtIndex:{v14), "intersectionRect"}];
      v17 = v16;
      y = v18;
      v21 = v20;
      height = v22;
      v24 = [v12 isHorizontal];
      if (!v24 || v14)
      {
        v25 = (v15 != 0) & ~v24;
      }

      else
      {
        v25 = 1;
      }

      if (v15)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (v8 < 0)
        {
          LOBYTE(v25) = v25 ^ 1;
LABEL_21:
          if (v21 < 0.0 || (v28 = v17, v29 = v21, height < 0.0))
          {
            v32.origin.x = v17;
            v32.origin.y = y;
            v32.size.width = v21;
            v32.size.height = height;
            *&v28 = CGRectStandardize(v32);
          }

          a3->x = v28 + v29 + a5;
          if (v25)
          {
            goto LABEL_34;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (v14)
        {
          v27 = v24;
        }

        else
        {
          v27 = 1;
        }

        if (v8 < 0)
        {
          v25 ^= 1u;
          if ((v27 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else if (v27)
        {
          goto LABEL_21;
        }
      }

      if (v21 < 0.0 || (v31 = v17, height < 0.0))
      {
        v35.origin.x = v17;
        v35.origin.y = y;
        v35.size.width = v21;
        v35.size.height = height;
        *&v31 = CGRectStandardize(v35);
      }

      a3->x = v31 - a5;
      if (v25)
      {
LABEL_34:
        if (v21 < 0.0 || height < 0.0)
        {
          v36.origin.x = v17;
          v36.origin.y = y;
          v36.size.width = v21;
          v36.size.height = height;
          v37 = CGRectStandardize(v36);
          y = v37.origin.y;
        }

        v30 = y - a5;
        goto LABEL_38;
      }

LABEL_25:
      if (v21 < 0.0 || height < 0.0)
      {
        v33.origin.x = v17;
        v33.origin.y = y;
        v33.size.width = v21;
        v33.size.height = height;
        v34 = CGRectStandardize(v33);
        y = v34.origin.y;
        height = v34.size.height;
      }

      v30 = y + height + a5;
LABEL_38:
      a3->y = v30;
      ++v10;
      ++a3;
    }

    while (v9 != v10);
  }
}

+ (void)removeIntersectionBetweenBorder:(id)a3 andBorder:(id)a4
{
  v6 = [a3 intersectionCount];
  if (v6)
  {
    v7 = 0;
    v8 = v6;
    while ([objc_msgSend(*(a3 + 9) objectAtIndex:{v7), "intersectingBorder"}] != a4)
    {
      if (v8 == ++v7)
      {
        goto LABEL_7;
      }
    }

    [*(a3 + 9) removeObjectAtIndex:v7];
  }

LABEL_7:
  v9 = [a4 intersectionCount];
  if (v9)
  {
    v10 = 0;
    v11 = v9;
    while ([objc_msgSend(*(a4 + 9) objectAtIndex:{v10), "intersectingBorder"}] != a3)
    {
      if (v11 == ++v10)
      {
        return;
      }
    }

    v12 = *(a4 + 9);

    [v12 removeObjectAtIndex:v10];
  }
}

+ (void)addIntersectionBetweenBorder:(id)a3 andBorder:(id)a4 atRect:(CGRect)a5
{
  if (a3 && a4)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v11 = objc_alloc_init(CPZoneBorderIntersection);
    [(CPZoneBorderIntersection *)v11 setIntersectionRect:x, y, width, height];
    [(CPZoneBorderIntersection *)v11 setIntersectingBorder:a4];
    v12 = *(a3 + 9);
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      *(a3 + 9) = v12;
    }

    [v12 addObject:v11];
    [*(a3 + 9) sortUsingSelector:sel_comparePositionLengthwise_];

    v14 = objc_alloc_init(CPZoneBorderIntersection);
    [(CPZoneBorderIntersection *)v14 setIntersectionRect:x, y, width, height];
    [(CPZoneBorderIntersection *)v14 setIntersectingBorder:a3];
    v13 = *(a4 + 9);
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      *(a4 + 9) = v13;
    }

    [v13 addObject:v14];
    [*(a4 + 9) sortUsingSelector:sel_comparePositionLengthwise_];
  }
}

@end