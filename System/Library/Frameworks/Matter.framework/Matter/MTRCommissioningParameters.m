@interface MTRCommissioningParameters
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommissioningParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommissioningParameters);
  v5 = [(MTRCommissioningParameters *)self csrNonce];
  [(MTRCommissioningParameters *)v4 setCsrNonce:v5];

  v6 = [(MTRCommissioningParameters *)self attestationNonce];
  [(MTRCommissioningParameters *)v4 setAttestationNonce:v6];

  v7 = [(MTRCommissioningParameters *)self wifiSSID];
  [(MTRCommissioningParameters *)v4 setWifiSSID:v7];

  v8 = [(MTRCommissioningParameters *)self wifiCredentials];
  [(MTRCommissioningParameters *)v4 setWifiCredentials:v8];

  v9 = [(MTRCommissioningParameters *)self threadOperationalDataset];
  [(MTRCommissioningParameters *)v4 setThreadOperationalDataset:v9];

  v10 = [(MTRCommissioningParameters *)self deviceAttestationDelegate];
  [(MTRCommissioningParameters *)v4 setDeviceAttestationDelegate:v10];

  v11 = [(MTRCommissioningParameters *)self failSafeTimeout];
  [(MTRCommissioningParameters *)v4 setFailSafeTimeout:v11];

  [(MTRCommissioningParameters *)v4 setSkipCommissioningComplete:[(MTRCommissioningParameters *)self skipCommissioningComplete]];
  v12 = [(MTRCommissioningParameters *)self countryCode];
  [(MTRCommissioningParameters *)v4 setCountryCode:v12];

  [(MTRCommissioningParameters *)v4 setReadEndpointInformation:[(MTRCommissioningParameters *)self readEndpointInformation]];
  v13 = [(MTRCommissioningParameters *)self acceptedTermsAndConditions];
  [(MTRCommissioningParameters *)v4 setAcceptedTermsAndConditions:v13];

  v14 = [(MTRCommissioningParameters *)self acceptedTermsAndConditionsVersion];
  [(MTRCommissioningParameters *)v4 setAcceptedTermsAndConditionsVersion:v14];

  v15 = [(MTRCommissioningParameters *)self extraAttributesToRead];
  [(MTRCommissioningParameters *)v4 setExtraAttributesToRead:v15];

  [(MTRCommissioningParameters *)v4 setPreventNetworkScans:[(MTRCommissioningParameters *)self preventNetworkScans]];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MTRCommissioningParameters *)self wifiSSID];
  v5 = [(MTRCommissioningParameters *)self threadOperationalDataset];
  v6 = [(MTRCommissioningParameters *)self acceptedTermsAndConditions];
  v7 = [(MTRCommissioningParameters *)self acceptedTermsAndConditionsVersion];
  v8 = [v3 stringWithFormat:@"<MTRCommissioningParameters: %p, has ssid: %d, has thread dataset: %d>, accepted terms: %@, accepted terms version: %@>", self, v4 != 0, v5 != 0, v6, v7];

  return v8;
}

@end