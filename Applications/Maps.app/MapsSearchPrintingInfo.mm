@interface MapsSearchPrintingInfo
- (MapsSearchPrintingInfo)initWithNumberOfPages:(int64_t)a3 searchResultCells:(id)a4;
@end

@implementation MapsSearchPrintingInfo

- (MapsSearchPrintingInfo)initWithNumberOfPages:(int64_t)a3 searchResultCells:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MapsSearchPrintingInfo;
  v7 = [(MapsPrintingInfo *)&v12 initWithNumberOfPages:a3];
  if (v7)
  {
    v8 = [v6 copy];
    searchResultCells = v7->_searchResultCells;
    v7->_searchResultCells = v8;

    v10 = v7;
  }

  return v7;
}

@end