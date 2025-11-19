@interface CPColumn
- (CGRect)paddedBounds;
- (CPColumn)init;
- (double)bottomBaseline;
- (double)rightPad;
- (double)selectionBottom;
- (id)copyWithZone:(_NSZone *)a3;
- (int)inOrder;
- (int)outOrder;
- (void)dealloc;
- (void)setMaxLeftPad:(double)a3;
- (void)setMaxRightPad:(double)a3;
@end

@implementation CPColumn

- (double)selectionBottom
{
  if (![(CPObject *)self count])
  {
    return 0.0;
  }

  v3 = [(CPObject *)self lastChild];

  [v3 selectionBottom];
  return result;
}

- (CGRect)paddedBounds
{
  [(CPColumn *)self columnBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CPColumn *)self leftPad];
  v12 = v4 - v11;
  [(CPColumn *)self leftPad];
  v14 = v13;
  [(CPColumn *)self rightPad];
  v16 = v8 + v14 + v15;
  v17 = v12;
  v18 = v6;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v16;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)setMaxRightPad:(double)a3
{
  self->maxLeftPad = a3;
  [(CPChunk *)self bounds];
  if (v7 < 0.0 || v8 < 0.0)
  {
    *&v5 = CGRectStandardize(*&v5);
  }

  self->maxRightPad = v5 + v7 + a3;
}

- (void)setMaxLeftPad:(double)a3
{
  [(CPChunk *)self bounds];
  if (v7 < 0.0 || v8 < 0.0)
  {
    *&v5 = CGRectStandardize(*&v5);
  }

  self->maxRight = v5 - a3;
  *&self->hasCentredParagraph = a3;
}

- (double)rightPad
{
  [(CPChunk *)self bounds];
  if (v5 < 0.0 || v6 < 0.0)
  {
    *&v3 = CGRectStandardize(*&v3);
  }

  return round((self->maxRightPad - (v3 + v5)) * 0.5);
}

- (double)bottomBaseline
{
  if (![(CPObject *)self count])
  {
    return 0.0;
  }

  v3 = [(CPObject *)self lastChild];
  if (!v3)
  {
    return 0.0;
  }

  v4 = [v3 lastChild];

  [v4 baseline];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CPColumn;
  return [(CPRegion *)&v4 copyWithZone:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CPColumn;
  [(CPRegion *)&v2 dealloc];
}

- (CPColumn)init
{
  v3.receiver = self;
  v3.super_class = CPColumn;
  result = [(CPRotatedRegion *)&v3 init];
  if (result)
  {
    *(&result->super.dirtyNormalizedBounds + 1) = 0;
    *(&result->super.dirtyNormalizedBounds + 2) = 0;
    result->maxLeftPad = 0.0;
    *&result->hasCentredParagraph = 0;
    result->maxRight = 0.0;
    result->maxRightPad = 0.0;
    LOBYTE(result->minLeft) = 0;
  }

  return result;
}

- (int)inOrder
{
  v2 = [-[CPObject firstChild](self "firstChild")];

  return [v2 inOrder];
}

- (int)outOrder
{
  v2 = [-[CPObject lastChild](self "lastChild")];

  return [v2 outOrder];
}

@end