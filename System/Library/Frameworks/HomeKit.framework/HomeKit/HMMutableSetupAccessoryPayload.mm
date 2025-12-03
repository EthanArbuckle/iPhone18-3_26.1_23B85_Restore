@interface HMMutableSetupAccessoryPayload
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableSetupAccessoryPayload

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMSetupAccessoryPayload allocWithZone:zone];
  setupCode = [(HMSetupAccessoryPayload *)self setupCode];
  v6 = [(HMSetupAccessoryPayload *)v4 initWithSetupCode:setupCode communicationProtocol:[(HMSetupAccessoryPayload *)self communicationProtocol]];

  setupPayloadURL = [(HMSetupAccessoryPayload *)self setupPayloadURL];
  [(HMSetupAccessoryPayload *)v6 setSetupPayloadURL:setupPayloadURL];

  setupID = [(HMSetupAccessoryPayload *)self setupID];
  [(HMSetupAccessoryPayload *)v6 setSetupID:setupID];

  categoryNumber = [(HMSetupAccessoryPayload *)self categoryNumber];
  [(HMSetupAccessoryPayload *)v6 setCategoryNumber:categoryNumber];

  productNumber = [(HMSetupAccessoryPayload *)self productNumber];
  [(HMSetupAccessoryPayload *)v6 setProductNumber:productNumber];

  [(HMSetupAccessoryPayload *)v6 setSupportsIP:[(HMSetupAccessoryPayload *)self supportsIP]];
  [(HMSetupAccessoryPayload *)v6 setSupportsWAC:[(HMSetupAccessoryPayload *)self supportsWAC]];
  [(HMSetupAccessoryPayload *)v6 setSupportsBTLE:[(HMSetupAccessoryPayload *)self supportsBTLE]];
  [(HMSetupAccessoryPayload *)v6 setPaired:[(HMSetupAccessoryPayload *)self isPaired]];
  threadIdentifier = [(HMSetupAccessoryPayload *)self threadIdentifier];
  [(HMSetupAccessoryPayload *)v6 setThreadIdentifier:threadIdentifier];

  chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  [(HMSetupAccessoryPayload *)v6 setChipAccessorySetupPayload:chipAccessorySetupPayload];

  return v6;
}

@end