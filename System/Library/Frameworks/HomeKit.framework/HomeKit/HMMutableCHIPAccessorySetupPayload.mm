@interface HMMutableCHIPAccessorySetupPayload
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCHIPAccessorySetupPayload

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCHIPAccessorySetupPayload allocWithZone:zone];
  setupCode = [(HMCHIPAccessorySetupPayload *)self setupCode];
  discriminator = [(HMCHIPAccessorySetupPayload *)self discriminator];
  v7 = [(HMCHIPAccessorySetupPayload *)v4 initWithSetupCode:setupCode discriminator:discriminator];

  [(HMCHIPAccessorySetupPayload *)v7 setHasShortDiscriminator:[(HMCHIPAccessorySetupPayload *)self hasShortDiscriminator]];
  setupPayloadString = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
  [(HMCHIPAccessorySetupPayload *)v7 setSetupPayloadString:setupPayloadString];

  vendorID = [(HMCHIPAccessorySetupPayload *)self vendorID];
  [(HMCHIPAccessorySetupPayload *)v7 setVendorID:vendorID];

  productID = [(HMCHIPAccessorySetupPayload *)self productID];
  [(HMCHIPAccessorySetupPayload *)v7 setProductID:productID];

  deviceTypeID = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
  [(HMCHIPAccessorySetupPayload *)v7 setDeviceTypeID:deviceTypeID];

  serialNumber = [(HMCHIPAccessorySetupPayload *)self serialNumber];
  [(HMCHIPAccessorySetupPayload *)v7 setSerialNumber:serialNumber];

  [(HMCHIPAccessorySetupPayload *)v7 setRequiresCustomFlow:[(HMCHIPAccessorySetupPayload *)self requiresCustomFlow]];
  return v7;
}

@end