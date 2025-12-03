@interface MTRActionsClusterEndpointListStruct
- (MTRActionsClusterEndpointListStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRActionsClusterEndpointListStruct

- (MTRActionsClusterEndpointListStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRActionsClusterEndpointListStruct;
  v2 = [(MTRActionsClusterEndpointListStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    endpointListID = v2->_endpointListID;
    v2->_endpointListID = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;

    type = v3->_type;
    v3->_type = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    endpoints = v3->_endpoints;
    v3->_endpoints = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRActionsClusterEndpointListStruct);
  endpointListID = [(MTRActionsClusterEndpointListStruct *)self endpointListID];
  [(MTRActionsClusterEndpointListStruct *)v4 setEndpointListID:endpointListID];

  name = [(MTRActionsClusterEndpointListStruct *)self name];
  [(MTRActionsClusterEndpointListStruct *)v4 setName:name];

  type = [(MTRActionsClusterEndpointListStruct *)self type];
  [(MTRActionsClusterEndpointListStruct *)v4 setType:type];

  endpoints = [(MTRActionsClusterEndpointListStruct *)self endpoints];
  [(MTRActionsClusterEndpointListStruct *)v4 setEndpoints:endpoints];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: endpointListID:%@ name:%@; type:%@; endpoints:%@; >", v5, self->_endpointListID, self->_name, self->_type, self->_endpoints];;

  return v6;
}

@end