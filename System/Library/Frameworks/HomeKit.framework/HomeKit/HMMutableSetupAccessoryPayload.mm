@interface HMMutableSetupAccessoryPayload
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableSetupAccessoryPayload

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMSetupAccessoryPayload allocWithZone:a3];
  v5 = [(HMSetupAccessoryPayload *)self setupCode];
  v6 = [(HMSetupAccessoryPayload *)v4 initWithSetupCode:v5 communicationProtocol:[(HMSetupAccessoryPayload *)self communicationProtocol]];

  v7 = [(HMSetupAccessoryPayload *)self setupPayloadURL];
  [(HMSetupAccessoryPayload *)v6 setSetupPayloadURL:v7];

  v8 = [(HMSetupAccessoryPayload *)self setupID];
  [(HMSetupAccessoryPayload *)v6 setSetupID:v8];

  v9 = [(HMSetupAccessoryPayload *)self categoryNumber];
  [(HMSetupAccessoryPayload *)v6 setCategoryNumber:v9];

  v10 = [(HMSetupAccessoryPayload *)self productNumber];
  [(HMSetupAccessoryPayload *)v6 setProductNumber:v10];

  [(HMSetupAccessoryPayload *)v6 setSupportsIP:[(HMSetupAccessoryPayload *)self supportsIP]];
  [(HMSetupAccessoryPayload *)v6 setSupportsWAC:[(HMSetupAccessoryPayload *)self supportsWAC]];
  [(HMSetupAccessoryPayload *)v6 setSupportsBTLE:[(HMSetupAccessoryPayload *)self supportsBTLE]];
  [(HMSetupAccessoryPayload *)v6 setPaired:[(HMSetupAccessoryPayload *)self isPaired]];
  v11 = [(HMSetupAccessoryPayload *)self threadIdentifier];
  [(HMSetupAccessoryPayload *)v6 setThreadIdentifier:v11];

  v12 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  [(HMSetupAccessoryPayload *)v6 setChipAccessorySetupPayload:v12];

  return v6;
}

@end