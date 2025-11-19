@interface ExternalPurchaseLinkResponse
- (ExternalPurchaseLinkResponse)initWithCoder:(id)a3;
- (ExternalPurchaseLinkResponse)initWithSingle:(id)a3 multi:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ExternalPurchaseLinkResponse

- (ExternalPurchaseLinkResponse)initWithSingle:(id)a3 multi:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ExternalPurchaseLinkResponse *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_single, a3);
    objc_storeStrong(&v10->_multi, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ExternalPurchaseLinkResponse *)self single];
  [v4 encodeObject:v5 forKey:@"single"];

  v6 = [(ExternalPurchaseLinkResponse *)self multi];
  [v4 encodeObject:v6 forKey:@"multi"];
}

- (ExternalPurchaseLinkResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"single"];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"multi"];

  v9 = [(ExternalPurchaseLinkResponse *)self initWithSingle:v5 multi:v8];
  return v9;
}

@end