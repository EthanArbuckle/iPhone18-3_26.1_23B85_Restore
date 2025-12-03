@interface MTROTASoftwareUpdateRequestorClusterProviderLocation
- (MTROTASoftwareUpdateRequestorClusterProviderLocation)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROTASoftwareUpdateRequestorClusterProviderLocation

- (MTROTASoftwareUpdateRequestorClusterProviderLocation)init
{
  v8.receiver = self;
  v8.super_class = MTROTASoftwareUpdateRequestorClusterProviderLocation;
  v2 = [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    providerNodeID = v2->_providerNodeID;
    v2->_providerNodeID = &unk_284C3E588;

    endpoint = v3->_endpoint;
    v3->_endpoint = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateRequestorClusterProviderLocation);
  providerNodeID = [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)self providerNodeID];
  [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)v4 setProviderNodeID:providerNodeID];

  endpoint = [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)self endpoint];
  [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)v4 setEndpoint:endpoint];

  fabricIndex = [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)self fabricIndex];
  [(MTROTASoftwareUpdateRequestorClusterProviderLocation *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: providerNodeID:%@ endpoint:%@; fabricIndex:%@; >", v5, self->_providerNodeID, self->_endpoint, self->_fabricIndex];;

  return v6;
}

@end