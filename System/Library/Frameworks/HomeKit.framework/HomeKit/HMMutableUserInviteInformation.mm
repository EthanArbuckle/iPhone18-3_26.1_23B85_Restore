@interface HMMutableUserInviteInformation
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableUserInviteInformation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMUserInviteInformation alloc];
  userID = [(HMUserInviteInformation *)self userID];
  isAdministrator = [(HMUserInviteInformation *)self isAdministrator];
  isRemoteAccessAllowed = [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  isAnnounceAccessAllowed = [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  camerasAccessLevel = [(HMUserInviteInformation *)self camerasAccessLevel];
  isRestrictedGuest = [(HMUserInviteInformation *)self isRestrictedGuest];
  restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v12 = [(HMUserInviteInformation *)v4 initWithUser:userID administrator:isAdministrator remoteAccess:isRemoteAccessAllowed announceAccess:isAnnounceAccessAllowed camerasAccessLevel:camerasAccessLevel restrictedGuest:isRestrictedGuest restrictedGuestHomeAccessSettings:restrictedGuestHomeAccessSettings];

  return v12;
}

@end