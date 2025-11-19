@interface MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct
- (MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct

- (MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct)init
{
  v14.receiver = self;
  v14.super_class = MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct;
  v2 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)&v14 init];
  v3 = v2;
  if (v2)
  {
    panId = v2->_panId;
    v2->_panId = &unk_284C3E588;

    extendedPanId = v3->_extendedPanId;
    v3->_extendedPanId = &unk_284C3E588;

    networkName = v3->_networkName;
    v3->_networkName = &stru_284BD0DD8;

    channel = v3->_channel;
    v3->_channel = &unk_284C3E588;

    version = v3->_version;
    v3->_version = &unk_284C3E588;

    v9 = [MEMORY[0x277CBEA90] data];
    extendedAddress = v3->_extendedAddress;
    v3->_extendedAddress = v9;

    rssi = v3->_rssi;
    v3->_rssi = &unk_284C3E588;

    lqi = v3->_lqi;
    v3->_lqi = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct);
  v5 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self panId];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setPanId:v5];

  v6 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self extendedPanId];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setExtendedPanId:v6];

  v7 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self networkName];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setNetworkName:v7];

  v8 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self channel];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setChannel:v8];

  v9 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self version];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setVersion:v9];

  v10 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self extendedAddress];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setExtendedAddress:v10];

  v11 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self rssi];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setRssi:v11];

  v12 = [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)self lqi];
  [(MTRNetworkCommissioningClusterThreadInterfaceScanResultStruct *)v4 setLqi:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  panId = self->_panId;
  extendedPanId = self->_extendedPanId;
  networkName = self->_networkName;
  channel = self->_channel;
  version = self->_version;
  v11 = [(NSData *)self->_extendedAddress base64EncodedStringWithOptions:0];
  v12 = [v3 stringWithFormat:@"<%@: panId:%@ extendedPanId:%@; networkName:%@; channel:%@; version:%@; extendedAddress:%@; rssi:%@; lqi:%@; >", v5, panId, extendedPanId, networkName, channel, version, v11, self->_rssi, self->_lqi];;

  return v12;
}

@end