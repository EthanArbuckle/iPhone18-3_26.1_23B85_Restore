@interface CPParagraph
- (BOOL)isPreformattedWithUnitWidth:(double *)a3;
- (CGRect)bounds;
- (CGRect)reducedBounds;
- (CPParagraph)init;
- (double)selectionBottom;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)index;
- (void)dealloc;
- (void)explode;
@end

@implementation CPParagraph

- (CGRect)bounds
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  children = self->super.super.super.super.children;
  v3 = [(NSMutableArray *)children countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(children);
        }

        v11 = [*(*(&v22 + 1) + 8 * i) charSequence];
        if ([v11 length])
        {
          v12 = 0;
          do
          {
            v13 = [v11 charAtIndex:v12];
            v14 = __sincos_stret(*(v13 + 168) * 0.0174532925);
            v15 = *v13;
            v16 = *(v13 + 8);
            v28.size.width = *(v13 + 16);
            v28.size.height = *(v13 + 24);
            v21.a = v14.__cosval;
            v21.b = v14.__sinval;
            v21.c = -v14.__sinval;
            v21.d = v14.__cosval;
            v21.tx = 0.0;
            v21.ty = 0.0;
            v28.origin.x = v15;
            v28.origin.y = v16;
            v32 = CGRectApplyAffineTransform(v28, &v21);
            v29.origin.x = x;
            v29.origin.y = y;
            v29.size.width = width;
            v29.size.height = height;
            v30 = CGRectUnion(v29, v32);
            x = v30.origin.x;
            y = v30.origin.y;
            width = v30.size.width;
            height = v30.size.height;
            v12 = (v12 + 1);
          }

          while (v12 < [v11 length]);
        }
      }

      v4 = [(NSMutableArray *)children countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)isPreformattedWithUnitWidth:(double *)a3
{
  listItem = self->listItem;
  if (a3)
  {
    *a3 = *&listItem;
  }

  if (*&listItem == 0.0)
  {
    v7 = [(NSMutableArray *)self->super.super.super.super.children count];
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v10 = [(NSMutableArray *)self->super.super.super.super.children objectAtIndex:v9];
        v6 = [v10 isMonospaced];
        if (!v6)
        {
          break;
        }

        if ([v10 inlineCount])
        {
          goto LABEL_22;
        }

        if (v8 == ++v9)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0.0;
          while (1)
          {
            v15 = [(NSMutableArray *)self->super.super.super.super.children objectAtIndex:v11];
            v28 = 0;
            if (![v15 styleIsUniform:&v28 styleFlags:3072])
            {
              goto LABEL_22;
            }

            v16 = v28;
            if (v13 && v13 != v28)
            {
              if (!v28 || *(v13 + 72) != *(v28 + 72))
              {
                goto LABEL_22;
              }

              v17 = *(v13 + 64);
              if (v17 != *(v28 + 64))
              {
                if (![v17 isSameFontAs:?])
                {
                  goto LABEL_22;
                }

                v16 = v28;
              }
            }

            v18 = [objc_msgSend(v15 "charSequence")];
            if (!v18)
            {
              goto LABEL_22;
            }

            v19 = v18;
            v20 = v18;
            [v15 monospaceWidth];
            v14 = v14 + v20 * v21;
            v12 += v19;
            ++v11;
            v13 = v16;
            if (v8 == v11)
            {
              if (v12 >= 0xC)
              {
                v22 = 0;
                v23 = v14 / v12;
                while (1)
                {
                  v24 = [(NSMutableArray *)self->super.super.super.super.children objectAtIndex:v22];
                  v25 = [objc_msgSend(v24 "charSequence")];
                  [v24 monospaceWidth];
                  if (vabdd_f64(v26, v23) * v25 > v23 * 0.0625 + v23 * 0.0625)
                  {
                    break;
                  }

                  if (v8 == ++v22)
                  {
                    *&self->listItem = v23;
                    if (a3)
                    {
                      *a3 = v23;
                    }

                    goto LABEL_4;
                  }
                }
              }

              goto LABEL_22;
            }
          }
        }
      }
    }

    else
    {
LABEL_22:
      LOBYTE(v6) = 0;
    }
  }

  else
  {
LABEL_4:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (double)selectionBottom
{
  v3 = 0.0;
  if ([(CPObject *)self count])
  {
    v4 = [(CPObject *)self lastChild];
    if (v4)
    {
      [v4 bounds];
      v3 = v6;
      if (v7 < 0.0 || v8 < 0.0)
      {
        v10 = CGRectStandardize(*&v5);
        return v10.origin.y;
      }
    }
  }

  return v3;
}

- (CGRect)reducedBounds
{
  [(CPParagraph *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [-[CPObject lastChild](self "lastChild")];
  v12 = v11;
  v13 = v10 - (v6 - v11);
  v14 = v4;
  v15 = v8;
  result.size.height = v13;
  result.size.width = v15;
  result.origin.y = v12;
  result.origin.x = v14;
  return result;
}

- (void)explode
{
  v3 = [(CPObject *)self childrenOfClass:objc_opt_class()];
  if ([v3 count] >= 2 && objc_msgSend(v3, "count"))
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndex:v4];
      if (v4)
      {
        v6 = v5;
        v7 = objc_alloc_init(CPParagraph);
        [(CPParagraph *)v7 setAlignment:*&self->noIndentation];
        [-[CPObject parent](self "parent")];
        [(CPChunk *)v7 add:v6];
      }

      ++v4;
    }

    while ([v3 count] > v4);
  }
}

- (unint64_t)index
{
  v3 = [(CPObject *)self->super.super.super.super.parent children];

  return [v3 indexOfObject:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CPParagraph;
  result = [(CPRegion *)&v4 copyWithZone:a3];
  *(result + 24) = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPParagraph;
  [(CPRegion *)&v3 dealloc];
}

- (CPParagraph)init
{
  v3.receiver = self;
  v3.super_class = CPParagraph;
  result = [(CPRotatedRegion *)&v3 init];
  if (result)
  {
    result->super.super.isTextRegion = 1;
    LOBYTE(result->alignment) = 0;
    *&result->hasDropCap = 0;
  }

  return result;
}

@end