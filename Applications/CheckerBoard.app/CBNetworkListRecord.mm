@interface CBNetworkListRecord
- (BOOL)iOSHotspot;
- (BOOL)isEquivalentRecord:(id)record;
- (BOOL)isSecure;
- (CBNetworkListRecord)initWithBootIntentSSID:(id)d passwordProtected:(BOOL)protected;
- (CBNetworkListRecord)initWithScanResult:(id)result;
- (float)scaledRSSI;
- (id)copyWithZone:(_NSZone *)zone;
- (id)ssid;
- (int64_t)rssi;
@end

@implementation CBNetworkListRecord

- (CBNetworkListRecord)initWithScanResult:(id)result
{
  v5 = qword_100092370++;
  self->_identifier = v5;
  objc_storeStrong(&self->_scanResult, result);
  resultCopy = result;
  self->_isBootIntentRecord = 0;
  bootIntentSSID = self->_bootIntentSSID;
  self->_bootIntentSSID = &stru_10007EAB0;

  self->_isBootIntentPasswordProtected = 0;
  return self;
}

- (CBNetworkListRecord)initWithBootIntentSSID:(id)d passwordProtected:(BOOL)protected
{
  dCopy = d;
  v7 = qword_100092370++;
  scanResult = self->_scanResult;
  self->_identifier = v7;
  self->_scanResult = 0;

  self->_isBootIntentRecord = 1;
  bootIntentSSID = self->_bootIntentSSID;
  self->_bootIntentSSID = dCopy;

  self->_isBootIntentPasswordProtected = protected;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CBNetworkListRecord alloc];
  scanResult = [(CBNetworkListRecord *)self scanResult];
  v6 = [scanResult copy];
  v7 = [(CBNetworkListRecord *)v4 initWithScanResult:v6];

  return v7;
}

- (BOOL)iOSHotspot
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    return 0;
  }

  scanResult = [(CBNetworkListRecord *)self scanResult];
  isPersonalHotspot = [scanResult isPersonalHotspot];

  return isPersonalHotspot;
}

- (BOOL)isEquivalentRecord:(id)record
{
  ssid = [record ssid];
  ssid2 = [(CBNetworkListRecord *)self ssid];
  v6 = [ssid isEqualToString:ssid2];

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
    scanResult = [(CBNetworkListRecord *)self scanResult];
    requiresPassword = [scanResult requiresPassword];

    return requiresPassword;
  }
}

- (int64_t)rssi
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    return 0;
  }

  scanResult = [(CBNetworkListRecord *)self scanResult];
  rSSI = [scanResult RSSI];

  return rSSI;
}

- (float)scaledRSSI
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    return 0.0;
  }

  scanResult = [(CBNetworkListRecord *)self scanResult];
  [scanResult RSSI];
  WFScaleRSSI();
  v6 = v5;

  return v6;
}

- (id)ssid
{
  if ([(CBNetworkListRecord *)self isBootIntentRecord])
  {
    bootIntentSSID = [(CBNetworkListRecord *)self bootIntentSSID];
  }

  else
  {
    scanResult = [(CBNetworkListRecord *)self scanResult];
    bootIntentSSID = [scanResult networkName];
  }

  return bootIntentSSID;
}

@end