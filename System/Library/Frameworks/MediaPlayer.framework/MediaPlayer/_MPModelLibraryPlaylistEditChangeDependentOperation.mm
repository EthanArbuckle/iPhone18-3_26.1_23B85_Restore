@interface _MPModelLibraryPlaylistEditChangeDependentOperation
- (BOOL)canPerform;
- (BOOL)isValid;
- (id)modelObject;
- (void)updateModelObjectWithLibraryIdentifiers:(id)identifiers;
@end

@implementation _MPModelLibraryPlaylistEditChangeDependentOperation

- (BOOL)canPerform
{
  modelObject = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];

  if (!modelObject)
  {
    return 1;
  }

  modelObject2 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
  identifiers = [modelObject2 identifiers];
  library = [identifiers library];
  v7 = [library persistentID] != 0;

  return v7;
}

- (BOOL)isValid
{
  v24 = *MEMORY[0x1E69E9840];
  modelObject = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];

  if (modelObject)
  {
    transientStateController = [(_MPModelLibraryImportChangeDependentOperation *)self transientStateController];
    modelObject2 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
    v6 = [transientStateController transientAddStateForModelObject:modelObject2];

    if (v6 == 2)
    {
      v10 = 0;
    }

    else if (v6)
    {
      v10 = 1;
    }

    else
    {
      modelObject3 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
      identifiers = [modelObject3 identifiers];
      library = [identifiers library];
      v10 = [library persistentID] != 0;
    }

    v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      modelObject4 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
      identifiers2 = [modelObject4 identifiers];
      library2 = [identifiers2 library];
      v16 = 138544130;
      selfCopy = self;
      v18 = 1024;
      v19 = v10;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      persistentID = [library2 persistentID];
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning isValid=%d for playlist with transient state=%ld, persistentID=%lld", &v16, 0x26u);
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)modelObject
{
  underlyingLibraryOperation = [(_MPModelLibraryImportChangeDependentOperation *)self underlyingLibraryOperation];
  v3 = underlyingLibraryOperation;
  if (underlyingLibraryOperation)
  {
    request = [underlyingLibraryOperation request];
    playlist = [request playlist];
  }

  else
  {
    playlist = 0;
  }

  return playlist;
}

- (void)updateModelObjectWithLibraryIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  modelObject = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
  v5 = modelObject;
  if (modelObject)
  {
    identifiers = [modelObject identifiers];
    v7 = [identifiers unionSet:identifiersCopy];

    underlyingLibraryOperation = [(_MPModelLibraryImportChangeDependentOperation *)self underlyingLibraryOperation];
    v9 = underlyingLibraryOperation;
    if (underlyingLibraryOperation)
    {
      request = [underlyingLibraryOperation request];
      v11 = [v5 copyWithIdentifiers:v7];
      [request setPlaylist:v11];
    }
  }
}

@end