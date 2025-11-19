@interface ASDPurchaseRequestOptions
- (ASDPurchaseRequestOptions)initWithCoder:(id)a3;
- (ASDPurchaseRequestOptions)initWithPurchases:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseRequestOptions

- (ASDPurchaseRequestOptions)initWithPurchases:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDPurchaseRequestOptions;
  v6 = [(ASDPurchaseRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchases, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDPurchaseRequestOptions allocWithZone:](ASDPurchaseRequestOptions init];
  v6 = [(NSArray *)self->_purchases copyWithZone:a3];
  purchases = v5->_purchases;
  v5->_purchases = v6;

  return v5;
}

- (ASDPurchaseRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurchaseRequestOptions *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurchaseRequestOptions *)self purchases];
  [v4 encodeObject:v5 forKey:@"purchases"];
}

@end