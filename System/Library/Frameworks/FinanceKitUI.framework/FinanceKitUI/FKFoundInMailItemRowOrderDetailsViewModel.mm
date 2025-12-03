@interface FKFoundInMailItemRowOrderDetailsViewModel
- (FKFoundInMailItemRowOrderDetailsViewModel)initWithEmailType:(unint64_t)type merchantDisplayName:(id)name orderNumber:(id)number shippingStatus:(unint64_t)status shippingDetailsTrackingNumber:(id)trackingNumber shippingDetailsCarrierName:(id)carrierName;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKFoundInMailItemRowOrderDetailsViewModel

- (FKFoundInMailItemRowOrderDetailsViewModel)initWithEmailType:(unint64_t)type merchantDisplayName:(id)name orderNumber:(id)number shippingStatus:(unint64_t)status shippingDetailsTrackingNumber:(id)trackingNumber shippingDetailsCarrierName:(id)carrierName
{
  nameCopy = name;
  numberCopy = number;
  trackingNumberCopy = trackingNumber;
  carrierNameCopy = carrierName;
  v29.receiver = self;
  v29.super_class = FKFoundInMailItemRowOrderDetailsViewModel;
  v18 = [(FKFoundInMailItemRowOrderDetailsViewModel *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_emailType = type;
    v20 = [nameCopy copy];
    merchantDisplayName = v19->_merchantDisplayName;
    v19->_merchantDisplayName = v20;

    v22 = [numberCopy copy];
    orderNumber = v19->_orderNumber;
    v19->_orderNumber = v22;

    v19->_shippingStatus = status;
    v24 = [trackingNumberCopy copy];
    shippingDetailsTrackingNumber = v19->_shippingDetailsTrackingNumber;
    v19->_shippingDetailsTrackingNumber = v24;

    v26 = [carrierNameCopy copy];
    shippingDetailsCarrierName = v19->_shippingDetailsCarrierName;
    v19->_shippingDetailsCarrierName = v26;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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