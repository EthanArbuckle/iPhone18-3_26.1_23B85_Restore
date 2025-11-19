@interface FKApplePayBarcodeRowViewModel
- (FKApplePayBarcodeRowViewModel)initWithCellConfigurationHandler:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureCell:(id)a3;
@end

@implementation FKApplePayBarcodeRowViewModel

- (FKApplePayBarcodeRowViewModel)initWithCellConfigurationHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKApplePayBarcodeRowViewModel;
  v5 = [(FKApplePayBarcodeRowViewModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cellConfigurationHandler = v5->_cellConfigurationHandler;
    v5->_cellConfigurationHandler = v6;
  }

  return v5;
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v5 = [(FKApplePayBarcodeRowViewModel *)self cellConfigurationHandler];
  v5[2](v5, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [self->_cellConfigurationHandler copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end