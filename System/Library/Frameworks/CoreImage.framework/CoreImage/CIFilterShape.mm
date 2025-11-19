@interface CIFilterShape
+ (CIFilterShape)shapeWithRect:(CGRect)r;
+ (id)_shapeInfinite;
- (CGRect)extent;
- (CGSRegionObject)CGSRegion;
- (CIFilterShape)initWithRect:(CGRect)r;
- (CIFilterShape)initWithStruct:(filterShape *)a3;
- (CIFilterShape)insetByX:(int)dx Y:(int)dy;
- (CIFilterShape)intersectWith:(CIFilterShape *)s2;
- (CIFilterShape)intersectWithRect:(CGRect)r;
- (CIFilterShape)transformBy:(CGAffineTransform *)m interior:(BOOL)flag;
- (CIFilterShape)unionWith:(CIFilterShape *)s2;
- (CIFilterShape)unionWithRect:(CGRect)r;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CIFilterShape

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    free(priv);
  }

  self->_priv = 0;
  v4.receiver = self;
  v4.super_class = CIFilterShape;
  [(CIFilterShape *)&v4 dealloc];
}

+ (id)_shapeInfinite
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (CIFilterShape)shapeWithRect:(CGRect)r
{
  v3 = [[a1 alloc] initWithRect:{r.origin.x, r.origin.y, r.size.width, r.size.height}];

  return v3;
}

- (CIFilterShape)initWithRect:(CGRect)r
{
  height = r.size.height;
  width = r.size.width;
  y = r.origin.y;
  x = r.origin.x;
  v14.receiver = self;
  v14.super_class = CIFilterShape;
  v7 = [(CIFilterShape *)&v14 init];
  if (v7)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v16 = CGRectStandardize(v15);
    v8 = v16.origin.x;
    v9 = v16.origin.y;
    v10 = v16.size.width;
    v11 = v16.size.height;
    v7->_priv = 0;
    if (!CGRectIsInfinite(v16))
    {
      v12 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      v17.origin.x = v8;
      v17.origin.y = v9;
      v17.size.width = v10;
      v17.size.height = v11;
      *v12 = CGRectIntegral(v17);
      v7->_priv = v12;
    }
  }

  return v7;
}

- (CIFilterShape)initWithStruct:(filterShape *)a3
{
  v9.receiver = self;
  v9.super_class = CIFilterShape;
  v4 = [(CIFilterShape *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_priv = 0;
    if (a3)
    {
      v6 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      size = a3->var0.size;
      *v6 = a3->var0.origin;
      v6[1] = size;
      v5->_priv = v6;
    }
  }

  return v5;
}

- (CIFilterShape)transformBy:(CGAffineTransform *)m interior:(BOOL)flag
{
  if (self->_priv)
  {
    v5 = flag;
    v8 = *&m->c;
    *&v15.a = *&m->a;
    *&v15.c = v8;
    *&v15.tx = *&m->tx;
    if (CGAffineTransformIsIdentity(&v15))
    {
      return [(CIFilterShape *)self copy];
    }

    else
    {
      a = m->a;
      b = m->b;
      if (m->a == 1.0 && b == 0.0 && m->c == 0.0 && m->d == 1.0 && m->tx == floor(m->tx) && m->ty == floor(m->ty))
      {
        [(CIFilterShape *)self extent];
        v17 = CGRectOffset(v16, m->tx, m->ty);
      }

      else
      {
        if ((b != 0.0 || m->c != 0.0) && a == 0.0)
        {
          a = m->d;
        }

        [(CIFilterShape *)self extent];
        v12 = *&m->c;
        *&v15.a = *&m->a;
        *&v15.c = v12;
        *&v15.tx = *&m->tx;
        v19 = CGRectApplyAffineTransform(v18, &v15);
        if (v5)
        {
          v20 = CGRectStandardize(v19);
          x = v20.origin.x;
          y = v20.origin.y;
          v17.origin.x = ceil(v20.origin.x);
          v17.origin.y = ceil(v20.origin.y);
          v17.size.width = floor(x + v20.size.width) - v17.origin.x;
          v17.size.height = floor(y + v20.size.height) - v17.origin.y;
        }

        else
        {
          v17 = CGRectIntegral(v19);
        }
      }

      return [CIFilterShape shapeWithRect:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
    }
  }

  else
  {

    return [CIFilterShape _shapeInfinite:m];
  }
}

- (CIFilterShape)insetByX:(int)dx Y:(int)dy
{
  if (self->_priv)
  {
    [(CIFilterShape *)self extent];
    v10 = CGRectInset(v9, dx, dy);

    return [CIFilterShape shapeWithRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  }

  else
  {

    return [CIFilterShape _shapeInfinite:*&dx];
  }
}

- (CIFilterShape)unionWith:(CIFilterShape *)s2
{
  if (!s2)
  {
    return 0;
  }

  if (self->_priv && s2->_priv)
  {
    [(CIFilterShape *)self extent];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(CIFilterShape *)s2 extent];
    v20.origin.x = v12;
    v20.origin.y = v13;
    v20.size.width = v14;
    v20.size.height = v15;
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    v19 = CGRectUnion(v18, v20);

    return [CIFilterShape shapeWithRect:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
  }

  else
  {

    return +[CIFilterShape _shapeInfinite];
  }
}

- (CIFilterShape)unionWithRect:(CGRect)r
{
  v10 = CGRectStandardize(r);
  if (self->_priv && (x = v10.origin.x, y = v10.origin.y, width = v10.size.width, height = v10.size.height, !CGRectIsInfinite(v10)))
  {
    [(CIFilterShape *)self extent];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v12 = CGRectUnion(v11, v13);

    return [CIFilterShape shapeWithRect:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  }

  else
  {

    return [CIFilterShape _shapeInfinite:v10.origin.x];
  }
}

- (CIFilterShape)intersectWith:(CIFilterShape *)s2
{
  if (!s2)
  {
    return 0;
  }

  priv = s2->_priv;
  if (self->_priv)
  {
    if (priv)
    {
      [(CIFilterShape *)self extent];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(CIFilterShape *)s2 extent];
      v22.origin.x = v13;
      v22.origin.y = v14;
      v22.size.width = v15;
      v22.size.height = v16;
      v20.origin.x = v6;
      v20.origin.y = v8;
      v20.size.width = v10;
      v20.size.height = v12;
      v21 = CGRectIntersection(v20, v22);

      return [CIFilterShape shapeWithRect:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
    }

    goto LABEL_10;
  }

  if (priv)
  {
    self = s2;
LABEL_10:
    v18 = [(CIFilterShape *)self copy];

    return v18;
  }

  return +[CIFilterShape _shapeInfinite];
}

- (CIFilterShape)intersectWithRect:(CGRect)r
{
  v11 = CGRectStandardize(r);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (self->_priv)
  {
    goto LABEL_2;
  }

  if (!CGRectIsInfinite(v11))
  {
    if (!self->_priv)
    {
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
LABEL_11:

      return [CIFilterShape shapeWithRect:v14.origin.x, v14.origin.y, v14.size.width, v14.size.height];
    }

LABEL_2:
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    if (CGRectIsInfinite(v12))
    {
      v8 = [(CIFilterShape *)self copy];

      return v8;
    }

    [(CIFilterShape *)self extent];
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v14 = CGRectIntersection(v13, v15);
    goto LABEL_11;
  }

  return +[CIFilterShape _shapeInfinite];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CIFilterShape allocWithZone:a3];
  priv = self->_priv;

  return [(CIFilterShape *)v4 initWithStruct:priv];
}

- (CGRect)extent
{
  priv = self->_priv;
  if (!priv)
  {
    priv = MEMORY[0x1E695F040];
  }

  v3 = priv[2];
  v4 = priv[3];
  v5 = *priv;
  v6 = priv[1];
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)description
{
  [(CIFilterShape *)self extent];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsInfinite(v12))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIFilterShape: %p extent [infinite]>", self, v8, v9, v10, v11];
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectIsEmpty(v13))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIFilterShape: %p extent [empty]>", self, v8, v9, v10, v11];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIFilterShape: %p extent [%g %g %g %g]>", self, *&x, *&y, *&width, *&height];
  }
}

- (CGSRegionObject)CGSRegion
{
  [(CIFilterShape *)self extent];
  if (!CGRectIsInfinite(v3))
  {
    CGSNewRegionWithRect();
  }

  return 0;
}

@end