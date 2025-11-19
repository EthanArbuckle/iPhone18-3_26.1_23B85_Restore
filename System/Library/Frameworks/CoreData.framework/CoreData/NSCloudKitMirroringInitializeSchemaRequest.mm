@interface NSCloudKitMirroringInitializeSchemaRequest
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSCloudKitMirroringInitializeSchemaRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSCloudKitMirroringInitializeSchemaRequest;
  result = [(NSCloudKitMirroringRequest *)&v5 copyWithZone:a3];
  *(result + 10) = self->_schemaInitializationOptions;
  return result;
}

@end