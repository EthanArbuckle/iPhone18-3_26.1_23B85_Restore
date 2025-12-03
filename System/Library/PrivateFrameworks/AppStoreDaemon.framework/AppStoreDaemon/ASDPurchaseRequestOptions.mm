@interface ASDPurchaseRequestOptions
- (ASDPurchaseRequestOptions)initWithCoder:(id)coder;
- (ASDPurchaseRequestOptions)initWithPurchases:(id)purchases;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseRequestOptions

- (ASDPurchaseRequestOptions)initWithPurchases:(id)purchases
{
  purchasesCopy = purchases;
  v9.receiver = self;
  v9.super_class = ASDPurchaseRequestOptions;
  v6 = [(ASDPurchaseRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchases, purchases);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDPurchaseRequestOptions allocWithZone:](ASDPurchaseRequestOptions init];
  v6 = [(NSArray *)self->_purchases copyWithZone:zone];
  purchases = v5->_purchases;
  v5->_purchases = v6;

  return v5;
}

- (ASDPurchaseRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDPurchaseRequestOptions *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  purchases = [(ASDPurchaseRequestOptions *)self purchases];
  [coderCopy encodeObject:purchases forKey:@"purchases"];
}

@end