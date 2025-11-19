@interface NEIKEv2VendorData
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NEIKEv2VendorData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEIKEv2VendorData *)self vendorData];
  v6 = [v5 copy];
  [v4 setVendorData:v6];

  return v4;
}

@end