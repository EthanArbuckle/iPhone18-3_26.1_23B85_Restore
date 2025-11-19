@interface FPItemID
+ (id)coreSpotlightEncodedDomainIdentifier:(id)a3;
+ (id)csIdentifierFromFPIdentifier:(id)a3 domainIdentifier:(id)a4;
+ (id)fpIdentifierFromCoreSpotlightIdentifier:(id)a3 domainIdentifier:(id)a4;
+ (id)getFPIdentifierFromCoreSpotlightIdentifier:(id)a3;
+ (id)rootItemIDWithProviderDomainID:(id)a3;
+ (id)rootItemIDWithProviderIdentifier:(id)a3 domainIdentifier:(id)a4;
+ (id)stringByRemovingPrefix:(id)a3 fromIdentifier:(id)a4;
+ (void)getDomainIdentifier:(id *)a3 andIdentifier:(id *)a4 fromCoreSpotlightIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemID:(id)a3;
- (BOOL)isPlaceholder;
- (FPItemID)initWithCoder:(id)a3;
- (FPItemID)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4;
- (FPItemID)initWithProviderID:(id)a3 domainIdentifier:(id)a4 coreSpotlightIdentifier:(id)a5;
- (FPItemID)initWithProviderID:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5;
- (FPItemID)initWithSearchableItem:(id)a3;
- (id)coreSpotlightIdentifier;
- (id)description;
- (id)transformForMigratedCloudDocsProviderDomainIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setProviderDomainID:(id)a3;
@end

@implementation FPItemID

- (unint64_t)hash
{
  v3 = [(NSString *)self->_providerID hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [(NSString *)self->_domainIdentifier hash];
}

- (BOOL)isPlaceholder
{
  v3 = [(FPItemID *)self identifier];
  v4 = [v3 pathComponents];
  v5 = [v4 count];

  if (v5 < 2)
  {
    return 0;
  }

  v6 = [(FPItemID *)self identifier];
  v7 = [v6 pathComponents];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 isEqualToString:@"__fp"];

  return v9;
}

- (id)description
{
  if ([(NSString *)self->_domainIdentifier isEqualToString:@"NSFileProviderDomainDefaultIdentifier"])
  {
    domainIdentifier = 0;
  }

  else
  {
    domainIdentifier = self->_domainIdentifier;
  }

  v4 = domainIdentifier;
  if ([(NSString *)self->_identifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
  {
    v5 = @"root";
  }

  else if ([(NSString *)self->_identifier isEqualToString:@"NSFileProviderTrashContainerItemIdentifier"])
  {
    v5 = @"trash";
  }

  else
  {
    v5 = self->_identifier;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(NSString *)self->_providerID fp_fpIdentifier];
  v8 = v7;
  if (v4)
  {
    v9 = [(NSString *)v4 fp_obfuscatedFilename];
    v10 = [v6 stringWithFormat:@"%@/%@/%@", v8, v9, v5];
  }

  else
  {
    v10 = [v6 stringWithFormat:@"%@/%@", v7, v5];
  }

  return v10;
}

- (FPItemID)initWithProviderID:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = FPItemID;
  v13 = [(FPItemID *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_providerID, a3);
    objc_storeStrong(&v14->_identifier, a5);
    objc_storeStrong(&v14->_domainIdentifier, a4);
    if (!v14->_domainIdentifier)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v14 file:@"FPItem.m" lineNumber:122 description:@"domainIdentifier must not be nil"];
    }
  }

  return v14;
}

- (FPItemID)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 fp_toProviderID];
  v9 = [v7 fp_toDomainIdentifier];

  v10 = [(FPItemID *)self initWithProviderID:v8 domainIdentifier:v9 itemIdentifier:v6];
  return v10;
}

+ (id)rootItemIDWithProviderIdentifier:(id)a3 domainIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithProviderID:v7 domainIdentifier:v6 itemIdentifier:@"NSFileProviderRootContainerItemIdentifier"];

  return v8;
}

+ (id)rootItemIDWithProviderDomainID:(id)a3
{
  v4 = a3;
  v5 = [v4 fp_toProviderID];
  v6 = [v4 fp_toDomainIdentifier];

  v7 = [a1 rootItemIDWithProviderIdentifier:v5 domainIdentifier:v6];

  return v7;
}

- (void)setProviderDomainID:(id)a3
{
  v4 = a3;
  v5 = [v4 fp_toProviderID];
  providerID = self->_providerID;
  self->_providerID = v5;

  v7 = [v4 fp_toDomainIdentifier];

  domainIdentifier = self->_domainIdentifier;
  self->_domainIdentifier = v7;
}

- (BOOL)isEqualToItemID:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    providerID = self->_providerID;
    v9 = [(FPItemID *)v6 providerID];
    if (providerID != v9)
    {
      v10 = self->_providerID;
      v4 = [(FPItemID *)v7 providerID];
      if (![(NSString *)v10 isEqualToString:v4])
      {
        v11 = 0;
        goto LABEL_17;
      }
    }

    identifier = self->_identifier;
    v13 = [(FPItemID *)v7 identifier];
    if (identifier == v13 || (v14 = self->_identifier, [(FPItemID *)v7 identifier], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v14 isEqualToString:v3]))
    {
      domainIdentifier = self->_domainIdentifier;
      v16 = [(FPItemID *)v7 domainIdentifier];
      v17 = v16;
      if (domainIdentifier == v16)
      {

        v11 = 1;
      }

      else
      {
        v18 = [(FPItemID *)v7 domainIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = self->_domainIdentifier;
          [(FPItemID *)v7 domainIdentifier];
          v21 = v23 = v4;
          v11 = [(NSString *)v20 isEqualToString:v21];

          v4 = v23;
        }

        else
        {

          v11 = 0;
        }
      }

      if (identifier == v13)
      {
LABEL_16:

        if (providerID == v9)
        {
LABEL_18:

          goto LABEL_19;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_16;
  }

  v11 = 1;
LABEL_19:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(FPItemID *)self isEqualToItemID:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  providerID = self->_providerID;
  v5 = a3;
  [v5 encodeObject:providerID forKey:@"_providerIdentifier"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_domainIdentifier forKey:@"_domainIdentifier"];
}

- (FPItemID)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FPItemID;
  v5 = [(FPItemID *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_providerIdentifier"];
    providerID = v5->_providerID;
    v5->_providerID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v8;

    if (!v5->_domainIdentifier)
    {
      objc_storeStrong(&v5->_domainIdentifier, @"NSFileProviderDomainDefaultIdentifier");
      v10 = v5->_domainIdentifier;
    }

    v11 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:v5->_providerID domainIdentifier:?];
    v12 = [v4 fp_checkProviderIdentifier:v11];

    if (!v12)
    {
      v15 = 0;
      goto LABEL_8;
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;
  }

  v15 = v5;
LABEL_8:

  return v15;
}

- (id)transformForMigratedCloudDocsProviderDomainIdentifier:(id)a3
{
  v5 = a3;
  if (([(NSString *)self->_providerID isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProvider"]& 1) == 0 && ![(NSString *)self->_providerID isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"])
  {
    goto LABEL_9;
  }

  v6 = [v5 fp_toProviderID];
  v7 = [v6 fp_isiCloudDriveOrCloudDocsIdentifier];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 fp_toProviderID];
    v9 = [v8 fp_isiCloudDriveOrCloudDocsIdentifier];

    if ((v9 & 1) == 0)
    {
      [(FPItemID(FPFS) *)a2 transformForMigratedCloudDocsProviderDomainIdentifier:v5];
    }
  }

  v10 = [(NSString *)self->_identifier UTF8String];
  v11 = *v10;
  if (v11 == 100)
  {
    v15 = strtoul(v10 + 1, 0, 16);
    v13 = [FPItemID alloc];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"__fp/fs/docID(%u)", v15];
    goto LABEL_11;
  }

  if (v11 != 105)
  {
LABEL_9:
    v14 = self;
    goto LABEL_12;
  }

  v12 = strtoull(v10 + 1, 0, 16);
  v13 = [FPItemID alloc];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"__fp/fs/fileID(%llu)", v12];
  v16 = LABEL_11:;
  v14 = [(FPItemID *)v13 initWithProviderDomainID:v5 itemIdentifier:v16];

LABEL_12:

  return v14;
}

- (FPItemID)initWithSearchableItem:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 fileProviderID];
  v7 = [v4 attributeSet];
  v8 = [v7 fileProviderDomainIdentifier];
  v9 = [v4 uniqueIdentifier];

  v10 = [(FPItemID *)self initWithProviderID:v6 domainIdentifier:v8 coreSpotlightIdentifier:v9];
  return v10;
}

- (FPItemID)initWithProviderID:(id)a3 domainIdentifier:(id)a4 coreSpotlightIdentifier:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v17 = 0;
  v18 = 0;
  v10 = a3;
  [FPItemID getDomainIdentifier:&v18 andIdentifier:&v17 fromCoreSpotlightIdentifier:v9];
  v11 = v18;
  v12 = v17;
  if (([v11 isEqual:v8] & 1) == 0)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v20 = "[FPItemID(CSSearchableItem) initWithProviderID:domainIdentifier:coreSpotlightIdentifier:]";
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] %{public}s called with a domain identifier %@ that does not match the corresponding csIdentifier %@ (inferred %@)", buf, 0x2Au);
    }
  }

  v14 = [[FPItemID alloc] initWithProviderID:v10 domainIdentifier:v11 itemIdentifier:v12];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)coreSpotlightIdentifier
{
  v3 = [(FPItemID *)self identifier];
  v4 = [(FPItemID *)self domainIdentifier];
  v5 = [FPItemID csIdentifierFromFPIdentifier:v3 domainIdentifier:v4];

  return v5;
}

+ (id)coreSpotlightEncodedDomainIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v4 = v3;
  if ([(__CFString *)v4 isEqualToString:@"NSFileProviderDomainDefaultIdentifier"])
  {
    v5 = defaultDomainPrefix;
  }

  else
  {
    v6 = [(__CFString *)v4 dataUsingEncoding:4];
    v7 = [v6 base64EncodedStringWithOptions:0];

    v5 = [domainPrefix stringByAppendingPathComponent:v7];
  }

  return v5;
}

+ (void)getDomainIdentifier:(id *)a3 andIdentifier:(id *)a4 fromCoreSpotlightIdentifier:(id)a5
{
  v7 = a5;
  v20 = v7;
  if (a3)
  {
    *a3 = @"NSFileProviderDomainDefaultIdentifier";
    v7 = v20;
  }

  if (a4)
  {
    v8 = v20;
    v7 = v20;
    *a4 = v20;
  }

  v9 = [v7 pathComponents];
  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:defaultDomainPrefix])
    {
      v12 = @"NSFileProviderDomainDefaultIdentifier";
      v13 = 1;
    }

    else
    {
      if (![v11 isEqualToString:domainPrefix])
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v14 = [v9 objectAtIndexedSubscript:1];
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
      if (v15)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
      }

      else
      {
        v12 = 0;
      }

      v13 = 2;
    }

    if ([v9 count] >= v13 && v12)
    {
      if (a3)
      {
        v16 = v12;
        *a3 = v12;
      }

      v17 = [v9 subarrayWithRange:{v13, objc_msgSend(v9, "count") - v13}];
      v18 = [v17 componentsJoinedByString:@"/"];

      if (a4)
      {
        v19 = v18;
        *a4 = v18;
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

+ (id)getFPIdentifierFromCoreSpotlightIdentifier:(id)a3
{
  v5 = 0;
  [FPItemID getDomainIdentifier:0 andIdentifier:&v5 fromCoreSpotlightIdentifier:a3];
  v3 = v5;

  return v3;
}

+ (id)csIdentifierFromFPIdentifier:(id)a3 domainIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 coreSpotlightEncodedDomainIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringByAppendingPathComponent:v6];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

+ (id)stringByRemovingPrefix:(id)a3 fromIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || ![v6 hasPrefix:v5])
  {
    v9 = v7;
    goto LABEL_6;
  }

  v8 = [v7 length];
  if (v8 > [v5 length] + 1)
  {
    v9 = [v7 substringFromIndex:{objc_msgSend(v5, "length") + 1}];
LABEL_6:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)fpIdentifierFromCoreSpotlightIdentifier:(id)a3 domainIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 coreSpotlightEncodedDomainIdentifier:a4];
  v8 = [a1 stringByRemovingPrefix:v7 fromIdentifier:v6];

  return v8;
}

@end