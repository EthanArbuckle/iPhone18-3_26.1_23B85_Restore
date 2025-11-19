@interface FPSearchOnServerResult
- (FPSearchOnServerResult)initWithCoder:(id)a3;
- (FPSearchOnServerResult)initWithFilename:(id)a3 creationDate:(id)a4 contentModificationDate:(id)a5 lastUsedDate:(id)a6 contentType:(id)a7 documentSize:(id)a8 itemIdentifier:(id)a9 providerID:(id)a10 domainIdentifier:(id)a11;
- (id)description;
- (id)toSearchableItem;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPSearchOnServerResult

- (void)encodeWithCoder:(id)a3
{
  filename = self->_filename;
  v5 = a3;
  [v5 encodeObject:filename forKey:@"filename"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_contentModificationDate forKey:@"contentModificationDate"];
  [v5 encodeObject:self->_lastUsedDate forKey:@"lastUsedDate"];
  [v5 encodeObject:self->_contentType forKey:@"contentType"];
  [v5 encodeObject:self->_documentSize forKey:@"documentSize"];
  [v5 encodeObject:self->_itemIdentifier forKey:@"itemIdentifier"];
  [v5 encodeObject:self->_providerID forKey:@"providerID"];
  [v5 encodeObject:self->_domainIdentifier forKey:@"domainIdentifier"];
}

- (FPSearchOnServerResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentModificationDate"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    if (!v9)
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FPSearchOnServerResult initWithCoder:];
      }

      v19 = 0;
      goto LABEL_24;
    }

    v10 = v9;
    v23 = v8;
    v24 = v7;
    v11 = MEMORY[0x1E6982C40];
    v12 = [v9 identifier];
    v13 = [v11 fp_cachedTypeWithIdentifier:v12 alreadyAvailableType:v10];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentSize"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifier"];
    if (!v15)
    {
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [FPSearchOnServerResult initWithCoder:];
      }

      v19 = 0;
      goto LABEL_23;
    }

    v22 = v14;
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerID"];
    if (v16)
    {
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
      v18 = v17;
      if (v17)
      {
        self = [(FPSearchOnServerResult *)self initWithFilename:v5 creationDate:v6 contentModificationDate:v24 lastUsedDate:v23 contentType:v13 documentSize:v22 itemIdentifier:v15 providerID:v16 domainIdentifier:v17];
        v19 = self;
LABEL_22:

        v14 = v22;
LABEL_23:

        v8 = v23;
        v7 = v24;
LABEL_24:

        goto LABEL_25;
      }

      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [FPSearchOnServerResult initWithCoder:];
      }
    }

    else
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FPSearchOnServerResult initWithCoder:];
      }
    }

    v19 = 0;
    goto LABEL_22;
  }

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPSearchOnServerResult initWithCoder:];
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPSearchOnServerResult *)self itemIdentifier];
  v6 = [(FPSearchOnServerResult *)self filename];
  v7 = [v6 fp_obfuscatedFilename];
  v8 = [v3 stringWithFormat:@"<%@: itemIdentifier:%@, filename: %@>", v4, v5, v7];

  return v8;
}

- (id)toSearchableItem
{
  v3 = [FPItemID csIdentifierFromFPIdentifier:self->_itemIdentifier domainIdentifier:self->_domainIdentifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getCSSearchableItemAttributeSetClass_softClass;
  v20 = getCSSearchableItemAttributeSetClass_softClass;
  if (!getCSSearchableItemAttributeSetClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getCSSearchableItemAttributeSetClass_block_invoke;
    v15 = &unk_1E793A2E8;
    v16 = &v17;
    __getCSSearchableItemAttributeSetClass_block_invoke(&v12);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = objc_alloc_init(v4);
  [v6 setFileItemID:v3];
  [v6 setFileProviderID:self->_providerID];
  [v6 setFileProviderDomainIdentifier:self->_domainIdentifier];
  [v6 setBundleID:self->_providerID];
  v7 = [(UTType *)self->_contentType identifier];
  [v6 setContentType:v7];

  [v6 setAttribute:self->_documentSize forKey:@"kMDItemLogicalSize"];
  [v6 setFilename:self->_filename];
  [v6 setDisplayName:self->_filename];
  [v6 setContentCreationDate:self->_creationDate];
  [v6 setContentModificationDate:self->_contentModificationDate];
  [v6 setLastUsedDate:self->_lastUsedDate];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v8 = getCSSearchableItemClass_softClass;
  v20 = getCSSearchableItemClass_softClass;
  if (!getCSSearchableItemClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getCSSearchableItemClass_block_invoke;
    v15 = &unk_1E793A2E8;
    v16 = &v17;
    __getCSSearchableItemClass_block_invoke(&v12);
    v8 = v18[3];
  }

  v9 = v8;
  _Block_object_dispose(&v17, 8);
  v10 = [[v8 alloc] initWithUniqueIdentifier:v3 domainIdentifier:0 attributeSet:v6];

  return v10;
}

- (FPSearchOnServerResult)initWithFilename:(id)a3 creationDate:(id)a4 contentModificationDate:(id)a5 lastUsedDate:(id)a6 contentType:(id)a7 documentSize:(id)a8 itemIdentifier:(id)a9 providerID:(id)a10 domainIdentifier:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = FPSearchOnServerResult;
  v19 = [(FPSearchOnServerResult *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_filename, a3);
    objc_storeStrong(&v20->_creationDate, a4);
    objc_storeStrong(&v20->_contentModificationDate, a5);
    objc_storeStrong(&v20->_lastUsedDate, a6);
    objc_storeStrong(&v20->_contentType, a7);
    objc_storeStrong(&v20->_documentSize, a8);
    objc_storeStrong(&v20->_itemIdentifier, a9);
    objc_storeStrong(&v20->_providerID, a10);
    objc_storeStrong(&v20->_domainIdentifier, a11);
    v20->_rankingHint = 1.0;
  }

  return v20;
}

@end