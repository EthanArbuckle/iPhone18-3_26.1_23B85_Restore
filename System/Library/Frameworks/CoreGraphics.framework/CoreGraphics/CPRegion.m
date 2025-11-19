@interface CPRegion
- (BOOL)isGraphicalRegion;
- (BOOL)isIndivisible;
- (BOOL)isRowRegion;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setNextRegion:(id)a3;
@end

@implementation CPRegion

- (void)setNextRegion:(id)a3
{
  nextRegion = self->nextRegion;
  if (nextRegion != a3)
  {

    self->nextRegion = a3;
  }
}

- (BOOL)isIndivisible
{
  if ([(CPRegion *)self isImageRegion]|| [(CPRegion *)self isShapeRegion]|| [(CPRegion *)self isRowRegion]|| [(CPRegion *)self isTableCellRegion])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(CPRegion *)self isBoxRegion];
    if (v3)
    {

      LOBYTE(v3) = [(CPRegion *)self isRotated];
    }
  }

  return v3;
}

- (BOOL)isGraphicalRegion
{
  if ([(CPObject *)self count]!= 1)
  {
    goto LABEL_7;
  }

  v3 = [(CPRegion *)self isBoxRegion];
  [(CPObject *)self firstChild];
  if (!v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    return isKindOfClass & 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    isKindOfClass = 0;
    return isKindOfClass & 1;
  }

  v4 = [(CPObject *)self firstChild];

  return [v4 isGraphicalRegion];
}

- (BOOL)isRowRegion
{
  v2 = [(CPRegion *)self valueForKey:@"regionType"];

  return [v2 isEqualToString:@"row"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CPRegion;
  v3 = [(CPChunk *)&v7 copyWithZone:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3[13];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPRegion;
  [(CPObject *)&v3 dealloc];
}

@end