@interface CPShape
- (BOOL)canCombineWith:(id)a3;
- (BOOL)hasSamePathAs:(id)a3;
- (BOOL)isStrokeFor:(id)a3;
- (BOOL)isVisible;
- (CGAffineTransform)paintTransform;
- (CGRect)bounds;
- (CGRect)innerBounds;
- (CGRect)renderedBounds;
- (CPShape)init;
- (CPShape)initWithPDFShape:(CPPDFShape *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)pathElementCount;
- (void)addShape:(id)a3;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)makeLineFromVertex:(CGPoint)a3 toVertex:(CGPoint)a4;
- (void)recomputeBounds;
- (void)recomputeRenderedBounds;
- (void)setFillColor:(CGColor *)a3;
- (void)setLineWidth:(double)a3;
- (void)setPaintTransform:(CGAffineTransform *)a3;
- (void)setPath:(CGPath *)a3;
- (void)setStrokeColor:(CGColor *)a3;
@end

@implementation CPShape

- (unsigned)pathElementCount
{
  path = self->path;
  if (path)
  {
    info = 0;
    CGPathApply(path, &info, countElements);
    LODWORD(path) = info;
  }

  return path;
}

- (void)makeLineFromVertex:(CGPoint)a3 toVertex:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v7, v6);
  CGPathAddLineToPoint(Mutable, 0, x, y);
  [(CPShape *)self setPath:Mutable];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  self->super.clipIndex = 0;
}

- (void)addShape:(id)a3
{
  v5 = a3;
  [a3 remove];
  [(CPChunk *)self addChildrenOf:a3];
  v6 = [a3 zOrder];
  if (v6 > [(CPShape *)self zOrder])
  {
    -[CPChunk setInsertionOrder:](self, "setInsertionOrder:", [a3 zOrder]);
  }

  if ([a3 hasFill])
  {
    -[CPShape setWindingRule:](self, "setWindingRule:", [a3 windingRule]);
    -[CPShape setFillColor:](self, "setFillColor:", [a3 fillColor]);
    -[CPShape setFillObject:](self, "setFillObject:", [a3 fillObject]);
  }

  if ([a3 hasStroke])
  {
    [a3 lineWidth];
    [(CPShape *)self setLineWidth:?];
    [a3 miterLimit];
    [(CPShape *)self setMiterLimit:?];
    -[CPShape setLineCap:](self, "setLineCap:", [a3 lineCap]);
    -[CPShape setLineJoin:](self, "setLineJoin:", [a3 lineJoin]);
    -[CPShape setStrokeColor:](self, "setStrokeColor:", [a3 strokeColor]);
    -[CPShape setStrokeObject:](self, "setStrokeObject:", [a3 strokeObject]);
  }

  if ([a3 fillObject] || objc_msgSend(a3, "strokeObject"))
  {
    if (a3)
    {
      [a3 paintTransform];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    [(CPShape *)self setPaintTransform:v7];
  }
}

- (BOOL)canCombineWith:(id)a3
{
  clipIndex = self->super.clipIndex;
  if (clipIndex != [a3 clipIndex])
  {
    goto LABEL_15;
  }

  if (![(CPShape *)self isStrokeFor:a3])
  {
    v6 = [a3 isStrokeFor:self];
    if (!v6)
    {
      return v6;
    }

    if (!self->fillObject || ![a3 strokeObject])
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (self->strokeObject && [a3 fillObject])
  {
LABEL_9:
    p_paintTransform = &self->paintTransform;
    if (a3)
    {
      [a3 paintTransform];
      v8 = v10[0].f64[0];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      v8 = 0.0;
    }

    if (p_paintTransform->a == v8 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&p_paintTransform->b, *(v10 + 8)), vceqq_f64(*&p_paintTransform->d, *(&v10[1] + 8))))) & 1) != 0)
    {
      LOBYTE(v6) = p_paintTransform->ty == v10[2].f64[1];
      return v6;
    }

LABEL_15:
    LOBYTE(v6) = 0;
    return v6;
  }

LABEL_11:
  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)isVisible
{
  fillColor = self->fillColor;
  result = fillColor && ((fillColor & 0x8000000000000000) == 0 ? (Alpha = *(fillColor + 8 * *(fillColor + 56) + 64)) : (Alpha = CGTaggedColorGetAlpha(fillColor, a2, v2, v3, v4, v5, v6, v7)), Alpha > 0.0) || (strokeColor = self->strokeColor) != 0 && ((strokeColor & 0x8000000000000000) == 0 ? (v12 = *(strokeColor + 8 * *(strokeColor + 56) + 64)) : (v12 = CGTaggedColorGetAlpha(strokeColor, a2, v2, v3, v4, v5, v6, v7)), v12 > 0.0) || self->fillObject || self->strokeObject != 0;
  return result;
}

- (BOOL)isStrokeFor:(id)a3
{
  if (-[CPShape hasFill](self, "hasFill") || ([a3 hasStroke] & 1) != 0)
  {
    return 0;
  }

  return [(CPShape *)self hasSamePathAs:a3];
}

- (BOOL)hasSamePathAs:(id)a3
{
  if (CGPathEqualToPath(self->path, *(a3 + 23)))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(CPShape *)self isUprightRectangle];
    if (v5)
    {
      v5 = [a3 isUprightRectangle];
      if (v5)
      {
        [(CPShape *)self bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [a3 bounds];
        LOBYTE(v5) = 0;
        if (vabdd_f64(v7, v17) <= 0.001 && vabdd_f64(v9, v14) <= 0.001)
        {
          v18 = vabdd_f64(v11, v15) <= 0.001;
          LOBYTE(v5) = vabdd_f64(v13, v16) <= 0.001 && v18;
        }
      }
    }
  }

  return v5;
}

- (void)setPaintTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->paintTransform.a = *&a3->a;
  *&self->paintTransform.c = v4;
  *&self->paintTransform.tx = v3;
}

- (CGAffineTransform)paintTransform
{
  v3 = *&self[5].tx;
  *&retstr->a = *&self[5].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].a;
  return self;
}

- (void)setLineWidth:(double)a3
{
  if (self->lineWidth != a3)
  {
    self->lineWidth = a3;
    self->super.renderedBounds = CGRectNull;
    self->renderedBoundsComputed = 0;
  }
}

- (void)setStrokeColor:(CGColor *)a3
{
  strokeColor = self->strokeColor;
  if (strokeColor != a3)
  {
    if (strokeColor)
    {
      CFRelease(strokeColor);
    }

    self->strokeColor = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)setFillColor:(CGColor *)a3
{
  fillColor = self->fillColor;
  if (fillColor != a3)
  {
    if (fillColor)
    {
      CFRelease(fillColor);
    }

    self->fillColor = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (CGRect)innerBounds
{
  [(CPShape *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(CPShape *)self hasStroke])
  {
    if (x != INFINITY && y != INFINITY)
    {
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      v17 = CGRectInset(v16, self->lineWidth * 0.5, self->lineWidth * 0.5);
      x = v17.origin.x;
      y = v17.origin.y;
      width = v17.size.width;
      height = v17.size.height;
    }
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)recomputeRenderedBounds
{
  v29[2] = *MEMORY[0x1E69E9840];
  p_renderedBounds = &self->super.renderedBounds;
  [(CPShape *)self bounds];
  p_renderedBounds->origin.x = v4;
  p_renderedBounds->origin.y = v5;
  p_renderedBounds->size.width = v6;
  p_renderedBounds->size.height = v7;
  self->renderedBoundsComputed = 1;
  y = p_renderedBounds->origin.y;
  if (p_renderedBounds->origin.x != INFINITY && y != INFINITY)
  {
    if ([(CPShape *)self hasStroke:INFINITY])
    {
      *p_renderedBounds = CGRectInset(*p_renderedBounds, self->lineWidth * -0.5, self->lineWidth * -0.5);
    }

    if (self->super.clipIndex)
    {
      v10 = CPPDFGetClipPathIntersection([-[CPObject page](self "page")], self->super.clipIndex, &v28);
      if (v10)
      {
        v11 = v10;
        width = p_renderedBounds->size.width;
        height = p_renderedBounds->size.height;
        if (width >= 1.0)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = -1.0;
        }

        if (height >= 1.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = -1.0;
        }

        x = p_renderedBounds->origin.x;
        v17 = p_renderedBounds->origin.y;
        v30 = CGRectInset(*(&width - 2), v14, v15);
        v18 = v30.origin.x;
        v19 = v30.origin.y;
        v20 = v30.size.width;
        v21 = v30.size.height;
        Mutable = CGPathCreateMutable();
        v31.origin.x = v18;
        v31.origin.y = v19;
        v31.size.width = v20;
        v31.size.height = v21;
        CGPathAddRect(Mutable, 0, v31);
        v29[0] = v11;
        v29[1] = Mutable;
        v23 = CGPathCreateMutable();
        CGPathAddIntersection(v23, v29, 2u);
        PathBoundingBox = CGPathGetPathBoundingBox(v23);
        v24 = PathBoundingBox.origin.x;
        v25 = PathBoundingBox.origin.y;
        v26 = PathBoundingBox.size.width;
        v27 = PathBoundingBox.size.height;
        if (v23)
        {
          CFRelease(v23);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v14 != 0.0 || v15 != 0.0)
        {
          v33.origin.x = v24;
          v33.origin.y = v25;
          v33.size.width = v26;
          v33.size.height = v27;
          v34 = CGRectIntersection(v33, *p_renderedBounds);
          v24 = v34.origin.x;
          v25 = v34.origin.y;
          v26 = v34.size.width;
          v27 = v34.size.height;
        }

        p_renderedBounds->origin.x = v24;
        p_renderedBounds->origin.y = v25;
        p_renderedBounds->size.width = v26;
        p_renderedBounds->size.height = v27;
      }
    }

    [-[CPObject page](self "page")];
    *p_renderedBounds = CGRectIntersection(v35, *p_renderedBounds);
  }
}

- (CGRect)renderedBounds
{
  if (!self->renderedBoundsComputed)
  {
    y = self->super.renderedBounds.origin.y;
    v4 = self->super.renderedBounds.origin.x == INFINITY || y == INFINITY;
    if (v4 || ((y = self->super.super.bounds.origin.y, self->super.super.bounds.origin.x != INFINITY) ? (v5 = y == INFINITY) : (v5 = 1), v5))
    {
      if (self->path)
      {
        [(CPShape *)self recomputeRenderedBounds:INFINITY];
      }
    }
  }

  x = self->super.renderedBounds.origin.x;
  v7 = self->super.renderedBounds.origin.y;
  width = self->super.renderedBounds.size.width;
  height = self->super.renderedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = x;
  return result;
}

- (void)setPath:(CGPath *)a3
{
  path = self->path;
  if (path != a3)
  {
    if (path)
    {
      CFRelease(path);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->path = a3;
    self->super.super.bounds = CGRectNull;
    self->super.renderedBounds = CGRectNull;
    self->boundsComputed = 0;
    self->renderedBoundsComputed = 0;
    self->isUprightRectangle = 0;
  }
}

- (void)recomputeBounds
{
  PathBoundingBox = CGPathGetPathBoundingBox(self->path);
  [(CPChunk *)self setBounds:PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height];
  self->isUprightRectangle = CGPathIsCongruentToARect(self->path);
  self->boundsComputed = 1;
}

- (CGRect)bounds
{
  if (!self->boundsComputed)
  {
    y = self->super.super.bounds.origin.y;
    v4 = self->super.super.bounds.origin.x == INFINITY || y == INFINITY;
    if (v4 && self->path)
    {
      [(CPShape *)self recomputeBounds:INFINITY];
    }
  }

  x = self->super.super.bounds.origin.x;
  v6 = self->super.super.bounds.origin.y;
  width = self->super.super.bounds.size.width;
  height = self->super.super.bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v6;
  result.origin.x = x;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CPShape;
  v4 = [(CPChunk *)&v9 copyWithZone:a3];
  if (v4)
  {
    path = self->path;
    if (path)
    {
      CFRetain(self->path);
    }

    v4[23] = path;
    fillColor = self->fillColor;
    v4[28] = fillColor;
    if (fillColor)
    {
      CFRetain(fillColor);
    }

    strokeColor = self->strokeColor;
    v4[29] = strokeColor;
    if (strokeColor)
    {
      CFRetain(strokeColor);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(CPShape *)self dispose];
  v3.receiver = self;
  v3.super_class = CPShape;
  [(CPGraphicObject *)&v3 dealloc];
}

- (void)finalize
{
  [(CPShape *)self dispose];
  v3.receiver = self;
  v3.super_class = CPShape;
  [(CPShape *)&v3 finalize];
}

- (void)dispose
{
  if (self->path)
  {
    fillColor = self->fillColor;
    if (fillColor)
    {
      CFRelease(fillColor);
    }

    strokeColor = self->strokeColor;
    if (strokeColor)
    {
      CFRelease(strokeColor);
    }

    path = self->path;
    if (path)
    {
      CFRelease(path);
    }

    self->path = 0;
  }
}

- (CPShape)init
{
  v5.receiver = self;
  v5.super_class = CPShape;
  v2 = [(CPGraphicObject *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CPChunk *)v2 setShrinksWithChildren:0];
    v3->miterLimit = 10.0;
    v3->lineCap = 0;
    v3->lineJoin = 0;
    v3->paintTransform = CGAffineTransformIdentity;
  }

  return v3;
}

- (CPShape)initWithPDFShape:(CPPDFShape *)a3
{
  v4 = [(CPShape *)self init];
  v5 = v4;
  if (v4)
  {
    v4->mcid = a3->var8;
    v4->pdfObjectID = a3->var1;
    var4 = a3->var4;
    if (var4)
    {
      CFRetain(a3->var4);
    }

    v5->path = var4;
    [(CPChunk *)v5 setBounds:a3->var0.var0.origin.x, a3->var0.var0.origin.y, a3->var0.var0.size.width, a3->var0.var0.size.height];
    v5->isUprightRectangle = CGPathIsCongruentToARect(v5->path);
    [(CPChunk *)v5 setInsertionOrder:a3->var0.var3];
    var2 = a3->var2;
    v8 = *&a3->var7.a;
    v9 = *&a3->var7.tx;
    *&v5->paintTransform.c = *&a3->var7.c;
    *&v5->paintTransform.tx = v9;
    *&v5->paintTransform.a = v8;
    if ((a3->var3 & 2) != 0)
    {
      [(CPShape *)v5 setStrokeColor:var2->var2];
      [(CPShape *)v5 setStrokeObject:var2->var13];
      [(CPShape *)v5 setLineWidth:sqrt(fabs(a3->var6.a * a3->var6.d - a3->var6.b * a3->var6.c)) * var2->var5];
      [(CPShape *)v5 setMiterLimit:var2->var4];
      if (var2->var6 <= 2u)
      {
        [(CPShape *)v5 setLineCap:?];
      }

      if (var2->var7 <= 2u)
      {
        [(CPShape *)v5 setLineJoin:?];
      }
    }

    if (a3->var3)
    {
      [(CPShape *)v5 setFillColor:var2->var0];
      [(CPShape *)v5 setFillObject:var2->var12];
      [(CPShape *)v5 setWindingRule:!a3->var5];
    }
  }

  return v5;
}

@end