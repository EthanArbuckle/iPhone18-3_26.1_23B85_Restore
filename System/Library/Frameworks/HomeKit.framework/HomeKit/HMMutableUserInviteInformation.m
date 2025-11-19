@interface HMMutableUserInviteInformation
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableUserInviteInformation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMUserInviteInformation alloc];
  v5 = [(HMUserInviteInformation *)self userID];
  v6 = [(HMUserInviteInformation *)self isAdministrator];
  v7 = [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  v8 = [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  v9 = [(HMUserInviteInformation *)self camerasAccessLevel];
  v10 = [(HMUserInviteInformation *)self isRestrictedGuest];
  v11 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v12 = [(HMUserInviteInformation *)v4 initWithUser:v5 administrator:v6 remoteAccess:v7 announceAccess:v8 camerasAccessLevel:v9 restrictedGuest:v10 restrictedGuestHomeAccessSettings:v11];

  return v12;
}

@end