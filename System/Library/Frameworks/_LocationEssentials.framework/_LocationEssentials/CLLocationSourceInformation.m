@interface CLLocationSourceInformation
- (CLLocationSourceInformation)initWithCoder:(id)a3;
- (CLLocationSourceInformation)initWithSoftwareSimulationState:(BOOL)isSoftware andExternalAccessoryState:(BOOL)isAccessory;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLLocationSourceInformation

- (CLLocationSourceInformation)initWithSoftwareSimulationState:(BOOL)isSoftware andExternalAccessoryState:(BOOL)isAccessory
{
  v7.receiver = self;
  v7.super_class = CLLocationSourceInformation;
  result = [(CLLocationSourceInformation *)&v7 init];
  if (result)
  {
    result->isSimulatedBySoftware = isSoftware;
    result->isProducedByAccessory = isAccessory;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_msgSend_allowsKeyedCoding(a3, a2, v3, v4))
  {
    objc_msgSend_encodeBool_forKey_(a3, v7, v8, v9, self->isSimulatedBySoftware, @"kCLLocationCodingKeyFromSoftwareSimulator");
    isProducedByAccessory = self->isProducedByAccessory;

    objc_msgSend_encodeBool_forKey_(a3, v10, v11, v12, isProducedByAccessory, @"kCLLocationCodingKeyFromExternalAccessory");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(a3, v7, v8, v9, "B", &self->isSimulatedBySoftware);

    objc_msgSend_encodeValueOfObjCType_at_(a3, v14, v15, v16, "B", &self->isProducedByAccessory);
  }
}

- (CLLocationSourceInformation)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = CLLocationSourceInformation;
  v5 = [(CLLocationSourceInformation *)&v18 init];
  if (v5)
  {
    if (objc_msgSend_allowsKeyedCoding(a3, v4, v6, v7))
    {
      v5->isSimulatedBySoftware = objc_msgSend_decodeBoolForKey_(a3, v8, v9, v10, @"kCLLocationCodingKeyFromSoftwareSimulator");
      v5->isProducedByAccessory = objc_msgSend_decodeBoolForKey_(a3, v11, v12, v13, @"kCLLocationCodingKeyFromExternalAccessory");
    }

    else
    {
      objc_msgSend_decodeValueOfObjCType_at_(a3, v8, v9, v10, "B", &v5->isSimulatedBySoftware);
      objc_msgSend_decodeValueOfObjCType_at_(a3, v14, v15, v16, "B", &v5->isProducedByAccessory);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, a3);
  isSimulatedBySoftware = self->isSimulatedBySoftware;
  isProducedByAccessory = self->isProducedByAccessory;

  return objc_msgSend_initWithSoftwareSimulationState_andExternalAccessoryState_(v9, v10, v11, v12, isSimulatedBySoftware, isProducedByAccessory);
}

@end