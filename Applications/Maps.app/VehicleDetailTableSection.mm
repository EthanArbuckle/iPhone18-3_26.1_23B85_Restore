@interface VehicleDetailTableSection
- (VehicleDetailTableSection)initWithCells:(id)a3;
@end

@implementation VehicleDetailTableSection

- (VehicleDetailTableSection)initWithCells:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VehicleDetailTableSection;
  v5 = [(VehicleDetailTableSection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cells = v5->_cells;
    v5->_cells = v6;
  }

  return v5;
}

@end