@interface KCSharingParticipant
- (BOOL)isEqual:(id)a3;
- (KCSharingParticipant)initWithCoder:(id)a3;
- (KCSharingParticipant)initWithHandle:(id)a3 permissionLevel:(int64_t)a4;
- (KCSharingParticipant)initWithParticipantID:(id)a3 handle:(id)a4 permissionLevel:(int64_t)a5 isCurrentUser:(BOOL)a6 inviteStatus:(int64_t)a7 sharingInvitationData:(id)a8;
- (KCSharingParticipant)invitedBy;
- (NSDictionary)JSONObject;
- (NSString)longDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingParticipant

- (KCSharingParticipant)invitedBy
{
  WeakRetained = objc_loadWeakRetained(&self->_invitedBy);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v7 = v6;
    v8 = [(KCSharingParticipant *)self sharingInvitationData];
    if (v8)
    {
      v9 = [(KCSharingParticipant *)self sharingInvitationData];
      v3 = [v7 sharingInvitationData];
      v10 = [v9 isEqualToData:v3];
    }

    else
    {
      v9 = [v7 sharingInvitationData];
      v10 = v9 == 0;
    }

    v12 = [(KCSharingParticipant *)self participantID];
    v13 = [v7 participantID];
    if (v12 == v13 || (-[KCSharingParticipant participantID](self, "participantID"), v3 = objc_claimAutoreleasedReturnValue(), [v7 participantID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      v14 = [(KCSharingParticipant *)self handle];
      v15 = [v7 handle];
      if ([v14 isEqual:v15] && (v20 = v10, v16 = -[KCSharingParticipant permissionLevel](self, "permissionLevel"), v16 == objc_msgSend(v7, "permissionLevel")) && (v17 = -[KCSharingParticipant isCurrentUser](self, "isCurrentUser"), v17 == objc_msgSend(v7, "isCurrentUser")))
      {
        v19 = [(KCSharingParticipant *)self inviteStatus];
        v11 = (v19 == [v7 inviteStatus]) & v20;
      }

      else
      {
        v11 = 0;
      }

      if (v12 == v13)
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
  v3 = [(KCSharingParticipant *)self participantID];
  v4 = [v3 hash];
  v5 = [(KCSharingParticipant *)self handle];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(KCSharingParticipant *)self permissionLevel];
  v8 = [(KCSharingParticipant *)self isCurrentUser];
  v9 = v7 ^ v8 ^ [(KCSharingParticipant *)self inviteStatus];
  v10 = [(KCSharingParticipant *)self sharingInvitationData];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingParticipant *)self participantID];
  [v4 encodeObject:v5 forKey:@"participantID"];

  v6 = [(KCSharingParticipant *)self handle];
  [v4 encodeObject:v6 forKey:@"handle"];

  [v4 encodeInt64:-[KCSharingParticipant permissionLevel](self forKey:{"permissionLevel"), @"permissionLevel"}];
  [v4 encodeBool:-[KCSharingParticipant isCurrentUser](self forKey:{"isCurrentUser"), @"isCurrentUser"}];
  [v4 encodeInt64:-[KCSharingParticipant inviteStatus](self forKey:{"inviteStatus"), @"inviteStatus"}];
  v7 = [(KCSharingParticipant *)self sharingInvitationData];
  [v4 encodeObject:v7 forKey:@"inviteData"];
}

- (KCSharingParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = KCSharingParticipant;
  v5 = [(KCSharingParticipant *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"participantID"];
    participantID = v5->_participantID;
    v5->_participantID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v5->_permissionLevel = [v4 decodeInt64ForKey:@"permissionLevel"];
    v5->_isCurrentUser = [v4 decodeBoolForKey:@"isCurrentUser"];
    v5->_inviteStatus = [v4 decodeInt64ForKey:@"inviteStatus"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteData"];
    sharingInvitationData = v5->_sharingInvitationData;
    v5->_sharingInvitationData = v10;
  }

  return v5;
}

- (NSDictionary)JSONObject
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18[0] = @"handle";
  v3 = [(KCSharingParticipant *)self handle];
  v19[0] = v3;
  v18[1] = @"permissionLevel";
  v4 = [(KCSharingParticipant *)self permissionLevel];
  v5 = @"readOnly";
  if (v4 == 1)
  {
    v5 = @"readWrite";
  }

  if (v4 == 2)
  {
    v5 = @"owner";
  }

  v6 = v5;
  v19[1] = v6;
  v18[2] = @"isCurrentUser";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KCSharingParticipant isCurrentUser](self, "isCurrentUser")}];
  v19[2] = v7;
  v18[3] = @"inviteStatus";
  v8 = [(KCSharingParticipant *)self inviteStatus];
  if ((v8 - 1) > 2)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E70D4F38[v8 - 1];
  }

  v19[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v11 = [v10 mutableCopy];

  v12 = [(KCSharingParticipant *)self participantID];
  [v11 setObject:v12 forKeyedSubscript:@"participantID"];

  v13 = [(KCSharingParticipant *)self sharingInvitationData];
  v14 = [v13 base64EncodedStringWithOptions:0];
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
  v6 = [(KCSharingParticipant *)self sharingInvitationData];
  v7 = [v6 base64EncodedStringWithOptions:0];
  v8 = [v5 stringWithFormat:@" inviteToken:%@", v7];

  [v4 insertString:v8 atIndex:{objc_msgSend(v4, "length") - 1}];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KCSharingParticipant *)self participantID];
  v5 = [(KCSharingParticipant *)self handle];
  v6 = [(KCSharingParticipant *)self permissionLevel];
  v7 = @"readOnly";
  if (v6 == 1)
  {
    v7 = @"readWrite";
  }

  if (v6 == 2)
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

  v13 = [v3 stringWithFormat:@"KCSharingParticipant(%@, handle:%@ permissionLevel:%@ inviteStatus: %@ isCurrentUser:%@ isOwner:%@)", v4, v5, v8, v10, v11, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [KCSharingParticipant alloc];
  v5 = [(KCSharingParticipant *)self participantID];
  v6 = [(KCSharingParticipant *)self handle];
  v7 = [(KCSharingParticipant *)self permissionLevel];
  v8 = [(KCSharingParticipant *)self isCurrentUser];
  v9 = [(KCSharingParticipant *)self inviteStatus];
  v10 = [(KCSharingParticipant *)self sharingInvitationData];
  v11 = [(KCSharingParticipant *)v4 initWithParticipantID:v5 handle:v6 permissionLevel:v7 isCurrentUser:v8 inviteStatus:v9 sharingInvitationData:v10];

  return v11;
}

- (KCSharingParticipant)initWithParticipantID:(id)a3 handle:(id)a4 permissionLevel:(int64_t)a5 isCurrentUser:(BOOL)a6 inviteStatus:(int64_t)a7 sharingInvitationData:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = KCSharingParticipant;
  v17 = [(KCSharingParticipant *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    participantID = v17->_participantID;
    v17->_participantID = v18;

    v20 = [v15 copy];
    handle = v17->_handle;
    v17->_handle = v20;

    v17->_isCurrentUser = a6;
    v17->_permissionLevel = a5;
    v17->_inviteStatus = a7;
    v22 = [v16 copy];
    sharingInvitationData = v17->_sharingInvitationData;
    v17->_sharingInvitationData = v22;
  }

  return v17;
}

- (KCSharingParticipant)initWithHandle:(id)a3 permissionLevel:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KCSharingParticipant;
  v8 = [(KCSharingParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, a3);
    v9->_permissionLevel = a4;
  }

  return v9;
}

@end