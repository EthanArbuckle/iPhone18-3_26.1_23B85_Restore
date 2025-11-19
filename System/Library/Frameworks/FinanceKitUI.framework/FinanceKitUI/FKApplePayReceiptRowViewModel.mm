@interface FKApplePayReceiptRowViewModel
- (FKApplePayReceiptRowViewModel)initWithReceiptName:(id)a3 cellConfigurationHandler:(id)a4 cellSelectionHandler:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureCell:(id)a3;
- (void)didSelectCell;
@end

@implementation FKApplePayReceiptRowViewModel

- (FKApplePayReceiptRowViewModel)initWithReceiptName:(id)a3 cellConfigurationHandler:(id)a4 cellSelectionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = FKApplePayReceiptRowViewModel;
  v11 = [(FKApplePayReceiptRowViewModel *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    receiptName = v11->_receiptName;
    v11->_receiptName = v12;

    v14 = [v9 copy];
    cellConfigurationHandler = v11->_cellConfigurationHandler;
    v11->_cellConfigurationHandler = v14;

    v16 = [v10 copy];
    cellSelectionHandler = v11->_cellSelectionHandler;
    v11->_cellSelectionHandler = v16;
  }

  return v11;
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v5 = [(FKApplePayReceiptRowViewModel *)self cellConfigurationHandler];
  v5[2](v5, v4);
}

- (void)didSelectCell
{
  v2 = [(FKApplePayReceiptRowViewModel *)self cellSelectionHandler];
  v2[2]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSString *)self->_receiptName copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [self->_cellConfigurationHandler copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [self->_cellSelectionHandler copy];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

@end