@interface NSCloudKitMirroringInitializeSchemaRequest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSCloudKitMirroringInitializeSchemaRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NSCloudKitMirroringInitializeSchemaRequest;
  result = [(NSCloudKitMirroringRequest *)&v5 copyWithZone:zone];
  *(result + 10) = self->_schemaInitializationOptions;
  return result;
}

@end