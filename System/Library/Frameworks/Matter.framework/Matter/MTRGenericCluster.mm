@interface MTRGenericCluster
- (MTRGenericCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
@end

@implementation MTRGenericCluster

- (MTRGenericCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MTRGenericCluster;
  v10 = [(MTRCluster *)&v13 initWithEndpointID:a4 queue:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a3);
  }

  return v11;
}

@end