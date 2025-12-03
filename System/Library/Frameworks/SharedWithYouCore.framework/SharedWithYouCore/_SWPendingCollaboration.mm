@interface _SWPendingCollaboration
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollaborationContent:(id)content;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (NSString)description;
- (_SWPendingCollaboration)initWithCoder:(id)coder;
- (_SWPendingCollaboration)initWithFileAtURL:(id)l;
- (_SWPendingCollaboration)initWithMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)processSigningQueue;
- (id)softSigningController;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  if (![identifier isEqualToString:@"com.apple.SharedWithYou.SWPendingCollaboration"])
  {
    v8 = 0;
    v9 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];
  v9 = v11;
  if (error)
  {
LABEL_5:
    v9 = v9;
    *error = v9;
  }

LABEL_6:

  return v8;
}

- (id)softSigningController
{
  if (getSLCollaborationSigningControllerClass() && [getSLCollaborationSigningControllerClass() instancesRespondToSelector:sel_initWithTargetSerialQueue_synchronous_])
  {
    v3 = objc_alloc(getSLCollaborationSigningControllerClass());
    processSigningQueue = [(_SWPendingCollaboration *)self processSigningQueue];
    v5 = [v3 initWithTargetSerialQueue:processSigningQueue synchronous:1];

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

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103___SWPendingCollaboration_NSItemProvider__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v17[3] = &unk_1E84125D0;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v8 = handlerCopy;
  v9 = identifierCopy;
  v10 = MEMORY[0x1D38AA3C0](v17);
  collaborationMetadata = [(_SWPendingCollaboration *)self collaborationMetadata];
  sourceProcessData = [collaborationMetadata sourceProcessData];

  if (sourceProcessData || ([(_SWPendingCollaboration *)self softSigningController], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    collaborationMetadata2 = [(_SWPendingCollaboration *)self collaborationMetadata];
    sourceProcessData2 = [collaborationMetadata2 sourceProcessData];
    (v10)[2](v10, sourceProcessData2, 0);
  }

  else
  {
    collaborationMetadata2 = v15;
    sourceProcessData2 = [(_SWPendingCollaboration *)self collaborationMetadata];
    [collaborationMetadata2 signSourceProcessWithMetadata:sourceProcessData2 timeout:v10 completion:5.0];
  }

  return 0;
}

- (_SWPendingCollaboration)initWithFileAtURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = _SWPendingCollaboration;
  v6 = [(_SWPendingCollaboration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
  }

  return v7;
}

- (_SWPendingCollaboration)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = _SWPendingCollaboration;
  v6 = [(_SWPendingCollaboration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationMetadata, metadata);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  fileURL = [(_SWPendingCollaboration *)self fileURL];
  [v3 appendFormat:@" fileURL=%@", fileURL];

  collaborationMetadata = [(_SWPendingCollaboration *)self collaborationMetadata];
  [v3 appendFormat:@" collaborationMetadata=%@", collaborationMetadata];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWPendingCollaboration *)self isEqualToCollaborationContent:equalCopy];

  return v5;
}

- (BOOL)isEqualToCollaborationContent:(id)content
{
  contentCopy = content;
  fileURL = [(_SWPendingCollaboration *)self fileURL];
  if (!fileURL)
  {
    fileURL2 = [contentCopy fileURL];
    if (!fileURL2)
    {
      fileURL2 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  fileURL3 = [(_SWPendingCollaboration *)self fileURL];
  fileURL4 = [contentCopy fileURL];
  if ([fileURL3 isEqual:fileURL4])
  {
    v9 = 1;
LABEL_7:
    collaborationMetadata = [(_SWPendingCollaboration *)self collaborationMetadata];
    if (collaborationMetadata || ([contentCopy collaborationMetadata], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      collaborationMetadata2 = [(_SWPendingCollaboration *)self collaborationMetadata];
      collaborationMetadata3 = [contentCopy collaborationMetadata];
      v10 = [collaborationMetadata2 isEqual:collaborationMetadata3];

      if (collaborationMetadata)
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
  if (!fileURL)
  {
  }

  return v10;
}

- (unint64_t)hash
{
  fileURL = [(_SWPendingCollaboration *)self fileURL];
  v4 = [fileURL hash];
  collaborationMetadata = [(_SWPendingCollaboration *)self collaborationMetadata];
  v6 = [collaborationMetadata hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  fileURL = [(_SWPendingCollaboration *)self fileURL];

  v5 = objc_alloc(objc_opt_class());
  if (fileURL)
  {
    fileURL2 = [(_SWPendingCollaboration *)self fileURL];
    v7 = [v5 initWithFileAtURL:fileURL2];
  }

  else
  {
    fileURL2 = [(_SWPendingCollaboration *)self collaborationMetadata];
    v7 = [v5 initWithMetadata:fileURL2];
  }

  v8 = v7;

  return v8;
}

- (_SWPendingCollaboration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_collaborationMetadata);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileURL = [(_SWPendingCollaboration *)self fileURL];
  v6 = NSStringFromSelector(sel_fileURL);
  [coderCopy encodeObject:fileURL forKey:v6];

  collaborationMetadata = [(_SWPendingCollaboration *)self collaborationMetadata];
  v7 = NSStringFromSelector(sel_collaborationMetadata);
  [coderCopy encodeObject:collaborationMetadata forKey:v7];
}

@end