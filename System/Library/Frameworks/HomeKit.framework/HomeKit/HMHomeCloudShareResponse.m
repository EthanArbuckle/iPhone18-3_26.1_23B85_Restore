@interface HMHomeCloudShareResponse
- (HMHomeCloudShareResponse)initWithOwnerUser:(id)a3 pariticipant:(id)a4 clientInfo:(id)a5;
@end

@implementation HMHomeCloudShareResponse

- (HMHomeCloudShareResponse)initWithOwnerUser:(id)a3 pariticipant:(id)a4 clientInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMHomeCloudShareResponse;
  v12 = [(HMHomeCloudShareResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ownerUser, a3);
    objc_storeStrong(&v13->_participant, a4);
    objc_storeStrong(&v13->_clientInfo, a5);
  }

  return v13;
}

@end