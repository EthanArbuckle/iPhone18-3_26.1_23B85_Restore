@interface NEIKEv2VendorData
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NEIKEv2VendorData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  vendorData = [(NEIKEv2VendorData *)self vendorData];
  v6 = [vendorData copy];
  [v4 setVendorData:v6];

  return v4;
}

@end