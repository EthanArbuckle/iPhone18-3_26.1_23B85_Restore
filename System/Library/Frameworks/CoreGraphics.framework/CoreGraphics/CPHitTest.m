@interface CPHitTest
- (BOOL)hitTestGraphicObject:(id)a3 point:(CGPoint)a4;
- (BOOL)hitTestParagraph:(id)a3 point:(CGPoint)a4;
- (CPHitTest)initWithPage:(id)a3;
- (id)column:(CGPoint)a3;
- (id)findBestMatch:(id)a3 atPoint:(CGPoint)a4;
- (id)findObjectIn:(id)a3 at:(CGPoint)a4 count:(int *)a5;
- (id)layoutArea:(CGPoint)a3;
- (id)paragraph:(CGPoint)a3;
- (id)paragraphNear:(CGPoint)a3;
- (id)textLine:(CGPoint)a3;
- (int64_t)compareByReadingOrder:(CGPoint)a3 to:(CGPoint)a4;
- (unsigned)columnsAt:(CGPoint)a3;
- (void)dealloc;
- (void)findClickableObjects:(BOOL)a3;
@end

@implementation CPHitTest

- (int64_t)compareByReadingOrder:(CGPoint)a3 to:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(CPHitTest *)self textLine:a3.x, a3.y];
  v8 = [(CPHitTest *)self textLine:x, y];
  [(CPPage *)self->page pageCropBox];
  v12[0] = v9;
  v12[1] = v10;
  return readingOrder(v7, v8, v12);
}

- (id)textLine:(CGPoint)a3
{
  x = a3.x;
  point = a3.y;
  v3 = [(CPHitTest *)self paragraph:?];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [v3 rotationAngle];
  v6.x = x;
  v6.y = point;
  pointa = v6;
  if (v5 != 0.0)
  {
    v8 = __sincos_stret(v5 * -0.0174532925);
    v7.f64[0] = v8.__cosval;
    v9.f64[0] = -v8.__sinval;
    v9.f64[1] = v8.__cosval;
    v7.f64[1] = v8.__sinval;
    pointa = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v9, pointa, 1), v7, x), 0);
  }

  v10 = [v4 count];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = 0;
  while (1)
  {
    v13 = [v4 childAtIndex:v12];
    [v13 bounds];
    if (CGRectContainsPoint(v18, pointa))
    {
      break;
    }

    v12 = (v12 + 1);
    if (v11 == v12)
    {
      return 0;
    }
  }

  return v13;
}

- (id)column:(CGPoint)a3
{
  v3 = [(CPHitTest *)self objectAtPoint:a3.x, a3.y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unsigned)columnsAt:(CGPoint)a3
{
  v4 = 0;
  [(CPHitTest *)self findObjectIn:self->objectsOnPage at:&v4 count:a3.x, a3.y];
  return v4;
}

- (id)layoutArea:(CGPoint)a3
{
  v3 = [(CPHitTest *)self objectAtPoint:a3.x, a3.y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 parent];
}

- (id)paragraphNear:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CPHitTest *)self paragraph:?];
  if (v6)
  {
    return v6;
  }

  v9 = [(CPHitTest *)self column:x, y];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  [v9 rotationAngle];
  if (v11 != 0.0)
  {
    v12 = __sincos_stret(v11 * -0.0174532925);
    y = y * v12.__cosval + v12.__sinval * x + 0.0;
  }

  v13 = [v10 count];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    do
    {
      v7 = [v10 childAtIndex:v15];
      [v7 bounds];
      if (v18 < 0.0 || v19 < 0.0)
      {
        *(&v17 - 1) = CGRectStandardize(*&v16);
      }

      if (v17 < y)
      {
        return v7;
      }

      v15 = (v15 + 1);
    }

    while (v14 != v15);
  }

  return [v10 lastChild];
}

- (id)paragraph:(CGPoint)a3
{
  x = a3.x;
  point = a3.y;
  v3 = [(CPHitTest *)self objectAtPoint:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [v3 rotationAngle];
  v5.x = x;
  v5.y = point;
  pointa = v5;
  if (v4 != 0.0)
  {
    v7 = __sincos_stret(v4 * -0.0174532925);
    v6.f64[0] = v7.__cosval;
    v8.f64[0] = -v7.__sinval;
    v8.f64[1] = v7.__cosval;
    v6.f64[1] = v7.__sinval;
    pointa = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v8, pointa, 1), v6, x), 0);
  }

  v9 = [v3 count];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  while (1)
  {
    v12 = [v3 childAtIndex:v11];
    [v12 bounds];
    if (CGRectContainsPoint(v17, pointa))
    {
      break;
    }

    v11 = (v11 + 1);
    if (v10 == v11)
    {
      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  [(NSMutableArray *)self->objectsOnPage removeAllObjects];

  v3.receiver = self;
  v3.super_class = CPHitTest;
  [(CPHitTest *)&v3 dealloc];
}

- (CPHitTest)initWithPage:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPHitTest;
  v4 = [(CPHitTest *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->page = a3;
    [(CPHitTest *)v4 findClickableObjects:0];
  }

  return v5;
}

- (id)findObjectIn:(id)a3 at:(CGPoint)a4 count:(int *)a5
{
  y = a4.y;
  x = a4.x;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  *a5 = 0;
  v11 = [a3 count];
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = v11 & 0x7FFFFFFF;
    while (1)
    {
      v15 = [a3 objectAtIndex:v12];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v15 rotationAngle];
      v17 = v16;
      [v15 renderedBounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      if (v17 == 0.0)
      {
        goto LABEL_7;
      }

      v26 = __sincos_stret(v17 * -0.0174532925);
      v27 = v26.__cosval * x - v26.__sinval * y + 0.0;
      v28 = y * v26.__cosval + v26.__sinval * x + 0.0;
LABEL_8:
      v37.origin.x = v19;
      v37.origin.y = v21;
      v37.size.width = v23;
      v37.size.height = v25;
      if (CGRectContainsPoint(v37, *&v27))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 hasFill] & 1) == 0)
        {
          if (!v13)
          {
            v13 = v15;
          }
        }

        else
        {
          [v10 addObject:v15];
        }
      }

      if (v14 == ++v12)
      {
        goto LABEL_17;
      }
    }

    [v15 renderedBounds];
    v19 = v29;
    v21 = v30;
    v23 = v31;
    v25 = v32;
LABEL_7:
    v27 = x;
    v28 = y;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_17:
  v33 = [v10 count];
  *a5 = v33;
  if (v33)
  {
    if (v33 == 1)
    {
      v34 = [v10 objectAtIndex:0];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v35 = [v34 zOrder];
        if (v35 >= [v13 zOrder])
        {
          v13 = v34;
        }
      }

      else
      {
        v13 = v34;
      }
    }

    else
    {
      v13 = [(CPHitTest *)self findBestMatch:v10 atPoint:x, y];
    }
  }

  return v13;
}

- (id)findBestMatch:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [a3 objectAtIndex:0];
  v9 = [a3 count];
  if (v9 < 1)
  {
    return v8;
  }

  v10 = 0;
  v11 = v9 & 0x7FFFFFFF;
  while (1)
  {
    v12 = [a3 objectAtIndex:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [(CPHitTest *)self hitTestGraphicObject:v12 point:x, y])
      {
        break;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(CPHitTest *)self hitTestParagraph:v12 point:x, y])
    {
      break;
    }

    if (v11 == ++v10)
    {
      return v8;
    }
  }

  return v12;
}

- (BOOL)hitTestParagraph:(id)a3 point:(CGPoint)a4
{
  x = a4.x;
  pointa = a4.y;
  [a3 rotationAngle];
  v6.x = x;
  v6.y = pointa;
  point = v6;
  if (v5 != 0.0)
  {
    v8 = __sincos_stret(v5 * -0.0174532925);
    v7.f64[0] = v8.__cosval;
    v9.f64[0] = -v8.__sinval;
    v9.f64[1] = v8.__cosval;
    v7.f64[1] = v8.__sinval;
    point = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v9, point, 1), v7, x), 0);
  }

  v10 = [a3 count];
  if (v10 < 1)
  {
    return 0;
  }

  else
  {
    v11 = v10;
    v12 = 0;
    v13 = 1;
    do
    {
      [objc_msgSend(a3 childAtIndex:{v12), "bounds"}];
      if (CGRectContainsPoint(v18, point))
      {
        break;
      }

      v12 = (v12 + 1);
      v13 = v12 < v11;
    }

    while (v11 != v12);
  }

  return v13;
}

- (BOOL)hitTestGraphicObject:(id)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [a3 count];
  if (v8 < 1)
  {
    return 0;
  }

  else
  {
    v9 = v8;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [a3 childAtIndex:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(CPHitTest *)self hitTestGraphicObject:v12 point:x, y])
        {
          return v11;
        }
      }

      else
      {
        [v12 renderedBounds];
        v14.x = x;
        v14.y = y;
        if (CGRectContainsPoint(v15, v14))
        {
          return v11;
        }
      }

      v10 = (v10 + 1);
      v11 = v10 < v9;
    }

    while (v9 != v10);
  }

  return v11;
}

- (void)findClickableObjects:(BOOL)a3
{
  v3 = a3;
  objectsOnPage = self->objectsOnPage;
  if (objectsOnPage)
  {
  }

  self->objectsOnPage = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(CPPage *)self->page bodyZone];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [v6 childAtIndex:v9];
      if (![v10 count])
      {
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v10 children];
        v15 = self->objectsOnPage;
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v3)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[NSMutableArray addObject:](self->objectsOnPage, "addObject:", [v10 childAtIndex:0]);
          }
        }

        goto LABEL_14;
      }

      v16 = [v10 firstChild];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v3)
        {
          [(NSMutableArray *)self->objectsOnPage addObject:v16];
        }

        if ([v16 count])
        {
          v11 = [v16 firstChild];
LABEL_9:
          v12 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = self->objectsOnPage;
            v14 = [v12 children];
            v15 = v13;
LABEL_13:
            [(NSMutableArray *)v15 addObjectsFromArray:v14];
          }
        }
      }

LABEL_14:
      v9 = (v9 + 1);
      if (v8 == v9)
      {
        goto LABEL_25;
      }
    }

    if (![v10 count])
    {
      goto LABEL_14;
    }

    v11 = [v10 childAtIndex:0];
    goto LABEL_9;
  }

LABEL_25:
  [(CPPage *)self->page pageCropBox];
  v21[0] = v17;
  v21[1] = v18;
  [(NSMutableArray *)self->objectsOnPage sortUsingFunction:readingOrder context:v21, v19, v20];
}

@end