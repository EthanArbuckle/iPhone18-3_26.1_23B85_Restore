@interface HMMutableHomeWalletKeyDeviceState
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableHomeWalletKeyDeviceState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMHomeWalletKeyDeviceState);
  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKeyErrorCode:[(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode]];
  v5 = [(HMHomeWalletKeyDeviceState *)self walletKey];
  [(HMHomeWalletKeyDeviceState *)v4 setWalletKey:v5];

  v6 = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  [(HMHomeWalletKeyDeviceState *)v4 setExpressEnablementConflictingPassDescription:v6];

  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKey:[(HMHomeWalletKeyDeviceState *)self canAddWalletKey]];
  return v4;
}

@end