@interface RepairToolRequestItem
- (RepairToolRequestItem)initWithDestination:(id)destination andEncryptionKey:(id)key andToken:(id)token andExtraHeaders:(id)headers;
@end

@implementation RepairToolRequestItem

- (RepairToolRequestItem)initWithDestination:(id)destination andEncryptionKey:(id)key andToken:(id)token andExtraHeaders:(id)headers
{
  destinationCopy = destination;
  keyCopy = key;
  tokenCopy = token;
  headersCopy = headers;
  v18.receiver = self;
  v18.super_class = RepairToolRequestItem;
  v15 = [(RepairToolRequestItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_destination, destination);
    objc_storeStrong(&v16->_encryptionKey, key);
    objc_storeStrong(&v16->_token, token);
    objc_storeStrong(&v16->_extraHeaders, headers);
  }

  return v16;
}

@end