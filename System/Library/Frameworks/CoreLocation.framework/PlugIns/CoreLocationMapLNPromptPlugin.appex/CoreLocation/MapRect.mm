@interface MapRect
+ ($41299696D20B6C925B74A5D5E4D5CC87)boundingWithNormalizedRects:()vector<MKMapRect;
- ($41299696D20B6C925B74A5D5E4D5CC87)rect;
- (MapRect)initWithRectA:(id)a rectB:(id)b;
@end

@implementation MapRect

+ ($41299696D20B6C925B74A5D5E4D5CC87)boundingWithNormalizedRects:()vector<MKMapRect
{
  var1 = a3->var1;
  var0 = a3->var0;
  v6 = var1 - a3->var0;
  if (v6)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    sub_100007EE8(&v31, var0, var1, v6 >> 5);
    v8 = 126 - 2 * __clz((v32 - v31) >> 5);
    if (v32 == v31)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_1000080C4(v31, v32, v9, 1, v7);
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    if (v31 != v32)
    {
      v10 = 0;
      y = INFINITY;
      x = NAN;
      v13 = NAN;
      v14 = -INFINITY;
      v15 = v31;
      do
      {
        v17 = v15->n128_f64[0];
        v16 = v15->n128_f64[1];
        v18 = v15[1].n128_f64[0];
        if (v15->n128_f64[0] > v13)
        {
          v19 = v10 ? *v10 : -INFINITY;
          if (v17 - v13 > v19)
          {
            v28 = v17 - v13;
            v29 = v13;
            v10 = &v28;
            v30 = v17;
          }
        }

        v13 = fmax(v13, v17 + v18);
        y = fmin(y, v16);
        v14 = fmax(v14, v16 + v15[1].n128_f64[1]);
        v15 += 2;
      }

      while (v15 != v32);
      v20 = v13 - NAN;
      if (v10)
      {
        width = MKMapRectWorld.size.width;
        if (*v10 > width - v20)
        {
          x = v10[2];
          v20 = width - *v10;
        }
      }

      if (x == MKMapRectNull.origin.x && y == MKMapRectNull.origin.y)
      {
        v20 = MKMapRectNull.size.width;
        height = MKMapRectNull.size.height;
        x = MKMapRectNull.origin.x;
        y = MKMapRectNull.origin.y;
        if (!v31)
        {
          goto LABEL_26;
        }
      }

      else
      {
        height = v14 - y;
        if (!v31)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_25;
    }

    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    v20 = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    if (v31)
    {
LABEL_25:
      v32 = v31;
      operator delete(v31);
    }
  }

  else
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    v20 = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

LABEL_26:
  v24 = x;
  v25 = y;
  v26 = v20;
  v27 = height;
  result.var1.var1 = v27;
  result.var1.var0 = v26;
  result.var0.var1 = v25;
  result.var0.var0 = v24;
  return result;
}

- (MapRect)initWithRectA:(id)a rectB:(id)b
{
  var1 = b.var0.var1;
  var0 = b.var0.var0;
  v6 = a.var0.var1;
  v7 = a.var0.var0;
  aCopy = a;
  *&v45 = b.var0.var0;
  *(&v45 + 1) = *&b.var0.var1;
  *&v46 = b.var1.var0;
  *(&v46 + 1) = *&b.var1.var1;
  v44.receiver = self;
  v44.super_class = MapRect;
  v8 = [(MapRect *)&v44 init];
  if (v8)
  {
    v9 = 0;
    __p = 0;
    v42 = 0;
    v43 = 0;
    y = MKMapRectNull.origin.y;
    if (v7 != MKMapRectNull.origin.x || v6 != y)
    {
      sub_100008048(&__p, 1uLL);
    }

    if (var0 != MKMapRectNull.origin.x || var1 != y)
    {
      v13 = __p;
      v14 = -__p;
      v15 = -__p >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_100007FA0();
      }

      v17 = v43 - __p;
      if ((v43 - __p) >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      v18 = v17 >= 0x7FFFFFFFFFFFFFE0;
      v19 = 0x7FFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v16;
      }

      if (v19)
      {
        sub_100008048(&__p, v19);
      }

      v20 = -__p >> 5;
      v21 = (32 * v15);
      v22 = v46;
      *v21 = v45;
      v21[1] = v22;
      v9 = 32 * v15 + 32;
      v23 = &v21[-2 * v20];
      memcpy(v23, v13, v14);
      v24 = __p;
      __p = v23;
      v42 = v9;
      v43 = 0;
      if (v24)
      {
        operator delete(v24);
      }

      v42 = v9;
    }

    v39 = 0;
    v40 = 0;
    v38 = 0;
    sub_100007EE8(&v38, __p, v9, (v9 - __p) >> 5);
    [MapRect boundingWithNormalizedRects:&v38];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v26 == MKMapRectNull.origin.x && (v33 = MKMapRectNull.origin.y, v28 == v33))
    {
      v34 = v6 == v33 && v7 == MKMapRectNull.origin.x;
      v35 = &aCopy;
      if (v34)
      {
        v35 = &v45;
      }

      v36 = v35->var1;
      *(v8 + 8) = v35->var0;
      *(v8 + 24) = v36;
    }

    else
    {
      *(v8 + 1) = v26;
      *(v8 + 2) = v28;
      *(v8 + 3) = v30;
      *(v8 + 4) = v32;
    }

    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }
  }

  return v8;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

@end