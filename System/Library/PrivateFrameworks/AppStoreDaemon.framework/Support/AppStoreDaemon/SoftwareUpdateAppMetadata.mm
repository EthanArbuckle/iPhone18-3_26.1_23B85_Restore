@interface SoftwareUpdateAppMetadata
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SoftwareUpdateAppMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SoftwareUpdateAppMetadata allocWithZone:?]];
  objc_storeStrong(&v4->_itemID, self->_itemID);
  objc_storeStrong(&v4->_externalVersionID, self->_externalVersionID);
  return v4;
}

@end