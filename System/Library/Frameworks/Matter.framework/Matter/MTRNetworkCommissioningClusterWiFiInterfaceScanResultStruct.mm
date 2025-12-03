@interface MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct
- (MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

    data = [MEMORY[0x277CBEA90] data];
    ssid = v3->_ssid;
    v3->_ssid = data;

    data2 = [MEMORY[0x277CBEA90] data];
    bssid = v3->_bssid;
    v3->_bssid = data2;

    channel = v3->_channel;
    v3->_channel = &unk_284C3E588;

    wiFiBand = v3->_wiFiBand;
    v3->_wiFiBand = &unk_284C3E588;

    rssi = v3->_rssi;
    v3->_rssi = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct);
  security = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self security];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setSecurity:security];

  ssid = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self ssid];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setSsid:ssid];

  bssid = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self bssid];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setBssid:bssid];

  channel = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self channel];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setChannel:channel];

  wiFiBand = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self wiFiBand];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setWiFiBand:wiFiBand];

  rssi = [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)self rssi];
  [(MTRNetworkCommissioningClusterWiFiInterfaceScanResultStruct *)v4 setRssi:rssi];

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