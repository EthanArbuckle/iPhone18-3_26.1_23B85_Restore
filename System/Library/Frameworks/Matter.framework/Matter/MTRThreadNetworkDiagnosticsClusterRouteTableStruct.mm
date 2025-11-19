@interface MTRThreadNetworkDiagnosticsClusterRouteTableStruct
- (MTRThreadNetworkDiagnosticsClusterRouteTableStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThreadNetworkDiagnosticsClusterRouteTableStruct

- (MTRThreadNetworkDiagnosticsClusterRouteTableStruct)init
{
  v15.receiver = self;
  v15.super_class = MTRThreadNetworkDiagnosticsClusterRouteTableStruct;
  v2 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)&v15 init];
  v3 = v2;
  if (v2)
  {
    extAddress = v2->_extAddress;
    v2->_extAddress = &unk_284C3E588;

    rloc16 = v3->_rloc16;
    v3->_rloc16 = &unk_284C3E588;

    routerId = v3->_routerId;
    v3->_routerId = &unk_284C3E588;

    nextHop = v3->_nextHop;
    v3->_nextHop = &unk_284C3E588;

    pathCost = v3->_pathCost;
    v3->_pathCost = &unk_284C3E588;

    lqiIn = v3->_lqiIn;
    v3->_lqiIn = &unk_284C3E588;

    lqiOut = v3->_lqiOut;
    v3->_lqiOut = &unk_284C3E588;

    age = v3->_age;
    v3->_age = &unk_284C3E588;

    allocated = v3->_allocated;
    v3->_allocated = &unk_284C3E588;

    linkEstablished = v3->_linkEstablished;
    v3->_linkEstablished = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterRouteTableStruct);
  v5 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self extAddress];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setExtAddress:v5];

  v6 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self rloc16];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setRloc16:v6];

  v7 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self routerId];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setRouterId:v7];

  v8 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self nextHop];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setNextHop:v8];

  v9 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self pathCost];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setPathCost:v9];

  v10 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self lqiIn];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setLqiIn:v10];

  v11 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self lqiOut];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setLqiOut:v11];

  v12 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self age];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setAge:v12];

  v13 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self allocated];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setAllocated:v13];

  v14 = [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)self linkEstablished];
  [(MTRThreadNetworkDiagnosticsClusterRouteTableStruct *)v4 setLinkEstablished:v14];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: extAddress:%@ rloc16:%@; routerId:%@; nextHop:%@; pathCost:%@; lqiIn:%@; lqiOut:%@; age:%@; allocated:%@; linkEstablished:%@; >", v5, self->_extAddress, self->_rloc16, self->_routerId, self->_nextHop, self->_pathCost, self->_lqiIn, self->_lqiOut, self->_age, self->_allocated, self->_linkEstablished];;

  return v6;
}

@end