@interface MapsSearchPrintingInfo
- (MapsSearchPrintingInfo)initWithNumberOfPages:(int64_t)pages searchResultCells:(id)cells;
@end

@implementation MapsSearchPrintingInfo

- (MapsSearchPrintingInfo)initWithNumberOfPages:(int64_t)pages searchResultCells:(id)cells
{
  cellsCopy = cells;
  v12.receiver = self;
  v12.super_class = MapsSearchPrintingInfo;
  v7 = [(MapsPrintingInfo *)&v12 initWithNumberOfPages:pages];
  if (v7)
  {
    v8 = [cellsCopy copy];
    searchResultCells = v7->_searchResultCells;
    v7->_searchResultCells = v8;

    v10 = v7;
  }

  return v7;
}

@end