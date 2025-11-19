@interface HMUserCloudShareInvitation
- (HMUserCloudShareInvitation)initWithUser:(id)a3 URL:(id)a4 shareToken:(id)a5 containerID:(id)a6 forHome:(id)a7 fromUser:(id)a8;
@end

@implementation HMUserCloudShareInvitation

- (HMUserCloudShareInvitation)initWithUser:(id)a3 URL:(id)a4 shareToken:(id)a5 containerID:(id)a6 forHome:(id)a7 fromUser:(id)a8
{
  v27 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = HMUserCloudShareInvitation;
  v20 = [(HMUserCloudShareInvitation *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_user, a3);
    v22 = [v15 copy];
    shareURL = v21->_shareURL;
    v21->_shareURL = v22;

    objc_storeStrong(&v21->_shareToken, a5);
    objc_storeStrong(&v21->_fromUser, a8);
    objc_storeStrong(&v21->_home, a7);
    v24 = [v17 copy];
    containerID = v21->_containerID;
    v21->_containerID = v24;
  }

  return v21;
}

@end