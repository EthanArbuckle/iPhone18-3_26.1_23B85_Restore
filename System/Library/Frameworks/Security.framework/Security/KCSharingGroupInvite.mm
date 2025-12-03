@interface KCSharingGroupInvite
- (KCSharingGroupInvite)initWithCoder:(id)coder;
- (KCSharingGroupInvite)initWithGroupID:(id)d shareURL:(id)l senderHandle:(id)handle inviteeHandle:(id)inviteeHandle inviteToken:(id)token sentTime:(id)time displayName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupInvite

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupID = [(KCSharingGroupInvite *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  shareURL = [(KCSharingGroupInvite *)self shareURL];
  [coderCopy encodeObject:shareURL forKey:@"shareURL"];

  senderHandle = [(KCSharingGroupInvite *)self senderHandle];
  [coderCopy encodeObject:senderHandle forKey:@"senderHandle"];

  inviteeHandle = [(KCSharingGroupInvite *)self inviteeHandle];
  [coderCopy encodeObject:inviteeHandle forKey:@"inviteeHandle"];

  inviteToken = [(KCSharingGroupInvite *)self inviteToken];
  [coderCopy encodeObject:inviteToken forKey:@"inviteToken"];

  sentTime = [(KCSharingGroupInvite *)self sentTime];
  [coderCopy encodeObject:sentTime forKey:@"sentTime"];

  displayName = [(KCSharingGroupInvite *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];
}

- (KCSharingGroupInvite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = KCSharingGroupInvite;
  v5 = [(KCSharingGroupInvite *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
    senderHandle = v5->_senderHandle;
    v5->_senderHandle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteeHandle"];
    inviteeHandle = v5->_inviteeHandle;
    v5->_inviteeHandle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteToken"];
    inviteToken = v5->_inviteToken;
    v5->_inviteToken = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sentTime"];
    sentTime = v5->_sentTime;
    v5->_sentTime = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v18;
  }

  return v5;
}

- (KCSharingGroupInvite)initWithGroupID:(id)d shareURL:(id)l senderHandle:(id)handle inviteeHandle:(id)inviteeHandle inviteToken:(id)token sentTime:(id)time displayName:(id)name
{
  dCopy = d;
  lCopy = l;
  handleCopy = handle;
  inviteeHandleCopy = inviteeHandle;
  tokenCopy = token;
  timeCopy = time;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = KCSharingGroupInvite;
  v18 = [(KCSharingGroupInvite *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_groupID, d);
    objc_storeStrong(&v19->_shareURL, l);
    objc_storeStrong(&v19->_senderHandle, handle);
    objc_storeStrong(&v19->_inviteeHandle, inviteeHandle);
    objc_storeStrong(&v19->_inviteToken, token);
    objc_storeStrong(&v19->_sentTime, time);
    objc_storeStrong(&v19->_displayName, name);
  }

  return v19;
}

@end