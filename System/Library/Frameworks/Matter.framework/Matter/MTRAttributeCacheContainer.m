@interface MTRAttributeCacheContainer
- (MTRAttributeCacheContainer)init;
- (void)readAttributeWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId clientQueue:(dispatch_queue_t)clientQueue completion:(MTRDeviceResponseHandler)completion;
@end

@implementation MTRAttributeCacheContainer

- (MTRAttributeCacheContainer)init
{
  v7.receiver = self;
  v7.super_class = MTRAttributeCacheContainer;
  v2 = [(MTRAttributeCacheContainer *)&v7 init];
  if (v2 && (v3 = objc_alloc_init(MTRClusterStateCacheContainer), realContainer = v2->_realContainer, v2->_realContainer = v3, realContainer, !v2->_realContainer))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)readAttributeWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId clientQueue:(dispatch_queue_t)clientQueue completion:(MTRDeviceResponseHandler)completion
{
  v17 = endpointId;
  v12 = clusterId;
  v13 = attributeId;
  v14 = clientQueue;
  v15 = completion;
  v16 = [(MTRAttributeCacheContainer *)self realContainer];
  [v16 readAttributesWithEndpointID:v17 clusterID:v12 attributeID:v13 queue:v14 completion:v15];
}

@end