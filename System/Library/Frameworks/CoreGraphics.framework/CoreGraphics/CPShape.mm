@interface CPShape
- (BOOL)canCombineWith:(id)with;
- (BOOL)hasSamePathAs:(id)as;
- (BOOL)isStrokeFor:(id)for;
- (BOOL)isVisible;
- (CGAffineTransform)paintTransform;
- (CGRect)bounds;
- (CGRect)innerBounds;
- (CGRect)renderedBounds;
- (CPShape)init;
- (CPShape)initWithPDFShape:(CPPDFShape *)shape;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)pathElementCount;
- (void)addShape:(id)shape;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)makeLineFromVertex:(CGPoint)vertex toVertex:(CGPoint)toVertex;
- (void)recomputeBounds;
- (void)recomputeRenderedBounds;
- (void)setFillColor:(CGColor *)color;
- (void)setLineWidth:(double)width;
- (void)setPaintTransform:(CGAffineTransform *)transform;
- (void)setPath:(CGPath *)path;
- (void)setStrokeColor:(CGColor *)color;
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

- (void)makeLineFromVertex:(CGPoint)vertex toVertex:(CGPoint)toVertex
{
  y = toVertex.y;
  x = toVertex.x;
  v6 = vertex.y;
  v7 = vertex.x;
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

- (void)addShape:(id)shape
{
  shapeCopy = shape;
  [shape remove];
  [(CPChunk *)self addChildrenOf:shape];
  zOrder = [shape zOrder];
  if (zOrder > [(CPShape *)self zOrder])
  {
    -[CPChunk setInsertionOrder:](self, "setInsertionOrder:", [shape zOrder]);
  }

  if ([shape hasFill])
  {
    -[CPShape setWindingRule:](self, "setWindingRule:", [shape windingRule]);
    -[CPShape setFillColor:](self, "setFillColor:", [shape fillColor]);
    -[CPShape setFillObject:](self, "setFillObject:", [shape fillObject]);
  }

  if ([shape hasStroke])
  {
    [shape lineWidth];
    [(CPShape *)self setLineWidth:?];
    [shape miterLimit];
    [(CPShape *)self setMiterLimit:?];
    -[CPShape setLineCap:](self, "setLineCap:", [shape lineCap]);
    -[CPShape setLineJoin:](self, "setLineJoin:", [shape lineJoin]);
    -[CPShape setStrokeColor:](self, "setStrokeColor:", [shape strokeColor]);
    -[CPShape setStrokeObject:](self, "setStrokeObject:", [shape strokeObject]);
  }

  if ([shape fillObject] || objc_msgSend(shape, "strokeObject"))
  {
    if (shape)
    {
      [shape paintTransform];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    [(CPShape *)self setPaintTransform:v7];
  }
}

- (BOOL)canCombineWith:(id)with
{
  clipIndex = self->super.clipIndex;
  if (clipIndex != [with clipIndex])
  {
    goto LABEL_15;
  }

  if (![(CPShape *)self isStrokeFor:with])
  {
    v6 = [with isStrokeFor:self];
    if (!v6)
    {
      return v6;
    }

    if (!self->fillObject || ![with strokeObject])
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (self->strokeObject && [with fillObject])
  {
LABEL_9:
    p_paintTransform = &self->paintTransform;
    if (with)
    {
      [with paintTransform];
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

- (BOOL)isStrokeFor:(id)for
{
  if (-[CPShape hasFill](self, "hasFill") || ([for hasStroke] & 1) != 0)
  {
    return 0;
  }

  return [(CPShape *)self hasSamePathAs:for];
}

- (BOOL)hasSamePathAs:(id)as
{
  if (CGPathEqualToPath(self->path, *(as + 23)))
  {
    LOBYTE(isUprightRectangle) = 1;
  }

  else
  {
    isUprightRectangle = [(CPShape *)self isUprightRectangle];
    if (isUprightRectangle)
    {
      isUprightRectangle = [as isUprightRectangle];
      if (isUprightRectangle)
      {
        [(CPShape *)self bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [as bounds];
        LOBYTE(isUprightRectangle) = 0;
        if (vabdd_f64(v7, v17) <= 0.001 && vabdd_f64(v9, v14) <= 0.001)
        {
          v18 = vabdd_f64(v11, v15) <= 0.001;
          LOBYTE(isUprightRectangle) = vabdd_f64(v13, v16) <= 0.001 && v18;
        }
      }
    }
  }

  return isUprightRectangle;
}

- (void)setPaintTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->paintTransform.a = *&transform->a;
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

- (void)setLineWidth:(double)width
{
  if (self->lineWidth != width)
  {
    self->lineWidth = width;
    self->super.renderedBounds = CGRectNull;
    self->renderedBoundsComputed = 0;
  }
}

- (void)setStrokeColor:(CGColor *)color
{
  strokeColor = self->strokeColor;
  if (strokeColor != color)
  {
    if (strokeColor)
    {
      CFRelease(strokeColor);
    }

    self->strokeColor = color;
    if (color)
    {

      CFRetain(color);
    }
  }
}

- (void)setFillColor:(CGColor *)color
{
  fillColor = self->fillColor;
  if (fillColor != color)
  {
    if (fillColor)
    {
      CFRelease(fillColor);
    }

    self->fillColor = color;
    if (color)
    {

      CFRetain(color);
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

- (void)setPath:(CGPath *)path
{
  path = self->path;
  if (path != path)
  {
    if (path)
    {
      CFRelease(path);
    }

    if (path)
    {
      CFRetain(path);
    }

    self->path = path;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CPShape;
  v4 = [(CPChunk *)&v9 copyWithZone:zone];
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

- (CPShape)initWithPDFShape:(CPPDFShape *)shape
{
  v4 = [(CPShape *)self init];
  v5 = v4;
  if (v4)
  {
    v4->mcid = shape->var8;
    v4->pdfObjectID = shape->var1;
    var4 = shape->var4;
    if (var4)
    {
      CFRetain(shape->var4);
    }

    v5->path = var4;
    [(CPChunk *)v5 setBounds:shape->var0.var0.origin.x, shape->var0.var0.origin.y, shape->var0.var0.size.width, shape->var0.var0.size.height];
    v5->isUprightRectangle = CGPathIsCongruentToARect(v5->path);
    [(CPChunk *)v5 setInsertionOrder:shape->var0.var3];
    var2 = shape->var2;
    v8 = *&shape->var7.a;
    v9 = *&shape->var7.tx;
    *&v5->paintTransform.c = *&shape->var7.c;
    *&v5->paintTransform.tx = v9;
    *&v5->paintTransform.a = v8;
    if ((shape->var3 & 2) != 0)
    {
      [(CPShape *)v5 setStrokeColor:var2->var2];
      [(CPShape *)v5 setStrokeObject:var2->var13];
      [(CPShape *)v5 setLineWidth:sqrt(fabs(shape->var6.a * shape->var6.d - shape->var6.b * shape->var6.c)) * var2->var5];
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

    if (shape->var3)
    {
      [(CPShape *)v5 setFillColor:var2->var0];
      [(CPShape *)v5 setFillObject:var2->var12];
      [(CPShape *)v5 setWindingRule:!shape->var5];
    }
  }

  return v5;
}

@end