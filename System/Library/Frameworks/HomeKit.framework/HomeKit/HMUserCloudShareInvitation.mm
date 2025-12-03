@interface HMUserCloudShareInvitation
- (HMUserCloudShareInvitation)initWithUser:(id)user URL:(id)l shareToken:(id)token containerID:(id)d forHome:(id)home fromUser:(id)fromUser;
@end

@implementation HMUserCloudShareInvitation

- (HMUserCloudShareInvitation)initWithUser:(id)user URL:(id)l shareToken:(id)token containerID:(id)d forHome:(id)home fromUser:(id)fromUser
{
  userCopy = user;
  lCopy = l;
  tokenCopy = token;
  dCopy = d;
  homeCopy = home;
  fromUserCopy = fromUser;
  v28.receiver = self;
  v28.super_class = HMUserCloudShareInvitation;
  v20 = [(HMUserCloudShareInvitation *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_user, user);
    v22 = [lCopy copy];
    shareURL = v21->_shareURL;
    v21->_shareURL = v22;

    objc_storeStrong(&v21->_shareToken, token);
    objc_storeStrong(&v21->_fromUser, fromUser);
    objc_storeStrong(&v21->_home, home);
    v24 = [dCopy copy];
    containerID = v21->_containerID;
    v21->_containerID = v24;
  }

  return v21;
}

@end