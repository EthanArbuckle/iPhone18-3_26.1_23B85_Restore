@interface ASFIAPItem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASFIAPItem

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(ASFIAPItem);
  v6 = [(NSDate *)self->_originalPurchaseDate copyWithZone:a3];
  originalPurchaseDate = v5->_originalPurchaseDate;
  v5->_originalPurchaseDate = v6;

  v8 = [(NSString *)self->_originalTransactionID copyWithZone:a3];
  originalTransactionID = v5->_originalTransactionID;
  v5->_originalTransactionID = v8;

  v10 = [(NSDate *)self->_purchaseDate copyWithZone:a3];
  purchaseDate = v5->_purchaseDate;
  v5->_purchaseDate = v10;

  v12 = [(NSString *)self->_productID copyWithZone:a3];
  productID = v5->_productID;
  v5->_productID = v12;

  v14 = [(NSNumber *)self->_quantity copyWithZone:a3];
  quantity = v5->_quantity;
  v5->_quantity = v14;

  v16 = [(NSString *)self->_transactionID copyWithZone:a3];
  transactionID = v5->_transactionID;
  v5->_transactionID = v16;

  return v5;
}

@end