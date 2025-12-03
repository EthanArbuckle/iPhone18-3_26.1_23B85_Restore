@interface SKShapeNode
+ (SKShapeNode)shapeNodeWithCircleOfRadius:(CGFloat)radius;
+ (SKShapeNode)shapeNodeWithEllipseInRect:(CGRect)rect;
+ (SKShapeNode)shapeNodeWithEllipseOfSize:(CGSize)size;
+ (SKShapeNode)shapeNodeWithPath:(CGPathRef)path;
+ (SKShapeNode)shapeNodeWithPath:(CGPathRef)path centered:(BOOL)centered;
+ (SKShapeNode)shapeNodeWithPoints:(CGPoint *)points count:(size_t)numPoints;
+ (SKShapeNode)shapeNodeWithRect:(CGRect)rect;
+ (SKShapeNode)shapeNodeWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius;
+ (SKShapeNode)shapeNodeWithRectOfSize:(CGSize)size;
+ (SKShapeNode)shapeNodeWithRectOfSize:(CGSize)size cornerRadius:(CGFloat)cornerRadius;
+ (SKShapeNode)shapeNodeWithSplinePoints:(CGPoint *)points count:(size_t)numPoints;
+ (SKShapeNode)shapeNodeWithTriangleA:(CGPoint)a B:(CGPoint)b C:(CGPoint)c;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)Mutable;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isEqualToNode:(id)node;
- (SKAttributeValue)valueForAttributeNamed:(NSString *)key;
- (SKShapeNode)init;
- (SKShapeNode)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_didMakeBackingNode;
- (void)_initialize;
- (void)encodeWithCoder:(id)coder;
- (void)setAntialiased:(BOOL)antialiased;
- (void)setFillColor:(UIColor *)fillColor;
- (void)setFillShader:(SKShader *)fillShader;
- (void)setFillTexture:(SKTexture *)fillTexture;
- (void)setGlowWidth:(CGFloat)glowWidth;
- (void)setLineCap:(CGLineCap)lineCap;
- (void)setLineJoin:(CGLineJoin)lineJoin;
- (void)setLineWidth:(CGFloat)lineWidth;
- (void)setMiterLimit:(CGFloat)miterLimit;
- (void)setPath:(CGPathRef)path;
- (void)setStrokeColor:(UIColor *)strokeColor;
- (void)setStrokeShader:(SKShader *)strokeShader;
- (void)setStrokeTexture:(SKTexture *)strokeTexture;
- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key;
@end

@implementation SKShapeNode

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKShapeNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcShapeNode = [(SKNode *)self _backingNode];
}

+ (SKShapeNode)shapeNodeWithPath:(CGPathRef)path
{
  node = [objc_opt_class() node];
  [node setPath:path];

  return node;
}

+ (SKShapeNode)shapeNodeWithPath:(CGPathRef)path centered:(BOOL)centered
{
  v4 = centered;
  node = [objc_opt_class() node];
  v7 = node;
  if (v4)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(path);
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeTranslation(&v10, -(PathBoundingBox.origin.x + PathBoundingBox.size.width * 0.5), -(PathBoundingBox.origin.y + PathBoundingBox.size.height * 0.5));
    v8 = CGPathCreateMutableCopyByTransformingPath(path, &v10);
    [v7 setPath:v8];
    CGPathRelease(v8);
  }

  else
  {
    [node setPath:path];
  }

  return v7;
}

+ (SKShapeNode)shapeNodeWithEllipseInRect:(CGRect)rect
{
  v3 = CGPathCreateWithEllipseInRect(rect, 0);
  v4 = [objc_opt_class() shapeNodeWithPath:v3];
  CGPathRelease(v3);

  return v4;
}

+ (SKShapeNode)shapeNodeWithEllipseOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_class();

  return [v5 shapeNodeWithEllipseInRect:{width * -0.5, height * -0.5, width, height}];
}

+ (SKShapeNode)shapeNodeWithCircleOfRadius:(CGFloat)radius
{
  v4 = objc_opt_class();

  return [v4 shapeNodeWithEllipseOfSize:{radius + radius, radius + radius}];
}

+ (SKShapeNode)shapeNodeWithRect:(CGRect)rect
{
  v3 = CGPathCreateWithRect(rect, 0);
  v4 = [objc_opt_class() shapeNodeWithPath:v3];
  CGPathRelease(v3);

  return v4;
}

+ (SKShapeNode)shapeNodeWithRectOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_class();

  return [v5 shapeNodeWithRect:{width * -0.5, height * -0.5, width, height}];
}

+ (SKShapeNode)shapeNodeWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius
{
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = cornerRadius;
  v8 = rect.size.width * 0.5;
  if (v7 <= v8)
  {
    v8 = cornerRadius;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = rect.size.height * 0.5;
  if (v7 > v9)
  {
    v7 = rect.size.height * 0.5;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (((LODWORD(v8) & 0x80000000) != 0 || (LODWORD(v8) & 0x60000000) == 0) && ((LODWORD(v7) & 0x80000000) != 0 || (LODWORD(v7) & 0x60000000) == 0))
  {
    v19 = [objc_opt_class() shapeNodeWithRect:{x, y, width, rect.size.height}];
  }

  else
  {
    v10 = v8;
    v11 = v7;
    v12 = -(v8 - width * 0.5);
    if ((LODWORD(v12) & 0x80000000) == 0 && (LODWORD(v12) & 0x60000000) != 0 || (v13 = -(v11 - rect.size.height * 0.5), (LODWORD(v13) & 0x80000000) == 0) && (LODWORD(v13) & 0x60000000) != 0)
    {
      v14 = x;
      v15 = y;
      v16 = width;
      v17 = CGPathCreateWithRoundedRect(rect, v10, v11, 0);
      v18 = [objc_opt_class() shapeNodeWithPath:v17];
      CGPathRelease(v17);
      goto LABEL_21;
    }

    v19 = [objc_opt_class() shapeNodeWithEllipseInRect:{x, y, width, rect.size.height}];
  }

  v18 = v19;
LABEL_21:

  return v18;
}

+ (SKShapeNode)shapeNodeWithRectOfSize:(CGSize)size cornerRadius:(CGFloat)cornerRadius
{
  height = size.height;
  width = size.width;
  v7 = objc_opt_class();

  return [v7 shapeNodeWithRect:width * -0.5 cornerRadius:{height * -0.5, width, height, cornerRadius}];
}

+ (SKShapeNode)shapeNodeWithTriangleA:(CGPoint)a B:(CGPoint)b C:(CGPoint)c
{
  y = c.y;
  x = c.x;
  v7 = b.y;
  v8 = b.x;
  v9 = a.x;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v9, v7);
  CGPathAddLineToPoint(Mutable, 0, v8, v7);
  CGPathAddLineToPoint(Mutable, 0, x, y);
  CGPathCloseSubpath(Mutable);
  node = [objc_opt_class() node];
  [node setPath:Mutable];
  CGPathRelease(Mutable);

  return node;
}

+ (SKShapeNode)shapeNodeWithPoints:(CGPoint *)points count:(size_t)numPoints
{
  Mutable = CGPathCreateMutable();
  v7 = Mutable;
  if (numPoints)
  {
    x = points->x;
    y = points->y;
    p_y = &points->y;
    CGPathMoveToPoint(Mutable, 0, x, y);
    do
    {
      CGPathAddLineToPoint(v7, 0, *(p_y - 1), *p_y);
      p_y += 2;
      --numPoints;
    }

    while (numPoints);
  }

  node = [objc_opt_class() node];
  [node setPath:v7];
  CGPathRelease(v7);

  return node;
}

+ (SKShapeNode)shapeNodeWithSplinePoints:(CGPoint *)points count:(size_t)numPoints
{
  Mutable = CGPathCreateMutable();
  v13 = Mutable;
  if (numPoints)
  {
    x = points->x;
    y = points->y;
    CGPathMoveToPoint(Mutable, 0, points->x, y);
    v8 = y;
    v9 = x;
    v4 = y;
    v5 = x;
  }

  v14 = 0;
  v15 = -numPoints;
  p_y = &points->y;
  do
  {
    v17 = v5;
    v18 = v4;
    if (v15)
    {
      v5 = *(p_y - 1);
      v4 = *p_y;
    }

    if (v14)
    {
      if (CGPathIsEmpty(v13))
      {
        CGPathMoveToPoint(v13, 0, v5, v4);
      }

      else
      {
        CGPathAddCurveToPoint(v13, 0, (v17 - (x - v9 * 6.0)) * 0.166666667, (v18 - (y - v8 * 6.0)) * 0.166666667, (v9 + v17 * 6.0 - v5) * 0.166666667, (v8 + v18 * 6.0 - v4) * 0.166666667, v17, v18);
      }
    }

    ++v15;
    p_y += 2;
    --v14;
    y = v8;
    x = v9;
    v8 = v18;
    v9 = v17;
  }

  while (v15 != 1);
  node = [objc_opt_class() node];
  [node setPath:v13];
  CGPathRelease(v13);

  return node;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = nodeCopy;
      v24.receiver = self;
      v24.super_class = SKShapeNode;
      if ([(SKNode *)&v24 isEqualToNode:v5]&& CGPathEqualToPath([(SKShapeNode *)self path], [(SKShapeNode *)v5 path]))
      {
        fillColor = [(SKShapeNode *)self fillColor];
        cGColor = [fillColor CGColor];
        fillColor2 = [(SKShapeNode *)v5 fillColor];
        if (CGColorEqualToColor(cGColor, [fillColor2 CGColor]))
        {
          strokeColor = [(SKShapeNode *)self strokeColor];
          cGColor2 = [strokeColor CGColor];
          strokeColor2 = [(SKShapeNode *)v5 strokeColor];
          if (CGColorEqualToColor(cGColor2, [strokeColor2 CGColor]) && (-[SKShapeNode lineWidth](self, "lineWidth"), v13 = v12, -[SKShapeNode lineWidth](v5, "lineWidth"), v14 = v13, *&v15 = v15, (COERCE_UNSIGNED_INT(v14 - *&v15) & 0x60000000) == 0) && (-[SKShapeNode glowWidth](self, "glowWidth"), v17 = v16, -[SKShapeNode glowWidth](v5, "glowWidth"), v18 = v17, *&v19 = v19, (COERCE_UNSIGNED_INT(v18 - *&v19) & 0x60000000) == 0) && (v20 = -[SKShapeNode isAntialiased](self, "isAntialiased"), v20 == -[SKShapeNode isAntialiased](v5, "isAntialiased")))
          {
            blendMode = [(SKShapeNode *)self blendMode];
            v21 = blendMode == [(SKShapeNode *)v5 blendMode];
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (void)_initialize
{
  [(SKShapeNode *)self setPath:0];
  [(SKShapeNode *)self setAntialiased:1];
  [(SKShapeNode *)self setGlowWidth:0.0];
  LODWORD(v3) = 1065353216;
  LODWORD(v4) = 1065353216;
  LODWORD(v5) = 1065353216;
  LODWORD(v6) = 1065353216;
  v7 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v3, v4, v5, v6}];
  [(SKShapeNode *)self setStrokeColor:v7];

  LODWORD(v8) = 0;
  LODWORD(v9) = 0;
  LODWORD(v10) = 0;
  LODWORD(v11) = 0;
  v12 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v8, v9, v10, v11}];
  [(SKShapeNode *)self setFillColor:v12];

  [(SKShapeNode *)self setLineCap:0];
  [(SKShapeNode *)self setLineJoin:2];

  [(SKShapeNode *)self setMiterLimit:0.5];
}

- (SKShapeNode)init
{
  v5.receiver = self;
  v5.super_class = SKShapeNode;
  v2 = [(SKNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKShapeNode *)v2 _initialize];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SKShapeNode;
  [(SKNode *)&v19 encodeWithCoder:coderCopy];
  v5 = PKArrayFromCGPath();
  [coderCopy encodeObject:v5 forKey:@"_cgPath"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 155)];
  [coderCopy encodeObject:v6 forKey:@"_lineWidth"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 156)];
  [coderCopy encodeObject:v7 forKey:@"_smoothWidth"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(self->_skcShapeNode + 644)];
  [coderCopy encodeObject:v8 forKey:@"_smoothStroke"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 148)];
  [coderCopy encodeObject:v9 forKey:@"_fillColorR"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 149)];
  [coderCopy encodeObject:v10 forKey:@"_fillColorG"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 150)];
  [coderCopy encodeObject:v11 forKey:@"_fillColorB"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 151)];
  [coderCopy encodeObject:v12 forKey:@"_fillColorA"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 144)];
  [coderCopy encodeObject:v13 forKey:@"_strokeColorR"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 145)];
  [coderCopy encodeObject:v14 forKey:@"_strokeColorG"];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 146)];
  [coderCopy encodeObject:v15 forKey:@"_strokeColorB"];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_skcShapeNode + 147)];
  [coderCopy encodeObject:v16 forKey:@"_strokeColorA"];

  [coderCopy encodeInteger:-[SKShapeNode lineJoin](self forKey:{"lineJoin"), @"_lineJoin"}];
  [coderCopy encodeInteger:-[SKShapeNode lineCap](self forKey:{"lineCap"), @"_lineCap"}];
  [(SKShapeNode *)self miterLimit];
  [coderCopy encodeDouble:@"_miterLimit" forKey:?];
  strokeTexture = [(SKShapeNode *)self strokeTexture];
  [coderCopy encodeObject:strokeTexture forKey:@"_strokeTexture"];

  fillTexture = [(SKShapeNode *)self fillTexture];
  [coderCopy encodeObject:fillTexture forKey:@"_fillTexture"];
}

- (SKShapeNode)initWithCoder:(id)coder
{
  v52[7] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = SKShapeNode;
  v5 = [(SKNode *)&v51 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v52[2] = objc_opt_class();
    v52[3] = objc_opt_class();
    v52[4] = objc_opt_class();
    v52[5] = objc_opt_class();
    v52[6] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:7];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_cgPath"];
    v10 = PKCGPathCreateFromArray();

    [(SKShapeNode *)v5 setPath:v10];
    CGPathRelease(v10);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smoothWidth"];
    [v11 doubleValue];
    [(SKShapeNode *)v5 setGlowWidth:?];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lineWidth"];
    [v12 doubleValue];
    [(SKShapeNode *)v5 setLineWidth:?];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smoothStroke"];
    -[SKShapeNode setAntialiased:](v5, "setAntialiased:", [v13 BOOLValue]);

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fillColorR"];
    [v14 doubleValue];
    v16 = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fillColorG"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fillColorB"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fillColorA"];
    [v23 doubleValue];
    v25 = v24;

    *&v26 = v16;
    *&v27 = v19;
    *&v28 = v22;
    *&v29 = v25;
    v30 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v26, v27, v28, v29}];
    [(SKShapeNode *)v5 setFillColor:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_strokeColorR"];
    [v31 doubleValue];
    v33 = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_strokeColorG"];
    [v34 doubleValue];
    v36 = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_strokeColorB"];
    [v37 doubleValue];
    v39 = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_strokeColorA"];
    [v40 doubleValue];
    v42 = v41;

    *&v43 = v33;
    *&v44 = v36;
    *&v45 = v39;
    *&v46 = v42;
    v47 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v43, v44, v45, v46}];
    [(SKShapeNode *)v5 setStrokeColor:v47];

    -[SKShapeNode setLineJoin:](v5, "setLineJoin:", [coderCopy decodeIntegerForKey:@"_lineJoin"]);
    -[SKShapeNode setLineCap:](v5, "setLineCap:", [coderCopy decodeIntegerForKey:@"_lineCap"]);
    [coderCopy decodeDoubleForKey:@"_miterLimit"];
    [(SKShapeNode *)v5 setMiterLimit:?];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_strokeTexture"];
    [(SKShapeNode *)v5 setStrokeTexture:v48];

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fillTexture"];
    [(SKShapeNode *)v5 setFillTexture:v49];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(SKNode *)self name];
  [(SKNode *)self calculateAccumulatedFrame];
  v5 = NSStringFromCGRect(v9);
  v6 = [v3 stringWithFormat:@"<SKShapeNode> name:'%@' accumulatedFrame:%@", name, v5];

  return v6;
}

- (void)setPath:(CGPathRef)path
{
  if (path)
  {
    v4 = MEMORY[0x21CF09920](path, a2);
    skcShapeNode = self->_skcShapeNode;
    v6 = *(skcShapeNode + 79);
    if (v6)
    {
      CGPathRelease(v6);
      skcShapeNode = self->_skcShapeNode;
    }

    *(skcShapeNode + 79) = v4;
    v7 = *(self->_skcShapeNode + 70);
    if (v7)
    {
      SKCompositeBezierPath::~SKCompositeBezierPath(v7);
      MEMORY[0x21CF0A160]();
    }

    operator new();
  }

  v8 = self->_skcShapeNode;
  v9 = *(v8 + 79);
  if (v9)
  {
    CGPathRelease(v9);
    v8 = self->_skcShapeNode;
  }

  v10 = *(v8 + 70);
  if (v10)
  {
    SKCompositeBezierPath::~SKCompositeBezierPath(v10);
    MEMORY[0x21CF0A160]();
    v8 = self->_skcShapeNode;
  }

  *(v8 + 79) = 0;
  *(self->_skcShapeNode + 70) = 0;
  v11 = self->_skcShapeNode;

  SKCNode::setDirty(v11);
}

- (BOOL)containsPoint:(CGPoint)point
{
  skcShapeNode = self->_skcShapeNode;
  v5 = skcShapeNode[79];
  x = point.x;
  v19 = x;
  y = point.y;
  v20 = y;
  *v8.i64 = (*(*skcShapeNode + 112))(skcShapeNode, a2);
  v21 = vaddq_f32(v11, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v8, v19), v9, v20), 0, v10)).u64[0];
  if (SKCShapeNode::shouldFill(self->_skcShapeNode))
  {
    v12 = vcvtq_f64_f32(v21);
    v13 = v12.y;

    return CGPathContainsPoint(v5, 0, v12, 1);
  }

  else
  {
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v5, 0, (*(self->_skcShapeNode + 155) + *(self->_skcShapeNode + 155)), *(self->_skcShapeNode + 153), *(self->_skcShapeNode + 152), *(self->_skcShapeNode + 154));
    v16 = vcvtq_f64_f32(v21);
    v17 = v16.y;
    v18 = CGPathContainsPoint(v5, 0, v16, 1);
    CGPathRelease(CopyByStrokingPath);
    return v18;
  }
}

- (void)setGlowWidth:(CGFloat)glowWidth
{
  if (glowWidth < 0.0)
  {
    glowWidth = 0.0;
  }

  v3 = glowWidth;
  skcShapeNode = self->_skcShapeNode;
  skcShapeNode[156] = v3;
  SKCNode::setDirty(skcShapeNode);
}

- (void)setFillTexture:(SKTexture *)fillTexture
{
  objc_storeStrong(self->_skcShapeNode + 83, fillTexture);
  v5 = fillTexture;
  SKCNode::setDirty(self->_skcShapeNode);
}

- (void)setFillShader:(SKShader *)fillShader
{
  v5 = fillShader;
  [*(self->_skcShapeNode + 85) _removeTargetNode:self];
  objc_storeStrong(self->_skcShapeNode + 85, fillShader);
  SKCNode::setDirty(self->_skcShapeNode);
  SKCNode::recomputeFlags(self->_skcShapeNode, 1);
  [(SKShader *)v5 _addTargetNode:self];
}

- (void)setStrokeTexture:(SKTexture *)strokeTexture
{
  objc_storeStrong(self->_skcShapeNode + 82, strokeTexture);
  v5 = strokeTexture;
  SKCNode::setDirty(self->_skcShapeNode);
}

- (void)setStrokeShader:(SKShader *)strokeShader
{
  v5 = strokeShader;
  [*(self->_skcShapeNode + 84) _removeTargetNode:self];
  objc_storeStrong(self->_skcShapeNode + 84, strokeShader);
  SKCNode::setDirty(self->_skcShapeNode);
  SKCNode::recomputeFlags(self->_skcShapeNode, 1);
  [(SKShader *)v5 _addTargetNode:self];
}

- (void)setAntialiased:(BOOL)antialiased
{
  skcShapeNode = self->_skcShapeNode;
  *(skcShapeNode + 644) = antialiased;
  SKCNode::setDirty(skcShapeNode);
}

- (void)setLineWidth:(CGFloat)lineWidth
{
  v3 = lineWidth;
  skcShapeNode = self->_skcShapeNode;
  skcShapeNode[155] = v3;
  SKCNode::setDirty(skcShapeNode);
}

- (void)setFillColor:(UIColor *)fillColor
{
  v5 = fillColor;
  [(UIColor *)v5 vectorRGBA];
  *(self->_skcShapeNode + 37) = v4;
  SKCNode::setDirty(self->_skcShapeNode);
}

- (void)setStrokeColor:(UIColor *)strokeColor
{
  v5 = strokeColor;
  [(UIColor *)v5 vectorRGBA];
  *(self->_skcShapeNode + 36) = v4;
  SKCNode::setDirty(self->_skcShapeNode);
}

- (void)setLineCap:(CGLineCap)lineCap
{
  skcShapeNode = self->_skcShapeNode;
  *(skcShapeNode + 153) = lineCap;
  SKCNode::setDirty(skcShapeNode);
}

- (void)setLineJoin:(CGLineJoin)lineJoin
{
  skcShapeNode = self->_skcShapeNode;
  *(skcShapeNode + 152) = lineJoin;
  SKCNode::setDirty(skcShapeNode);
}

- (void)setMiterLimit:(CGFloat)miterLimit
{
  v3 = miterLimit;
  skcShapeNode = self->_skcShapeNode;
  skcShapeNode[154] = v3;
  SKCNode::setDirty(skcShapeNode);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SKShapeNode;
  v4 = [(SKNode *)&v12 copyWithZone:zone];
  [v4 setPath:{-[SKShapeNode path](self, "path")}];
  fillColor = [(SKShapeNode *)self fillColor];
  [v4 setFillColor:fillColor];

  strokeColor = [(SKShapeNode *)self strokeColor];
  [v4 setStrokeColor:strokeColor];

  [v4 setAntialiased:{-[SKShapeNode isAntialiased](self, "isAntialiased")}];
  [(SKShapeNode *)self renderQualityRatio];
  [v4 setRenderQualityRatio:?];
  [(SKShapeNode *)self lineWidth];
  [v4 setLineWidth:?];
  [(SKShapeNode *)self glowWidth];
  [v4 setGlowWidth:?];
  [v4 setBlendMode:{-[SKShapeNode blendMode](self, "blendMode")}];
  fillShader = [(SKShapeNode *)self fillShader];
  [v4 setFillShader:fillShader];

  fillTexture = [(SKShapeNode *)self fillTexture];
  [v4 setFillTexture:fillTexture];

  strokeShader = [(SKShapeNode *)self strokeShader];
  [v4 setStrokeShader:strokeShader];

  strokeTexture = [(SKShapeNode *)self strokeTexture];
  [v4 setStrokeTexture:strokeTexture];

  [v4 setLineJoin:{-[SKShapeNode lineJoin](self, "lineJoin")}];
  [v4 setLineCap:{-[SKShapeNode lineCap](self, "lineCap")}];
  [(SKShapeNode *)self miterLimit];
  [v4 setMiterLimit:?];
  return v4;
}

- (SKAttributeValue)valueForAttributeNamed:(NSString *)key
{
  v5.receiver = self;
  v5.super_class = SKShapeNode;
  v3 = [(SKNode *)&v5 valueForAttributeNamed:key];

  return v3;
}

- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key
{
  v4.receiver = self;
  v4.super_class = SKShapeNode;
  [(SKNode *)&v4 setValue:value forAttributeNamed:key];
}

+ (id)debugHierarchyPropertyDescriptions
{
  v29[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"antialiased");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v27 = Mutable;
  v29[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"fillColor");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v5, @"propertyFormat", @"color");
  v26 = v5;
  v29[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"fillShader");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v6, @"propertyFormat", @"objectInfo");
  v25 = v6;
  v29[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"glowWidth");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v7, @"propertyFormat", @"color");
  v29[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"lineWidth");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v8, @"propertyFormat", @"CGf");
  v29[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"strokeColor");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v9, @"propertyFormat", @"color");
  v29[5] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"strokeShader");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v10, @"propertyFormat", @"objectInfo");
  v29[6] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v11, @"propertyName", @"blendMode");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"SKBlendMode");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v11, @"propertyFormat", @"integer");
  valuePtr = 1;
  v12 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v11, @"propertyOptions", v12);
  CFRelease(v12);
  v29[7] = v11;
  v13 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v13, @"propertyName", @"fillTexture");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v13, @"propertyFormat", @"public.data");
  valuePtr = 1;
  v14 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v13, @"propertyOptions", v14);
  CFRelease(v14);
  v29[8] = v13;
  v15 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v15, @"propertyName", @"strokeTexture");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v15, @"propertyFormat", @"public.data");
  valuePtr = 1;
  v16 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v15, @"propertyOptions", v16);
  CFRelease(v16);
  v29[9] = v15;
  v17 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v17, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v17, @"propertyFormat", @"public.data");
  valuePtr = 8;
  v18 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v17, @"visibility", v18);
  CFRelease(v18);
  valuePtr = 1;
  v19 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v17, @"propertyOptions", v19);
  CFRelease(v19);
  v29[10] = v17;
  v20 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v20, @"propertyName", @"visualRepresentationOffset");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v20, @"propertyFormat", @"CGf, CGf");
  valuePtr = 8;
  v21 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v20, @"visibility", v21);
  CFRelease(v21);
  valuePtr = 1;
  v22 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v20, @"propertyOptions", v22);
  CFRelease(v22);
  v29[11] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:12];

  return v23;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)Mutable
{
  v98 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"strokeTexture"])
  {
    Mutable = [objectCopy strokeTexture];

    if (!Mutable)
    {
      goto LABEL_93;
    }

    strokeTexture = [objectCopy strokeTexture];
    cGImage = [strokeTexture CGImage];

    if (cGImage)
    {
      v12 = *MEMORY[0x277CE1E10];
      identifier = [*MEMORY[0x277CE1E10] identifier];
      valuePtr = 1065353216;
      Mutable = CFDataCreateMutable(0, 0);
      v14 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);
      v15 = *MEMORY[0x277CBECE8];
      v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      keys = *MEMORY[0x277CD2D48];
      values[0] = v16;
      v17 = CFDictionaryCreate(v15, &keys, values, 1, 0, 0);
      CGImageDestinationAddImage(v14, cGImage, v17);
      CGImageDestinationFinalize(v14);
      CFRelease(v17);
      CFRelease(v16);
      CFRelease(v14);

      v92 = @"propertyFormat";
      identifier2 = [v12 identifier];
      v93 = identifier2;
      *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    }

    else
    {
      Mutable = 0;
    }

LABEL_30:
    CGImageRelease(cGImage);
    goto LABEL_93;
  }

  if ([nameCopy isEqualToString:@"fillTexture"])
  {
    Mutable = [objectCopy fillTexture];

    if (!Mutable)
    {
      goto LABEL_93;
    }

    fillTexture = [objectCopy fillTexture];
    cGImage = [fillTexture CGImage];

    if (cGImage)
    {
      v20 = *MEMORY[0x277CE1E10];
      identifier3 = [*MEMORY[0x277CE1E10] identifier];
      valuePtr = 1065353216;
      Mutable = CFDataCreateMutable(0, 0);
      v22 = CGImageDestinationCreateWithData(Mutable, identifier3, 1uLL, 0);
      v23 = *MEMORY[0x277CBECE8];
      v24 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      keys = *MEMORY[0x277CD2D48];
      values[0] = v24;
      v25 = CFDictionaryCreate(v23, &keys, values, 1, 0, 0);
      CGImageDestinationAddImage(v22, cGImage, v25);
      CGImageDestinationFinalize(v22);
      CFRelease(v25);
      CFRelease(v24);
      CFRelease(v22);

      v90 = @"propertyFormat";
      identifier4 = [v20 identifier];
      v91 = identifier4;
      *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    }

    else
    {
      Mutable = 0;
    }

    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"strokeColor"])
  {
    strokeColor = [objectCopy strokeColor];
    cGColor = [strokeColor CGColor];
    if (cGColor)
    {
      Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      space = CGColorGetColorSpace(cGColor);
      v28 = CGColorSpaceCopyName(space);
      NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
      v30 = NumberOfComponents << 32;
      v31 = NumberOfComponents;
      if (NumberOfComponents << 32)
      {
        v32 = CFStringCreateMutable(0, 0);
        v33 = v31 - 1;
        if (v31 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v31;
        }

        do
        {
          CFStringAppend(v32, @"CGf");
          if (v33)
          {
            CFStringAppend(v32, @", ");
          }

          --v33;
          --v34;
        }

        while (v34);
      }

      else
      {
        v32 = &stru_282E190D8;
      }

      Components = CGColorGetComponents(cGColor);
      v51 = malloc_type_malloc(v30 >> 29, 0x6004044C4A2DFuLL);
      v52 = v51;
      if (v30)
      {
        if (v31 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = v31;
        }

        v54 = v51;
        do
        {
          *v54++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
          --v53;
        }

        while (v53);
      }

      v55 = CFArrayCreate(0, v52, v31, MEMORY[0x277CBF128]);
      if (v30)
      {
        if (v31 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = v31;
        }

        v57 = v52;
        do
        {
          CFRelease(*v57++);
          --v56;
        }

        while (v56);
      }

      free(v52);
      CGColorSpaceGetModel(space);
      if (v55)
      {
        CFDictionaryAddValue(Mutable, @"componentValues", v55);
      }

      if (v32)
      {
        CFDictionaryAddValue(Mutable, @"componentValuesFormat", v32);
      }

      if (v28)
      {
        CFDictionaryAddValue(Mutable, @"colorSpaceName", v28);
      }

      if (v55)
      {
        CFRelease(v55);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (!v32)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"fillColor"])
  {
    strokeColor = [objectCopy fillColor];
    cGColor2 = [strokeColor CGColor];
    if (cGColor2)
    {
      Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      spacea = CGColorGetColorSpace(cGColor2);
      v36 = CGColorSpaceCopyName(spacea);
      v37 = CGColorGetNumberOfComponents(cGColor2);
      v38 = v37 << 32;
      v39 = v37;
      if (v37 << 32)
      {
        v32 = CFStringCreateMutable(0, 0);
        v40 = v39 - 1;
        if (v39 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v39;
        }

        do
        {
          CFStringAppend(v32, @"CGf");
          if (v40)
          {
            CFStringAppend(v32, @", ");
          }

          --v40;
          --v41;
        }

        while (v41);
      }

      else
      {
        v32 = &stru_282E190D8;
      }

      v61 = CGColorGetComponents(cGColor2);
      v62 = malloc_type_malloc(v38 >> 29, 0x6004044C4A2DFuLL);
      v63 = v62;
      if (v38)
      {
        if (v39 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v39;
        }

        v65 = v62;
        do
        {
          *v65++ = CFNumberCreate(0, kCFNumberCGFloatType, v61++);
          --v64;
        }

        while (v64);
      }

      v66 = CFArrayCreate(0, v63, v39, MEMORY[0x277CBF128]);
      if (v38)
      {
        if (v39 <= 1)
        {
          v67 = 1;
        }

        else
        {
          v67 = v39;
        }

        v68 = v63;
        do
        {
          CFRelease(*v68++);
          --v67;
        }

        while (v67);
      }

      free(v63);
      CGColorSpaceGetModel(spacea);
      if (v66)
      {
        CFDictionaryAddValue(Mutable, @"componentValues", v66);
      }

      if (v32)
      {
        CFDictionaryAddValue(Mutable, @"componentValuesFormat", v32);
      }

      if (v36)
      {
        CFDictionaryAddValue(Mutable, @"colorSpaceName", v36);
      }

      if (v66)
      {
        CFRelease(v66);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (!v32)
      {
        goto LABEL_92;
      }

LABEL_91:
      CFRelease(v32);
      goto LABEL_92;
    }

LABEL_31:
    Mutable = 0;
LABEL_92:

    goto LABEL_93;
  }

  if ([nameCopy isEqualToString:@"visualRepresentationOffset"])
  {
    [objectCopy _untransformedBounds];
    keys = v42;
    v96 = v43;
    v44 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = v46;
      v48 = CFNumberCreate(0, kCFNumberCGFloatType, &keys + v45);
      v46 = 0;
      v44[v45] = v48;
      v45 = 1;
    }

    while ((v47 & 1) != 0);
    Mutable = CFArrayCreate(0, v44, 2, MEMORY[0x277CBF128]);
    CFRelease(*v44);
    CFRelease(v44[1]);
    free(v44);
  }

  else if ([nameCopy isEqualToString:@"visualRepresentation"])
  {
    Mutable = [objectCopy createDebugHierarchyVisualRepresentation];
    v88 = @"propertyFormat";
    identifier5 = [*MEMORY[0x277CE1E10] identifier];
    v89 = identifier5;
    *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  }

  else
  {
    v58 = objectCopy;
    v59 = nameCopy;
    if (![v59 length])
    {
      goto LABEL_105;
    }

    NSSelectorFromString(v59);
    if (objc_opt_respondsToSelector())
    {
      v60 = v59;
    }

    else
    {
      if ([v59 length] < 2)
      {
        uppercaseString = [v59 uppercaseString];
      }

      else
      {
        v70 = [v59 substringToIndex:1];
        uppercaseString2 = [v70 uppercaseString];
        v72 = [v59 substringFromIndex:1];
        uppercaseString = [uppercaseString2 stringByAppendingString:v72];
      }

      v74 = [@"is" stringByAppendingString:uppercaseString];
      NSSelectorFromString(v74);
      v60 = (objc_opt_respondsToSelector() & 1) != 0 ? v74 : 0;
    }

    if (v60)
    {
      Mutable = [v58 valueForKey:v60];
    }

    else
    {
LABEL_105:
      if (Mutable)
      {
        v75 = v58;
        v76 = v59;
        if (v75)
        {
          v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v75];
        }

        else
        {
          v77 = &stru_282E190D8;
        }

        if (v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = &stru_282E190D8;
        }

        v79 = v78;
        values[0] = @"propertyName";
        values[1] = @"objectDescription";
        keys = v79;
        v96 = v77;
        values[2] = @"errorDescription";
        v97 = &stru_282E190D8;
        v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&keys forKeys:values count:3];
        v81 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v80];

        v82 = v81;
        *Mutable = v81;

        v60 = 0;
        Mutable = 0;
      }

      else
      {
        v60 = 0;
      }
    }
  }

LABEL_93:

  return Mutable;
}

@end