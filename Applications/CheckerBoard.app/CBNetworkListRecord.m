@interface CBNetworkListRecord
- (BOOL)iOSHotspot;
- (BOOL)isEquivalentRecord:(id)a3;
- (BOOL)isSecure;
- (CBNetworkListRecord)initWithBootIntentSSID:(id)a3 passwordProtected:(BOOL)a4;
- (CBNetworkListRecord)initWithScanResult:(id)a3;
- (float)scaledRSSI;
- (id)copyWithZone:(_NSZone *)a3;
- (id)ssid;
- (int64_t)rssi;
@end

@implementation CBNetworkListRecord

- (CBNetworkListRecord)initWithScanResult:(id)a3
{
  v5 = qword_100092370++;
  self->_identifier = v5;
  objc_storeStrong(&self->_scanResult, a3);
  v6 = a3;
  self->_isBootIntentRecord = 0;
  bootIntentSSID = self->_bootIntentSSID;
  self->_bootIntentSSID = &stru_10007EAB0;

  self->_isBootIntentPasswordProtected = 0;
  return self;
}

- (CBNetworkListRecord)initWithBootIntentSSID:(id)a3 passwordProtected:(BOOL)a4
{
  v6 = a3;
  v7 = qword_100092370++;
  scanResult = self->_scanResult;
  self->_identifier = v7;
  self->_scanResult = 0;

  self->_isBootIntentRecord = 1;
  bootIntentSSID = self->_bootIntentSSID;
  self->_bootIntentSSID = v6;

  self->_isBootIntentPasswordProtected = a4;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CBNetworkListRecord alloc];
  v5 = [(CBNetworkListRecord *)self scanResult];
  v6 = [v5 copy];
  v7 = [(CBNetworkListRecord *)v4 initWithScanResult:v6];

  return v7;
}

- (BOOL)iOSHotspot
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    return 0;
  }

  v4 = [(CBNetworkListRecord *)self scanResult];
  v5 = [v4 isPersonalHotspot];

  return v5;
}

- (BOOL)isEquivalentRecord:(id)a3
{
  v4 = [a3 ssid];
  v5 = [(CBNetworkListRecord *)self ssid];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)isSecure
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {

    return [(CBNetworkListRecord *)self isBootIntentPasswordProtected];
  }

  else
  {
    v3 = [(CBNetworkListRecord *)self scanResult];
    v4 = [v3 requiresPassword];

    return v4;
  }
}

- (int64_t)rssi
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    return 0;
  }

  v4 = [(CBNetworkListRecord *)self scanResult];
  v5 = [v4 RSSI];

  return v5;
}

- (float)scaledRSSI
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    return 0.0;
  }

  v4 = [(CBNetworkListRecord *)self scanResult];
  [v4 RSSI];
  WFScaleRSSI();
  v6 = v5;

  return v6;
}

- (id)ssid
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    v3 = [(CBNetworkListRecord *)self bootIntentSSID];
  }

  else
  {
    v4 = [(CBNetworkListRecord *)self scanResult];
    v3 = [v4 networkName];
  }

  return v3;
}

@end