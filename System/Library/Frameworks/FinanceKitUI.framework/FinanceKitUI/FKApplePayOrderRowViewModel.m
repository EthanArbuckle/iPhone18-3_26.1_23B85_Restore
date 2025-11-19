@interface FKApplePayOrderRowViewModel
- (FKApplePayOrderRowViewModel)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 fulfillmentIdentifier:(id)a5 cellConfigurationHandler:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureCell:(id)a3;
@end

@implementation FKApplePayOrderRowViewModel

- (FKApplePayOrderRowViewModel)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 fulfillmentIdentifier:(id)a5 cellConfigurationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = FKApplePayOrderRowViewModel;
  v14 = [(FKApplePayOrderRowViewModel *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    orderTypeIdentifier = v14->_orderTypeIdentifier;
    v14->_orderTypeIdentifier = v15;

    v17 = [v11 copy];
    orderIdentifier = v14->_orderIdentifier;
    v14->_orderIdentifier = v17;

    v19 = [v12 copy];
    fulfillmentIdentifier = v14->_fulfillmentIdentifier;
    v14->_fulfillmentIdentifier = v19;

    v21 = [v13 copy];
    cellConfigurationHandler = v14->_cellConfigurationHandler;
    v14->_cellConfigurationHandler = v21;
  }

  return v14;
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v5 = [(FKApplePayOrderRowViewModel *)self cellConfigurationHandler];
  v5[2](v5, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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