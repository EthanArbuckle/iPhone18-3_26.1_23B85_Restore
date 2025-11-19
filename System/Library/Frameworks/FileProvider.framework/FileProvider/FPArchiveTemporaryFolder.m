@interface FPArchiveTemporaryFolder
- (FPArchiveTemporaryFolder)initWithURL:(id)a3;
- (id)temporaryFolderURLGetError:(id *)a3;
- (void)dealloc;
@end

@implementation FPArchiveTemporaryFolder

- (FPArchiveTemporaryFolder)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FPArchiveTemporaryFolder initWithURL:];
  }

  v9.receiver = self;
  v9.super_class = FPArchiveTemporaryFolder;
  v6 = [(FPArchiveTemporaryFolder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (id)temporaryFolderURLGetError:(id *)a3
{
  temporaryFolderURL = self->_temporaryFolderURL;
  if (!temporaryFolderURL)
  {
    v6 = [(NSURL *)self->_url startAccessingSecurityScopedResource];
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:self->_url create:1 error:a3];
    v9 = self->_temporaryFolderURL;
    self->_temporaryFolderURL = v8;

    temporaryFolderURL = self->_temporaryFolderURL;
    if (!temporaryFolderURL && v6)
    {
      [(NSURL *)self->_url stopAccessingSecurityScopedResource];
      v10 = 0;
      goto LABEL_7;
    }

    self->_didStartAccessing = v6;
  }

  v10 = temporaryFolderURL;
LABEL_7:

  return v10;
}

- (void)dealloc
{
  if (self->_didStartAccessing)
  {
    [(NSURL *)self->_url stopAccessingSecurityScopedResource];
  }

  v3.receiver = self;
  v3.super_class = FPArchiveTemporaryFolder;
  [(FPArchiveTemporaryFolder *)&v3 dealloc];
}

- (void)initWithURL:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"url" object:? file:? lineNumber:? description:?];
}

@end