@interface KCSharingGroupInvite
- (KCSharingGroupInvite)initWithCoder:(id)a3;
- (KCSharingGroupInvite)initWithGroupID:(id)a3 shareURL:(id)a4 senderHandle:(id)a5 inviteeHandle:(id)a6 inviteToken:(id)a7 sentTime:(id)a8 displayName:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingGroupInvite

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupInvite *)self groupID];
  [v4 encodeObject:v5 forKey:@"groupID"];

  v6 = [(KCSharingGroupInvite *)self shareURL];
  [v4 encodeObject:v6 forKey:@"shareURL"];

  v7 = [(KCSharingGroupInvite *)self senderHandle];
  [v4 encodeObject:v7 forKey:@"senderHandle"];

  v8 = [(KCSharingGroupInvite *)self inviteeHandle];
  [v4 encodeObject:v8 forKey:@"inviteeHandle"];

  v9 = [(KCSharingGroupInvite *)self inviteToken];
  [v4 encodeObject:v9 forKey:@"inviteToken"];

  v10 = [(KCSharingGroupInvite *)self sentTime];
  [v4 encodeObject:v10 forKey:@"sentTime"];

  v11 = [(KCSharingGroupInvite *)self displayName];
  [v4 encodeObject:v11 forKey:@"displayName"];
}

- (KCSharingGroupInvite)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = KCSharingGroupInvite;
  v5 = [(KCSharingGroupInvite *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
    senderHandle = v5->_senderHandle;
    v5->_senderHandle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteeHandle"];
    inviteeHandle = v5->_inviteeHandle;
    v5->_inviteeHandle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteToken"];
    inviteToken = v5->_inviteToken;
    v5->_inviteToken = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sentTime"];
    sentTime = v5->_sentTime;
    v5->_sentTime = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v18;
  }

  return v5;
}

- (KCSharingGroupInvite)initWithGroupID:(id)a3 shareURL:(id)a4 senderHandle:(id)a5 inviteeHandle:(id)a6 inviteToken:(id)a7 sentTime:(id)a8 displayName:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = KCSharingGroupInvite;
  v18 = [(KCSharingGroupInvite *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_groupID, a3);
    objc_storeStrong(&v19->_shareURL, a4);
    objc_storeStrong(&v19->_senderHandle, a5);
    objc_storeStrong(&v19->_inviteeHandle, a6);
    objc_storeStrong(&v19->_inviteToken, a7);
    objc_storeStrong(&v19->_sentTime, a8);
    objc_storeStrong(&v19->_displayName, a9);
  }

  return v19;
}

@end