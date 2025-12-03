@interface ASFIAPItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASFIAPItem

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(ASFIAPItem);
  v6 = [(NSDate *)self->_originalPurchaseDate copyWithZone:zone];
  originalPurchaseDate = v5->_originalPurchaseDate;
  v5->_originalPurchaseDate = v6;

  v8 = [(NSString *)self->_originalTransactionID copyWithZone:zone];
  originalTransactionID = v5->_originalTransactionID;
  v5->_originalTransactionID = v8;

  v10 = [(NSDate *)self->_purchaseDate copyWithZone:zone];
  purchaseDate = v5->_purchaseDate;
  v5->_purchaseDate = v10;

  v12 = [(NSString *)self->_productID copyWithZone:zone];
  productID = v5->_productID;
  v5->_productID = v12;

  v14 = [(NSNumber *)self->_quantity copyWithZone:zone];
  quantity = v5->_quantity;
  v5->_quantity = v14;

  v16 = [(NSString *)self->_transactionID copyWithZone:zone];
  transactionID = v5->_transactionID;
  v5->_transactionID = v16;

  return v5;
}

@end