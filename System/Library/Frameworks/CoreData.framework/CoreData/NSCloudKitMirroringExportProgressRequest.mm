@interface NSCloudKitMirroringExportProgressRequest
- (NSCloudKitMirroringExportProgressRequest)initWithOptions:(id)options completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setObjectIDsToFetch:(id)fetch;
@end

@implementation NSCloudKitMirroringExportProgressRequest

- (NSCloudKitMirroringExportProgressRequest)initWithOptions:(id)options completionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringExportProgressRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 initWithOptions:options completionBlock:block];
  if (v4)
  {
    v4->_objectIDsToFetch = NSSet_EmptySet;
  }

  return v4;
}

- (void)dealloc
{
  self->_objectIDsToFetch = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringExportProgressRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (void)setObjectIDsToFetch:(id)fetch
{
  objectIDsToFetch = self->_objectIDsToFetch;
  if (objectIDsToFetch != fetch)
  {

    if (fetch)
    {
      v6 = [fetch copy];
    }

    else
    {
      v6 = NSSet_EmptySet;
    }

    self->_objectIDsToFetch = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringExportProgressRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:zone];

  v4[10] = self->_objectIDsToFetch;
  return v4;
}

@end