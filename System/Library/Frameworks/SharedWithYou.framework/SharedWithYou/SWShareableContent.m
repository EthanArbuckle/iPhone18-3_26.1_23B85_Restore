@interface SWShareableContent
- (BOOL)canLoadObjectOfClass:(Class)a3;
- (BOOL)hasPossibleCollaborationRepresentation;
- (BOOL)hasRepresentationConformingToTypeIdentifier:(id)a3;
- (NSArray)itemProviders;
- (NSItemProvider)itemProvider;
- (SWShareableContent)initWithCoder:(id)a3;
- (SWShareableContent)initWithSourceSceneIdentifier:(id)a3 sourceBundleIdentifier:(id)a4 metadata:(id)a5 representations:(id)a6 highlightURL:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9;
- (id)description;
- (id)registeredOpenInPlaceTypeIdentifiers;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)a3;
- (void)loadRepresentationForTypeIdentifier:(id)a3 itemProviderIndex:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation SWShareableContent

- (SWShareableContent)initWithSourceSceneIdentifier:(id)a3 sourceBundleIdentifier:(id)a4 metadata:(id)a5 representations:(id)a6 highlightURL:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = SWShareableContent;
  v22 = [(SWShareableContent *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    sourceSceneIdentifier = v22->_sourceSceneIdentifier;
    v22->_sourceSceneIdentifier = v23;

    v25 = [v16 copy];
    sourceBundleIdentifier = v22->_sourceBundleIdentifier;
    v22->_sourceBundleIdentifier = v25;

    v27 = [v17 copy];
    metadata = v22->_metadata;
    v22->_metadata = v27;

    v29 = [v18 copy];
    representations = v22->_representations;
    v22->_representations = v29;

    v31 = [v19 copy];
    highlightURL = v22->_highlightURL;
    v22->_highlightURL = v31;

    v33 = [v20 copy];
    initiatorHandle = v22->_initiatorHandle;
    v22->_initiatorHandle = v33;

    v35 = [v21 copy];
    initiatorNameComponents = v22->_initiatorNameComponents;
    v22->_initiatorNameComponents = v35;
  }

  return v22;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SWShareableContent *)self sourceSceneIdentifier];
  [v3 appendFormat:@" sourceSceneIdentifier=%@", v4];

  v5 = [(SWShareableContent *)self sourceBundleIdentifier];
  [v3 appendFormat:@" sourceBundleIdentifier=%@", v5];

  v6 = [(SWShareableContent *)self metadata];
  [v3 appendFormat:@" metadata=%@", v6];

  v7 = [(SWShareableContent *)self representations];
  [v3 appendFormat:@" representations=%@", v7];

  v8 = [(SWShareableContent *)self highlightURL];
  [v3 appendFormat:@" highlightURL=%@", v8];

  v9 = [(SWShareableContent *)self initiatorHandle];
  [v3 appendFormat:@" initiatorHandle=%@", v9];

  v10 = [(SWShareableContent *)self initiatorNameComponents];
  [v3 appendFormat:@" initiatorNameComponents=%@", v10];

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (id)registeredTypeIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(SWShareableContent *)self representations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(SWShareableContent *)self representations];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) typeIdentifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)registeredOpenInPlaceTypeIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(SWShareableContent *)self representations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SWShareableContent *)self representations];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 preferredRepresentation] == 2)
        {
          v12 = [v11 typeIdentifier];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)hasRepresentationConformingToTypeIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SWShareableContent *)self itemProviders];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) hasRepresentationConformingToTypeIdentifier:v4 fileOptions:0])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canLoadObjectOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SWShareableContent *)self itemProviders];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) canLoadObjectOfClass:a3])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)hasPossibleCollaborationRepresentation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SWShareableContent *)self itemProviders];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) sl_hasPossibleCollaborationRepresentation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)loadRepresentationForTypeIdentifier:(id)a3 itemProviderIndex:(int64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [(SWShareableContent *)self representationProvider];

  if (v9)
  {
    v10 = [(SWShareableContent *)self representationProvider];
    [v10 loadRepresentationForContent:self typeIdentifier:v11 itemProviderIndex:a4 completionHandler:v8];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (NSItemProvider)itemProvider
{
  v2 = [(SWShareableContent *)self itemProviders];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)itemProviders
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SWShareableContent *)self representations];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __35__SWShareableContent_itemProviders__block_invoke;
  v11 = &unk_1E7FDE1A0;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

void __35__SWShareableContent_itemProviders__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v7 = [v5 suggestedFileName];
  [v6 setSuggestedName:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v5;
  obj = [v5 representations];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __35__SWShareableContent_itemProviders__block_invoke_2;
        aBlock[3] = &unk_1E7FDE178;
        aBlock[4] = *(a1 + 32);
        aBlock[5] = v12;
        aBlock[6] = a3;
        v13 = _Block_copy(aBlock);
        v14 = [v12 typeIdentifier];
        [v6 _addRepresentationType_v2:v14 preferredRepresentation:objc_msgSend(v12 loader:{"preferredRepresentation"), v13}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) addObject:v6];
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __35__SWShareableContent_itemProviders__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) typeIdentifier];
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__SWShareableContent_itemProviders__block_invoke_3;
  v10[3] = &unk_1E7FDE150;
  v11 = v4;
  v8 = v4;
  [v5 loadRepresentationForTypeIdentifier:v6 itemProviderIndex:v7 completionHandler:v10];

  return 0;
}

void __35__SWShareableContent_itemProviders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v17 = v5;
  if (v5)
  {
    v6 = [v5 urlWrapper];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E696AE98]);
      v8 = [v17 urlWrapper];
      v9 = [v8 URL];
      v10 = [v17 urlWrapper];
      v11 = [v7 initWithURL:v9 readonly:{objc_msgSend(v10, "isReadonly")}];
    }

    else
    {
      v11 = 0;
    }

    v13 = MEMORY[0x1E696ACA8];
    v14 = [v17 data];
    v15 = [v17 error];
    v16 = [v13 resultWithData:v14 urlWrapper:v11 cleanupHandler:0 error:v15];

    [v16 setArchivedObjectClass:{objc_msgSend(v17, "archivedObjectClass")}];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = [MEMORY[0x1E696ACA8] resultWithError:a3];
    (*(v12 + 16))(v12, v11);
  }
}

- (SWShareableContent)initWithCoder:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(sel_sourceSceneIdentifier);
    v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_sourceBundleIdentifier);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_metadata);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_registeredTypeIdentifiers);
    v18 = [v4 decodeObjectOfClasses:v16 forKey:v17];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_highlightURL);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_initiatorHandle);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_initiatorNameComponents);
    v27 = [v4 decodeObjectOfClass:v25 forKey:v26];

    self = [(SWShareableContent *)self initWithSourceSceneIdentifier:v7 sourceBundleIdentifier:v10 metadata:v13 representations:v18 highlightURL:v21 initiatorHandle:v24 initiatorNameComponents:v27];
    v28 = self;
  }

  else
  {
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A250];
    v35 = *MEMORY[0x1E696A278];
    v36[0] = @"This type only supports encoding and decoding via NSXPCCoder.";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v32 = [v29 errorWithDomain:v30 code:4866 userInfo:v31];
    [v4 failWithError:v32];

    v28 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SWShareableContent *)self sourceSceneIdentifier];
    v6 = NSStringFromSelector(sel_sourceSceneIdentifier);
    [v4 encodeObject:v5 forKey:v6];

    v7 = [(SWShareableContent *)self sourceBundleIdentifier];
    v8 = NSStringFromSelector(sel_sourceBundleIdentifier);
    [v4 encodeObject:v7 forKey:v8];

    v9 = [(SWShareableContent *)self metadata];
    v10 = NSStringFromSelector(sel_metadata);
    [v4 encodeObject:v9 forKey:v10];

    v11 = [(SWShareableContent *)self representations];
    v12 = NSStringFromSelector(sel_representations);
    [v4 encodeObject:v11 forKey:v12];

    v13 = [(SWShareableContent *)self highlightURL];
    v14 = NSStringFromSelector(sel_highlightURL);
    [v4 encodeObject:v13 forKey:v14];

    v15 = [(SWShareableContent *)self initiatorHandle];
    v16 = NSStringFromSelector(sel_initiatorHandle);
    [v4 encodeObject:v15 forKey:v16];

    v17 = [(SWShareableContent *)self initiatorNameComponents];
    v18 = NSStringFromSelector(sel_initiatorNameComponents);
    [v4 encodeObject:v17 forKey:v18];
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"This type only supports encoding and decoding via NSXPCCoder.";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v22 = [v19 errorWithDomain:v20 code:4866 userInfo:v21];
    [v4 failWithError:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end