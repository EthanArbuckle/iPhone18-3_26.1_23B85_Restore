@interface SWUpdateCollaborationParticipantsAction
+ (SWUpdateCollaborationParticipantsAction)actionWithMetadata:(id)a3 addedIdentities:(id)a4 removedIdentites:(id)a5;
- (BOOL)isEqualToAction:(id)a3;
- (SWUpdateCollaborationParticipantsAction)initWithCoder:(id)a3;
- (SWUpdateCollaborationParticipantsAction)initWithDestinationAction:(id)a3;
- (SWUpdateCollaborationParticipantsAction)initWithMetadata:(id)a3 addedIdentities:(id)a4 removedIdentites:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSActionSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWUpdateCollaborationParticipantsAction

+ (SWUpdateCollaborationParticipantsAction)actionWithMetadata:(id)a3 addedIdentities:(id)a4 removedIdentites:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithMetadata:v9 addedIdentities:v8 removedIdentites:v7];

  return v10;
}

- (SWUpdateCollaborationParticipantsAction)initWithMetadata:(id)a3 addedIdentities:(id)a4 removedIdentites:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SWUpdateCollaborationParticipantsAction;
  v12 = [(SWAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collaborationMetadata, a3);
    objc_storeStrong(&v13->_addedIdentities, a4);
    objc_storeStrong(&v13->_removedIdentities, a5);
  }

  return v13;
}

- (SWUpdateCollaborationParticipantsAction)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SWUpdateCollaborationParticipantsAction;
  v5 = [(SWAction *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_collaborationMetadata);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    collaborationMetadata = v5->_collaborationMetadata;
    v5->_collaborationMetadata = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_addedIdentities);
    v17 = [v4 decodeObjectOfClasses:v15 forKey:v16];
    addedIdentities = v5->_addedIdentities;
    v5->_addedIdentities = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = NSStringFromSelector(sel_removedIdentities);
    v24 = [v4 decodeObjectOfClasses:v22 forKey:v23];
    removedIdentities = v5->_removedIdentities;
    v5->_removedIdentities = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SWUpdateCollaborationParticipantsAction;
  v4 = a3;
  [(SWAction *)&v11 encodeWithCoder:v4];
  v5 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata:v11.receiver];
  v6 = NSStringFromSelector(sel_collaborationMetadata);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  v8 = NSStringFromSelector(sel_addedIdentities);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
  v10 = NSStringFromSelector(sel_removedIdentities);
  [v4 encodeObject:v9 forKey:v10];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SWUpdateCollaborationParticipantsAction;
  v4 = [(SWAction *)&v9 copyWithZone:a3];
  if (v4)
  {
    v5 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata];
    [v4 setCollaborationMetadata:v5];

    v6 = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
    [v4 setAddedIdentities:v6];

    v7 = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
    [v4 setRemovedIdentities:v7];
  }

  return v4;
}

- (BOOL)isEqualToAction:(id)a3
{
  v8 = a3;
  v29.receiver = self;
  v29.super_class = SWUpdateCollaborationParticipantsAction;
  if (![(SWAction *)&v29 isEqualToAction:v8]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    goto LABEL_32;
  }

  v9 = v8;
  v10 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata];
  if (v10 || ([v9 collaborationMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata];
    v11 = [v9 collaborationMetadata];
    if (([v4 isEqual:v11] & 1) == 0)
    {

      v13 = 0;
      goto LABEL_29;
    }

    v28 = v11;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v14 = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  if (!v14)
  {
    v23 = [v9 addedIdentities];
    if (!v23)
    {
      v26 = 0;
      v27 = v12;
      v23 = 0;
      goto LABEL_20;
    }
  }

  v6 = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  v5 = [v9 addedIdentities];
  if ([v6 isEqual:v5])
  {
    v26 = 1;
    v27 = v12;
LABEL_20:
    v15 = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
    if (v15 || ([v9 removedIdentities], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v4;
      v25 = v3;
      v16 = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities:v21];
      v17 = [v9 removedIdentities];
      v13 = [v16 isEqual:v17];

      if (v15)
      {

        v4 = v24;
        v3 = v25;
        v18 = v27;
        if (!v26)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v4 = v24;
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
      if (!v14)
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

  if (v14)
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
  if (!v10)
  {
  }

LABEL_32:
  return v13;
}

- (SWUpdateCollaborationParticipantsAction)initWithDestinationAction:(id)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:3];

  v6 = [v3 info];
  v7 = [v6 objectForSetting:4];

  v8 = [v3 info];
  v32 = [v8 objectForSetting:5];

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
    v26 = [(SWAction *)&v37 initWithDestinationAction:v3];
    p_isa = &v26->super.super.isa;
    if (v26)
    {
      objc_storeStrong(&v26->_collaborationMetadata, v13);
      objc_storeStrong(p_isa + 9, v19);
      objc_storeStrong(p_isa + 10, v25);
    }

    v28 = p_isa;
    v29 = v28;
  }

  else
  {
    v29 = 0;
    v28 = self;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)encodeWithBSActionSettings:(id)a3
{
  v14.receiver = self;
  v14.super_class = SWUpdateCollaborationParticipantsAction;
  v4 = a3;
  [(SWAction *)&v14 encodeWithBSActionSettings:v4];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(SWUpdateCollaborationParticipantsAction *)self collaborationMetadata:v14.receiver];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  v8 = MEMORY[0x1E696ACC8];
  v9 = [(SWUpdateCollaborationParticipantsAction *)self addedIdentities];
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];

  v11 = MEMORY[0x1E696ACC8];
  v12 = [(SWUpdateCollaborationParticipantsAction *)self removedIdentities];
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];

  [v4 setObject:v7 forSetting:3];
  [v4 setObject:v10 forSetting:4];
  [v4 setObject:v13 forSetting:5];
}

@end