@interface MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

    data = [MEMORY[0x277CBEA90] data];
    icac = v3->_icac;
    v3->_icac = data;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct);
  nodeID = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setNodeID:nodeID];

  friendlyName = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self friendlyName];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setFriendlyName:friendlyName];

  vendorID = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self vendorID];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setVendorID:vendorID];

  icac = [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)self icac];
  [(MTRJointFabricDatastoreClusterDatastoreAdministratorInformationEntryStruct *)v4 setIcac:icac];

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