@interface MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct
- (MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct

- (MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    cluster = v2->_cluster;
    v2->_cluster = 0;

    endpoint = v3->_endpoint;
    v3->_endpoint = 0;

    deviceType = v3->_deviceType;
    v3->_deviceType = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)self cluster];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)v4 setCluster:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)self endpoint];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)v4 setEndpoint:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)self deviceType];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlTargetStruct *)v4 setDeviceType:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: cluster:%@ endpoint:%@; deviceType:%@; >", v5, self->_cluster, self->_endpoint, self->_deviceType];;

  return v6;
}

@end