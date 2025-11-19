@interface NRDevice
- (id)_bridgeConciseDebugDescription;
@end

@implementation NRDevice

- (id)_bridgeConciseDebugDescription
{
  v16 = [(NRDevice *)self valueForProperty:NRDevicePropertyName];
  v15 = [(NRDevice *)self valueForProperty:NRDevicePropertyAdvertisedName];
  v17 = [(NRDevice *)self valueForProperty:NRDevicePropertyIsActive];
  v14 = [(NRDevice *)self valueForProperty:NRDevicePropertyIsPaired];
  v3 = [(NRDevice *)self valueForProperty:NRDevicePropertyIsSetup];
  v13 = [(NRDevice *)self valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v4 = [(NRDevice *)self valueForProperty:NRDevicePropertyProductType];
  v5 = [(NRDevice *)self valueForProperty:NRDevicePropertyDeviceBrand];
  v6 = BPSShortLocalizedVariantSizeForProductType();
  v7 = [(NRDevice *)self valueForProperty:NRDevicePropertySystemBuildVersion];
  v8 = [(NRDevice *)self valueForProperty:NRDevicePropertyDmin];
  v9 = [v8 objectForKeyedSubscript:&off_100281B40];

  v10 = [(NRDevice *)self valueForProperty:NRDevicePropertyDeviceHousingColor];
  v11 = [NSString stringWithFormat:@"[NRDevice %p] Name: %@, AdvertisingID %@, Build: %@ Size: %@, DminTopEnclosure: %@ DeviceHousingColor: %@, Brand: %@, Paired %@, Setup %@, Active %@, ProductType: %@, PairingStorePath: %@", self, v16, v15, v7, v6, v9, v10, v5, v14, v3, v17, v4, v13];

  return v11;
}

@end