@interface MTRActionsClusterEndpointListStruct
- (MTRActionsClusterEndpointListStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

    v7 = [MEMORY[0x277CBEA60] array];
    endpoints = v3->_endpoints;
    v3->_endpoints = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRActionsClusterEndpointListStruct);
  v5 = [(MTRActionsClusterEndpointListStruct *)self endpointListID];
  [(MTRActionsClusterEndpointListStruct *)v4 setEndpointListID:v5];

  v6 = [(MTRActionsClusterEndpointListStruct *)self name];
  [(MTRActionsClusterEndpointListStruct *)v4 setName:v6];

  v7 = [(MTRActionsClusterEndpointListStruct *)self type];
  [(MTRActionsClusterEndpointListStruct *)v4 setType:v7];

  v8 = [(MTRActionsClusterEndpointListStruct *)self endpoints];
  [(MTRActionsClusterEndpointListStruct *)v4 setEndpoints:v8];

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