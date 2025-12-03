@interface KCSharingGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isOwned;
- (KCSharingGroup)initWithCoder:(id)coder;
- (KCSharingGroup)initWithGroupID:(id)d participants:(id)participants displayName:(id)name shareURL:(id)l;
- (KCSharingGroup)initWithParticipants:(id)participants displayName:(id)name;
- (KCSharingParticipant)currentUserParticipant;
- (KCSharingParticipant)ownerParticipant;
- (NSDictionary)JSONObject;
- (NSString)longDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)joinState;
- (unint64_t)hash;
- (void)addParticipant:(id)participant;
- (void)encodeWithCoder:(id)coder;
- (void)removeParticipant:(id)participant;
@end

@implementation KCSharingGroup

- (void)removeParticipant:(id)participant
{
  participantCopy = participant;
  participants = [(KCSharingGroup *)self participants];
  v6 = [participants mutableCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__KCSharingGroup_removeParticipant___block_invoke;
  v10[3] = &unk_1E70D46F8;
  v11 = participantCopy;
  v7 = participantCopy;
  v8 = [v6 indexOfObjectPassingTest:v10];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeObjectAtIndex:v8];
  }

  v9 = [v6 copy];
  [(KCSharingGroup *)self setParticipants:v9];
}

uint64_t __36__KCSharingGroup_removeParticipant___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [*(a1 + 32) handle];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)addParticipant:(id)participant
{
  participantCopy = participant;
  participants = [(KCSharingGroup *)self participants];
  v5 = [participants arrayByAddingObject:participantCopy];

  [(KCSharingGroup *)self setParticipants:v5];
}

- (int64_t)joinState
{
  currentUserParticipant = [(KCSharingGroup *)self currentUserParticipant];
  inviteStatus = [currentUserParticipant inviteStatus];

  return inviteStatus;
}

- (BOOL)isOwned
{
  currentUserParticipant = [(KCSharingGroup *)self currentUserParticipant];
  ownerParticipant = [(KCSharingGroup *)self ownerParticipant];
  v5 = [currentUserParticipant isEqual:ownerParticipant];

  return v5;
}

- (KCSharingParticipant)ownerParticipant
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  participants = [(KCSharingGroup *)self participants];
  v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(participants);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isOwner])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (KCSharingParticipant)currentUserParticipant
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  participants = [(KCSharingGroup *)self participants];
  v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(participants);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isCurrentUser])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    displayName = [(KCSharingGroup *)self displayName];
    if (displayName)
    {
      displayName2 = [(KCSharingGroup *)self displayName];
      displayName3 = [v5 displayName];
      v9 = [displayName2 isEqual:displayName3];
    }

    else
    {
      displayName2 = [v5 displayName];
      v9 = displayName2 == 0;
    }

    shareURL = [(KCSharingGroup *)self shareURL];
    if (shareURL)
    {
      shareURL2 = [(KCSharingGroup *)self shareURL];
      shareURL3 = [v5 shareURL];
      v14 = [shareURL2 isEqual:shareURL3];
    }

    else
    {
      shareURL2 = [v5 shareURL];
      v14 = shareURL2 == 0;
    }

    groupID = [(KCSharingGroup *)self groupID];
    groupID2 = [v5 groupID];
    if ([groupID isEqual:groupID2])
    {
      participants = [(KCSharingGroup *)self participants];
      participants2 = [v5 participants];
      v10 = [participants isEqual:participants2] & v9 & v14;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  groupID = [(KCSharingGroup *)self groupID];
  v4 = [groupID hash];
  participants = [(KCSharingGroup *)self participants];
  v6 = [participants hash] ^ v4;
  displayName = [(KCSharingGroup *)self displayName];
  v8 = [displayName hash];
  shareURL = [(KCSharingGroup *)self shareURL];
  v10 = v8 ^ [shareURL hash];

  return v6 ^ v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupID = [(KCSharingGroup *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  participants = [(KCSharingGroup *)self participants];
  [coderCopy encodeObject:participants forKey:@"participants"];

  displayName = [(KCSharingGroup *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  shareURL = [(KCSharingGroup *)self shareURL];
  [coderCopy encodeObject:shareURL forKey:@"shareURL"];
}

- (KCSharingGroup)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = KCSharingGroup;
  v5 = [(KCSharingGroup *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"participants"];
    v12 = v11;
    if (v11)
    {
      array = v11;
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    participants = v5->_participants;
    v5->_participants = array;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSDictionary)JSONObject
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"groupID";
  groupID = [(KCSharingGroup *)self groupID];
  v14[1] = @"participants";
  v15[0] = groupID;
  participants = [(KCSharingGroup *)self participants];
  v5 = [participants valueForKey:@"JSONObject"];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = [v6 mutableCopy];

  displayName = [(KCSharingGroup *)self displayName];
  [v7 setObject:displayName forKeyedSubscript:@"displayName"];

  shareURL = [(KCSharingGroup *)self shareURL];
  absoluteString = [shareURL absoluteString];
  [v7 setObject:absoluteString forKeyedSubscript:@"shareURL"];

  v11 = [v7 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)longDescription
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  groupID = [(KCSharingGroup *)self groupID];
  displayName = [(KCSharingGroup *)self displayName];
  shareURL = [(KCSharingGroup *)self shareURL];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"KCSharingGroup(%@, name: %@ shareURL: %@ participants:\n"), groupID, displayName, shareURL;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  participants = [(KCSharingGroup *)self participants];
  v9 = [participants countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(participants);
        }

        longDescription = [*(*(&v17 + 1) + 8 * i) longDescription];
        [v7 appendFormat:@"\t%@\n", longDescription];
      }

      v10 = [participants countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v7 appendString:@""]);
  v14 = [v7 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  groupID = [(KCSharingGroup *)self groupID];
  displayName = [(KCSharingGroup *)self displayName];
  participants = [(KCSharingGroup *)self participants];
  v7 = [v3 stringWithFormat:@"KCSharingGroup(%@, name: %@, participants: %@)", groupID, displayName, participants];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KCSharingGroup alloc];
  groupID = [(KCSharingGroup *)self groupID];
  v6 = [groupID copy];
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  participants = [(KCSharingGroup *)self participants];
  v9 = [v7 initWithArray:participants copyItems:1];
  displayName = [(KCSharingGroup *)self displayName];
  v11 = [displayName copy];
  shareURL = [(KCSharingGroup *)self shareURL];
  v13 = [shareURL copy];
  v14 = [(KCSharingGroup *)v4 initWithGroupID:v6 participants:v9 displayName:v11 shareURL:v13];

  return v14;
}

- (KCSharingGroup)initWithGroupID:(id)d participants:(id)participants displayName:(id)name shareURL:(id)l
{
  dCopy = d;
  participantsCopy = participants;
  nameCopy = name;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = KCSharingGroup;
  v15 = [(KCSharingGroup *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_groupID, d);
    if (participantsCopy)
    {
      array = [participantsCopy copy];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    participants = v16->_participants;
    v16->_participants = array;

    objc_storeStrong(&v16->_displayName, name);
    objc_storeStrong(&v16->_shareURL, l);
  }

  return v16;
}

- (KCSharingGroup)initWithParticipants:(id)participants displayName:(id)name
{
  v6 = MEMORY[0x1E696AFB0];
  nameCopy = name;
  participantsCopy = participants;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];

  v11 = [(KCSharingGroup *)self initWithGroupID:uUIDString participants:participantsCopy displayName:nameCopy shareURL:0];
  return v11;
}

@end