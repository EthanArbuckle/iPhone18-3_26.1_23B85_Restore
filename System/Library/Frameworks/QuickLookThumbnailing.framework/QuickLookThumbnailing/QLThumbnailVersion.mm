@interface QLThumbnailVersion
- (BOOL)isAutomaticallyGenerated;
- (BOOL)isDefaultVersion;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldBeInvalidatedByThumbnailWithVersion:(id)a3;
- (QLThumbnailVersion)init;
- (QLThumbnailVersion)initWithCoder:(id)a3;
- (QLThumbnailVersion)initWithDictionaryRepresentation:(id)a3;
- (QLThumbnailVersion)initWithFPItem:(id)a3 automaticallyGenerated:(BOOL)a4;
- (QLThumbnailVersion)initWithFPItem:(id)a3 generatorID:(id)a4 generatorVersion:(id)a5;
- (QLThumbnailVersion)initWithFileURL:(id)a3 automaticallyGenerated:(BOOL)a4;
- (QLThumbnailVersion)initWithFileURL:(id)a3 generatorID:(id)a4 generatorVersion:(id)a5;
- (QLThumbnailVersion)initWithModificationDate:(id)a3 fileSize:(unint64_t)a4 filenameExtension:(id)a5 versionIdentifier:(id)a6 ino:(unint64_t)a7 generatorID:(id)a8 generatorVersion:(id)a9;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLThumbnailVersion

- (BOOL)isDefaultVersion
{
  v3 = [(QLThumbnailVersion *)self generatorID];
  v4 = [v3 isEqualToString:@"com.apple.MobileQuickLook"];
  v5 = [(QLThumbnailVersion *)self generatorVersion];
  v6 = [v5 isEqualToString:@"1"];

  return v4 & v6;
}

- (QLThumbnailVersion)init
{
  [(QLThumbnailVersion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (QLThumbnailVersion)initWithModificationDate:(id)a3 fileSize:(unint64_t)a4 filenameExtension:(id)a5 versionIdentifier:(id)a6 ino:(unint64_t)a7 generatorID:(id)a8 generatorVersion:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = QLThumbnailVersion;
  v20 = [(QLThumbnailVersion *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(QLThumbnailVersion *)v20 setModificationDate:v15];
    [(QLThumbnailVersion *)v21 setFileSize:a4];
    [(QLThumbnailVersion *)v21 setFilenameExtension:v16];
    [(QLThumbnailVersion *)v21 setVersionIdentifier:v17];
    [(QLThumbnailVersion *)v21 setGeneratorID:v18];
    [(QLThumbnailVersion *)v21 setGeneratorVersion:v19];
    [(QLThumbnailVersion *)v21 setIno:a7];
  }

  return v21;
}

- (QLThumbnailVersion)initWithFileURL:(id)a3 generatorID:(id)a4 generatorVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (initWithFileURL_generatorID_generatorVersion__once != -1)
  {
    [QLThumbnailVersion initWithFileURL:generatorID:generatorVersion:];
  }

  v11 = [v8 startAccessingSecurityScopedResource];
  v12 = _CFURLPromiseCopyPhysicalURL();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  v33[0] = 0;
  v16 = [v15 resourceValuesForKeys:initWithFileURL_generatorID_generatorVersion__propKeys error:v33];
  v17 = v33[0];
  memset(&v32, 0, sizeof(v32));
  if (stat([v15 fileSystemRepresentation], &v32))
  {
    v18 = _log_0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailVersion initWithFileURL:generatorID:generatorVersion:];
    }
  }

  if (v11)
  {
    [v8 stopAccessingSecurityScopedResource];
  }

  if (v16)
  {
    v19 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695DA98]];
    v20 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695DB50]];
    v21 = v9;
    v22 = [v20 unsignedIntegerValue];

    v23 = [v8 pathExtension];
    v24 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695DB58]];
    v25 = self;
    v26 = v17;
    v27 = v24;
    v28 = v22;
    v9 = v21;
    v29 = [(QLThumbnailVersion *)v25 initWithModificationDate:v19 fileSize:v28 filenameExtension:v23 versionIdentifier:v24 ino:v32.st_ino generatorID:v21 generatorVersion:v10];

    v17 = v26;
    self = v29;

    v30 = v29;
  }

  else
  {
    v19 = _log_0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailVersion initWithFileURL:generatorID:generatorVersion:];
    }

    v30 = 0;
  }

  return v30;
}

void __67__QLThumbnailVersion_initWithFileURL_generatorID_generatorVersion___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695DB50];
  v4[0] = *MEMORY[0x1E695DA98];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E695DB58];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = initWithFileURL_generatorID_generatorVersion__propKeys;
  initWithFileURL_generatorID_generatorVersion__propKeys = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (QLThumbnailVersion)initWithFileURL:(id)a3 automaticallyGenerated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = 0;
    [(QLThumbnailVersion *)self getGeneratorID:&v12 version:&v11];
    v7 = v12;
    v8 = v11;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [(QLThumbnailVersion *)self initWithFileURL:v6 generatorID:v7 generatorVersion:v8];

  return v9;
}

- (QLThumbnailVersion)initWithFPItem:(id)a3 generatorID:(id)a4 generatorVersion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 contentModificationDate];
  v12 = [v10 documentSize];
  v13 = [v12 unsignedIntegerValue];
  v14 = [v10 filename];
  v15 = [v14 pathExtension];
  v16 = [v10 itemVersion];

  v17 = [v16 contentVersion];
  v18 = [(QLThumbnailVersion *)self initWithModificationDate:v11 fileSize:v13 filenameExtension:v15 versionIdentifier:v17 ino:0 generatorID:v9 generatorVersion:v8];

  return v18;
}

- (QLThumbnailVersion)initWithFPItem:(id)a3 automaticallyGenerated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = 0;
    [(QLThumbnailVersion *)self getGeneratorID:&v12 version:&v11];
    v7 = v12;
    v8 = v11;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [(QLThumbnailVersion *)self initWithFPItem:v6 generatorID:v7 generatorVersion:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  generatorID = self->_generatorID;
  v6 = a3;
  [v6 encodeObject:generatorID forKey:@"g"];
  [v6 encodeObject:self->_generatorVersion forKey:@"v"];
  v5 = [(NSData *)self->_versionIdentifier copy];
  [v6 encodeObject:v5 forKey:@"vi"];

  [v6 encodeObject:self->_modificationDate forKey:@"m"];
  [v6 encodeInteger:self->_fileSize forKey:@"s"];
  [v6 encodeObject:self->_filenameExtension forKey:@"e"];
  [v6 encodeInt64:self->_ino forKey:@"i"];
}

- (QLThumbnailVersion)initWithCoder:(id)a3
{
  v3 = a3;
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"g"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"v"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
  v6 = [v3 decodeIntegerForKey:@"s"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  v8 = [v3 decodeInt64ForKey:@"i"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"vi"];

  v14 = [(QLThumbnailVersion *)self initWithModificationDate:v5 fileSize:v6 filenameExtension:v7 versionIdentifier:v13 ino:v8 generatorID:v16 generatorVersion:v4];
  return v14;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  generatorID = self->_generatorID;
  if (generatorID)
  {
    [v3 setObject:generatorID forKeyedSubscript:@"g"];
  }

  generatorVersion = self->_generatorVersion;
  if (generatorVersion)
  {
    [v4 setObject:generatorVersion forKeyedSubscript:@"gV"];
  }

  modificationDate = self->_modificationDate;
  if (modificationDate)
  {
    [v4 setObject:modificationDate forKeyedSubscript:@"mD"];
  }

  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier)
  {
    v14 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:versionIdentifier requiringSecureCoding:1 error:&v14];
    [v4 setObject:v9 forKeyedSubscript:@"vI"];
  }

  if (self->_fileSize)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v4 setObject:v10 forKeyedSubscript:@"s"];
  }

  filenameExtension = self->_filenameExtension;
  if (filenameExtension)
  {
    [v4 setObject:filenameExtension forKeyedSubscript:@"e"];
  }

  if (self->_ino)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v4 setObject:v12 forKeyedSubscript:@"i"];
  }

  return v4;
}

- (QLThumbnailVersion)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"g"];
  v6 = [v4 objectForKeyedSubscript:@"gV"];
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v9 = [v4 objectForKeyedSubscript:@"vI"];
  v23 = 0;
  v10 = [v7 unarchivedObjectOfClass:v8 fromData:v9 error:&v23];
  v11 = v23;

  if (!v10)
  {
    v12 = _log_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailVersion initWithDictionaryRepresentation:v4];
    }
  }

  v13 = [v4 objectForKeyedSubscript:@"mD"];
  [v4 objectForKeyedSubscript:@"s"];
  v22 = v11;
  v15 = v14 = self;
  v16 = [v15 integerValue];

  v17 = [v4 objectForKeyedSubscript:@"e"];
  v18 = [v4 objectForKeyedSubscript:@"i"];
  v19 = [v18 unsignedLongLongValue];

  v20 = [(QLThumbnailVersion *)v14 initWithModificationDate:v13 fileSize:v16 filenameExtension:v17 versionIdentifier:v10 ino:v19 generatorID:v5 generatorVersion:v6];
  return v20;
}

- (BOOL)shouldBeInvalidatedByThumbnailWithVersion:(id)a3
{
  v7 = a3;
  v8 = [(QLThumbnailVersion *)self versionIdentifier];
  if (v8)
  {
    v3 = [v7 versionIdentifier];
    if (v3)
    {
      v4 = [(QLThumbnailVersion *)self versionIdentifier];
      v5 = [v7 versionIdentifier];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_25;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [(QLThumbnailVersion *)self versionIdentifier];
  v11 = [v7 versionIdentifier];
  v12 = (v10 != 0) ^ (v11 != 0);

  if (v9)
  {
  }

  if (v8)
  {
  }

  if (v12)
  {
    goto LABEL_25;
  }

  v13 = [(QLThumbnailVersion *)self ino];
  if (v13 != [v7 ino])
  {
    goto LABEL_25;
  }

  v14 = [(QLThumbnailVersion *)self modificationDate];
  if (!v14)
  {
LABEL_21:
    v24 = [(QLThumbnailVersion *)self modificationDate];
    v25 = [v7 modificationDate];
    v26 = v25 == 0;

    if ((v24 != 0) == v26)
    {
      goto LABEL_25;
    }

    v27 = [(QLThumbnailVersion *)self fileSize];
    if (v27 != [v7 fileSize] && -[QLThumbnailVersion fileSize](self, "fileSize") && objc_msgSend(v7, "fileSize"))
    {
      goto LABEL_25;
    }

    v30 = [(QLThumbnailVersion *)self generatorID];

    if (v30)
    {
      v31 = [v7 generatorID];
      if (v31)
      {
        v32 = v31;
        v33 = [(QLThumbnailVersion *)self generatorID];

        if (v33)
        {
          v34 = [(QLThumbnailVersion *)self generatorID];
          v35 = [v7 generatorID];
          v36 = [v34 isEqual:v35];

          if (v36)
          {
            v37 = [(QLThumbnailVersion *)self generatorVersion];
            v38 = [v7 generatorVersion];
            v28 = QLCompareVersion(v37, v38) == -1;

            goto LABEL_26;
          }
        }
      }
    }

LABEL_32:
    v28 = 0;
    goto LABEL_26;
  }

  v15 = v14;
  v16 = [v7 modificationDate];
  if (!v16)
  {

    goto LABEL_21;
  }

  v17 = v16;
  v18 = [(QLThumbnailVersion *)self modificationDate];
  v19 = [v7 modificationDate];
  v20 = [v18 isEqual:v19];

  if (v20)
  {
    goto LABEL_21;
  }

  v21 = [(QLThumbnailVersion *)self modificationDate];
  v22 = [v7 modificationDate];
  v23 = [v21 compare:v22];

  if (v23 != -1)
  {
    if (v23 == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

LABEL_25:
  v28 = 1;
LABEL_26:

  return v28;
}

- (BOOL)isAutomaticallyGenerated
{
  v2 = [(QLThumbnailVersion *)self generatorID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      generatorID = self->_generatorID;
      v8 = [(QLThumbnailVersion *)v6 generatorID];
      if (generatorID != v8)
      {
        v9 = self->_generatorID;
        v10 = [(QLThumbnailVersion *)v6 generatorID];
        if (![(NSString *)v9 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_36;
        }

        v39 = v10;
      }

      generatorVersion = self->_generatorVersion;
      v13 = [(QLThumbnailVersion *)v6 generatorVersion];
      if (generatorVersion != v13)
      {
        v14 = self->_generatorVersion;
        v3 = [(QLThumbnailVersion *)v6 generatorVersion];
        if (![(NSString *)v14 isEqual:v3])
        {
          v11 = 0;
LABEL_34:

LABEL_35:
          v10 = v39;
          if (generatorID == v8)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }
      }

      modificationDate = self->_modificationDate;
      v16 = [(QLThumbnailVersion *)v6 modificationDate];
      v38 = modificationDate;
      if (modificationDate == v16)
      {
        v37 = v3;
      }

      else
      {
        v17 = self->_modificationDate;
        v36 = [(QLThumbnailVersion *)v6 modificationDate];
        if (![(NSDate *)v17 isEqual:?])
        {
          v11 = 0;
LABEL_32:

LABEL_33:
          if (generatorVersion == v13)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v37 = v3;
      }

      versionIdentifier = self->_versionIdentifier;
      v19 = [(QLThumbnailVersion *)v6 versionIdentifier];
      v34 = versionIdentifier;
      if (versionIdentifier == v19)
      {
        fileSize = self->_fileSize;
        if (fileSize != [(QLThumbnailVersion *)v6 fileSize])
        {
          v11 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v20 = self->_versionIdentifier;
        v35 = [(QLThumbnailVersion *)v6 versionIdentifier];
        if (([(NSData *)v20 isEqual:?]& 1) == 0 || (v21 = self->_fileSize, v21 != [(QLThumbnailVersion *)v6 fileSize]))
        {
          v11 = 0;
          v22 = v35;
LABEL_30:

LABEL_31:
          v3 = v37;
          if (v38 == v16)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v33 = v19;
      filenameExtension = self->_filenameExtension;
      v25 = [(QLThumbnailVersion *)v6 filenameExtension];
      if (filenameExtension == v25)
      {
        ino = self->_ino;
        v11 = ino == [(QLThumbnailVersion *)v6 ino];
      }

      else
      {
        v26 = self->_filenameExtension;
        v27 = [(QLThumbnailVersion *)v6 filenameExtension];
        v28 = v26;
        v29 = v27;
        if (![(NSString *)v28 isEqual:?])
        {

          v11 = 0;
LABEL_29:
          v19 = v33;
          v22 = v35;
          if (v34 == v33)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v30 = self->_ino;
        v11 = v30 == [(QLThumbnailVersion *)v6 ino];
      }

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (unint64_t)hash
{
  v3 = self->_fileSize ^ [(NSDate *)self->_modificationDate hash];
  v4 = [(NSString *)self->_filenameExtension hash];
  return v3 ^ v4 ^ [(NSData *)self->_versionIdentifier hash];
}

- (void)initWithFileURL:generatorID:generatorVersion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_1(&dword_1CA1E7000, v1, v2, "stat on %@ failed: %s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileURL:generatorID:generatorVersion:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  _os_log_error_impl(&dword_1CA1E7000, v1, OS_LOG_TYPE_ERROR, "No resource properties for %@ (error %@) -> returning nil version", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:@"vI"];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1CA1E7000, v2, v3, "could not unarchive version identifier %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end