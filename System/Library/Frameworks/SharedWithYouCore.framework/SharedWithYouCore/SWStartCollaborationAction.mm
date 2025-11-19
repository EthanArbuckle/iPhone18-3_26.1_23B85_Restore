@interface SWStartCollaborationAction
+ (SWStartCollaborationAction)actionWithMetadata:(id)a3;
- (BOOL)isEqualToAction:(id)a3;
- (SWStartCollaborationAction)initWithCoder:(id)a3;
- (SWStartCollaborationAction)initWithDestinationAction:(id)a3;
- (SWStartCollaborationAction)initWithMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSActionSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fulfillUsingURL:(NSURL *)url collaborationIdentifier:(SWCollaborationIdentifier)collaborationIdentifier;
- (void)fulfillUsingURL:(id)a3 updatedMetadata:(id)a4;
@end

@implementation SWStartCollaborationAction

+ (SWStartCollaborationAction)actionWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMetadata:v4];

  return v5;
}

- (SWStartCollaborationAction)initWithMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWStartCollaborationAction;
  v6 = [(SWAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationMetadata, a3);
  }

  return v7;
}

- (void)fulfillUsingURL:(NSURL *)url collaborationIdentifier:(SWCollaborationIdentifier)collaborationIdentifier
{
  v6 = collaborationIdentifier;
  v7 = url;
  v8 = [(SWStartCollaborationAction *)self collaborationMetadata];
  [v8 setCollaborationIdentifier:v6];

  [(SWStartCollaborationAction *)self fulfillUsingURL:v7 updatedMetadata:v8];
}

- (void)fulfillUsingURL:(id)a3 updatedMetadata:(id)a4
{
  v5 = [_SWStartCollaborationActionResponse responseWithURL:a3 updatedMetadata:a4];
  [(SWAction *)self fulfillWithResponse:v5];
}

- (SWStartCollaborationAction)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SWStartCollaborationAction;
  v5 = [(SWAction *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = NSStringFromSelector(sel_collaborationMetadata);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    collaborationMetadata = v5->_collaborationMetadata;
    v5->_collaborationMetadata = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SWStartCollaborationAction;
  v4 = a3;
  [(SWAction *)&v7 encodeWithCoder:v4];
  v5 = [(SWStartCollaborationAction *)self collaborationMetadata:v7.receiver];
  v6 = NSStringFromSelector(sel_collaborationMetadata);
  [v4 encodeObject:v5 forKey:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SWStartCollaborationAction;
  v4 = [(SWAction *)&v7 copyWithZone:a3];
  if (v4)
  {
    v5 = [(SWStartCollaborationAction *)self collaborationMetadata];
    [v4 setCollaborationMetadata:v5];
  }

  return v4;
}

- (BOOL)isEqualToAction:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SWStartCollaborationAction;
  if ([(SWAction *)&v12 isEqualToAction:v5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(SWStartCollaborationAction *)self collaborationMetadata];
      if (v7 || ([v6 collaborationMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(SWStartCollaborationAction *)self collaborationMetadata];
        v9 = [v6 collaborationMetadata];
        v10 = [v8 isEqual:v9];

        if (v7)
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

- (SWStartCollaborationAction)initWithDestinationAction:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForSetting:2];

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
    v12 = [(SWAction *)&v17 initWithDestinationAction:v4];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_collaborationMetadata, v11);
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithBSActionSettings:(id)a3
{
  v8.receiver = self;
  v8.super_class = SWStartCollaborationAction;
  v4 = a3;
  [(SWAction *)&v8 encodeWithBSActionSettings:v4];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(SWStartCollaborationAction *)self collaborationMetadata:v8.receiver];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  [v4 setObject:v7 forSetting:2];
}

@end