@interface FPArchiveTemporaryFolder
- (FPArchiveTemporaryFolder)initWithURL:(id)l;
- (id)temporaryFolderURLGetError:(id *)error;
- (void)dealloc;
@end

@implementation FPArchiveTemporaryFolder

- (FPArchiveTemporaryFolder)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [FPArchiveTemporaryFolder initWithURL:];
  }

  v9.receiver = self;
  v9.super_class = FPArchiveTemporaryFolder;
  v6 = [(FPArchiveTemporaryFolder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (id)temporaryFolderURLGetError:(id *)error
{
  temporaryFolderURL = self->_temporaryFolderURL;
  if (!temporaryFolderURL)
  {
    startAccessingSecurityScopedResource = [(NSURL *)self->_url startAccessingSecurityScopedResource];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:self->_url create:1 error:error];
    v9 = self->_temporaryFolderURL;
    self->_temporaryFolderURL = v8;

    temporaryFolderURL = self->_temporaryFolderURL;
    if (!temporaryFolderURL && startAccessingSecurityScopedResource)
    {
      [(NSURL *)self->_url stopAccessingSecurityScopedResource];
      v10 = 0;
      goto LABEL_7;
    }

    self->_didStartAccessing = startAccessingSecurityScopedResource;
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