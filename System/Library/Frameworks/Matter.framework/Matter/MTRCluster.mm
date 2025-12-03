@interface MTRCluster
- (MTRCluster)initWithEndpointID:(id)d queue:(id)queue;
@end

@implementation MTRCluster

- (MTRCluster)initWithEndpointID:(id)d queue:(id)queue
{
  dCopy = d;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = MTRCluster;
  v9 = [(MTRCluster *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointID, d);
    objc_storeStrong(&v10->_callbackQueue, queue);
  }

  return v10;
}

@end