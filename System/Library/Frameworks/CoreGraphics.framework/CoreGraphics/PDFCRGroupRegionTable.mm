@interface PDFCRGroupRegionTable
- (PDFCRGroupRegionTable)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 cells:(id)a5 parent:(id)a6;
@end

@implementation PDFCRGroupRegionTable

- (PDFCRGroupRegionTable)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 cells:(id)a5 parent:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = PDFCRGroupRegionTable;
  v13 = [(PDFCRGroupRegion *)&v16 initWithBoundingQuad:v10 layoutDirection:a4 subregions:v11 parent:v12];
  v14 = v13;
  if (v13)
  {
    [(PDFCRGroupRegion *)v13 setType:7];
  }

  return v14;
}

@end