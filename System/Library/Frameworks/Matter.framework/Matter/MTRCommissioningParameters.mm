@interface MTRCommissioningParameters
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommissioningParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommissioningParameters);
  csrNonce = [(MTRCommissioningParameters *)self csrNonce];
  [(MTRCommissioningParameters *)v4 setCsrNonce:csrNonce];

  attestationNonce = [(MTRCommissioningParameters *)self attestationNonce];
  [(MTRCommissioningParameters *)v4 setAttestationNonce:attestationNonce];

  wifiSSID = [(MTRCommissioningParameters *)self wifiSSID];
  [(MTRCommissioningParameters *)v4 setWifiSSID:wifiSSID];

  wifiCredentials = [(MTRCommissioningParameters *)self wifiCredentials];
  [(MTRCommissioningParameters *)v4 setWifiCredentials:wifiCredentials];

  threadOperationalDataset = [(MTRCommissioningParameters *)self threadOperationalDataset];
  [(MTRCommissioningParameters *)v4 setThreadOperationalDataset:threadOperationalDataset];

  deviceAttestationDelegate = [(MTRCommissioningParameters *)self deviceAttestationDelegate];
  [(MTRCommissioningParameters *)v4 setDeviceAttestationDelegate:deviceAttestationDelegate];

  failSafeTimeout = [(MTRCommissioningParameters *)self failSafeTimeout];
  [(MTRCommissioningParameters *)v4 setFailSafeTimeout:failSafeTimeout];

  [(MTRCommissioningParameters *)v4 setSkipCommissioningComplete:[(MTRCommissioningParameters *)self skipCommissioningComplete]];
  countryCode = [(MTRCommissioningParameters *)self countryCode];
  [(MTRCommissioningParameters *)v4 setCountryCode:countryCode];

  [(MTRCommissioningParameters *)v4 setReadEndpointInformation:[(MTRCommissioningParameters *)self readEndpointInformation]];
  acceptedTermsAndConditions = [(MTRCommissioningParameters *)self acceptedTermsAndConditions];
  [(MTRCommissioningParameters *)v4 setAcceptedTermsAndConditions:acceptedTermsAndConditions];

  acceptedTermsAndConditionsVersion = [(MTRCommissioningParameters *)self acceptedTermsAndConditionsVersion];
  [(MTRCommissioningParameters *)v4 setAcceptedTermsAndConditionsVersion:acceptedTermsAndConditionsVersion];

  extraAttributesToRead = [(MTRCommissioningParameters *)self extraAttributesToRead];
  [(MTRCommissioningParameters *)v4 setExtraAttributesToRead:extraAttributesToRead];

  [(MTRCommissioningParameters *)v4 setPreventNetworkScans:[(MTRCommissioningParameters *)self preventNetworkScans]];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  wifiSSID = [(MTRCommissioningParameters *)self wifiSSID];
  threadOperationalDataset = [(MTRCommissioningParameters *)self threadOperationalDataset];
  acceptedTermsAndConditions = [(MTRCommissioningParameters *)self acceptedTermsAndConditions];
  acceptedTermsAndConditionsVersion = [(MTRCommissioningParameters *)self acceptedTermsAndConditionsVersion];
  v8 = [v3 stringWithFormat:@"<MTRCommissioningParameters: %p, has ssid: %d, has thread dataset: %d>, accepted terms: %@, accepted terms version: %@>", self, wifiSSID != 0, threadOperationalDataset != 0, acceptedTermsAndConditions, acceptedTermsAndConditionsVersion];

  return v8;
}

@end