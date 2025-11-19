@interface FKFoundInMailItemRowOrderDetailsViewModel
- (FKFoundInMailItemRowOrderDetailsViewModel)initWithEmailType:(unint64_t)a3 merchantDisplayName:(id)a4 orderNumber:(id)a5 shippingStatus:(unint64_t)a6 shippingDetailsTrackingNumber:(id)a7 shippingDetailsCarrierName:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKFoundInMailItemRowOrderDetailsViewModel

- (FKFoundInMailItemRowOrderDetailsViewModel)initWithEmailType:(unint64_t)a3 merchantDisplayName:(id)a4 orderNumber:(id)a5 shippingStatus:(unint64_t)a6 shippingDetailsTrackingNumber:(id)a7 shippingDetailsCarrierName:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = FKFoundInMailItemRowOrderDetailsViewModel;
  v18 = [(FKFoundInMailItemRowOrderDetailsViewModel *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_emailType = a3;
    v20 = [v14 copy];
    merchantDisplayName = v19->_merchantDisplayName;
    v19->_merchantDisplayName = v20;

    v22 = [v15 copy];
    orderNumber = v19->_orderNumber;
    v19->_orderNumber = v22;

    v19->_shippingStatus = a6;
    v24 = [v16 copy];
    shippingDetailsTrackingNumber = v19->_shippingDetailsTrackingNumber;
    v19->_shippingDetailsTrackingNumber = v24;

    v26 = [v17 copy];
    shippingDetailsCarrierName = v19->_shippingDetailsCarrierName;
    v19->_shippingDetailsCarrierName = v26;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v4[4] = self->_emailType;
  v5 = [(NSString *)self->_merchantDisplayName copy];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(NSString *)self->_orderNumber copy];
  v8 = v4[6];
  v4[6] = v7;

  v4[7] = self->_shippingStatus;
  v9 = [(NSString *)self->_shippingDetailsTrackingNumber copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_shippingDetailsCarrierName copy];
  v12 = v4[9];
  v4[9] = v11;

  return v4;
}

@end