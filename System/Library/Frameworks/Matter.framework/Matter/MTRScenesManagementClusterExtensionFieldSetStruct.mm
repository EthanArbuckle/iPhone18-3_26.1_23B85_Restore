@interface MTRScenesManagementClusterExtensionFieldSetStruct
- (MTRScenesManagementClusterExtensionFieldSetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

    array = [MEMORY[0x277CBEA60] array];
    attributeValueList = v3->_attributeValueList;
    v3->_attributeValueList = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterExtensionFieldSetStruct);
  clusterID = [(MTRScenesManagementClusterExtensionFieldSetStruct *)self clusterID];
  [(MTRScenesManagementClusterExtensionFieldSetStruct *)v4 setClusterID:clusterID];

  attributeValueList = [(MTRScenesManagementClusterExtensionFieldSetStruct *)self attributeValueList];
  [(MTRScenesManagementClusterExtensionFieldSetStruct *)v4 setAttributeValueList:attributeValueList];

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