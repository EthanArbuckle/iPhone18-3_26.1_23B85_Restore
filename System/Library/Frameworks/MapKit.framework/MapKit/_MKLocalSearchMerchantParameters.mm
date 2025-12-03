@interface _MKLocalSearchMerchantParameters
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _MKLocalSearchMerchantParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_merchantCode copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_rawMerchantCode copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_paymentNetwork copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_industryCategory copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSNumber *)self->_industryCode copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [(NSDate *)self->_transactionDate copy];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [(CLLocation *)self->_transactionLocation copy];
  v18 = v4[7];
  v4[7] = v17;

  return v4;
}

@end