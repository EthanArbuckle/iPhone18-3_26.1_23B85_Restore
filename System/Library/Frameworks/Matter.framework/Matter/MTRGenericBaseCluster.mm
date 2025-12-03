@interface MTRGenericBaseCluster
- (MTRGenericBaseCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue;
@end

@implementation MTRGenericBaseCluster

- (MTRGenericBaseCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = MTRGenericBaseCluster;
  v10 = [(MTRCluster *)&v13 initWithEndpointID:d queue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
  }

  return v11;
}

@end