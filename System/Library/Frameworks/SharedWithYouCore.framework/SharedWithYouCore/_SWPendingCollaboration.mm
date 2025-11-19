@interface _SWPendingCollaboration
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollaborationContent:(id)a3;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (NSString)description;
- (_SWPendingCollaboration)initWithCoder:(id)a3;
- (_SWPendingCollaboration)initWithFileAtURL:(id)a3;
- (_SWPendingCollaboration)initWithMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)processSigningQueue;
- (id)softSigningController;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWPendingCollaboration

- (id)processSigningQueue
{
  if (processSigningQueue_onceToken != -1)
  {
    [_SWPendingCollaboration(NSItemProvider) processSigningQueue];
  }

  v3 = processSigningQueue_internalQueue;

  return v3;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.SharedWithYou.SWPendingCollaboration";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  if (![a4 isEqualToString:@"com.apple.SharedWithYou.SWPendingCollaboration"])
  {
    v8 = 0;
    v9 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v11];
  v9 = v11;
  if (a5)
  {
LABEL_5:
    v9 = v9;
    *a5 = v9;
  }

LABEL_6:

  return v8;
}

- (id)softSigningController
{
  if (getSLCollaborationSigningControllerClass() && [getSLCollaborationSigningControllerClass() instancesRespondToSelector:sel_initWithTargetSerialQueue_synchronous_])
  {
    v3 = objc_alloc(getSLCollaborationSigningControllerClass());
    v4 = [(_SWPendingCollaboration *)self processSigningQueue];
    v5 = [v3 initWithTargetSerialQueue:v4 synchronous:1];

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.SharedWithYou.SWPendingCollaboration";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.SharedWithYou.SWPendingCollaboration";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103___SWPendingCollaboration_NSItemProvider__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v17[3] = &unk_1E84125D0;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x1D38AA3C0](v17);
  v11 = [(_SWPendingCollaboration *)self collaborationMetadata];
  v12 = [v11 sourceProcessData];

  if (v12 || ([(_SWPendingCollaboration *)self softSigningController], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [(_SWPendingCollaboration *)self collaborationMetadata];
    v14 = [v13 sourceProcessData];
    (v10)[2](v10, v14, 0);
  }

  else
  {
    v13 = v15;
    v14 = [(_SWPendingCollaboration *)self collaborationMetadata];
    [v13 signSourceProcessWithMetadata:v14 timeout:v10 completion:5.0];
  }

  return 0;
}

- (_SWPendingCollaboration)initWithFileAtURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SWPendingCollaboration;
  v6 = [(_SWPendingCollaboration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, a3);
  }

  return v7;
}

- (_SWPendingCollaboration)initWithMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SWPendingCollaboration;
  v6 = [(_SWPendingCollaboration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationMetadata, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(_SWPendingCollaboration *)self fileURL];
  [v3 appendFormat:@" fileURL=%@", v4];

  v5 = [(_SWPendingCollaboration *)self collaborationMetadata];
  [v3 appendFormat:@" collaborationMetadata=%@", v5];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWPendingCollaboration *)self isEqualToCollaborationContent:v4];

  return v5;
}

- (BOOL)isEqualToCollaborationContent:(id)a3
{
  v7 = a3;
  v8 = [(_SWPendingCollaboration *)self fileURL];
  if (!v8)
  {
    v15 = [v7 fileURL];
    if (!v15)
    {
      v15 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  v3 = [(_SWPendingCollaboration *)self fileURL];
  v4 = [v7 fileURL];
  if ([v3 isEqual:v4])
  {
    v9 = 1;
LABEL_7:
    v11 = [(_SWPendingCollaboration *)self collaborationMetadata];
    if (v11 || ([v7 collaborationMetadata], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(_SWPendingCollaboration *)self collaborationMetadata];
      v13 = [v7 collaborationMetadata];
      v10 = [v12 isEqual:v13];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  if (!v8)
  {
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_SWPendingCollaboration *)self fileURL];
  v4 = [v3 hash];
  v5 = [(_SWPendingCollaboration *)self collaborationMetadata];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(_SWPendingCollaboration *)self fileURL];

  v5 = objc_alloc(objc_opt_class());
  if (v4)
  {
    v6 = [(_SWPendingCollaboration *)self fileURL];
    v7 = [v5 initWithFileAtURL:v6];
  }

  else
  {
    v6 = [(_SWPendingCollaboration *)self collaborationMetadata];
    v7 = [v5 initWithMetadata:v6];
  }

  v8 = v7;

  return v8;
}

- (_SWPendingCollaboration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_collaborationMetadata);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  if (v7)
  {
    v11 = [(_SWPendingCollaboration *)self initWithFileAtURL:v7];
  }

  else
  {
    v11 = [(_SWPendingCollaboration *)self initWithMetadata:v10];
  }

  v12 = v11;

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_SWPendingCollaboration *)self fileURL];
  v6 = NSStringFromSelector(sel_fileURL);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(_SWPendingCollaboration *)self collaborationMetadata];
  v7 = NSStringFromSelector(sel_collaborationMetadata);
  [v4 encodeObject:v8 forKey:v7];
}

@end