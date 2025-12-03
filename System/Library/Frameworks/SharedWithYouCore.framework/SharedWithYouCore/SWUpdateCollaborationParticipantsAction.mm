@interface SWUpdateCollaborationParticipantsAction
+ (SWUpdateCollaborationParticipantsAction)actionWithMetadata:(id)metadata addedIdentities:(id)identities removedIdentites:(id)identites;
- (BOOL)isEqualToAction:(id)action;
- (SWUpdateCollaborationParticipantsAction)initWithCoder:(id)coder;
- (SWUpdateCollaborationParticipantsAction)initWithDestinationAction:(id)action;
- (SWUpdateCollaborationParticipantsAction)initWithMetadata:(id)metadata addedIdentities:(id)identities removedIdentites:(id)identites;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSActionSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWUpdateCollaborationParticipantsAction

+ (SWUpdateCollaborationParticipantsAction)actionWithMetadata:(id)metadata addedIdentities:(id)identities removedIdentites:(id)identites
{
  identitesCopy = identites;
  identitiesCopy = identities;
  metadataCopy = metadata;
  v10 = [objc_alloc(objc_opt_class()) initWithMetadata:metadataCopy addedIdentities:identitiesCopy removedIdentites:identitesCopy];

  return v10;
}

- (SWUpdateCollaborationParticipantsAction)initWithMetadata:(id)metadata addedIdentities:(id)identities removedIdentites:(id)identites
{
  metadataCopy = metadata;
  identitiesCopy = identities;
  identitesCopy = identites;
  v15.receiver = self;
  v15.super_class = SWUpdateCollaborationParticipantsAction;
  v12 = [(SWAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collaborationMetadata, metadata);
    objc_storeStrong(&v13->_addedIdentities, identities);
    objc_storeStrong(&v13->_removedIdentities, identites);
  }

  return v13;
}

- (SWUpdateCollaborationParticipantsAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SWUpdateCollaborationParticipantsAction;
  v5 = [(SWAction *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_collaborationMetadata);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    collaborationMetadata = v5->_collaborationMetadata;
    v5->_collaborationMetadata = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_addedIdentities);
    v17 = [coderCopy decodeObjectOfClasses:v15 forKey:v16];
    addedIdentities = v5->_addedIdentities;
    v5->_addedIdentities = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = NSStringFromSelector(sel_removedIdentities);
    v24 = [coderCopy decodeObjectOfClasses:v22 forKey:v23];
    removedIdentities = v5->_removedIdentities;
    v5->_removedIdentities = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = SWUpdateCollaborationParticipantsAction;
  coderCopy = coder;
  [(SWAction *)&v11 encodeWithCoder:coderCopy];
  v5 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata:v11.receiver];
  v6 = NSStringFromSelector(sel_collaborationMetadata);
  [coderCopy encodeObject:v5 forKey:v6];

  addedIdentities = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  v8 = NSStringFromSelector(sel_addedIdentities);
  [coderCopy encodeObject:addedIdentities forKey:v8];

  removedIdentities = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
  v10 = NSStringFromSelector(sel_removedIdentities);
  [coderCopy encodeObject:removedIdentities forKey:v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SWUpdateCollaborationParticipantsAction;
  v4 = [(SWAction *)&v9 copyWithZone:zone];
  if (v4)
  {
    collaborationMetadata = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata];
    [v4 setCollaborationMetadata:collaborationMetadata];

    addedIdentities = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
    [v4 setAddedIdentities:addedIdentities];

    removedIdentities = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
    [v4 setRemovedIdentities:removedIdentities];
  }

  return v4;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  v29.receiver = self;
  v29.super_class = SWUpdateCollaborationParticipantsAction;
  if (![(SWAction *)&v29 isEqualToAction:actionCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    goto LABEL_32;
  }

  v9 = actionCopy;
  collaborationMetadata = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata];
  if (collaborationMetadata || ([v9 collaborationMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    collaborationMetadata2 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata];
    collaborationMetadata3 = [v9 collaborationMetadata];
    if (([collaborationMetadata2 isEqual:collaborationMetadata3] & 1) == 0)
    {

      v13 = 0;
      goto LABEL_29;
    }

    v28 = collaborationMetadata3;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  addedIdentities = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  if (!addedIdentities)
  {
    addedIdentities2 = [v9 addedIdentities];
    if (!addedIdentities2)
    {
      v26 = 0;
      v27 = v12;
      addedIdentities2 = 0;
      goto LABEL_20;
    }
  }

  addedIdentities3 = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  addedIdentities4 = [v9 addedIdentities];
  if ([addedIdentities3 isEqual:addedIdentities4])
  {
    v26 = 1;
    v27 = v12;
LABEL_20:
    removedIdentities = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
    if (removedIdentities || ([v9 removedIdentities], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = collaborationMetadata2;
      v25 = v3;
      v16 = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities:v21];
      removedIdentities2 = [v9 removedIdentities];
      v13 = [v16 isEqual:removedIdentities2];

      if (removedIdentities)
      {

        collaborationMetadata2 = v24;
        v3 = v25;
        v18 = v27;
        if (!v26)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      collaborationMetadata2 = v24;
      v3 = v25;
      v18 = v27;
      v20 = v22;
    }

    else
    {
      v20 = 0;
      v13 = 1;
      v18 = v27;
    }

    if ((v26 & 1) == 0)
    {
LABEL_25:
      if (!addedIdentities)
      {
      }

      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (addedIdentities)
  {
  }

  else
  {
  }

  v13 = 0;
  if (v12)
  {
LABEL_28:
  }

LABEL_29:
  if (!collaborationMetadata)
  {
  }

LABEL_32:
  return v13;
}

- (SWUpdateCollaborationParticipantsAction)initWithDestinationAction:(id)action
{
  v39[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  info = [actionCopy info];
  v5 = [info objectForSetting:3];

  info2 = [actionCopy info];
  v7 = [info2 objectForSetting:4];

  info3 = [actionCopy info];
  v32 = [info3 objectForSetting:5];

  v9 = MEMORY[0x1E696ACD0];
  v10 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v12 = [v10 setWithArray:v11];
  v38 = 0;
  v36 = v5;
  v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v5 error:&v38];
  v33 = v38;

  v14 = MEMORY[0x1E696ACD0];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  v35 = v7;
  v19 = [v14 unarchivedObjectOfClasses:v18 fromData:v7 error:0];

  v20 = MEMORY[0x1E696ACD0];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
  v25 = [v20 unarchivedObjectOfClasses:v24 fromData:v32 error:0];

  if (v13)
  {
    v37.receiver = self;
    v37.super_class = SWUpdateCollaborationParticipantsAction;
    v26 = [(SWAction *)&v37 initWithDestinationAction:actionCopy];
    p_isa = &v26->super.super.isa;
    if (v26)
    {
      objc_storeStrong(&v26->_collaborationMetadata, v13);
      objc_storeStrong(p_isa + 9, v19);
      objc_storeStrong(p_isa + 10, v25);
    }

    selfCopy = p_isa;
    v29 = selfCopy;
  }

  else
  {
    v29 = 0;
    selfCopy = self;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)encodeWithBSActionSettings:(id)settings
{
  v14.receiver = self;
  v14.super_class = SWUpdateCollaborationParticipantsAction;
  settingsCopy = settings;
  [(SWAction *)&v14 encodeWithBSActionSettings:settingsCopy];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata:v14.receiver];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  v8 = MEMORY[0x1E696ACC8];
  addedIdentities = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  v10 = [v8 archivedDataWithRootObject:addedIdentities requiringSecureCoding:1 error:0];

  v11 = MEMORY[0x1E696ACC8];
  removedIdentities = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
  v13 = [v11 archivedDataWithRootObject:removedIdentities requiringSecureCoding:1 error:0];

  [settingsCopy setObject:v7 forSetting:3];
  [settingsCopy setObject:v10 forSetting:4];
  [settingsCopy setObject:v13 forSetting:5];
}

@end