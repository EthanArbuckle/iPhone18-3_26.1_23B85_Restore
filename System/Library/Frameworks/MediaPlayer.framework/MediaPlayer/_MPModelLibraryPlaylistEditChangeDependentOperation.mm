@interface _MPModelLibraryPlaylistEditChangeDependentOperation
- (BOOL)canPerform;
- (BOOL)isValid;
- (id)modelObject;
- (void)updateModelObjectWithLibraryIdentifiers:(id)a3;
@end

@implementation _MPModelLibraryPlaylistEditChangeDependentOperation

- (BOOL)canPerform
{
  v3 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];

  if (!v3)
  {
    return 1;
  }

  v4 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
  v5 = [v4 identifiers];
  v6 = [v5 library];
  v7 = [v6 persistentID] != 0;

  return v7;
}

- (BOOL)isValid
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];

  if (v3)
  {
    v4 = [(_MPModelLibraryImportChangeDependentOperation *)self transientStateController];
    v5 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
    v6 = [v4 transientAddStateForModelObject:v5];

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
      v7 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
      v8 = [v7 identifiers];
      v9 = [v8 library];
      v10 = [v9 persistentID] != 0;
    }

    v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
      v13 = [v12 identifiers];
      v14 = [v13 library];
      v16 = 138544130;
      v17 = self;
      v18 = 1024;
      v19 = v10;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = [v14 persistentID];
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
  v2 = [(_MPModelLibraryImportChangeDependentOperation *)self underlyingLibraryOperation];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 request];
    v5 = [v4 playlist];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateModelObjectWithLibraryIdentifiers:(id)a3
{
  v12 = a3;
  v4 = [(_MPModelLibraryPlaylistEditChangeDependentOperation *)self modelObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifiers];
    v7 = [v6 unionSet:v12];

    v8 = [(_MPModelLibraryImportChangeDependentOperation *)self underlyingLibraryOperation];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 request];
      v11 = [v5 copyWithIdentifiers:v7];
      [v10 setPlaylist:v11];
    }
  }
}

@end