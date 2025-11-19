@interface CPHighlighter
+ (BOOL)reconstructHighlightFor:(id)a3;
- (CPHighlighter)initWithTextLine:(id)a3 inZone:(id)a4 ofColor:(CGColor *)a5;
- (void)highlight;
@end

@implementation CPHighlighter

- (void)highlight
{
  v3 = [(CPTextLine *)self->textLine charSequence];
  [v3 map:styleWithHighlight passing:self];
  v4 = [(CPObject *)self->boundingZone parent];
  v5 = [v4 parent];
  v6 = [v5 charactersInZone];
  if (v6)
  {
    [v6 addCharsFromSequence:v3];
  }

  else
  {
    v7 = [v3 copy];
    [v5 setCharactersInZone:v7];
  }

  v8 = [(CPObject *)self->boundingZone count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      [v5 add:{-[CPObject childAtIndex:](self->boundingZone, "childAtIndex:", v9)}];
      v9 = (v9 - 1);
    }

    while (v9 != -1);
  }

  boundingZone = self->boundingZone;
  v11 = [(CPObject *)boundingZone ancestorOfClass:objc_opt_class()];
  if (v11)
  {
    v12 = v11;
    v13 = [(CPZone *)boundingZone zoneBorders];
    v14 = [v13 count];
    v15 = v14;
    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = [v13 objectAtIndex:v16];
        v18 = [v17 graphicObjects];
        v19 = [v18 count];
        v20 = v19;
        if (v19)
        {
          v21 = 0;
          do
          {
            v22 = [v18 objectAtIndex:v21];
            if ([v22 parent] && !objc_msgSend(v22, "user"))
            {
              [v22 setUser:v12];
            }

            ++v21;
          }

          while (v20 != v21);
        }

        v23 = [v17 neighborCount];
        if (v23)
        {
          v24 = v23;
          v25 = 0;
          do
          {
            v26 = [objc_msgSend(v17 neighborAtIndex:{v25), "neighborShape"}];
            if (![v26 user])
            {
              [v26 setUser:v12];
            }

            v25 = (v25 + 1);
          }

          while (v24 != v25);
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }

  [v4 remove];
}

- (CPHighlighter)initWithTextLine:(id)a3 inZone:(id)a4 ofColor:(CGColor *)a5
{
  v9.receiver = self;
  v9.super_class = CPHighlighter;
  result = [(CPHighlighter *)&v9 init];
  if (result)
  {
    result->boundingZone = a4;
    result->textLine = a3;
    result->color = a5;
  }

  return result;
}

+ (BOOL)reconstructHighlightFor:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    LOBYTE(v4) = 0;
    return v4;
  }

  LODWORD(v4) = [a3 isRectangular];
  if (v4)
  {
    v4 = [a3 parent];
    if (v4)
    {
      v5 = v4;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }

      v4 = [v5 parent];
      if (!v4)
      {
        return v4;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }

      v6 = [a3 textLinesInZone];
      if ([v6 count] != 1)
      {
        goto LABEL_2;
      }

      if ([v5 countOfClass:objc_opt_class()] != 1)
      {
        goto LABEL_2;
      }

      v7 = [v6 objectAtIndex:0];
      [a3 zoneBounds];
      v9 = v8;
      [v7 bounds];
      if (v9 > v10 * 3.0)
      {
        goto LABEL_2;
      }

      LODWORD(v4) = [objc_msgSend(v7 "charSequence")];
      if (v4)
      {
        v4 = [a3 newBackgroundColor];
        if (v4)
        {
          v11 = v4;
          v12 = [[CPHighlighter alloc] initWithTextLine:v7 inZone:a3 ofColor:v4];
          [(CPHighlighter *)v12 highlight];

          CFRelease(v11);
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

@end