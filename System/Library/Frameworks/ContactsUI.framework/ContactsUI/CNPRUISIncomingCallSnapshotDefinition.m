@interface CNPRUISIncomingCallSnapshotDefinition
+ (id)compositeSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
+ (id)contentsAndObscurableContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
+ (id)contentsAndOverlayContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
+ (id)contentsOnlySnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
- (CNPRUISIncomingCallSnapshotDefinition)initWithWrappedDefinition:(id)a3;
- (id)levelSets;
@end

@implementation CNPRUISIncomingCallSnapshotDefinition

- (id)levelSets
{
  v2 = [(PRUISIncomingCallSnapshotDefinition *)self->_wrappedDefinition levelSets];
  v3 = [v2 _cn_map:&__block_literal_global_317];

  return v3;
}

CNPRPosterLevelSet *__50__CNPRUISIncomingCallSnapshotDefinition_levelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNPRPosterLevelSet alloc] initWithWrappedLevelSet:v2];

  return v3;
}

- (CNPRUISIncomingCallSnapshotDefinition)initWithWrappedDefinition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRUISIncomingCallSnapshotDefinition;
  v6 = [(CNPRUISIncomingCallSnapshotDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedDefinition, a3);
  }

  return v7;
}

+ (id)contentsOnlySnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr;
  v21 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v19[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v9)
  {
    v11 = *v9;
    v12 = [v6 wrappedIncomingCallPosterContext];
    v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

    v14 = [[a1 alloc] initWithWrappedDefinition:v13];

    return v14;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRPosterSnapshotDefinitionIdentifier getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly(void)"];
    [v16 handleFailureInFunction:v17 file:@"CNPostersSoftLink.h" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)contentsAndOverlayContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr;
  v21 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v19[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlay");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v9)
  {
    v11 = *v9;
    v12 = [v6 wrappedIncomingCallPosterContext];
    v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

    v14 = [[a1 alloc] initWithWrappedDefinition:v13];

    return v14;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRPosterSnapshotDefinitionIdentifier getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlay(void)"];
    [v16 handleFailureInFunction:v17 file:@"CNPostersSoftLink.h" lineNumber:77 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)contentsAndObscurableContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr;
  v21 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v19[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v9)
  {
    v11 = *v9;
    v12 = [v6 wrappedIncomingCallPosterContext];
    v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

    v14 = [[a1 alloc] initWithWrappedDefinition:v13];

    return v14;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRPosterSnapshotDefinitionIdentifier getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView(void)"];
    [v16 handleFailureInFunction:v17 file:@"CNPostersSoftLink.h" lineNumber:76 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)compositeSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr;
  v21 = getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v19[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallComposite");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v9)
  {
    v11 = *v9;
    v12 = [v6 wrappedIncomingCallPosterContext];
    v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

    v14 = [[a1 alloc] initWithWrappedDefinition:v13];

    return v14;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRPosterSnapshotDefinitionIdentifier getPRPosterSnapshotDefinitionIdentifierIncomingCallComposite(void)"];
    [v16 handleFailureInFunction:v17 file:@"CNPostersSoftLink.h" lineNumber:75 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end