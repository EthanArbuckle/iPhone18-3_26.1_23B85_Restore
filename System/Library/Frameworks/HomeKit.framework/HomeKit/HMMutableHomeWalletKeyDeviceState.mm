@interface HMMutableHomeWalletKeyDeviceState
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableHomeWalletKeyDeviceState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMHomeWalletKeyDeviceState);
  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKeyErrorCode:[(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode]];
  walletKey = [(HMHomeWalletKeyDeviceState *)self walletKey];
  [(HMHomeWalletKeyDeviceState *)v4 setWalletKey:walletKey];

  expressEnablementConflictingPassDescription = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  [(HMHomeWalletKeyDeviceState *)v4 setExpressEnablementConflictingPassDescription:expressEnablementConflictingPassDescription];

  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKey:[(HMHomeWalletKeyDeviceState *)self canAddWalletKey]];
  return v4;
}

@end