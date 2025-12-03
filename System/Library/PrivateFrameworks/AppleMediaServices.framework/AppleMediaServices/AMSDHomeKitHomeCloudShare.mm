@interface AMSDHomeKitHomeCloudShare
- (AMSDCloudDataShareToken)token;
- (AMSDHomeKitHomeCloudShare)initWithShareInvitation:(id)invitation;
- (NSString)containerIdentifier;
- (NSString)hashedDescription;
- (NSURL)URL;
- (NSUUID)homeIdentifier;
@end

@implementation AMSDHomeKitHomeCloudShare

- (AMSDHomeKitHomeCloudShare)initWithShareInvitation:(id)invitation
{
  invitationCopy = invitation;
  v9.receiver = self;
  v9.super_class = AMSDHomeKitHomeCloudShare;
  v6 = [(AMSDHomeKitHomeCloudShare *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareInvitation, invitation);
  }

  return v7;
}

- (NSString)containerIdentifier
{
  shareInvitation = [(AMSDHomeKitHomeCloudShare *)self shareInvitation];
  containerID = [shareInvitation containerID];

  return containerID;
}

- (NSUUID)homeIdentifier
{
  shareInvitation = [(AMSDHomeKitHomeCloudShare *)self shareInvitation];
  home = [shareInvitation home];
  uniqueIdentifier = [home uniqueIdentifier];

  return uniqueIdentifier;
}

- (AMSDCloudDataShareToken)token
{
  shareInvitation = [(AMSDHomeKitHomeCloudShare *)self shareInvitation];
  shareToken = [shareInvitation shareToken];

  return shareToken;
}

- (NSURL)URL
{
  shareInvitation = [(AMSDHomeKitHomeCloudShare *)self shareInvitation];
  shareURL = [shareInvitation shareURL];

  return shareURL;
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  v4 = [(AMSDHomeKitHomeCloudShare *)self URL];
  v5 = AMSHashIfNeeded();
  containerIdentifier = [(AMSDHomeKitHomeCloudShare *)self containerIdentifier];
  v7 = AMSHashIfNeeded();
  homeIdentifier = [(AMSDHomeKitHomeCloudShare *)self homeIdentifier];
  v9 = AMSHashIfNeeded();
  token = [(AMSDHomeKitHomeCloudShare *)self token];
  v11 = AMSHashIfNeeded();
  v12 = [NSString stringWithFormat:@"<%@: %p URL = %@ | containerIdentifier = %@ | token = %@ | home = %@", v3, self, v5, v7, v9, v11];

  return v12;
}

@end