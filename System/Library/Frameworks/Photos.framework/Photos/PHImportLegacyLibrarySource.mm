@interface PHImportLegacyLibrarySource
- (BOOL)containsSupportedMediaWithImportExceptions:(id *)exceptions;
- (PHImportLegacyLibrarySource)initWithURLs:(id)ls;
- (id)name;
- (void)loadSidecarsFor:(id)for;
@end

@implementation PHImportLegacyLibrarySource

- (id)name
{
  prefix = [(PHImportUrlSource *)self prefix];
  lastPathComponent = [prefix lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (void)loadSidecarsFor:(id)for
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PLImportGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[PHImportLegacyLibrarySource loadSidecarsFor:]";
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "%s should never be called on an PHImportLegacyLibrarySource", &v4, 0xCu);
  }
}

- (BOOL)containsSupportedMediaWithImportExceptions:(id *)exceptions
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PHImportLegacyLibrarySource;
  v5 = [(PHImportUrlSource *)&v14 containsSupportedMediaWithImportExceptions:?];
  if (!v5)
  {
    path = [(NSURL *)self->_libraryURL path];
    v7 = path;
    if (exceptions)
    {
      path2 = [path stringByAppendingPathComponent:@"Masters"];
      if ([PHImportAsset directoryExists:path2])
      {
LABEL_6:

        goto LABEL_7;
      }

      v9 = [v7 stringByAppendingPathComponent:@"Originals"];
      v10 = [PHImportAsset directoryExists:v9];

      if (!v10)
      {
        v11 = [PHImportException alloc];
        path2 = [(NSURL *)self->_libraryURL path];
        v12 = [(PHImportException *)v11 initWithType:8 path:path2 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportLegacyLibrarySource.m" line:42];
        v15[0] = v12;
        *exceptions = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

        goto LABEL_6;
      }
    }

LABEL_7:
  }

  return v5;
}

- (PHImportLegacyLibrarySource)initWithURLs:(id)ls
{
  v15[2] = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  if ([lsCopy count] != 1)
  {
    p_super = PLImportGetLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = lsCopy;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "Unexpected: Attempting to create a library import source with more than on URL: %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_7;
  }

  selfCopy = [lsCopy objectAtIndexedSubscript:0];
  v6 = [selfCopy URLByAppendingPathComponent:@"Masters"];
  v15[0] = v6;
  v7 = [selfCopy URLByAppendingPathComponent:@"Originals"];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12.receiver = self;
  v12.super_class = PHImportLegacyLibrarySource;
  v9 = [(PHImportUrlSource *)&v12 initWithURLs:v8];

  if (v9)
  {
    self = selfCopy;
    p_super = &v9->_libraryURL->super;
    v9->_libraryURL = self;
LABEL_7:

    selfCopy = self;
  }

  return v9;
}

@end