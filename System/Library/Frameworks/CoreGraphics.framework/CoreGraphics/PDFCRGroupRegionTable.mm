@interface PDFCRGroupRegionTable
- (PDFCRGroupRegionTable)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction cells:(id)cells parent:(id)parent;
@end

@implementation PDFCRGroupRegionTable

- (PDFCRGroupRegionTable)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction cells:(id)cells parent:(id)parent
{
  quadCopy = quad;
  cellsCopy = cells;
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = PDFCRGroupRegionTable;
  v13 = [(PDFCRGroupRegion *)&v16 initWithBoundingQuad:quadCopy layoutDirection:direction subregions:cellsCopy parent:parentCopy];
  v14 = v13;
  if (v13)
  {
    [(PDFCRGroupRegion *)v13 setType:7];
  }

  return v14;
}

@end