@interface NSCloudKitMirroringResetMetadataRequest
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringResetMetadataRequest

- (void)dealloc
{
  self->_objectIDsToReset = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringResetMetadataRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringResetMetadataRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:a3];
  v4[10] = self->_objectIDsToReset;
  return v4;
}

@end