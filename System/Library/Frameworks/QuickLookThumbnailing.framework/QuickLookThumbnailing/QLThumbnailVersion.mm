@interface QLThumbnailVersion
- (BOOL)isAutomaticallyGenerated;
- (BOOL)isDefaultVersion;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldBeInvalidatedByThumbnailWithVersion:(id)version;
- (QLThumbnailVersion)init;
- (QLThumbnailVersion)initWithCoder:(id)coder;
- (QLThumbnailVersion)initWithDictionaryRepresentation:(id)representation;
- (QLThumbnailVersion)initWithFPItem:(id)item automaticallyGenerated:(BOOL)generated;
- (QLThumbnailVersion)initWithFPItem:(id)item generatorID:(id)d generatorVersion:(id)version;
- (QLThumbnailVersion)initWithFileURL:(id)l automaticallyGenerated:(BOOL)generated;
- (QLThumbnailVersion)initWithFileURL:(id)l generatorID:(id)d generatorVersion:(id)version;
- (QLThumbnailVersion)initWithModificationDate:(id)date fileSize:(unint64_t)size filenameExtension:(id)extension versionIdentifier:(id)identifier ino:(unint64_t)ino generatorID:(id)d generatorVersion:(id)version;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLThumbnailVersion

- (BOOL)isDefaultVersion
{
  generatorID = [(QLThumbnailVersion *)self generatorID];
  v4 = [generatorID isEqualToString:@"com.apple.MobileQuickLook"];
  generatorVersion = [(QLThumbnailVersion *)self generatorVersion];
  v6 = [generatorVersion isEqualToString:@"1"];

  return v4 & v6;
}

- (QLThumbnailVersion)init
{
  [(QLThumbnailVersion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (QLThumbnailVersion)initWithModificationDate:(id)date fileSize:(unint64_t)size filenameExtension:(id)extension versionIdentifier:(id)identifier ino:(unint64_t)ino generatorID:(id)d generatorVersion:(id)version
{
  dateCopy = date;
  extensionCopy = extension;
  identifierCopy = identifier;
  dCopy = d;
  versionCopy = version;
  v23.receiver = self;
  v23.super_class = QLThumbnailVersion;
  v20 = [(QLThumbnailVersion *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(QLThumbnailVersion *)v20 setModificationDate:dateCopy];
    [(QLThumbnailVersion *)v21 setFileSize:size];
    [(QLThumbnailVersion *)v21 setFilenameExtension:extensionCopy];
    [(QLThumbnailVersion *)v21 setVersionIdentifier:identifierCopy];
    [(QLThumbnailVersion *)v21 setGeneratorID:dCopy];
    [(QLThumbnailVersion *)v21 setGeneratorVersion:versionCopy];
    [(QLThumbnailVersion *)v21 setIno:ino];
  }

  return v21;
}

- (QLThumbnailVersion)initWithFileURL:(id)l generatorID:(id)d generatorVersion:(id)version
{
  lCopy = l;
  dCopy = d;
  versionCopy = version;
  if (initWithFileURL_generatorID_generatorVersion__once != -1)
  {
    [QLThumbnailVersion initWithFileURL:generatorID:generatorVersion:];
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v12 = _CFURLPromiseCopyPhysicalURL();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = lCopy;
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

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
  }

  if (v16)
  {
    v19 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695DA98]];
    v20 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695DB50]];
    v21 = dCopy;
    unsignedIntegerValue = [v20 unsignedIntegerValue];

    pathExtension = [lCopy pathExtension];
    v24 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695DB58]];
    selfCopy = self;
    v26 = v17;
    v27 = v24;
    v28 = unsignedIntegerValue;
    dCopy = v21;
    v29 = [(QLThumbnailVersion *)selfCopy initWithModificationDate:v19 fileSize:v28 filenameExtension:pathExtension versionIdentifier:v24 ino:v32.st_ino generatorID:v21 generatorVersion:versionCopy];

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

- (QLThumbnailVersion)initWithFileURL:(id)l automaticallyGenerated:(BOOL)generated
{
  generatedCopy = generated;
  lCopy = l;
  if (generatedCopy)
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

  v9 = [(QLThumbnailVersion *)self initWithFileURL:lCopy generatorID:v7 generatorVersion:v8];

  return v9;
}

- (QLThumbnailVersion)initWithFPItem:(id)item generatorID:(id)d generatorVersion:(id)version
{
  versionCopy = version;
  dCopy = d;
  itemCopy = item;
  contentModificationDate = [itemCopy contentModificationDate];
  documentSize = [itemCopy documentSize];
  unsignedIntegerValue = [documentSize unsignedIntegerValue];
  filename = [itemCopy filename];
  pathExtension = [filename pathExtension];
  itemVersion = [itemCopy itemVersion];

  contentVersion = [itemVersion contentVersion];
  v18 = [(QLThumbnailVersion *)self initWithModificationDate:contentModificationDate fileSize:unsignedIntegerValue filenameExtension:pathExtension versionIdentifier:contentVersion ino:0 generatorID:dCopy generatorVersion:versionCopy];

  return v18;
}

- (QLThumbnailVersion)initWithFPItem:(id)item automaticallyGenerated:(BOOL)generated
{
  generatedCopy = generated;
  itemCopy = item;
  if (generatedCopy)
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

  v9 = [(QLThumbnailVersion *)self initWithFPItem:itemCopy generatorID:v7 generatorVersion:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  generatorID = self->_generatorID;
  coderCopy = coder;
  [coderCopy encodeObject:generatorID forKey:@"g"];
  [coderCopy encodeObject:self->_generatorVersion forKey:@"v"];
  v5 = [(NSData *)self->_versionIdentifier copy];
  [coderCopy encodeObject:v5 forKey:@"vi"];

  [coderCopy encodeObject:self->_modificationDate forKey:@"m"];
  [coderCopy encodeInteger:self->_fileSize forKey:@"s"];
  [coderCopy encodeObject:self->_filenameExtension forKey:@"e"];
  [coderCopy encodeInt64:self->_ino forKey:@"i"];
}

- (QLThumbnailVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"g"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"v"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
  v6 = [coderCopy decodeIntegerForKey:@"s"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  v8 = [coderCopy decodeInt64ForKey:@"i"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"vi"];

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

- (QLThumbnailVersion)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"g"];
  v6 = [representationCopy objectForKeyedSubscript:@"gV"];
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v9 = [representationCopy objectForKeyedSubscript:@"vI"];
  v23 = 0;
  v10 = [v7 unarchivedObjectOfClass:v8 fromData:v9 error:&v23];
  v11 = v23;

  if (!v10)
  {
    v12 = _log_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailVersion initWithDictionaryRepresentation:representationCopy];
    }
  }

  v13 = [representationCopy objectForKeyedSubscript:@"mD"];
  [representationCopy objectForKeyedSubscript:@"s"];
  v22 = v11;
  v15 = v14 = self;
  integerValue = [v15 integerValue];

  v17 = [representationCopy objectForKeyedSubscript:@"e"];
  v18 = [representationCopy objectForKeyedSubscript:@"i"];
  unsignedLongLongValue = [v18 unsignedLongLongValue];

  v20 = [(QLThumbnailVersion *)v14 initWithModificationDate:v13 fileSize:integerValue filenameExtension:v17 versionIdentifier:v10 ino:unsignedLongLongValue generatorID:v5 generatorVersion:v6];
  return v20;
}

- (BOOL)shouldBeInvalidatedByThumbnailWithVersion:(id)version
{
  versionCopy = version;
  versionIdentifier = [(QLThumbnailVersion *)self versionIdentifier];
  if (versionIdentifier)
  {
    versionIdentifier2 = [versionCopy versionIdentifier];
    if (versionIdentifier2)
    {
      versionIdentifier3 = [(QLThumbnailVersion *)self versionIdentifier];
      versionIdentifier4 = [versionCopy versionIdentifier];
      if (([versionIdentifier3 isEqual:versionIdentifier4] & 1) == 0)
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

  versionIdentifier5 = [(QLThumbnailVersion *)self versionIdentifier];
  versionIdentifier6 = [versionCopy versionIdentifier];
  v12 = (versionIdentifier5 != 0) ^ (versionIdentifier6 != 0);

  if (v9)
  {
  }

  if (versionIdentifier)
  {
  }

  if (v12)
  {
    goto LABEL_25;
  }

  v13 = [(QLThumbnailVersion *)self ino];
  if (v13 != [versionCopy ino])
  {
    goto LABEL_25;
  }

  modificationDate = [(QLThumbnailVersion *)self modificationDate];
  if (!modificationDate)
  {
LABEL_21:
    modificationDate2 = [(QLThumbnailVersion *)self modificationDate];
    modificationDate3 = [versionCopy modificationDate];
    v26 = modificationDate3 == 0;

    if ((modificationDate2 != 0) == v26)
    {
      goto LABEL_25;
    }

    fileSize = [(QLThumbnailVersion *)self fileSize];
    if (fileSize != [versionCopy fileSize] && -[QLThumbnailVersion fileSize](self, "fileSize") && objc_msgSend(versionCopy, "fileSize"))
    {
      goto LABEL_25;
    }

    generatorID = [(QLThumbnailVersion *)self generatorID];

    if (generatorID)
    {
      generatorID2 = [versionCopy generatorID];
      if (generatorID2)
      {
        v32 = generatorID2;
        generatorID3 = [(QLThumbnailVersion *)self generatorID];

        if (generatorID3)
        {
          generatorID4 = [(QLThumbnailVersion *)self generatorID];
          generatorID5 = [versionCopy generatorID];
          v36 = [generatorID4 isEqual:generatorID5];

          if (v36)
          {
            generatorVersion = [(QLThumbnailVersion *)self generatorVersion];
            generatorVersion2 = [versionCopy generatorVersion];
            v28 = QLCompareVersion(generatorVersion, generatorVersion2) == -1;

            goto LABEL_26;
          }
        }
      }
    }

LABEL_32:
    v28 = 0;
    goto LABEL_26;
  }

  v15 = modificationDate;
  modificationDate4 = [versionCopy modificationDate];
  if (!modificationDate4)
  {

    goto LABEL_21;
  }

  v17 = modificationDate4;
  modificationDate5 = [(QLThumbnailVersion *)self modificationDate];
  modificationDate6 = [versionCopy modificationDate];
  v20 = [modificationDate5 isEqual:modificationDate6];

  if (v20)
  {
    goto LABEL_21;
  }

  modificationDate7 = [(QLThumbnailVersion *)self modificationDate];
  modificationDate8 = [versionCopy modificationDate];
  v23 = [modificationDate7 compare:modificationDate8];

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
  generatorID = [(QLThumbnailVersion *)self generatorID];
  v3 = generatorID != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      generatorID = self->_generatorID;
      generatorID = [(QLThumbnailVersion *)v6 generatorID];
      if (generatorID != generatorID)
      {
        v9 = self->_generatorID;
        generatorID2 = [(QLThumbnailVersion *)v6 generatorID];
        if (![(NSString *)v9 isEqual:generatorID2])
        {
          v11 = 0;
          goto LABEL_36;
        }

        v39 = generatorID2;
      }

      generatorVersion = self->_generatorVersion;
      generatorVersion = [(QLThumbnailVersion *)v6 generatorVersion];
      if (generatorVersion != generatorVersion)
      {
        v14 = self->_generatorVersion;
        generatorVersion2 = [(QLThumbnailVersion *)v6 generatorVersion];
        if (![(NSString *)v14 isEqual:generatorVersion2])
        {
          v11 = 0;
LABEL_34:

LABEL_35:
          generatorID2 = v39;
          if (generatorID == generatorID)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }
      }

      modificationDate = self->_modificationDate;
      modificationDate = [(QLThumbnailVersion *)v6 modificationDate];
      v38 = modificationDate;
      if (modificationDate == modificationDate)
      {
        v37 = generatorVersion2;
      }

      else
      {
        v17 = self->_modificationDate;
        modificationDate2 = [(QLThumbnailVersion *)v6 modificationDate];
        if (![(NSDate *)v17 isEqual:?])
        {
          v11 = 0;
LABEL_32:

LABEL_33:
          if (generatorVersion == generatorVersion)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v37 = generatorVersion2;
      }

      versionIdentifier = self->_versionIdentifier;
      versionIdentifier = [(QLThumbnailVersion *)v6 versionIdentifier];
      v34 = versionIdentifier;
      if (versionIdentifier == versionIdentifier)
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
        versionIdentifier2 = [(QLThumbnailVersion *)v6 versionIdentifier];
        if (([(NSData *)v20 isEqual:?]& 1) == 0 || (v21 = self->_fileSize, v21 != [(QLThumbnailVersion *)v6 fileSize]))
        {
          v11 = 0;
          v22 = versionIdentifier2;
LABEL_30:

LABEL_31:
          generatorVersion2 = v37;
          if (v38 == modificationDate)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v33 = versionIdentifier;
      filenameExtension = self->_filenameExtension;
      filenameExtension = [(QLThumbnailVersion *)v6 filenameExtension];
      if (filenameExtension == filenameExtension)
      {
        ino = self->_ino;
        v11 = ino == [(QLThumbnailVersion *)v6 ino];
      }

      else
      {
        v26 = self->_filenameExtension;
        filenameExtension2 = [(QLThumbnailVersion *)v6 filenameExtension];
        v28 = v26;
        v29 = filenameExtension2;
        if (![(NSString *)v28 isEqual:?])
        {

          v11 = 0;
LABEL_29:
          versionIdentifier = v33;
          v22 = versionIdentifier2;
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