@interface ExternalPurchaseLinkResponse
- (ExternalPurchaseLinkResponse)initWithCoder:(id)coder;
- (ExternalPurchaseLinkResponse)initWithSingle:(id)single multi:(id)multi;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ExternalPurchaseLinkResponse

- (ExternalPurchaseLinkResponse)initWithSingle:(id)single multi:(id)multi
{
  singleCopy = single;
  multiCopy = multi;
  v9 = [(ExternalPurchaseLinkResponse *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_single, single);
    objc_storeStrong(&v10->_multi, multi);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  single = [(ExternalPurchaseLinkResponse *)self single];
  [coderCopy encodeObject:single forKey:@"single"];

  multi = [(ExternalPurchaseLinkResponse *)self multi];
  [coderCopy encodeObject:multi forKey:@"multi"];
}

- (ExternalPurchaseLinkResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"single"];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"multi"];

  v9 = [(ExternalPurchaseLinkResponse *)self initWithSingle:v5 multi:v8];
  return v9;
}

@end