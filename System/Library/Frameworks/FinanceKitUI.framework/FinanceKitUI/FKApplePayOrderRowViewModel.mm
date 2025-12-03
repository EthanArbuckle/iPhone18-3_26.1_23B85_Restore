@interface FKApplePayOrderRowViewModel
- (FKApplePayOrderRowViewModel)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier fulfillmentIdentifier:(id)fulfillmentIdentifier cellConfigurationHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureCell:(id)cell;
@end

@implementation FKApplePayOrderRowViewModel

- (FKApplePayOrderRowViewModel)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier fulfillmentIdentifier:(id)fulfillmentIdentifier cellConfigurationHandler:(id)handler
{
  identifierCopy = identifier;
  orderIdentifierCopy = orderIdentifier;
  fulfillmentIdentifierCopy = fulfillmentIdentifier;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = FKApplePayOrderRowViewModel;
  v14 = [(FKApplePayOrderRowViewModel *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    orderTypeIdentifier = v14->_orderTypeIdentifier;
    v14->_orderTypeIdentifier = v15;

    v17 = [orderIdentifierCopy copy];
    orderIdentifier = v14->_orderIdentifier;
    v14->_orderIdentifier = v17;

    v19 = [fulfillmentIdentifierCopy copy];
    fulfillmentIdentifier = v14->_fulfillmentIdentifier;
    v14->_fulfillmentIdentifier = v19;

    v21 = [handlerCopy copy];
    cellConfigurationHandler = v14->_cellConfigurationHandler;
    v14->_cellConfigurationHandler = v21;
  }

  return v14;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  cellConfigurationHandler = [(FKApplePayOrderRowViewModel *)self cellConfigurationHandler];
  cellConfigurationHandler[2](cellConfigurationHandler, cellCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSString *)self->_orderTypeIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_orderIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_fulfillmentIdentifier copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [self->_cellConfigurationHandler copy];
  v12 = v4[4];
  v4[4] = v11;

  return v4;
}

@end