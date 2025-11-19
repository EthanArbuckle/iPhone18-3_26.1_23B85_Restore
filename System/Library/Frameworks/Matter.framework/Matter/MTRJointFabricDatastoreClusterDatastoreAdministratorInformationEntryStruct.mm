@interface MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    vendorID = v3->_vendorID;
    v3->_vendorID = &unk_284C3E588;

    v7 = [MEMORY[0x277CBEA90] data];
    icac = v3->_icac;
    v3->_icac = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setNodeID:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self friendlyName];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self vendorID];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setVendorID:v7];

  v8 = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self icac];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setIcac:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  nodeID = self->_nodeID;
  friendlyName = self->_friendlyName;
  vendorID = self->_vendorID;
  v9 = [(NSData *)self->_icac base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: nodeID:%@ friendlyName:%@; vendorID:%@; icac:%@; >", v5, nodeID, friendlyName, vendorID, v9];;

  return v10;
}

@end