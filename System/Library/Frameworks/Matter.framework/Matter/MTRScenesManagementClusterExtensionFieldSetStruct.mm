@interface MTRScenesManagementClusterExtensionFieldSetStruct
- (MTRScenesManagementClusterExtensionFieldSetStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRScenesManagementClusterExtensionFieldSetStruct

- (MTRScenesManagementClusterExtensionFieldSetStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRScenesManagementClusterExtensionFieldSetStruct;
  v2 = [(MTRScenesManagementClusterExtensionFieldSetStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    clusterID = v2->_clusterID;
    v2->_clusterID = &unk_284C3E588;

    v5 = [MEMORY[0x277CBEA60] array];
    attributeValueList = v3->_attributeValueList;
    v3->_attributeValueList = v5;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRScenesManagementClusterExtensionFieldSetStruct);
  v5 = [(MTRScenesManagementClusterExtensionFieldSetStruct *)self clusterID];
  [(MTRScenesManagementClusterExtensionFieldSetStruct *)v4 setClusterID:v5];

  v6 = [(MTRScenesManagementClusterExtensionFieldSetStruct *)self attributeValueList];
  [(MTRScenesManagementClusterExtensionFieldSetStruct *)v4 setAttributeValueList:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: clusterID:%@ attributeValueList:%@; >", v5, self->_clusterID, self->_attributeValueList];;

  return v6;
}

@end