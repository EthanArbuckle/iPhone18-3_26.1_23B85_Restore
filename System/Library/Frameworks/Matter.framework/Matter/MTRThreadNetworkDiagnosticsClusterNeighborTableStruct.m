@interface MTRThreadNetworkDiagnosticsClusterNeighborTableStruct
- (MTRThreadNetworkDiagnosticsClusterNeighborTableStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThreadNetworkDiagnosticsClusterNeighborTableStruct

- (MTRThreadNetworkDiagnosticsClusterNeighborTableStruct)init
{
  v19.receiver = self;
  v19.super_class = MTRThreadNetworkDiagnosticsClusterNeighborTableStruct;
  v2 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)&v19 init];
  v3 = v2;
  if (v2)
  {
    extAddress = v2->_extAddress;
    v2->_extAddress = &unk_284C3E588;

    age = v3->_age;
    v3->_age = &unk_284C3E588;

    rloc16 = v3->_rloc16;
    v3->_rloc16 = &unk_284C3E588;

    linkFrameCounter = v3->_linkFrameCounter;
    v3->_linkFrameCounter = &unk_284C3E588;

    mleFrameCounter = v3->_mleFrameCounter;
    v3->_mleFrameCounter = &unk_284C3E588;

    lqi = v3->_lqi;
    v3->_lqi = &unk_284C3E588;

    averageRssi = v3->_averageRssi;
    v3->_averageRssi = 0;

    lastRssi = v3->_lastRssi;
    v3->_lastRssi = 0;

    frameErrorRate = v3->_frameErrorRate;
    v3->_frameErrorRate = &unk_284C3E588;

    messageErrorRate = v3->_messageErrorRate;
    v3->_messageErrorRate = &unk_284C3E588;

    rxOnWhenIdle = v3->_rxOnWhenIdle;
    v3->_rxOnWhenIdle = &unk_284C3E588;

    fullThreadDevice = v3->_fullThreadDevice;
    v3->_fullThreadDevice = &unk_284C3E588;

    fullNetworkData = v3->_fullNetworkData;
    v3->_fullNetworkData = &unk_284C3E588;

    isChild = v3->_isChild;
    v3->_isChild = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct);
  v5 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self extAddress];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setExtAddress:v5];

  v6 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self age];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setAge:v6];

  v7 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self rloc16];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setRloc16:v7];

  v8 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self linkFrameCounter];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setLinkFrameCounter:v8];

  v9 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self mleFrameCounter];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setMleFrameCounter:v9];

  v10 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self lqi];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setLqi:v10];

  v11 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self averageRssi];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setAverageRssi:v11];

  v12 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self lastRssi];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setLastRssi:v12];

  v13 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self frameErrorRate];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setFrameErrorRate:v13];

  v14 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self messageErrorRate];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setMessageErrorRate:v14];

  v15 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self rxOnWhenIdle];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setRxOnWhenIdle:v15];

  v16 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self fullThreadDevice];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setFullThreadDevice:v16];

  v17 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self fullNetworkData];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setFullNetworkData:v17];

  v18 = [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)self isChild];
  [(MTRThreadNetworkDiagnosticsClusterNeighborTableStruct *)v4 setIsChild:v18];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: extAddress:%@ age:%@; rloc16:%@; linkFrameCounter:%@; mleFrameCounter:%@; lqi:%@; averageRssi:%@; lastRssi:%@; frameErrorRate:%@; messageErrorRate:%@; rxOnWhenIdle:%@; fullThreadDevice:%@; fullNetworkData:%@; isChild:%@; >", v5, self->_extAddress, self->_age, self->_rloc16, self->_linkFrameCounter, self->_mleFrameCounter, self->_lqi, self->_averageRssi, self->_lastRssi, self->_frameErrorRate, self->_messageErrorRate, self->_rxOnWhenIdle, self->_fullThreadDevice, self->_fullNetworkData, self->_isChild];;

  return v6;
}

@end