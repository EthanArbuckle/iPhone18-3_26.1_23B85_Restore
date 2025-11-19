@interface HMMutableCHIPAccessoryPairing
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCHIPAccessoryPairing

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCHIPAccessoryPairing allocWithZone:a3];
  v5 = [(HMCHIPAccessoryPairing *)self identifier];
  v6 = [(HMCHIPAccessoryPairing *)self home];
  v7 = [(HMCHIPAccessoryPairing *)v4 initWithIdentifier:v5 home:v6];

  v8 = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  [(HMCHIPAccessoryPairing *)v7 setSystemCommissionerPairingUUID:v8];

  return v7;
}

@end