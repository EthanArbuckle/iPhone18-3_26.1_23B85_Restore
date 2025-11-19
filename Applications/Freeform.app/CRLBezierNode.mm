@interface CRLBezierNode
+ (CRLBezierNode)bezierNodeWithPoint:(CGPoint)a3;
+ (CRLBezierNode)bezierNodeWithPoint:(CGPoint)a3 inControlPoint:(CGPoint)a4 outControlPoint:(CGPoint)a5;
- (BOOL)isCollapsed;
- (BOOL)underPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (CGPoint)inControlPoint;
- (CGPoint)nodePoint;
- (CGPoint)outControlPoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)reflectedStateString;
- (id)typeString;
- (void)balanceControlPoints;
- (void)collapse;
- (void)moveToPoint:(CGPoint)a3;
- (void)setInControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5;
- (void)setInControlPointFromReflection:(CGPoint)a3 constrain:(BOOL)a4;
- (void)setOutControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5;
- (void)swapControlPoints;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
- (void)updateReflectedState;
@end

@implementation CRLBezierNode

+ (CRLBezierNode)bezierNodeWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(CRLBezierNode);
  [(CRLBezierNode *)v5 setNodePoint:x, y];
  [(CRLBezierNode *)v5 setInControlPoint:x, y];
  [(CRLBezierNode *)v5 setOutControlPoint:x, y];
  [(CRLBezierNode *)v5 setType:1];

  return v5;
}

+ (CRLBezierNode)bezierNodeWithPoint:(CGPoint)a3 inControlPoint:(CGPoint)a4 outControlPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = objc_alloc_init(CRLBezierNode);
  [(CRLBezierNode *)v11 setNodePoint:v10, v9];
  [(CRLBezierNode *)v11 setInControlPoint:v8, v7];
  [(CRLBezierNode *)v11 setOutControlPoint:x, y];
  [(CRLBezierNode *)v11 setType:2];
  v12 = sub_10011F31C(x, y, v10);
  v14 = v13;
  v15 = sub_10011F31C(v10, v9, v8);
  if (sub_10011ECC8(v12, v14, v15, v16))
  {
    [(CRLBezierNode *)v11 setReflectedState:1];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CRLBezierNode *)self nodePoint];
  [v4 setNodePoint:?];
  [(CRLBezierNode *)self inControlPoint];
  [v4 setInControlPoint:?];
  [(CRLBezierNode *)self outControlPoint];
  [v4 setOutControlPoint:?];
  [v4 setReflectedState:{-[CRLBezierNode reflectedState](self, "reflectedState")}];
  [v4 setSelected:{-[CRLBezierNode isSelected](self, "isSelected")}];
  [v4 setType:{-[CRLBezierNode type](self, "type")}];
  return v4;
}

- (void)balanceControlPoints
{
  x = self->mNode.x;
  v4 = sub_10011F31C(self->mIn.x, self->mIn.y, x);
  v6 = v5;
  v7 = sub_10011F31C(self->mOut.x, self->mOut.y, x);
  v9 = v8;
  v10 = sub_100120074(v4, v6);
  v11 = sub_1001208D0(v4, v6);
  v12 = sub_100120074(v7, v9);
  v13 = sub_1001208D0(v7, v9);
  if (v10 > 0.001 || v12 > 0.001)
  {
    if (v10 >= 0.001)
    {
      if (v12 >= 0.001)
      {
        v13 = sub_100120A88(v11, v13 + 3.14159265, v12 / (v10 + v12));
      }

      else
      {
        v13 = v11;
      }
    }

    v14 = sub_100120F98(v13);
    v16 = sub_10011F340(v14, v15, v10);
    self->mIn.x = sub_10011F334(v16, v17, x);
    self->mIn.y = v18;
    v19 = sub_100120F98(v13 + 3.14159265);
    v21 = sub_10011F340(v19, v20, v12);
    self->mOut.x = sub_10011F334(v21, v22, x);
    self->mOut.y = v23;
    self->mReflectedState = 1;
  }
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = self->mNode.x;
  v7 = sub_10011F31C(self->mIn.x, self->mIn.y, v6);
  v8 = sub_10011F31C(self->mOut.x, self->mOut.y, v6);
  self->mNode.x = x;
  self->mNode.y = y;
  self->mIn.x = sub_10011F334(x, y, v7);
  self->mIn.y = v9;
  self->mOut.x = sub_10011F334(x, y, v8);
  self->mOut.y = v10;
}

- (void)setInControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5
{
  v5 = a5;
  x = self->mNode.x;
  y = self->mNode.y;
  v10 = sub_10011F31C(x, y, a3.x);
  v12 = v10;
  v13 = v11;
  if (v5)
  {
    v12 = sub_100120FD4(v10, v11);
    v13 = v14;
  }

  v15 = CGPointZero.y;
  if (!sub_10011ECC8(v12, v13, CGPointZero.x, v15))
  {
    self->mIn.x = sub_10011F31C(x, y, v12);
    self->mIn.y = v16;
    if (a4)
    {
      if (a4 == 1)
      {
        v17 = sub_100120090(x, y, self->mOut.x, self->mOut.y);
        v18 = sub_100120090(CGPointZero.x, v15, v12, v13);
        v12 = sub_10011F340(v12, v13, v17 / v18);
      }

      self->mOut.x = sub_10011F334(x, y, v12);
      self->mOut.y = v19;
    }
  }

  self->mReflectedState = a4;
}

- (void)setOutControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5
{
  v5 = a5;
  x = self->mNode.x;
  y = self->mNode.y;
  v10 = sub_10011F31C(x, y, a3.x);
  v12 = v10;
  v13 = v11;
  if (v5)
  {
    v12 = sub_100120FD4(v10, v11);
    v13 = v14;
  }

  v15 = CGPointZero.y;
  if (!sub_10011ECC8(v12, v13, CGPointZero.x, v15))
  {
    self->mOut.x = sub_10011F31C(x, y, v12);
    self->mOut.y = v16;
    if (a4)
    {
      if (a4 == 1)
      {
        v17 = sub_100120090(x, y, self->mIn.x, self->mIn.y);
        v18 = sub_100120090(CGPointZero.x, v15, v12, v13);
        v12 = sub_10011F340(v12, v13, v17 / v18);
      }

      self->mIn.x = sub_10011F334(x, y, v12);
      self->mIn.y = v19;
    }
  }

  self->mReflectedState = a4;
}

- (void)setInControlPointFromReflection:(CGPoint)a3 constrain:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = self->mNode.x;
  v9 = self->mNode.y;
  v10 = sub_10011F31C(v8, v9, a3.x);
  v12 = v10;
  if (v4)
  {
    v12 = sub_100120FD4(v10, v11);
  }

  v13 = sub_10011F334(v8, v9, v12);
  self->mIn.x = v13;
  self->mIn.y = v14;
  if (self->mReflectedState)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_100120090(self->mOut.x, self->mOut.y, v8, v9);
    v18 = sub_100120090(v15, v16, v8, v9);
    if (v18 != 0.0)
    {
      v19 = v18;
      v20 = sub_10011F31C(x, y, v8);
      if (v4)
      {
        v20 = sub_100120FD4(v20, v21);
      }

      v22 = sub_10011F340(v20, v21, 1.0 / v19);
      v24 = sub_10011F340(v22, v23, v17);
      self->mOut.x = sub_10011F334(v8, v9, v24);
      self->mOut.y = v25;
    }
  }
}

- (void)collapse
{
  mNode = self->mNode;
  self->mIn = mNode;
  self->mOut = mNode;
}

- (BOOL)isCollapsed
{
  x = self->mNode.x;
  y = self->mNode.y;
  v5 = sub_10011ECC8(self->mIn.x, self->mIn.y, x, y);
  if (v5)
  {
    v6 = self->mOut.x;
    v7 = self->mOut.y;

    LOBYTE(v5) = sub_10011ECC8(v6, v7, x, y);
  }

  return v5;
}

- (void)updateReflectedState
{
  x = self->mNode.x;
  y = self->mNode.y;
  v5 = sub_10011F31C(self->mOut.x, self->mOut.y, x);
  v7 = v6;
  v8 = CGPointZero.y;
  v9 = sub_100120090(v5, v6, CGPointZero.x, v8);
  v10 = sub_10011F340(v5, v7, 1.0 / v9);
  v12 = v11;
  v13 = sub_10011F31C(x, y, self->mIn.x);
  v15 = v14;
  v16 = sub_100120090(v13, v14, CGPointZero.x, v8);
  v17 = sub_10011F340(v13, v15, 1.0 / v16);
  v19 = sub_10011ECC8(v10, v12, v17, v18);
  if (vabdd_f64(v9, v16) >= 0.01)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [(CRLBezierNode *)self setReflectedState:v21];
}

- (void)swapControlPoints
{
  mIn = self->mIn;
  self->mIn = self->mOut;
  self->mOut = mIn;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  self->mNode = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->mNode.y), *&a3->a, self->mNode.x));
  self->mIn = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->mIn.y), *&a3->a, self->mIn.x));
  self->mOut = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->mOut.y), *&a3->a, self->mOut.x));
}

- (BOOL)underPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v12 = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, self->mNode.y), *&a4->a, self->mNode.x));
  if (sub_100120090(a3.x, a3.y, v12.f64[0], v12.f64[1]) >= a5)
  {
    v14 = [(CRLBezierNode *)self isSelected];
    if (!v14)
    {
      return v14;
    }

    a = a4->a;
    c = a4->c;
    d = a4->d;
    tx = a4->tx;
    ty = a4->ty;
    b = a4->b;
    if (sub_100120090(x, y, tx + self->mIn.y * c + a4->a * self->mIn.x, ty + self->mIn.y * d + b * self->mIn.x) >= a5)
    {
      if (sub_100120090(x, y, tx + c * self->mOut.y + a * self->mOut.x, ty + d * self->mOut.y + b * self->mOut.x) >= a5)
      {
        LOBYTE(v14) = 0;
        return v14;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    *a6 = v13;
  }

  LOBYTE(v14) = 1;
  return v14;
}

- (id)reflectedStateString
{
  mReflectedState = self->mReflectedState;
  if (mReflectedState > 2)
  {
    return &stru_1018BCA28;
  }

  else
  {
    return *(&off_10184B7D0 + mReflectedState);
  }
}

- (id)typeString
{
  mType = self->mType;
  if (mType > 4)
  {
    return &stru_1018BCA28;
  }

  else
  {
    return *(&off_10184B7E8 + mType);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromCGPoint(self->mNode);
  v6 = NSStringFromCGPoint(self->mIn);
  v7 = NSStringFromCGPoint(self->mOut);
  v8 = [(CRLBezierNode *)self reflectedStateString];
  if (self->mSelected)
  {
    v9 = @" selected";
  }

  else
  {
    v9 = &stru_1018BCA28;
  }

  v10 = [(CRLBezierNode *)self typeString];
  v11 = [NSString stringWithFormat:@"<%@ %p node=%@ in=%@ out=%@ reflected=%@%@ %@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (CGPoint)nodePoint
{
  x = self->mNode.x;
  y = self->mNode.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)inControlPoint
{
  x = self->mIn.x;
  y = self->mIn.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)outControlPoint
{
  x = self->mOut.x;
  y = self->mOut.y;
  result.y = y;
  result.x = x;
  return result;
}

@end