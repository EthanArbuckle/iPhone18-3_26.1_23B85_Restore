@interface PHPTPAssetReader
- (PHPTPAssetReader)initWithPath:(id)a3;
- (PHPTPAssetReader)initWithTemporaryFileDeletedOnDeallocPath:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation PHPTPAssetReader

- (id)description
{
  v3 = [MEMORY[0x1E69BE3C8] descriptionBuilderWithObject:self];
  [v3 appendName:@"path" typeCode:"@" value:&self->_path];
  v4 = [v3 build];

  return v4;
}

- (void)dealloc
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_shouldDeleteTemporaryFileOnDeallocation)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = -1;
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_path isDirectory:0];
    v5 = MEMORY[0x1E695DFF8];
    v6 = NSTemporaryDirectory();
    v7 = [v5 fileURLWithPath:v6 isDirectory:1];
    v27 = 0;
    v8 = [v3 getRelationship:&v28 ofDirectoryAtURL:v7 toItemAtURL:v4 error:&v27];
    v9 = v27;

    if ((v8 & 1) == 0)
    {
      v10 = PLPTPGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        path = self->_path;
        *buf = 138412546;
        v30 = path;
        v31 = 2112;
        v32 = v9;
        v12 = "Unable to get relationship between temp dir and %@: %@";
        v13 = v10;
        v14 = 22;
        goto LABEL_8;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (v28)
    {
      v10 = PLPTPGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_path;
        *buf = 138412290;
        v30 = v11;
        v12 = "Refusing to delete item not in temporary directory %@";
        v13 = v10;
        v14 = 12;
LABEL_8:
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v26 = v9;
    v16 = [v3 removeItemAtURL:v4 error:&v26];
    v17 = v26;

    v18 = PLPTPGetLog();
    v10 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = self->_path;
        *buf = 138412290;
        v30 = v19;
        v20 = "Deleted temporary ptp asset reader file %@";
        v21 = v10;
        v22 = OS_LOG_TYPE_DEBUG;
        v23 = 12;
LABEL_14:
        _os_log_impl(&dword_19C86F000, v21, v22, v20, buf, v23);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_path;
      *buf = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v17;
      v20 = "Unable to delete PTP asset reader temporary file %@: %@";
      v21 = v10;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 22;
      goto LABEL_14;
    }

    v9 = v17;
    goto LABEL_16;
  }

LABEL_17:
  v25.receiver = self;
  v25.super_class = PHPTPAssetReader;
  [(PHPTPAssetReader *)&v25 dealloc];
}

- (PHPTPAssetReader)initWithTemporaryFileDeletedOnDeallocPath:(id)a3
{
  v3 = [(PHPTPAssetReader *)self initWithPath:a3];
  v4 = v3;
  if (v3)
  {
    v3->_shouldDeleteTemporaryFileOnDeallocation = 1;
    v5 = v3;
  }

  return v4;
}

- (PHPTPAssetReader)initWithPath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PHPTPAssetReader;
  v5 = [(PHPTPAssetReader *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;

    v8 = v5;
  }

  return v5;
}

@end