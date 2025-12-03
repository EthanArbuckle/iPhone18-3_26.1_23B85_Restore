@interface CPRegion
- (BOOL)isGraphicalRegion;
- (BOOL)isIndivisible;
- (BOOL)isRowRegion;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setNextRegion:(id)region;
@end

@implementation CPRegion

- (void)setNextRegion:(id)region
{
  nextRegion = self->nextRegion;
  if (nextRegion != region)
  {

    self->nextRegion = region;
  }
}

- (BOOL)isIndivisible
{
  if ([(CPRegion *)self isImageRegion]|| [(CPRegion *)self isShapeRegion]|| [(CPRegion *)self isRowRegion]|| [(CPRegion *)self isTableCellRegion])
  {
    LOBYTE(isBoxRegion) = 1;
  }

  else
  {
    isBoxRegion = [(CPRegion *)self isBoxRegion];
    if (isBoxRegion)
    {

      LOBYTE(isBoxRegion) = [(CPRegion *)self isRotated];
    }
  }

  return isBoxRegion;
}

- (BOOL)isGraphicalRegion
{
  if ([(CPObject *)self count]!= 1)
  {
    goto LABEL_7;
  }

  isBoxRegion = [(CPRegion *)self isBoxRegion];
  [(CPObject *)self firstChild];
  if (!isBoxRegion)
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

  firstChild = [(CPObject *)self firstChild];

  return [firstChild isGraphicalRegion];
}

- (BOOL)isRowRegion
{
  v2 = [(CPRegion *)self valueForKey:@"regionType"];

  return [v2 isEqualToString:@"row"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CPRegion;
  v3 = [(CPChunk *)&v7 copyWithZone:zone];
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