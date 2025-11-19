@interface FKApplePayRowViewModelCollection
- (FKApplePayRowViewModelCollection)initWithOrderRowViewModel:(id)a3 barcodeRowViewModel:(id)a4 receiptRowViewModel:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKApplePayRowViewModelCollection

- (FKApplePayRowViewModelCollection)initWithOrderRowViewModel:(id)a3 barcodeRowViewModel:(id)a4 receiptRowViewModel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = FKApplePayRowViewModelCollection;
  v11 = [(FKApplePayRowViewModelCollection *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    orderRowViewModel = v11->_orderRowViewModel;
    v11->_orderRowViewModel = v12;

    v14 = [v9 copy];
    barcodeRowViewModel = v11->_barcodeRowViewModel;
    v11->_barcodeRowViewModel = v14;

    v16 = [v10 copy];
    receiptRowViewModel = v11->_receiptRowViewModel;
    v11->_receiptRowViewModel = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(FKApplePayOrderRowViewModel *)self->_orderRowViewModel copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(FKApplePayBarcodeRowViewModel *)self->_barcodeRowViewModel copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(FKApplePayReceiptRowViewModel *)self->_receiptRowViewModel copy];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

@end