@interface SWShareableContent
- (BOOL)canLoadObjectOfClass:(Class)class;
- (BOOL)hasPossibleCollaborationRepresentation;
- (BOOL)hasRepresentationConformingToTypeIdentifier:(id)identifier;
- (NSArray)itemProviders;
- (NSItemProvider)itemProvider;
- (SWShareableContent)initWithCoder:(id)coder;
- (SWShareableContent)initWithSourceSceneIdentifier:(id)identifier sourceBundleIdentifier:(id)bundleIdentifier metadata:(id)metadata representations:(id)representations highlightURL:(id)l initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (id)description;
- (id)registeredOpenInPlaceTypeIdentifiers;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)coder;
- (void)loadRepresentationForTypeIdentifier:(id)identifier itemProviderIndex:(int64_t)index completionHandler:(id)handler;
@end

@implementation SWShareableContent

- (SWShareableContent)initWithSourceSceneIdentifier:(id)identifier sourceBundleIdentifier:(id)bundleIdentifier metadata:(id)metadata representations:(id)representations highlightURL:(id)l initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  metadataCopy = metadata;
  representationsCopy = representations;
  lCopy = l;
  handleCopy = handle;
  componentsCopy = components;
  v38.receiver = self;
  v38.super_class = SWShareableContent;
  v22 = [(SWShareableContent *)&v38 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    sourceSceneIdentifier = v22->_sourceSceneIdentifier;
    v22->_sourceSceneIdentifier = v23;

    v25 = [bundleIdentifierCopy copy];
    sourceBundleIdentifier = v22->_sourceBundleIdentifier;
    v22->_sourceBundleIdentifier = v25;

    v27 = [metadataCopy copy];
    metadata = v22->_metadata;
    v22->_metadata = v27;

    v29 = [representationsCopy copy];
    representations = v22->_representations;
    v22->_representations = v29;

    v31 = [lCopy copy];
    highlightURL = v22->_highlightURL;
    v22->_highlightURL = v31;

    v33 = [handleCopy copy];
    initiatorHandle = v22->_initiatorHandle;
    v22->_initiatorHandle = v33;

    v35 = [componentsCopy copy];
    initiatorNameComponents = v22->_initiatorNameComponents;
    v22->_initiatorNameComponents = v35;
  }

  return v22;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  sourceSceneIdentifier = [(SWShareableContent *)self sourceSceneIdentifier];
  [v3 appendFormat:@" sourceSceneIdentifier=%@", sourceSceneIdentifier];

  sourceBundleIdentifier = [(SWShareableContent *)self sourceBundleIdentifier];
  [v3 appendFormat:@" sourceBundleIdentifier=%@", sourceBundleIdentifier];

  metadata = [(SWShareableContent *)self metadata];
  [v3 appendFormat:@" metadata=%@", metadata];

  representations = [(SWShareableContent *)self representations];
  [v3 appendFormat:@" representations=%@", representations];

  highlightURL = [(SWShareableContent *)self highlightURL];
  [v3 appendFormat:@" highlightURL=%@", highlightURL];

  initiatorHandle = [(SWShareableContent *)self initiatorHandle];
  [v3 appendFormat:@" initiatorHandle=%@", initiatorHandle];

  initiatorNameComponents = [(SWShareableContent *)self initiatorNameComponents];
  [v3 appendFormat:@" initiatorNameComponents=%@", initiatorNameComponents];

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (id)registeredTypeIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  representations = [(SWShareableContent *)self representations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(representations, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  representations2 = [(SWShareableContent *)self representations];
  v7 = [representations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(representations2);
        }

        typeIdentifier = [*(*(&v15 + 1) + 8 * i) typeIdentifier];
        [v5 addObject:typeIdentifier];
      }

      v8 = [representations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  representations = [(SWShareableContent *)self representations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(representations, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  representations2 = [(SWShareableContent *)self representations];
  v7 = [representations2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(representations2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 preferredRepresentation] == 2)
        {
          typeIdentifier = [v11 typeIdentifier];
          [v5 addObject:typeIdentifier];
        }
      }

      v8 = [representations2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)hasRepresentationConformingToTypeIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  itemProviders = [(SWShareableContent *)self itemProviders];
  v6 = [itemProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(itemProviders);
        }

        if ([*(*(&v11 + 1) + 8 * i) hasRepresentationConformingToTypeIdentifier:identifierCopy fileOptions:0])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [itemProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)canLoadObjectOfClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  itemProviders = [(SWShareableContent *)self itemProviders];
  v5 = [itemProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(itemProviders);
        }

        if ([*(*(&v12 + 1) + 8 * i) canLoadObjectOfClass:class])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [itemProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  itemProviders = [(SWShareableContent *)self itemProviders];
  v3 = [itemProviders countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(itemProviders);
        }

        if ([*(*(&v8 + 1) + 8 * i) sl_hasPossibleCollaborationRepresentation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [itemProviders countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)loadRepresentationForTypeIdentifier:(id)identifier itemProviderIndex:(int64_t)index completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  representationProvider = [(SWShareableContent *)self representationProvider];

  if (representationProvider)
  {
    representationProvider2 = [(SWShareableContent *)self representationProvider];
    [representationProvider2 loadRepresentationForContent:self typeIdentifier:identifierCopy itemProviderIndex:index completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (NSItemProvider)itemProvider
{
  itemProviders = [(SWShareableContent *)self itemProviders];
  firstObject = [itemProviders firstObject];

  return firstObject;
}

- (NSArray)itemProviders
{
  array = [MEMORY[0x1E695DF70] array];
  representations = [(SWShareableContent *)self representations];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __35__SWShareableContent_itemProviders__block_invoke;
  v11 = &unk_1E7FDE1A0;
  selfCopy = self;
  v13 = array;
  v5 = array;
  [representations enumerateObjectsUsingBlock:&v8];

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

- (SWShareableContent)initWithCoder:(id)coder
{
  v36[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(sel_sourceSceneIdentifier);
    v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_sourceBundleIdentifier);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_metadata);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_registeredTypeIdentifiers);
    v18 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_highlightURL);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_initiatorHandle);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_initiatorNameComponents);
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];

    self = [(SWShareableContent *)self initWithSourceSceneIdentifier:v7 sourceBundleIdentifier:v10 metadata:v13 representations:v18 highlightURL:v21 initiatorHandle:v24 initiatorNameComponents:v27];
    selfCopy = self;
  }

  else
  {
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A250];
    v35 = *MEMORY[0x1E696A278];
    v36[0] = @"This type only supports encoding and decoding via NSXPCCoder.";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v32 = [v29 errorWithDomain:v30 code:4866 userInfo:v31];
    [coderCopy failWithError:v32];

    selfCopy = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v25[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceSceneIdentifier = [(SWShareableContent *)self sourceSceneIdentifier];
    v6 = NSStringFromSelector(sel_sourceSceneIdentifier);
    [coderCopy encodeObject:sourceSceneIdentifier forKey:v6];

    sourceBundleIdentifier = [(SWShareableContent *)self sourceBundleIdentifier];
    v8 = NSStringFromSelector(sel_sourceBundleIdentifier);
    [coderCopy encodeObject:sourceBundleIdentifier forKey:v8];

    metadata = [(SWShareableContent *)self metadata];
    v10 = NSStringFromSelector(sel_metadata);
    [coderCopy encodeObject:metadata forKey:v10];

    representations = [(SWShareableContent *)self representations];
    v12 = NSStringFromSelector(sel_representations);
    [coderCopy encodeObject:representations forKey:v12];

    highlightURL = [(SWShareableContent *)self highlightURL];
    v14 = NSStringFromSelector(sel_highlightURL);
    [coderCopy encodeObject:highlightURL forKey:v14];

    initiatorHandle = [(SWShareableContent *)self initiatorHandle];
    v16 = NSStringFromSelector(sel_initiatorHandle);
    [coderCopy encodeObject:initiatorHandle forKey:v16];

    initiatorNameComponents = [(SWShareableContent *)self initiatorNameComponents];
    v18 = NSStringFromSelector(sel_initiatorNameComponents);
    [coderCopy encodeObject:initiatorNameComponents forKey:v18];
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"This type only supports encoding and decoding via NSXPCCoder.";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v22 = [v19 errorWithDomain:v20 code:4866 userInfo:v21];
    [coderCopy failWithError:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end