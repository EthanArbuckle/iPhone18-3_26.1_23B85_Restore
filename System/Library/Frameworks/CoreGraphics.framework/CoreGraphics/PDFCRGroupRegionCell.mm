@interface PDFCRGroupRegionCell
- (PDFCRGroupRegionCell)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5 parent:(id)a6 groupID:(unint64_t)a7 rowIndex:(unint64_t)a8 colIndex:(unint64_t)a9 rowSpan:(unint64_t)a10 colSpan:(unint64_t)a11;
@end

@implementation PDFCRGroupRegionCell

- (PDFCRGroupRegionCell)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5 parent:(id)a6 groupID:(unint64_t)a7 rowIndex:(unint64_t)a8 colIndex:(unint64_t)a9 rowSpan:(unint64_t)a10 colSpan:(unint64_t)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v23.receiver = self;
  v23.super_class = PDFCRGroupRegionCell;
  v20 = [(PDFCRGroupRegion *)&v23 initWithBoundingQuad:v17 layoutDirection:a4 subregions:v18 parent:v19];
  v21 = v20;
  if (v20)
  {
    [(PDFCRGroupRegion *)v20 setType:6];
    [(PDFCRGroupRegionCell *)v21 setGroupID:a7];
    [(PDFCRGroupRegionCell *)v21 setRowIndex:a8];
    [(PDFCRGroupRegionCell *)v21 setColIndex:a9];
    [(PDFCRGroupRegionCell *)v21 setRowSpan:a10];
    [(PDFCRGroupRegionCell *)v21 setColSpan:a11];
  }

  return v21;
}

@end