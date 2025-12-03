@interface FKApplePayBarcodeRowViewModel
- (FKApplePayBarcodeRowViewModel)initWithCellConfigurationHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureCell:(id)cell;
@end

@implementation FKApplePayBarcodeRowViewModel

- (FKApplePayBarcodeRowViewModel)initWithCellConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = FKApplePayBarcodeRowViewModel;
  v5 = [(FKApplePayBarcodeRowViewModel *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    cellConfigurationHandler = v5->_cellConfigurationHandler;
    v5->_cellConfigurationHandler = v6;
  }

  return v5;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  cellConfigurationHandler = [(FKApplePayBarcodeRowViewModel *)self cellConfigurationHandler];
  cellConfigurationHandler[2](cellConfigurationHandler, cellCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [self->_cellConfigurationHandler copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end