@interface HMMutableCHIPAccessorySetupPayload
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCHIPAccessorySetupPayload

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCHIPAccessorySetupPayload allocWithZone:a3];
  v5 = [(HMCHIPAccessorySetupPayload *)self setupCode];
  v6 = [(HMCHIPAccessorySetupPayload *)self discriminator];
  v7 = [(HMCHIPAccessorySetupPayload *)v4 initWithSetupCode:v5 discriminator:v6];

  [(HMCHIPAccessorySetupPayload *)v7 setHasShortDiscriminator:[(HMCHIPAccessorySetupPayload *)self hasShortDiscriminator]];
  v8 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
  [(HMCHIPAccessorySetupPayload *)v7 setSetupPayloadString:v8];

  v9 = [(HMCHIPAccessorySetupPayload *)self vendorID];
  [(HMCHIPAccessorySetupPayload *)v7 setVendorID:v9];

  v10 = [(HMCHIPAccessorySetupPayload *)self productID];
  [(HMCHIPAccessorySetupPayload *)v7 setProductID:v10];

  v11 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
  [(HMCHIPAccessorySetupPayload *)v7 setDeviceTypeID:v11];

  v12 = [(HMCHIPAccessorySetupPayload *)self serialNumber];
  [(HMCHIPAccessorySetupPayload *)v7 setSerialNumber:v12];

  [(HMCHIPAccessorySetupPayload *)v7 setRequiresCustomFlow:[(HMCHIPAccessorySetupPayload *)self requiresCustomFlow]];
  return v7;
}

@end