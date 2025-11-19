@interface MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct
- (MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct

- (MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct;
  v2 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    security = v2->_security;
    v2->_security = &unk_284C3E588;

    v5 = [MEMORY[0x277CBEA90] data];
    ssid = v3->_ssid;
    v3->_ssid = v5;

    v7 = [MEMORY[0x277CBEA90] data];
    bssid = v3->_bssid;
    v3->_bssid = v7;

    channel = v3->_channel;
    v3->_channel = &unk_284C3E588;

    wiFiBand = v3->_wiFiBand;
    v3->_wiFiBand = &unk_284C3E588;

    rssi = v3->_rssi;
    v3->_rssi = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct);
  v5 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self security];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setSecurity:v5];

  v6 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self ssid];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setSsid:v6];

  v7 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self bssid];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setBssid:v7];

  v8 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self channel];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setChannel:v8];

  v9 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self wiFiBand];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setWiFiBand:v9];

  v10 = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self rssi];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setRssi:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  security = self->_security;
  v7 = [(NSData *)self->_ssid base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_bssid base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: security:%@ ssid:%@; bssid:%@; channel:%@; wiFiBand:%@; rssi:%@; >", v5, security, v7, v8, self->_channel, self->_wiFiBand, self->_rssi];;

  return v9;
}

@end