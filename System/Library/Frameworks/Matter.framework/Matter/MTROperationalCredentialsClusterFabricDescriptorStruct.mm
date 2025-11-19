@interface MTROperationalCredentialsClusterFabricDescriptorStruct
- (MTROperationalCredentialsClusterFabricDescriptorStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterFabricDescriptorStruct

- (MTROperationalCredentialsClusterFabricDescriptorStruct)init
{
  v12.receiver = self;
  v12.super_class = MTROperationalCredentialsClusterFabricDescriptorStruct;
  v2 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    rootPublicKey = v2->_rootPublicKey;
    v2->_rootPublicKey = v3;

    vendorID = v2->_vendorID;
    v2->_vendorID = &unk_284C3E588;

    fabricID = v2->_fabricID;
    v2->_fabricID = &unk_284C3E588;

    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    label = v2->_label;
    v2->_label = &stru_284BD0DD8;

    vidVerificationStatement = v2->_vidVerificationStatement;
    v2->_vidVerificationStatement = 0;

    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E588;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterFabricDescriptorStruct);
  v5 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self rootPublicKey];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setRootPublicKey:v5];

  v6 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self vendorID];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setVendorID:v6];

  v7 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self fabricID];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setFabricID:v7];

  v8 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self nodeID];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setNodeID:v8];

  v9 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self label];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setLabel:v9];

  v10 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self vidVerificationStatement];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setVidVerificationStatement:v10];

  v11 = [(MTROperationalCredentialsClusterFabricDescriptorStruct *)self fabricIndex];
  [(MTROperationalCredentialsClusterFabricDescriptorStruct *)v4 setFabricIndex:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_rootPublicKey base64EncodedStringWithOptions:0];
  vendorID = self->_vendorID;
  fabricID = self->_fabricID;
  nodeID = self->_nodeID;
  label = self->_label;
  v11 = [(NSData *)self->_vidVerificationStatement base64EncodedStringWithOptions:0];
  v12 = [v3 stringWithFormat:@"<%@: rootPublicKey:%@ vendorID:%@; fabricID:%@; nodeID:%@; label:%@; vidVerificationStatement:%@; fabricIndex:%@; >", v5, v6, vendorID, fabricID, nodeID, label, v11, self->_fabricIndex];;

  return v12;
}

@end