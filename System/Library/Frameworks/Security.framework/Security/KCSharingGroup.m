@interface KCSharingGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isOwned;
- (KCSharingGroup)initWithCoder:(id)a3;
- (KCSharingGroup)initWithGroupID:(id)a3 participants:(id)a4 displayName:(id)a5 shareURL:(id)a6;
- (KCSharingGroup)initWithParticipants:(id)a3 displayName:(id)a4;
- (KCSharingParticipant)currentUserParticipant;
- (KCSharingParticipant)ownerParticipant;
- (NSDictionary)JSONObject;
- (NSString)longDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)joinState;
- (unint64_t)hash;
- (void)addParticipant:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeParticipant:(id)a3;
@end

@implementation KCSharingGroup

- (void)removeParticipant:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroup *)self participants];
  v6 = [v5 mutableCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__KCSharingGroup_removeParticipant___block_invoke;
  v10[3] = &unk_1E70D46F8;
  v11 = v4;
  v7 = v4;
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

- (void)addParticipant:(id)a3
{
  v4 = a3;
  v6 = [(KCSharingGroup *)self participants];
  v5 = [v6 arrayByAddingObject:v4];

  [(KCSharingGroup *)self setParticipants:v5];
}

- (int64_t)joinState
{
  v2 = [(KCSharingGroup *)self currentUserParticipant];
  v3 = [v2 inviteStatus];

  return v3;
}

- (BOOL)isOwned
{
  v3 = [(KCSharingGroup *)self currentUserParticipant];
  v4 = [(KCSharingGroup *)self ownerParticipant];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (KCSharingParticipant)ownerParticipant
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(KCSharingGroup *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isOwner])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(KCSharingGroup *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isCurrentUser])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(KCSharingGroup *)self displayName];
    if (v6)
    {
      v7 = [(KCSharingGroup *)self displayName];
      v8 = [v5 displayName];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v7 = [v5 displayName];
      v9 = v7 == 0;
    }

    v11 = [(KCSharingGroup *)self shareURL];
    if (v11)
    {
      v12 = [(KCSharingGroup *)self shareURL];
      v13 = [v5 shareURL];
      v14 = [v12 isEqual:v13];
    }

    else
    {
      v12 = [v5 shareURL];
      v14 = v12 == 0;
    }

    v15 = [(KCSharingGroup *)self groupID];
    v16 = [v5 groupID];
    if ([v15 isEqual:v16])
    {
      v17 = [(KCSharingGroup *)self participants];
      v18 = [v5 participants];
      v10 = [v17 isEqual:v18] & v9 & v14;
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
  v3 = [(KCSharingGroup *)self groupID];
  v4 = [v3 hash];
  v5 = [(KCSharingGroup *)self participants];
  v6 = [v5 hash] ^ v4;
  v7 = [(KCSharingGroup *)self displayName];
  v8 = [v7 hash];
  v9 = [(KCSharingGroup *)self shareURL];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroup *)self groupID];
  [v4 encodeObject:v5 forKey:@"groupID"];

  v6 = [(KCSharingGroup *)self participants];
  [v4 encodeObject:v6 forKey:@"participants"];

  v7 = [(KCSharingGroup *)self displayName];
  [v4 encodeObject:v7 forKey:@"displayName"];

  v8 = [(KCSharingGroup *)self shareURL];
  [v4 encodeObject:v8 forKey:@"shareURL"];
}

- (KCSharingGroup)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = KCSharingGroup;
  v5 = [(KCSharingGroup *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"participants"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E695DEC8] array];
    }

    participants = v5->_participants;
    v5->_participants = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
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
  v3 = [(KCSharingGroup *)self groupID];
  v14[1] = @"participants";
  v15[0] = v3;
  v4 = [(KCSharingGroup *)self participants];
  v5 = [v4 valueForKey:@"JSONObject"];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = [v6 mutableCopy];

  v8 = [(KCSharingGroup *)self displayName];
  [v7 setObject:v8 forKeyedSubscript:@"displayName"];

  v9 = [(KCSharingGroup *)self shareURL];
  v10 = [v9 absoluteString];
  [v7 setObject:v10 forKeyedSubscript:@"shareURL"];

  v11 = [v7 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)longDescription
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(KCSharingGroup *)self groupID];
  v5 = [(KCSharingGroup *)self displayName];
  v6 = [(KCSharingGroup *)self shareURL];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"KCSharingGroup(%@, name: %@ shareURL: %@ participants:\n"), v4, v5, v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(KCSharingGroup *)self participants];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) longDescription];
        [v7 appendFormat:@"\t%@\n", v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v4 = [(KCSharingGroup *)self groupID];
  v5 = [(KCSharingGroup *)self displayName];
  v6 = [(KCSharingGroup *)self participants];
  v7 = [v3 stringWithFormat:@"KCSharingGroup(%@, name: %@, participants: %@)", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [KCSharingGroup alloc];
  v5 = [(KCSharingGroup *)self groupID];
  v6 = [v5 copy];
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  v8 = [(KCSharingGroup *)self participants];
  v9 = [v7 initWithArray:v8 copyItems:1];
  v10 = [(KCSharingGroup *)self displayName];
  v11 = [v10 copy];
  v12 = [(KCSharingGroup *)self shareURL];
  v13 = [v12 copy];
  v14 = [(KCSharingGroup *)v4 initWithGroupID:v6 participants:v9 displayName:v11 shareURL:v13];

  return v14;
}

- (KCSharingGroup)initWithGroupID:(id)a3 participants:(id)a4 displayName:(id)a5 shareURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = KCSharingGroup;
  v15 = [(KCSharingGroup *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_groupID, a3);
    if (v12)
    {
      v17 = [v12 copy];
    }

    else
    {
      v17 = [MEMORY[0x1E695DEC8] array];
    }

    participants = v16->_participants;
    v16->_participants = v17;

    objc_storeStrong(&v16->_displayName, a5);
    objc_storeStrong(&v16->_shareURL, a6);
  }

  return v16;
}

- (KCSharingGroup)initWithParticipants:(id)a3 displayName:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];

  v11 = [(KCSharingGroup *)self initWithGroupID:v10 participants:v8 displayName:v7 shareURL:0];
  return v11;
}

@end