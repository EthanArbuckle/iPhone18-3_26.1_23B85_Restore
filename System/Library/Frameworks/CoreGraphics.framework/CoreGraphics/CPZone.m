@interface CPZone
- (BOOL)canContain:(CGRect)a3;
- (BOOL)contains:(id)a3;
- (BOOL)hasNeighborShape:(id)a3;
- (BOOL)mapToWordPairs:(void *)a3 passing:(void *)a4;
- (BOOL)mapToWordPairsWithIndex:(void *)a3 passing:(void *)a4;
- (BOOL)mapToWords:(void *)a3 passing:(void *)a4;
- (BOOL)mapToWordsWithIndex:(void *)a3 passing:(void *)a4;
- (BOOL)rectangleBordersAtLeft:(id *)a3 top:(id *)a4 right:(id *)a5 bottom:(id *)a6;
- (CGColor)newBackgroundColor;
- (CGPoint)outerVertices;
- (CGPoint)swollenOuterVertices;
- (CGRect)swollenZoneBounds;
- (CGRect)zoneBounds;
- (CGRect)zoneBoundsFromVertices:(CGPoint *)a3 ofCount:(unsigned int)a4;
- (CPZone)init;
- (double)area;
- (id)backgroundGraphics;
- (id)copyWithZone:(_NSZone *)a3;
- (id)graphicsInZone;
- (int64_t)borderZOrder;
- (int64_t)compareArea:(id)a3;
- (int64_t)neighborZOrder;
- (unsigned)vertexCount;
- (unsigned)wordCount;
- (void)addContentFrom:(id)a3;
- (void)addPDFChar:(void *)a3;
- (void)dealloc;
- (void)removeUnfilledNeighborShapes;
- (void)setCharactersInZone:(id)a3;
- (void)setGutters:(id)a3;
- (void)setLeftGuides:(id)a3;
- (void)setRightGuides:(id)a3;
- (void)setSpacers:(id)a3;
- (void)setZoneBorders:(id)a3;
- (void)setZoneProfile:(id)a3;
- (void)updatedCharSequenceFrom:(unsigned int)a3 length:(unsigned int)a4;
@end

@implementation CPZone

- (void)setSpacers:(id)a3
{
  spacers = self->spacers;
  if (spacers != a3)
  {

    self->spacers = a3;
  }
}

- (void)setGutters:(id)a3
{
  gutters = self->gutters;
  if (gutters != a3)
  {

    self->gutters = a3;
  }
}

- (void)setRightGuides:(id)a3
{
  rightGuides = self->rightGuides;
  if (rightGuides != a3)
  {

    self->rightGuides = a3;
  }
}

- (void)setLeftGuides:(id)a3
{
  leftGuides = self->leftGuides;
  if (leftGuides != a3)
  {

    self->leftGuides = a3;
  }
}

- (void)setZoneProfile:(id)a3
{
  zoneProfile = self->zoneProfile;
  if (zoneProfile != a3)
  {

    self->zoneProfile = a3;
  }
}

- (int64_t)compareArea:(id)a3
{
  [(CPZone *)self area];
  v6 = v5;
  [a3 area];
  v8 = v7;
  v9 = vcvts_n_f32_u32([a3 vertexCount] + -[CPZone vertexCount](self, "vertexCount"), 0x17uLL);
  if (v6 < v8 && v8 - v6 > v8 * v9)
  {
    return -1;
  }

  if (v6 > v8 && v6 - v8 > v6 * v9)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return -1;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

- (void)addContentFrom:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [a3 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([(CPZone *)self contains:v7])
          {
            [(CPChunk *)self add:v7];
            [a3 removeObjectAtIndex:v6];
          }
        }
      }

      --v6;
    }

    while (v6 != -1);
  }
}

- (void)updatedCharSequenceFrom:(unsigned int)a3 length:(unsigned int)a4
{
  if (!self->hasRotatedCharacters)
  {
    v4 = a4;
    v5 = *&a3;
    if (a4 + a3 > a3)
    {
      while ([(CPCharSequence *)self->charactersInZone charAtIndex:v5][168] == 0.0)
      {
        v5 = (v5 + 1);
        if (!--v4)
        {
          return;
        }
      }

      self->hasRotatedCharacters = 1;
    }
  }
}

- (void)setCharactersInZone:(id)a3
{
  charactersInZone = self->charactersInZone;
  if (charactersInZone != a3)
  {

    v6 = a3;
    self->charactersInZone = v6;
    v7 = [(CPCharSequence *)v6 length];

    [(CPZone *)self updatedCharSequenceFrom:0 length:v7];
  }
}

- (void)addPDFChar:(void *)a3
{
  charactersInZone = self->charactersInZone;
  if (!charactersInZone)
  {
    charactersInZone = [[CPCharSequence alloc] initWithSizeFor:10];
    self->charactersInZone = charactersInZone;
  }

  [(CPCharSequence *)charactersInZone addChar:a3];
  if (*(a3 + 21) != 0.0)
  {
    self->hasRotatedCharacters = 1;
  }
}

- (BOOL)canContain:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CPZone *)self swollenOuterVertices];
  v9 = [(CPZone *)self vertexCount];

  return CPUprightRectilinearShapeWithVerticesContainingRect(&v8->x, v9, x, y, width, height);
}

- (BOOL)contains:(id)a3
{
  v5 = [(CPZone *)self swollenOuterVertices];
  if (v5)
  {
    p_x = &v5->x;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 hasBorders])
    {
      v7 = [a3 vertexCount];
      v8 = [a3 zoneBorders];
      if (v7)
      {
        v9 = v8;
        v10 = 0;
        v11 = v7 - 1;
        do
        {
          [objc_msgSend(v9 objectAtIndex:{v10), "bounds"}];
          LODWORD(v5) = CPUprightRectilinearShapeWithVerticesContainingRect(p_x, [(CPZone *)self vertexCount], v12, v13, v14, v15);
          if (!v5)
          {
            break;
          }
        }

        while (v11 != v10++);
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      v17 = [(CPZone *)self vertexCount];
      [a3 renderedBounds];

      LOBYTE(v5) = CPUprightRectilinearShapeWithVerticesContainingRect(p_x, v17, v18, v19, v20, v21);
    }
  }

  return v5;
}

- (BOOL)rectangleBordersAtLeft:(id *)a3 top:(id *)a4 right:(id *)a5 bottom:(id *)a6
{
  v32 = [(CPZone *)self isRectangular];
  if (v32)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->zoneBorders objectAtIndex:v11];
      if ([v14 isHorizontal])
      {
        if (v13)
        {
          [v13 bounds];
          v16 = v15;
          v18 = v17;
          [v14 bounds];
          v20 = v19;
          v22 = v21;
          v23 = v13;
          v24 = a4;
          v25 = a6;
LABEL_8:
          v28 = v16 + v18 * 0.5;
          v29 = v20 + v22 * 0.5;
          if (v28 <= v29)
          {
            v30 = v14;
          }

          else
          {
            v30 = v23;
          }

          if (v28 > v29)
          {
            v23 = v14;
          }

          *v24 = v30;
          *v25 = v23;
          goto LABEL_16;
        }

        v13 = v14;
      }

      else
      {
        if (v12)
        {
          [v12 bounds];
          v16 = v26;
          v18 = v27;
          [v14 bounds];
          v23 = v12;
          v24 = a5;
          v25 = a3;
          goto LABEL_8;
        }

        v12 = v14;
      }

LABEL_16:
      ++v11;
    }

    while (v11 != 4);
  }

  return v32;
}

- (CGRect)swollenZoneBounds
{
  v3 = [(CPZone *)self vertexCount];
  if (v3)
  {
    [(CPZone *)self zoneBoundsFromVertices:[(CPZone *)self swollenOuterVertices] ofCount:v3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPZone;
    [(CPChunk *)&v9 renderedBounds];
    if (v4 != INFINITY && v5 != INFINITY)
    {
      *&v4 = CGRectInset(*&v4, -1.0, -1.0);
    }
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)zoneBounds
{
  v3 = [(CPZone *)self vertexCount];
  if (v3)
  {
    [(CPZone *)self zoneBoundsFromVertices:[(CPZone *)self outerVertices] ofCount:v3];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPZone;
    [(CPChunk *)&v8 renderedBounds];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)zoneBoundsFromVertices:(CGPoint *)a3 ofCount:(unsigned int)a4
{
  v4 = *a3;
  if (a4 < 2)
  {
    v7 = *a3;
  }

  else
  {
    v5 = a4 - 1;
    v6 = a3 + 1;
    v7 = *a3;
    do
    {
      v8 = *v6++;
      v7 = vbslq_s8(vcgtq_f64(v8, v7), v8, v7);
      v4 = vbslq_s8(vcgtq_f64(v4, v8), v8, v4);
      --v5;
    }

    while (v5);
  }

  v9 = v7.x - v4.x;
  y = v4.y;
  v11 = v7.y - v4.y;
  result.origin.x = v4.x;
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = y;
  return result;
}

- (double)area
{
  result = self->area;
  if (result < 0.0)
  {
    v4 = [(CPZone *)self outerVertices];
    if (v4)
    {
      v5 = v4;
      v6 = [(CPZone *)self vertexCount];
      if (v6)
      {
        v7 = 0.0;
        v8 = 1;
        do
        {
          if (v8 == v6)
          {
            v9 = 0;
          }

          else
          {
            v9 = v8;
          }

          v7 = v7 + v5[v8 - 1].x * v5[v9].y - v5[v8 - 1].y * v5[v9].x;
          ++v8;
        }

        while (v8 - v6 != 1);
        v10 = v7 * 0.5;
      }

      else
      {
        v10 = 0.0;
      }

      result = fabs(v10);
      self->area = result;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (CGPoint)swollenOuterVertices
{
  result = self->swollenOuterVertices;
  if (!result)
  {
    if (self->zoneBorders)
    {
      v4 = NSZoneMalloc(0, 16 * [(CPZone *)self vertexCount]);
      self->swollenOuterVertices = v4;
      [CPZoneBorder outerVertices:v4 fromBorders:self->zoneBorders swollenBy:1.0];
      return self->swollenOuterVertices;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGPoint)outerVertices
{
  result = self->outerVertices;
  if (!result)
  {
    if (self->zoneBorders)
    {
      v4 = NSZoneMalloc(0, 16 * [(CPZone *)self vertexCount]);
      self->outerVertices = v4;
      [CPZoneBorder outerVertices:v4 fromBorders:self->zoneBorders swollenBy:0.0];
      return self->outerVertices;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)neighborZOrder
{
  v3 = [(CPZone *)self vertexCount];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = [(NSMutableArray *)self->zoneBorders objectAtIndex:v4];
      v8 = [v7 neighborCount];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        do
        {
          v11 = [objc_msgSend(v7 neighborAtIndex:{v10), "neighborShape"}];
          if (v11)
          {
            v12 = [v11 zOrder];
            if (v12 > v5)
            {
              v5 = v12;
            }
          }

          v10 = (v10 + 1);
        }

        while (v9 != v10);
      }

      ++v4;
    }

    while (v4 != v6);
  }

  else
  {
    v5 = 0;
  }

  v13 = [(NSMutableArray *)self->super.super.super.children count];
  v14 = v13;
  if (v13)
  {
    v15 = 0;
    do
    {
      v16 = [(NSMutableArray *)self->super.super.super.children objectAtIndex:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = [v16 neighborZOrder];
          if (v17 > v5)
          {
            v5 = v17;
          }
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  return v5;
}

- (int64_t)borderZOrder
{
  v3 = [(CPZone *)self vertexCount];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = [-[NSMutableArray objectAtIndex:](self->zoneBorders objectAtIndex:{v4), "zOrder"}];
      if (v7 > v5)
      {
        v5 = v7;
      }

      ++v4;
    }

    while (v6 != v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = [(NSMutableArray *)self->super.super.super.children count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = [(NSMutableArray *)self->super.super.super.children objectAtIndex:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [v11 borderZOrder];
          if (v12 > v5)
          {
            v5 = v12;
          }
        }
      }

      ++v10;
    }

    while (v9 != v10);
  }

  return v5;
}

- (unsigned)vertexCount
{
  zoneBorders = self->zoneBorders;
  if (zoneBorders)
  {
    LODWORD(zoneBorders) = [(NSMutableArray *)zoneBorders count];
  }

  return zoneBorders;
}

- (void)removeUnfilledNeighborShapes
{
  v3 = [(CPZone *)self vertexCount];
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      v6 = [(NSMutableArray *)self->zoneBorders objectAtIndex:v4];
      v7 = [v6 neighborCount];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        do
        {
          v10 = [objc_msgSend(v6 neighborAtIndex:{v9), "neighborShape"}];
          if (([v10 hasFill] & 1) == 0)
          {
            [v10 remove];
          }

          v9 = (v9 + 1);
        }

        while (v8 != v9);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

- (id)backgroundGraphics
{
  if (!self->backgroundGraphics)
  {
    self->backgroundGraphics = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [(CPZone *)self vertexCount];
    if (v3)
    {
      v4 = v3;
      v32 = [(CPZone *)self bordersWindClockwise];
      v5 = [(NSMutableArray *)self->zoneBorders objectAtIndex:v4 - 1];
      v6 = 0;
      v7 = v4;
      do
      {
        v8 = v5;
        v5 = [(NSMutableArray *)self->zoneBorders objectAtIndex:v6];
        LODWORD(v8) = [v5 indexOfIntersectionWith:v8];
        v9 = [v5 isHorizontal];
        v10 = v8 == 0;
        v11 = v32 == v10;
        if (v32 != v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        if (v11)
        {
          v13 = 2;
        }

        else
        {
          v13 = 4;
        }

        if (v9)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        if (v6)
        {
          if ([(NSMutableArray *)self->backgroundGraphics count])
          {
            v15 = 0;
            v16 = 0;
            do
            {
              if (([v5 hasNeighborShape:-[NSMutableArray objectAtIndex:](self->backgroundGraphics atSide:{"objectAtIndex:", v15), v14}] & 1) == 0)
              {
                [(NSMutableArray *)self->backgroundGraphics removeObjectAtIndex:v15];
                --v16;
              }

              v15 = ++v16;
            }

            while ([(NSMutableArray *)self->backgroundGraphics count]> v16);
          }
        }

        else
        {
          v17 = [v5 neighborCount];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            do
            {
              v20 = [v5 neighborAtIndex:v19];
              v21 = [v20 neighborShape];
              v22 = [v21 fillColor];
              if (v22)
              {
                v30 = (v22 & 0x8000000000000000) != 0 ? CGTaggedColorGetAlpha(v22, v23, v24, v25, v26, v27, v28, v29) : *(v22 + 8 * *(v22 + 56) + 64);
                if (v30 > 0.0 && [v20 shapeSide] == v14)
                {
                  [(NSMutableArray *)self->backgroundGraphics addObject:v21];
                }
              }

              v19 = (v19 + 1);
            }

            while (v18 != v19);
          }
        }

        ++v6;
      }

      while (v6 != v7);
      [(NSMutableArray *)self->backgroundGraphics sortUsingSelector:sel_compareZ_];
    }
  }

  return self->backgroundGraphics;
}

- (CGColor)newBackgroundColor
{
  [(CPZone *)self backgroundGraphics];
  v3 = [(NSMutableArray *)self->backgroundGraphics count];
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

  if (v3 == 1 && ([(NSMutableArray *)self->backgroundGraphics objectAtIndex:0], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [-[NSMutableArray objectAtIndex:](self->backgroundGraphics objectAtIndex:{0), "fillColor"}];
    CopyWithAlpha = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  else
  {
    v7 = malloc_type_malloc(8 * v4, 0x80040B8603338uLL);
    [(NSMutableArray *)self->backgroundGraphics getObjects:v7];
    [(CPZone *)self zoneBounds];
    v9 = v8;
    v11 = v10;
    SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
    free(v7);
    if ([(CPZone *)self isRectangular])
    {
      return SRGB;
    }

    [(CPZone *)self area];
    if (v20 <= 0.0)
    {
      return SRGB;
    }

    else
    {
      v21 = v20;
      if (SRGB)
      {
        if ((SRGB & 0x8000000000000000) != 0)
        {
          Alpha = CGTaggedColorGetAlpha(SRGB, v13, v14, v15, v16, v17, v18, v19);
        }

        else
        {
          Alpha = *(SRGB + 8 * *(SRGB + 56) + 64);
        }
      }

      else
      {
        Alpha = 0.0;
      }

      v24 = v11 * (v9 * Alpha) / v21;
      if (v24 > 1.0)
      {
        v24 = 1.0;
      }

      CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGB, v24);
      if (SRGB)
      {
        CFRelease(SRGB);
      }
    }
  }

  return CopyWithAlpha;
}

- (BOOL)hasNeighborShape:(id)a3
{
  v5 = [(CPZone *)self vertexCount];
  if (v5)
  {
    v6 = v5;
    if ([-[NSMutableArray objectAtIndex:](self->zoneBorders objectAtIndex:{0), "hasNeighborShape:", a3}])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = v6;
      v8 = 1;
      while (v7 != v8)
      {
        if ([-[NSMutableArray objectAtIndex:](self->zoneBorders objectAtIndex:{v8++), "hasNeighborShape:", a3}])
        {
          v10 = v8 - 1;
          goto LABEL_9;
        }
      }

      v10 = v7;
LABEL_9:
      LOBYTE(v5) = v10 < v7;
    }
  }

  return v5;
}

- (void)setZoneBorders:(id)a3
{
  zoneBorders = self->zoneBorders;
  if (zoneBorders != a3)
  {

    v6 = a3;
    self->zoneBorders = v6;
    v7 = [(NSMutableArray *)v6 count];
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v7 & 0x7FFFFFFF;
      do
      {
        v10 = [(NSMutableArray *)self->zoneBorders objectAtIndex:v8];
        v11 = [v10 graphicObjectCount];
        if (v11 >= 1)
        {
          v12 = v11;
          v13 = 0;
          do
          {
            [objc_msgSend(v10 graphicObjectAtIndex:{v13), "setIsInZoneBorder:", 1}];
            v13 = (v13 + 1);
          }

          while (v12 != v13);
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }
}

- (BOOL)mapToWordPairsWithIndex:(void *)a3 passing:(void *)a4
{
  v6 = self;
  v7 = [(NSMutableArray *)self->textLinesInZone count];
  v21 = v7;
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v20 = v6;
  while (1)
  {
    v13 = [(NSMutableArray *)v6->textLinesInZone objectAtIndex:v8];
    v14 = [v13 wordCount];
    if (v14)
    {
      break;
    }

LABEL_11:
    v9 = ++v8 >= v21;
    if (v8 == v21)
    {
      return v9;
    }
  }

  v15 = v14;
  v16 = [v13 charSequence];
  v17 = [v13 wordArray];
  if (v12)
  {
    if (!(a3)(v10, v12, v17, v11, v16, a4))
    {
      return v9;
    }

    v10 = (v10 + 1);
  }

  v12 = v17 + 48 * (v15 - 1);
  if (v15 == 1)
  {
LABEL_10:
    v11 = v16;
    v6 = v20;
    goto LABEL_11;
  }

  while ((a3)(v10, v17, v17 + 48, v16, v16, a4))
  {
    v10 = (v10 + 1);
    v18 = v17 + 96;
    v17 += 48;
    if (v18 > v12)
    {
      goto LABEL_10;
    }
  }

  return v9;
}

- (BOOL)mapToWordPairs:(void *)a3 passing:(void *)a4
{
  v6 = self;
  v7 = 224;
  v8 = [(NSMutableArray *)self->textLinesInZone count];
  v22 = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v21 = 224;
  while (1)
  {
    v13 = [*(&v6->super.super.super.super.isa + v7) objectAtIndex:{v9, v21}];
    v14 = [v13 wordCount];
    if (v14)
    {
      break;
    }

LABEL_10:
    v10 = ++v9 >= v22;
    if (v9 == v22)
    {
      return v10;
    }
  }

  v15 = v14;
  v16 = v6;
  v17 = [v13 charSequence];
  v18 = [v13 wordArray];
  if (v11 && !(a3)(v11, v18, v12, v17, a4))
  {
    return v10;
  }

  v11 = v18 + 48 * (v15 - 1);
  if (v15 == 1)
  {
LABEL_9:
    v12 = v17;
    v6 = v16;
    v7 = v21;
    goto LABEL_10;
  }

  while (((a3)(v18, v18 + 48, v17, v17, a4) & 1) != 0)
  {
    v19 = v18 + 96;
    v18 += 48;
    if (v19 > v11)
    {
      goto LABEL_9;
    }
  }

  return v10;
}

- (BOOL)mapToWordsWithIndex:(void *)a3 passing:(void *)a4
{
  v6 = [(NSMutableArray *)self->textLinesInZone count];
  v17 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [(NSMutableArray *)self->textLinesInZone objectAtIndex:v7, v17];
      v11 = [v10 charSequence];
      v12 = [v10 wordCount];
      v13 = (v12 + v9);
      v14 = [v10 wordArray];
      if (v9 < v13)
      {
        break;
      }

LABEL_8:
      v8 = ++v7 >= v17;
      if (v7 == v17)
      {
        return 1;
      }
    }

    v15 = v14;
    while ((a3)(v9, v15, v11, a4))
    {
      v15 += 48;
      v9 = (v9 + 1);
      if (!--v12)
      {
        v9 = v13;
        goto LABEL_8;
      }
    }
  }

  else
  {
    return 1;
  }

  return v8;
}

- (BOOL)mapToWords:(void *)a3 passing:(void *)a4
{
  v7 = [(NSMutableArray *)self->textLinesInZone count];
  v8 = v7;
  if (v7)
  {
    v9 = [-[NSMutableArray objectAtIndex:](self->textLinesInZone objectAtIndex:{0), "mapToWords:passing:", a3, a4}];
    if (v9)
    {
      v10 = 1;
      while (v8 != v10)
      {
        v11 = [-[NSMutableArray objectAtIndex:](self->textLinesInZone objectAtIndex:{v10++), "mapToWords:passing:", a3, a4}];
        if ((v11 & 1) == 0)
        {
          v12 = v10 - 1;
          goto LABEL_9;
        }
      }

      v12 = v8;
LABEL_9:
      LOBYTE(v9) = v12 >= v8;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (unsigned)wordCount
{
  v3 = [(NSMutableArray *)self->textLinesInZone count];
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [-[NSMutableArray objectAtIndex:](self->textLinesInZone objectAtIndex:{v5++), "wordCount"}];
  }

  while (v4 != v5);
  return v6;
}

- (id)graphicsInZone
{
  result = self->graphicsInZone;
  if (!result)
  {
    result = [(CPObject *)self shallowDescendantsOfClass:objc_opt_class()];
    self->graphicsInZone = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = CPZone;
  v5 = [(CPRegion *)&v15 copyWithZone:?];
  if (v5)
  {
    v5[16] = [(NSMutableArray *)self->zoneBorders copyWithZone:a3];
    v5[21] = self->zoneProfile;
    if (self->outerVertices)
    {
      v6 = [(CPZone *)self vertexCount];
      v5[17] = NSZoneMalloc(0, 16 * v6);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          *(v5[17] + i * 16) = self->outerVertices[i];
        }
      }
    }

    if (self->swollenOuterVertices)
    {
      v8 = [(CPZone *)self vertexCount];
      v5[18] = NSZoneMalloc(0, 16 * v8);
      if (v8)
      {
        for (j = 0; j != v8; ++j)
        {
          *(v5[18] + j * 16) = self->swollenOuterVertices[j];
        }
      }
    }

    leftGuides = self->leftGuides;
    if (leftGuides)
    {
      v5[22] = leftGuides;
    }

    rightGuides = self->rightGuides;
    if (rightGuides)
    {
      v5[23] = rightGuides;
    }

    gutters = self->gutters;
    if (gutters)
    {
      v5[24] = gutters;
    }

    spacers = self->spacers;
    if (spacers)
    {
      v5[25] = spacers;
    }

    v5[26] = [(CPCharSequence *)self->charactersInZone copyWithZone:a3];
    *(v5 + 216) = self->hasRotatedCharacters;
    v5[28] = [(NSMutableArray *)self->textLinesInZone mutableCopy];
    v5[29] = [(NSArray *)self->graphicsInZone copy];
  }

  return v5;
}

- (void)dealloc
{
  swollenOuterVertices = self->swollenOuterVertices;
  if (swollenOuterVertices)
  {
    v4 = MEMORY[0x1865EE040](swollenOuterVertices, a2);
    NSZoneFree(v4, self->swollenOuterVertices);
  }

  outerVertices = self->outerVertices;
  if (outerVertices)
  {
    v6 = MEMORY[0x1865EE040](outerVertices, a2);
    NSZoneFree(v6, self->outerVertices);
  }

  v7.receiver = self;
  v7.super_class = CPZone;
  [(CPRegion *)&v7 dealloc];
}

- (CPZone)init
{
  v5.receiver = self;
  v5.super_class = CPZone;
  v2 = [(CPChunk *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->outerVertices = 0;
    v2->swollenOuterVertices = 0;
    v2->area = -1.0;
    v2->isStraddleZone = 0;
    v2->zoneProfile = 0;
    v2->leftGuides = 0;
    v2->rightGuides = 0;
    v2->gutters = 0;
    v2->spacers = 0;
    v2->textLinesInZone = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->charactersInZone = 0;
    v3->hasRotatedCharacters = 0;
  }

  return v3;
}

@end