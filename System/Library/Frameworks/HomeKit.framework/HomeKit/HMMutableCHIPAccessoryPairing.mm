@interface HMMutableCHIPAccessoryPairing
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCHIPAccessoryPairing

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCHIPAccessoryPairing allocWithZone:zone];
  identifier = [(HMCHIPAccessoryPairing *)self identifier];
  home = [(HMCHIPAccessoryPairing *)self home];
  v7 = [(HMCHIPAccessoryPairing *)v4 initWithIdentifier:identifier home:home];

  systemCommissionerPairingUUID = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  [(HMCHIPAccessoryPairing *)v7 setSystemCommissionerPairingUUID:systemCommissionerPairingUUID];

  return v7;
}

@end