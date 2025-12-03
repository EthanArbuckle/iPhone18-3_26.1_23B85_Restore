@interface FKApplePayReceiptRowViewModel
- (FKApplePayReceiptRowViewModel)initWithReceiptName:(id)name cellConfigurationHandler:(id)handler cellSelectionHandler:(id)selectionHandler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureCell:(id)cell;
- (void)didSelectCell;
@end

@implementation FKApplePayReceiptRowViewModel

- (FKApplePayReceiptRowViewModel)initWithReceiptName:(id)name cellConfigurationHandler:(id)handler cellSelectionHandler:(id)selectionHandler
{
  nameCopy = name;
  handlerCopy = handler;
  selectionHandlerCopy = selectionHandler;
  v19.receiver = self;
  v19.super_class = FKApplePayReceiptRowViewModel;
  v11 = [(FKApplePayReceiptRowViewModel *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    receiptName = v11->_receiptName;
    v11->_receiptName = v12;

    v14 = [handlerCopy copy];
    cellConfigurationHandler = v11->_cellConfigurationHandler;
    v11->_cellConfigurationHandler = v14;

    v16 = [selectionHandlerCopy copy];
    cellSelectionHandler = v11->_cellSelectionHandler;
    v11->_cellSelectionHandler = v16;
  }

  return v11;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  cellConfigurationHandler = [(FKApplePayReceiptRowViewModel *)self cellConfigurationHandler];
  cellConfigurationHandler[2](cellConfigurationHandler, cellCopy);
}

- (void)didSelectCell
{
  cellSelectionHandler = [(FKApplePayReceiptRowViewModel *)self cellSelectionHandler];
  cellSelectionHandler[2]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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