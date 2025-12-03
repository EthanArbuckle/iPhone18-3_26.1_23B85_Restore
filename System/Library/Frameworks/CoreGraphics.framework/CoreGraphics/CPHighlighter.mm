@interface CPHighlighter
+ (BOOL)reconstructHighlightFor:(id)for;
- (CPHighlighter)initWithTextLine:(id)line inZone:(id)zone ofColor:(CGColor *)color;
- (void)highlight;
@end

@implementation CPHighlighter

- (void)highlight
{
  charSequence = [(CPTextLine *)self->textLine charSequence];
  [charSequence map:styleWithHighlight passing:self];
  parent = [(CPObject *)self->boundingZone parent];
  v4Parent = [parent parent];
  charactersInZone = [v4Parent charactersInZone];
  if (charactersInZone)
  {
    [charactersInZone addCharsFromSequence:charSequence];
  }

  else
  {
    v7 = [charSequence copy];
    [v4Parent setCharactersInZone:v7];
  }

  v8 = [(CPObject *)self->boundingZone count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      [v4Parent add:{-[CPObject childAtIndex:](self->boundingZone, "childAtIndex:", v9)}];
      v9 = (v9 - 1);
    }

    while (v9 != -1);
  }

  boundingZone = self->boundingZone;
  v11 = [(CPObject *)boundingZone ancestorOfClass:objc_opt_class()];
  if (v11)
  {
    v12 = v11;
    zoneBorders = [(CPZone *)boundingZone zoneBorders];
    v14 = [zoneBorders count];
    v15 = v14;
    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = [zoneBorders objectAtIndex:v16];
        graphicObjects = [v17 graphicObjects];
        v19 = [graphicObjects count];
        v20 = v19;
        if (v19)
        {
          v21 = 0;
          do
          {
            v22 = [graphicObjects objectAtIndex:v21];
            if ([v22 parent] && !objc_msgSend(v22, "user"))
            {
              [v22 setUser:v12];
            }

            ++v21;
          }

          while (v20 != v21);
        }

        neighborCount = [v17 neighborCount];
        if (neighborCount)
        {
          v24 = neighborCount;
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

  [parent remove];
}

- (CPHighlighter)initWithTextLine:(id)line inZone:(id)zone ofColor:(CGColor *)color
{
  v9.receiver = self;
  v9.super_class = CPHighlighter;
  result = [(CPHighlighter *)&v9 init];
  if (result)
  {
    result->boundingZone = zone;
    result->textLine = line;
    result->color = color;
  }

  return result;
}

+ (BOOL)reconstructHighlightFor:(id)for
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    LOBYTE(parent) = 0;
    return parent;
  }

  LODWORD(parent) = [for isRectangular];
  if (parent)
  {
    parent = [for parent];
    if (parent)
    {
      v5 = parent;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }

      parent = [v5 parent];
      if (!parent)
      {
        return parent;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }

      textLinesInZone = [for textLinesInZone];
      if ([textLinesInZone count] != 1)
      {
        goto LABEL_2;
      }

      if ([v5 countOfClass:objc_opt_class()] != 1)
      {
        goto LABEL_2;
      }

      v7 = [textLinesInZone objectAtIndex:0];
      [for zoneBounds];
      v9 = v8;
      [v7 bounds];
      if (v9 > v10 * 3.0)
      {
        goto LABEL_2;
      }

      LODWORD(parent) = [objc_msgSend(v7 "charSequence")];
      if (parent)
      {
        parent = [for newBackgroundColor];
        if (parent)
        {
          v11 = parent;
          v12 = [[CPHighlighter alloc] initWithTextLine:v7 inZone:for ofColor:parent];
          [(CPHighlighter *)v12 highlight];

          CFRelease(v11);
          LOBYTE(parent) = 1;
        }
      }
    }
  }

  return parent;
}

@end