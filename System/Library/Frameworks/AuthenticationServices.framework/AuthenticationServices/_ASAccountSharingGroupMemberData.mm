@interface _ASAccountSharingGroupMemberData
- (BOOL)isEqual:(id)equal;
- (NSString)displayName;
- (id)description;
- (unint64_t)hash;
@end

@implementation _ASAccountSharingGroupMemberData

- (NSString)displayName
{
  contactDisplayName = self->_contactDisplayName;
  if (contactDisplayName)
  {
    return contactDisplayName;
  }

  contactDisplayName = self->_shortContactDisplayName;
  if (contactDisplayName)
  {
    return contactDisplayName;
  }

  else
  {
    return self->_handleForDisplay;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contactDisplayName = self->_contactDisplayName;
      contactDisplayName = [(_ASAccountSharingGroupMemberData *)v5 contactDisplayName];
      if (WBSIsEqual())
      {
        shortContactDisplayName = self->_shortContactDisplayName;
        shortContactDisplayName = [(_ASAccountSharingGroupMemberData *)v5 shortContactDisplayName];
        if (WBSIsEqual())
        {
          handle = self->_handle;
          handle = [(_ASAccountSharingGroupMemberData *)v5 handle];
          if ([(NSString *)handle isEqualToString:handle])
          {
            handleForDisplay = self->_handleForDisplay;
            handleForDisplay = [(_ASAccountSharingGroupMemberData *)v5 handleForDisplay];
            if ([(NSString *)handleForDisplay isEqualToString:handleForDisplay])
            {
              avatarImageForGroupMemberCell = self->_avatarImageForGroupMemberCell;
              avatarImageForGroupMemberCell = [(_ASAccountSharingGroupMemberData *)v5 avatarImageForGroupMemberCell];
              if ([(UIImage *)avatarImageForGroupMemberCell isEqual:avatarImageForGroupMemberCell]&& (groupPermissionLevel = self->_groupPermissionLevel, groupPermissionLevel == [(_ASAccountSharingGroupMemberData *)v5 groupPermissionLevel]) && (isMeParticipant = self->_isMeParticipant, isMeParticipant == [(_ASAccountSharingGroupMemberData *)v5 isMeParticipant]) && (inviteStatus = self->_inviteStatus, inviteStatus == [(_ASAccountSharingGroupMemberData *)v5 inviteStatus]))
              {
                contact = self->_contact;
                contact = [(_ASAccountSharingGroupMemberData *)v5 contact];
                if (WBSIsEqual())
                {
                  participantID = self->_participantID;
                  participantID = [(_ASAccountSharingGroupMemberData *)v5 participantID];
                  v23 = WBSIsEqual();
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactDisplayName hash];
  v4 = [(NSString *)self->_shortContactDisplayName hash]^ v3;
  v5 = [(NSString *)self->_handle hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_handleForDisplay hash];
  v7 = [(UIImage *)self->_avatarImageForGroupMemberCell hash];
  inviteStatus = self->_inviteStatus;
  v9 = v6 ^ v7 ^ self->_groupPermissionLevel ^ self->_isMeParticipant;
  v10 = inviteStatus ^ [(CNContact *)self->_contact hash];
  return v9 ^ v10 ^ [(NSString *)self->_participantID hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v14 = *&self->_contactDisplayName;
  v13 = *&self->_handle;
  if (self->_isMeParticipant)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  groupPermissionLevel = self->_groupPermissionLevel;
  inviteStatus = self->_inviteStatus;
  participantID = self->_participantID;
  if (self->_contact)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v5;
  participantID = [v3 stringWithFormat:@"<%@: %p contactDisplayName = %@; shortContactDisplayName = %@; handle = %@; handleForDisplay = %@; permissionLevel = %lld; isMeParticipant = %@; inviteStatus = %lld>; hasContact = %@; participantID: %@;", v4, self, v14, v13, groupPermissionLevel, v10, inviteStatus, v9, participantID];;

  return participantID;
}

@end