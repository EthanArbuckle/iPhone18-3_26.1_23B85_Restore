@interface PDFCRGroupRegionCell
- (PDFCRGroupRegionCell)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions parent:(id)parent groupID:(unint64_t)d rowIndex:(unint64_t)index colIndex:(unint64_t)colIndex rowSpan:(unint64_t)self0 colSpan:(unint64_t)self1;
@end

@implementation PDFCRGroupRegionCell

- (PDFCRGroupRegionCell)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions parent:(id)parent groupID:(unint64_t)d rowIndex:(unint64_t)index colIndex:(unint64_t)colIndex rowSpan:(unint64_t)self0 colSpan:(unint64_t)self1
{
  quadCopy = quad;
  subregionsCopy = subregions;
  parentCopy = parent;
  v23.receiver = self;
  v23.super_class = PDFCRGroupRegionCell;
  v20 = [(PDFCRGroupRegion *)&v23 initWithBoundingQuad:quadCopy layoutDirection:direction subregions:subregionsCopy parent:parentCopy];
  v21 = v20;
  if (v20)
  {
    [(PDFCRGroupRegion *)v20 setType:6];
    [(PDFCRGroupRegionCell *)v21 setGroupID:d];
    [(PDFCRGroupRegionCell *)v21 setRowIndex:index];
    [(PDFCRGroupRegionCell *)v21 setColIndex:colIndex];
    [(PDFCRGroupRegionCell *)v21 setRowSpan:span];
    [(PDFCRGroupRegionCell *)v21 setColSpan:colSpan];
  }

  return v21;
}

@end