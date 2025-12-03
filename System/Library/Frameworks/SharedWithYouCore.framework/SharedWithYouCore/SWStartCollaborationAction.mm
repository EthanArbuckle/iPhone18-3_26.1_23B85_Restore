@interface SWStartCollaborationAction
+ (SWStartCollaborationAction)actionWithMetadata:(id)metadata;
- (BOOL)isEqualToAction:(id)action;
- (SWStartCollaborationAction)initWithCoder:(id)coder;
- (SWStartCollaborationAction)initWithDestinationAction:(id)action;
- (SWStartCollaborationAction)initWithMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSActionSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
- (void)fulfillUsingURL:(NSURL *)url collaborationIdentifier:(SWCollaborationIdentifier)collaborationIdentifier;
- (void)fulfillUsingURL:(id)l updatedMetadata:(id)metadata;
@end

@implementation SWStartCollaborationAction

+ (SWStartCollaborationAction)actionWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[self alloc] initWithMetadata:metadataCopy];

  return v5;
}

- (SWStartCollaborationAction)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = SWStartCollaborationAction;
  v6 = [(SWAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationMetadata, metadata);
  }

  return v7;
}

- (void)fulfillUsingURL:(NSURL *)url collaborationIdentifier:(SWCollaborationIdentifier)collaborationIdentifier
{
  v6 = collaborationIdentifier;
  v7 = url;
  collaborationMetadata = [(SWStartCollaborationAction *)self collaborationMetadata];
  [collaborationMetadata setCollaborationIdentifier:v6];

  [(SWStartCollaborationAction *)self fulfillUsingURL:v7 updatedMetadata:collaborationMetadata];
}

- (void)fulfillUsingURL:(id)l updatedMetadata:(id)metadata
{
  v5 = [_SWStartCollaborationActionResponse responseWithURL:l updatedMetadata:metadata];
  [(SWAction *)self fulfillWithResponse:v5];
}

- (SWStartCollaborationAction)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SWStartCollaborationAction;
  v5 = [(SWAction *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = NSStringFromSelector(sel_collaborationMetadata);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    collaborationMetadata = v5->_collaborationMetadata;
    v5->_collaborationMetadata = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SWStartCollaborationAction;
  coderCopy = coder;
  [(SWAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(SWStartCollaborationAction *)self collaborationMetadata:v7.receiver];
  v6 = NSStringFromSelector(sel_collaborationMetadata);
  [coderCopy encodeObject:v5 forKey:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SWStartCollaborationAction;
  v4 = [(SWAction *)&v7 copyWithZone:zone];
  if (v4)
  {
    collaborationMetadata = [(SWStartCollaborationAction *)self collaborationMetadata];
    [v4 setCollaborationMetadata:collaborationMetadata];
  }

  return v4;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = SWStartCollaborationAction;
  if ([(SWAction *)&v12 isEqualToAction:actionCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = actionCopy;
      collaborationMetadata = [(SWStartCollaborationAction *)self collaborationMetadata];
      if (collaborationMetadata || ([v6 collaborationMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        collaborationMetadata2 = [(SWStartCollaborationAction *)self collaborationMetadata];
        collaborationMetadata3 = [v6 collaborationMetadata];
        v10 = [collaborationMetadata2 isEqual:collaborationMetadata3];

        if (collaborationMetadata)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (SWStartCollaborationAction)initWithDestinationAction:(id)action
{
  v18[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  info = [actionCopy info];
  v6 = [info objectForSetting:2];

  v7 = MEMORY[0x1E696ACD0];
  v8 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:0];

  if (v11)
  {
    v17.receiver = self;
    v17.super_class = SWStartCollaborationAction;
    v12 = [(SWAction *)&v17 initWithDestinationAction:actionCopy];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_collaborationMetadata, v11);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithBSActionSettings:(id)settings
{
  v8.receiver = self;
  v8.super_class = SWStartCollaborationAction;
  settingsCopy = settings;
  [(SWAction *)&v8 encodeWithBSActionSettings:settingsCopy];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(SWStartCollaborationAction *)self collaborationMetadata:v8.receiver];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  [settingsCopy setObject:v7 forSetting:2];
}

@end