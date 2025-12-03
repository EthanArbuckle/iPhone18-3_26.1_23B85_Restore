@interface KCSharingParticipant
- (BOOL)isEqual:(id)equal;
- (KCSharingParticipant)initWithCoder:(id)coder;
- (KCSharingParticipant)initWithHandle:(id)handle permissionLevel:(int64_t)level;
- (KCSharingParticipant)initWithParticipantID:(id)d handle:(id)handle permissionLevel:(int64_t)level isCurrentUser:(BOOL)user inviteStatus:(int64_t)status sharingInvitationData:(id)data;
- (KCSharingParticipant)invitedBy;
- (NSDictionary)JSONObject;
- (NSString)longDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingParticipant

- (KCSharingParticipant)invitedBy
{
  WeakRetained = objc_loadWeakRetained(&self->_invitedBy);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v7 = equalCopy;
    sharingInvitationData = [(KCSharingParticipant *)self sharingInvitationData];
    if (sharingInvitationData)
    {
      sharingInvitationData2 = [(KCSharingParticipant *)self sharingInvitationData];
      sharingInvitationData3 = [v7 sharingInvitationData];
      v10 = [sharingInvitationData2 isEqualToData:sharingInvitationData3];
    }

    else
    {
      sharingInvitationData2 = [v7 sharingInvitationData];
      v10 = sharingInvitationData2 == 0;
    }

    participantID = [(KCSharingParticipant *)self participantID];
    participantID2 = [v7 participantID];
    if (participantID == participantID2 || (-[KCSharingParticipant participantID](self, "participantID"), sharingInvitationData3 = objc_claimAutoreleasedReturnValue(), [v7 participantID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(sharingInvitationData3, "isEqualToString:", v4)))
    {
      handle = [(KCSharingParticipant *)self handle];
      handle2 = [v7 handle];
      if ([handle isEqual:handle2] && (v20 = v10, v16 = -[KCSharingParticipant permissionLevel](self, "permissionLevel"), v16 == objc_msgSend(v7, "permissionLevel")) && (v17 = -[KCSharingParticipant isCurrentUser](self, "isCurrentUser"), v17 == objc_msgSend(v7, "isCurrentUser")))
      {
        inviteStatus = [(KCSharingParticipant *)self inviteStatus];
        v11 = (inviteStatus == [v7 inviteStatus]) & v20;
      }

      else
      {
        v11 = 0;
      }

      if (participantID == participantID2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_15:
    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  participantID = [(KCSharingParticipant *)self participantID];
  v4 = [participantID hash];
  handle = [(KCSharingParticipant *)self handle];
  v6 = [handle hash] ^ v4;
  v7 = v6 ^ [(KCSharingParticipant *)self permissionLevel];
  isCurrentUser = [(KCSharingParticipant *)self isCurrentUser];
  v9 = v7 ^ isCurrentUser ^ [(KCSharingParticipant *)self inviteStatus];
  sharingInvitationData = [(KCSharingParticipant *)self sharingInvitationData];
  v11 = [sharingInvitationData hash];

  return v9 ^ v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  participantID = [(KCSharingParticipant *)self participantID];
  [coderCopy encodeObject:participantID forKey:@"participantID"];

  handle = [(KCSharingParticipant *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  [coderCopy encodeInt64:-[KCSharingParticipant permissionLevel](self forKey:{"permissionLevel"), @"permissionLevel"}];
  [coderCopy encodeBool:-[KCSharingParticipant isCurrentUser](self forKey:{"isCurrentUser"), @"isCurrentUser"}];
  [coderCopy encodeInt64:-[KCSharingParticipant inviteStatus](self forKey:{"inviteStatus"), @"inviteStatus"}];
  sharingInvitationData = [(KCSharingParticipant *)self sharingInvitationData];
  [coderCopy encodeObject:sharingInvitationData forKey:@"inviteData"];
}

- (KCSharingParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = KCSharingParticipant;
  v5 = [(KCSharingParticipant *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"participantID"];
    participantID = v5->_participantID;
    v5->_participantID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v5->_permissionLevel = [coderCopy decodeInt64ForKey:@"permissionLevel"];
    v5->_isCurrentUser = [coderCopy decodeBoolForKey:@"isCurrentUser"];
    v5->_inviteStatus = [coderCopy decodeInt64ForKey:@"inviteStatus"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteData"];
    sharingInvitationData = v5->_sharingInvitationData;
    v5->_sharingInvitationData = v10;
  }

  return v5;
}

- (NSDictionary)JSONObject
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18[0] = @"handle";
  handle = [(KCSharingParticipant *)self handle];
  v19[0] = handle;
  v18[1] = @"permissionLevel";
  permissionLevel = [(KCSharingParticipant *)self permissionLevel];
  v5 = @"readOnly";
  if (permissionLevel == 1)
  {
    v5 = @"readWrite";
  }

  if (permissionLevel == 2)
  {
    v5 = @"owner";
  }

  v6 = v5;
  v19[1] = v6;
  v18[2] = @"isCurrentUser";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KCSharingParticipant isCurrentUser](self, "isCurrentUser")}];
  v19[2] = v7;
  v18[3] = @"inviteStatus";
  inviteStatus = [(KCSharingParticipant *)self inviteStatus];
  if ((inviteStatus - 1) > 2)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E70D4F38[inviteStatus - 1];
  }

  v19[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v11 = [v10 mutableCopy];

  participantID = [(KCSharingParticipant *)self participantID];
  [v11 setObject:participantID forKeyedSubscript:@"participantID"];

  sharingInvitationData = [(KCSharingParticipant *)self sharingInvitationData];
  v14 = [sharingInvitationData base64EncodedStringWithOptions:0];
  [v11 setObject:v14 forKeyedSubscript:@"inviteToken"];

  v15 = [v11 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)longDescription
{
  v3 = [(KCSharingParticipant *)self description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  sharingInvitationData = [(KCSharingParticipant *)self sharingInvitationData];
  v7 = [sharingInvitationData base64EncodedStringWithOptions:0];
  v8 = [v5 stringWithFormat:@" inviteToken:%@", v7];

  [v4 insertString:v8 atIndex:{objc_msgSend(v4, "length") - 1}];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  participantID = [(KCSharingParticipant *)self participantID];
  handle = [(KCSharingParticipant *)self handle];
  permissionLevel = [(KCSharingParticipant *)self permissionLevel];
  v7 = @"readOnly";
  if (permissionLevel == 1)
  {
    v7 = @"readWrite";
  }

  if (permissionLevel == 2)
  {
    v7 = @"owner";
  }

  v8 = v7;
  v9 = [(KCSharingParticipant *)self inviteStatus]- 1;
  if (v9 > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E70D4F38[v9];
  }

  if ([(KCSharingParticipant *)self isCurrentUser])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(KCSharingParticipant *)self isOwner])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v3 stringWithFormat:@"KCSharingParticipant(%@, handle:%@ permissionLevel:%@ inviteStatus: %@ isCurrentUser:%@ isOwner:%@)", participantID, handle, v8, v10, v11, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KCSharingParticipant alloc];
  participantID = [(KCSharingParticipant *)self participantID];
  handle = [(KCSharingParticipant *)self handle];
  permissionLevel = [(KCSharingParticipant *)self permissionLevel];
  isCurrentUser = [(KCSharingParticipant *)self isCurrentUser];
  inviteStatus = [(KCSharingParticipant *)self inviteStatus];
  sharingInvitationData = [(KCSharingParticipant *)self sharingInvitationData];
  v11 = [(KCSharingParticipant *)v4 initWithParticipantID:participantID handle:handle permissionLevel:permissionLevel isCurrentUser:isCurrentUser inviteStatus:inviteStatus sharingInvitationData:sharingInvitationData];

  return v11;
}

- (KCSharingParticipant)initWithParticipantID:(id)d handle:(id)handle permissionLevel:(int64_t)level isCurrentUser:(BOOL)user inviteStatus:(int64_t)status sharingInvitationData:(id)data
{
  dCopy = d;
  handleCopy = handle;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = KCSharingParticipant;
  v17 = [(KCSharingParticipant *)&v25 init];
  if (v17)
  {
    v18 = [dCopy copy];
    participantID = v17->_participantID;
    v17->_participantID = v18;

    v20 = [handleCopy copy];
    handle = v17->_handle;
    v17->_handle = v20;

    v17->_isCurrentUser = user;
    v17->_permissionLevel = level;
    v17->_inviteStatus = status;
    v22 = [dataCopy copy];
    sharingInvitationData = v17->_sharingInvitationData;
    v17->_sharingInvitationData = v22;
  }

  return v17;
}

- (KCSharingParticipant)initWithHandle:(id)handle permissionLevel:(int64_t)level
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = KCSharingParticipant;
  v8 = [(KCSharingParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, handle);
    v9->_permissionLevel = level;
  }

  return v9;
}

@end