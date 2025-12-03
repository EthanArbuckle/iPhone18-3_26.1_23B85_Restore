@interface HMHomeCloudShareResponse
- (HMHomeCloudShareResponse)initWithOwnerUser:(id)user pariticipant:(id)pariticipant clientInfo:(id)info;
@end

@implementation HMHomeCloudShareResponse

- (HMHomeCloudShareResponse)initWithOwnerUser:(id)user pariticipant:(id)pariticipant clientInfo:(id)info
{
  userCopy = user;
  pariticipantCopy = pariticipant;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = HMHomeCloudShareResponse;
  v12 = [(HMHomeCloudShareResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ownerUser, user);
    objc_storeStrong(&v13->_participant, pariticipant);
    objc_storeStrong(&v13->_clientInfo, info);
  }

  return v13;
}

@end