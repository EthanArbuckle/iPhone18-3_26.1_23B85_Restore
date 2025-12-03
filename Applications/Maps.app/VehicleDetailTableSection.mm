@interface VehicleDetailTableSection
- (VehicleDetailTableSection)initWithCells:(id)cells;
@end

@implementation VehicleDetailTableSection

- (VehicleDetailTableSection)initWithCells:(id)cells
{
  cellsCopy = cells;
  v9.receiver = self;
  v9.super_class = VehicleDetailTableSection;
  v5 = [(VehicleDetailTableSection *)&v9 init];
  if (v5)
  {
    v6 = [cellsCopy copy];
    cells = v5->_cells;
    v5->_cells = v6;
  }

  return v5;
}

@end