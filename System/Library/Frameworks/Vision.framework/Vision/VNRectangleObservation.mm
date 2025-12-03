@interface VNRectangleObservation
+ (VNRectangleObservation)observationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box;
+ (VNRectangleObservation)rectangleObservationWithRequestRevision:(NSUInteger)requestRevision topLeft:(CGPoint)topLeft bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight topRight:(CGPoint)topRight;
+ (VNRectangleObservation)rectangleObservationWithRequestRevision:(NSUInteger)requestRevision topLeft:(CGPoint)topLeft topRight:(CGPoint)topRight bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (BOOL)isEqual:(id)equal;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (VNRectangleObservation)initWithCoder:(id)coder;
- (VNRectangleObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box;
- (VNRectangleObservation)initWithOriginatingRequestSpecifier:(id)specifier topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (VNRectangleObservation)initWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box;
- (VNRectangleObservation)initWithRequestRevision:(unint64_t)revision topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (double)initWithOriginatingRequestSpecifier:(double)specifier topLeft:(double)left topRight:(double)right bottomRight:(double)bottomRight bottomLeft:(double)bottomLeft boundingBox:(double)box;
- (id)debugQuickLookObject;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_setQuadrilateralPointsFromBoundingBox:(CGRect)box;
- (void)encodeWithCoder:(id)coder;
- (void)getTopLeftPoint:(CGPoint *)point topRightPoint:(CGPoint *)rightPoint bottomRightPoint:(CGPoint *)bottomRightPoint bottomLeftPoint:(CGPoint *)leftPoint inTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
@end

@implementation VNRectangleObservation

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)debugQuickLookObject
{
  v27 = *MEMORY[0x1E69E9840];
  [(VNRectangleObservation *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(VNRectangleObservation *)self bottomLeft];
  v8 = v7;
  v10 = v9;
  [(VNRectangleObservation *)self bottomRight];
  v12 = v11;
  v14 = v13;
  [(VNRectangleObservation *)self topRight];
  v16 = v15;
  v18 = v17;
  Mutable = CGPathCreateMutable();
  v20 = MEMORY[0x1E695EFD0];
  CGPathMoveToPoint(Mutable, MEMORY[0x1E695EFD0], v4, v6);
  CGPathAddLineToPoint(Mutable, v20, v8, v10);
  CGPathAddLineToPoint(Mutable, v20, v12, v14);
  CGPathAddLineToPoint(Mutable, v20, v16, v18);
  CGPathAddLineToPoint(Mutable, v20, v4, v6);
  CGPathCloseSubpath(Mutable);
  if (Mutable)
  {
    v25.receiver = self;
    v25.super_class = VNRectangleObservation;
    debugQuickLookObject = [(VNDetectedObjectObservation *)&v25 debugQuickLookObject];
    if (debugQuickLookObject)
    {
      v26[0] = xmmword_1A6052420;
      v26[1] = unk_1A6052430;
      v22 = VNDebugColorFromValues(v26);
      VNDebugImageRenderNormalizedCGPathOnImage(Mutable, debugQuickLookObject, v22);
    }

    else
    {
      VNDebugPathFromNormalizedCGPath(Mutable, 512.0, 512.0);
    }
    v23 = ;

    CGPathRelease(Mutable);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_setQuadrilateralPointsFromBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  MaxY = CGRectGetMaxY(box);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MinY = CGRectGetMinY(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MinX = CGRectGetMinX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxX = CGRectGetMaxX(v14);
  if (self)
  {
    self->_topLeft.x = MinX;
    self->_topLeft.y = MaxY;
    self->_topRight.x = MaxX;
    self->_topRight.y = MaxY;
    self->_bottomRight.x = MaxX;
    self->_bottomRight.y = MinY;
    self->_bottomLeft.x = MinX;
    self->_bottomLeft.y = MinY;
  }
}

- (VNRectangleObservation)initWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v12.receiver = self;
  v12.super_class = VNRectangleObservation;
  v8 = [(VNDetectedObjectObservation *)&v12 initWithRequestRevision:revision boundingBox:?];
  v9 = v8;
  if (v8)
  {
    [(VNRectangleObservation *)v8 _setQuadrilateralPointsFromBoundingBox:x, y, width, height];
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v32.receiver = self;
    v32.super_class = VNRectangleObservation;
    if ([(VNDetectedObjectObservation *)&v32 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      [(VNRectangleObservation *)self topLeft];
      v7 = v6;
      v9 = v8;
      [(VNRectangleObservation *)v5 topLeft];
      v11 = 0;
      if (v7 == v12 && v9 == v10)
      {
        [(VNRectangleObservation *)self topRight];
        v14 = v13;
        v16 = v15;
        [(VNRectangleObservation *)v5 topRight];
        v11 = 0;
        if (v14 == v18 && v16 == v17)
        {
          [(VNRectangleObservation *)self bottomLeft];
          v20 = v19;
          v22 = v21;
          [(VNRectangleObservation *)v5 bottomLeft];
          v11 = 0;
          if (v20 == v24 && v22 == v23)
          {
            [(VNRectangleObservation *)self bottomRight];
            v26 = v25;
            v28 = v27;
            [(VNRectangleObservation *)v5 bottomRight];
            v11 = v28 == v30 && v26 == v29;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v24.receiver = self;
  v24.super_class = VNRectangleObservation;
  v3 = [(VNDetectedObjectObservation *)&v24 hash];
  [(VNRectangleObservation *)self topLeft];
  v6 = v5;
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = v4;
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = *&v7 ^ __ROR8__(*&v6, 51) ^ __ROR8__(v3, 51);
  [(VNRectangleObservation *)self topRight];
  v11 = v10;
  if (v10 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = v9;
  if (v9 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = *&v12 ^ __ROR8__(*&v11, 51) ^ __ROR8__(v8, 51);
  [(VNRectangleObservation *)self bottomLeft];
  v16 = v15;
  if (v15 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = v14;
  if (v14 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = *&v17 ^ __ROR8__(*&v16, 51) ^ __ROR8__(v13, 51);
  [(VNRectangleObservation *)self bottomRight];
  v21 = v20;
  if (v20 == 0.0)
  {
    v21 = 0.0;
  }

  v22 = v19;
  if (v19 == 0.0)
  {
    v22 = 0.0;
  }

  return *&v22 ^ __ROR8__(*&v21, 51) ^ __ROR8__(v18, 51);
}

- (id)vn_cloneObject
{
  v5.receiver = self;
  v5.super_class = VNRectangleObservation;
  vn_cloneObject = [(VNDetectedObjectObservation *)&v5 vn_cloneObject];
  if (vn_cloneObject)
  {
    vn_cloneObject[10] = self->_topLeft;
    vn_cloneObject[13] = self->_topRight;
    vn_cloneObject[11] = self->_bottomLeft;
    vn_cloneObject[12] = self->_bottomRight;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNRectangleObservation;
  [(VNDetectedObjectObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"TLX" forKey:self->_topLeft.x];
  [coderCopy encodeDouble:@"TLY" forKey:self->_topLeft.y];
  [coderCopy encodeDouble:@"TRX" forKey:self->_topRight.x];
  [coderCopy encodeDouble:@"TRY" forKey:self->_topRight.y];
  [coderCopy encodeDouble:@"BLX" forKey:self->_bottomLeft.x];
  [coderCopy encodeDouble:@"BLY" forKey:self->_bottomLeft.y];
  self = (self + 192);
  [coderCopy encodeDouble:@"BRX" forKey:*&self->super.super.super.isa];
  [coderCopy encodeDouble:@"BRY" forKey:*&self->super.super._originatingRequestSpecifier];
}

- (VNRectangleObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = VNRectangleObservation;
  v5 = [(VNDetectedObjectObservation *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"TLX"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"TLY"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"TRX"];
    v11 = v10;
    [coderCopy decodeDoubleForKey:@"TRY"];
    v13 = v12;
    [coderCopy decodeDoubleForKey:@"BLX"];
    v15 = v14;
    [coderCopy decodeDoubleForKey:@"BLY"];
    v17 = v16;
    [coderCopy decodeDoubleForKey:@"BRX"];
    v19 = v18;
    [coderCopy decodeDoubleForKey:@"BRY"];
    v21 = v20;
    VisionCoreBoundingBoxForQuadrilateralPoints();
    v5->super._boundingBox.origin.x = v22;
    v5->super._boundingBox.origin.y = v23;
    v5->super._boundingBox.size.width = v24;
    v5->super._boundingBox.size.height = v25;
    v5->_topLeft.x = v7;
    v5->_topLeft.y = v9;
    v5->_topRight.x = v11;
    v5->_topRight.y = v13;
    v5->_bottomRight.x = v19;
    v5->_bottomRight.y = v21;
    v5->_bottomLeft.x = v15;
    v5->_bottomLeft.y = v17;
    v26 = v5;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (double)initWithOriginatingRequestSpecifier:(double)specifier topLeft:(double)left topRight:(double)right bottomRight:(double)bottomRight bottomLeft:(double)bottomLeft boundingBox:(double)box
{
  v29.receiver = self;
  v29.super_class = VNRectangleObservation;
  result = objc_msgSendSuper2(&v29, sel_initWithOriginatingRequestSpecifier_boundingBox_, a10, a11, a12, a13);
  if (result)
  {
    result[20] = a2;
    result[21] = specifier;
    result[22] = box;
    result[23] = a9;
    result[24] = bottomRight;
    result[25] = bottomLeft;
    result[26] = left;
    result[27] = right;
  }

  return result;
}

- (VNRectangleObservation)initWithOriginatingRequestSpecifier:(id)specifier topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v9 = bottomRight.y;
  v10 = bottomRight.x;
  v11 = right.y;
  v12 = right.x;
  v13 = left.y;
  v14 = left.x;
  specifierCopy = specifier;
  VisionCoreBoundingBoxForQuadrilateralPoints();
  v20.receiver = self;
  v20.super_class = VNRectangleObservation;
  v17 = [(VNDetectedObjectObservation *)&v20 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:?];
  v18 = v17;
  if (v17)
  {
    v17->_topLeft.x = v14;
    v17->_topLeft.y = v13;
    v17->_topRight.x = v12;
    v17->_topRight.y = v11;
    v17->_bottomRight.x = v10;
    v17->_bottomRight.y = v9;
    v17->_bottomLeft.x = x;
    v17->_bottomLeft.y = y;
  }

  return v18;
}

- (VNRectangleObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = VNRectangleObservation;
  height = [(VNDetectedObjectObservation *)&v14 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(VNRectangleObservation *)height _setQuadrilateralPointsFromBoundingBox:x, y, width, height];
    v12 = v11;
  }

  return v11;
}

- (VNRectangleObservation)initWithRequestRevision:(unint64_t)revision topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v9 = bottomRight.y;
  v10 = bottomRight.x;
  v11 = right.y;
  v12 = right.x;
  v13 = left.y;
  v14 = left.x;
  VisionCoreBoundingBoxForQuadrilateralPoints();
  v18.receiver = self;
  v18.super_class = VNRectangleObservation;
  result = [(VNDetectedObjectObservation *)&v18 initWithRequestRevision:revision boundingBox:?];
  if (result)
  {
    result->_topLeft.x = v14;
    result->_topLeft.y = v13;
    result->_topRight.x = v12;
    result->_topRight.y = v11;
    result->_bottomRight.x = v10;
    result->_bottomRight.y = v9;
    result->_bottomLeft.x = x;
    result->_bottomLeft.y = y;
  }

  return result;
}

+ (VNRectangleObservation)rectangleObservationWithRequestRevision:(NSUInteger)requestRevision topLeft:(CGPoint)topLeft topRight:(CGPoint)topRight bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  v7 = [[self alloc] initWithRequestRevision:requestRevision topLeft:topLeft.x topRight:topLeft.y bottomRight:topRight.x bottomLeft:{topRight.y, bottomRight.x, bottomRight.y, bottomLeft.x, bottomLeft.y}];

  return v7;
}

+ (VNRectangleObservation)rectangleObservationWithRequestRevision:(NSUInteger)requestRevision topLeft:(CGPoint)topLeft bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight topRight:(CGPoint)topRight
{
  v7 = [[self alloc] initWithRequestRevision:requestRevision topLeft:topLeft.x bottomLeft:topLeft.y bottomRight:bottomLeft.x topRight:{bottomLeft.y, bottomRight.x, bottomRight.y, topRight.x, topRight.y}];

  return v7;
}

+ (VNRectangleObservation)observationWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box
{
  v4 = [[self alloc] initWithRequestRevision:revision boundingBox:{box.origin.x, box.origin.y, box.size.width, box.size.height}];

  return v4;
}

- (void)getTopLeftPoint:(CGPoint *)point topRightPoint:(CGPoint *)rightPoint bottomRightPoint:(CGPoint *)bottomRightPoint bottomLeftPoint:(CGPoint *)leftPoint inTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v13.x = VNAffineTransformForVisionToTopLeftOriginOrientation(origin, orientation, &v22);
  if (point)
  {
    [(VNRectangleObservation *)self topLeft];
    v13 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v14), v22, v15));
    *point = v13;
  }

  if (rightPoint)
  {
    [(VNRectangleObservation *)self topRight];
    v13 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v16), v22, v17));
    *rightPoint = v13;
  }

  if (bottomRightPoint)
  {
    [(VNRectangleObservation *)self bottomRight];
    v13 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v18), v22, v19));
    *bottomRightPoint = v13;
  }

  if (leftPoint)
  {
    [(VNRectangleObservation *)self bottomLeft];
    *leftPoint = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v20), v22, v21));
  }
}

@end