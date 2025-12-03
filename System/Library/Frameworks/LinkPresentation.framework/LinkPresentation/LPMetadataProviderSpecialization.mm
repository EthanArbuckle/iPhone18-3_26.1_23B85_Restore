@interface LPMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler;
+ (id)specializedMetadataProviderForMetadata:(id)metadata withContext:(id)context;
+ (id)specializedMetadataProviderForResourceWithContext:(id)context;
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (LPMetadataProviderSpecialization)initWithContext:(id)context;
- (LPMetadataProviderSpecializationDelegate)delegate;
- (id)createMetadataWithSpecialization:(id)specialization;
@end

@implementation LPMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  v17[7] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v17[6] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:7];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      allowedSpecializations = [contextCopy allowedSpecializations];
      if (([v8 specialization] & allowedSpecializations) != 0)
      {
        v10 = [v8 specializedMetadataProviderForURLWithContext:contextCopy];
        if (v10)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

+ (id)specializedMetadataProviderForResourceWithContext:(id)context
{
  v17[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      allowedSpecializations = [contextCopy allowedSpecializations];
      if (([v8 specialization] & allowedSpecializations) != 0)
      {
        v10 = [v8 specializedMetadataProviderForResourceWithContext:contextCopy];
        if (v10)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

+ (id)specializedMetadataProviderForMetadata:(id)metadata withContext:(id)context
{
  v20[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  contextCopy = context;
  v20[0] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      allowedSpecializations = [contextCopy allowedSpecializations];
      if (([v11 specialization] & allowedSpecializations) != 0)
      {
        v13 = [v11 specializedMetadataProviderForMetadata:metadataCopy withContext:contextCopy];
        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  return v13;
}

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler
{
  v22[5] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  contextCopy = context;
  handlerCopy = handler;
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v22[4] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v10 = v18 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        allowedSpecializations = [contextCopy allowedSpecializations];
        if ([v14 specialization] & allowedSpecializations) != 0 && (objc_msgSend(v14, "generateSpecializedMetadataForCompleteMetadata:withContext:completionHandler:", metadataCopy, contextCopy, handlerCopy))
        {
          LOBYTE(v11) = 1;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v11;
}

- (id)createMetadataWithSpecialization:(id)specialization
{
  specializationCopy = specialization;
  v5 = objc_alloc_init(LPLinkMetadata);
  context = [(LPMetadataProviderSpecialization *)self context];
  postRedirectURL = [context postRedirectURL];
  [(LPLinkMetadata *)v5 setURL:postRedirectURL];

  context2 = [(LPMetadataProviderSpecialization *)self context];
  originalURL = [context2 originalURL];
  [(LPLinkMetadata *)v5 setOriginalURL:originalURL];

  [(LPLinkMetadata *)v5 setSpecialization:specializationCopy];

  return v5;
}

- (LPMetadataProviderSpecializationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LPMetadataProviderSpecialization)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = LPMetadataProviderSpecialization;
  v6 = [(LPMetadataProviderSpecialization *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = v7;
  }

  return v7;
}

@end