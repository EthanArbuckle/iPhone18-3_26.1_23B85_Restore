@interface RepairToolRequestItem
- (RepairToolRequestItem)initWithDestination:(id)a3 andEncryptionKey:(id)a4 andToken:(id)a5 andExtraHeaders:(id)a6;
@end

@implementation RepairToolRequestItem

- (RepairToolRequestItem)initWithDestination:(id)a3 andEncryptionKey:(id)a4 andToken:(id)a5 andExtraHeaders:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = RepairToolRequestItem;
  v15 = [(RepairToolRequestItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_destination, a3);
    objc_storeStrong(&v16->_encryptionKey, a4);
    objc_storeStrong(&v16->_token, a5);
    objc_storeStrong(&v16->_extraHeaders, a6);
  }

  return v16;
}

@end