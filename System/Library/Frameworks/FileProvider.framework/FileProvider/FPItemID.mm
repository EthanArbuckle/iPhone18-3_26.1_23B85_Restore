@interface FPItemID
+ (id)coreSpotlightEncodedDomainIdentifier:(id)identifier;
+ (id)csIdentifierFromFPIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier;
+ (id)fpIdentifierFromCoreSpotlightIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier;
+ (id)getFPIdentifierFromCoreSpotlightIdentifier:(id)identifier;
+ (id)rootItemIDWithProviderDomainID:(id)d;
+ (id)rootItemIDWithProviderIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier;
+ (id)stringByRemovingPrefix:(id)prefix fromIdentifier:(id)identifier;
+ (void)getDomainIdentifier:(id *)identifier andIdentifier:(id *)andIdentifier fromCoreSpotlightIdentifier:(id)spotlightIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemID:(id)d;
- (BOOL)isPlaceholder;
- (FPItemID)initWithCoder:(id)coder;
- (FPItemID)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier;
- (FPItemID)initWithProviderID:(id)d domainIdentifier:(id)identifier coreSpotlightIdentifier:(id)spotlightIdentifier;
- (FPItemID)initWithProviderID:(id)d domainIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier;
- (FPItemID)initWithSearchableItem:(id)item;
- (id)coreSpotlightIdentifier;
- (id)description;
- (id)transformForMigratedCloudDocsProviderDomainIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setProviderDomainID:(id)d;
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
  identifier = [(FPItemID *)self identifier];
  pathComponents = [identifier pathComponents];
  v5 = [pathComponents count];

  if (v5 < 2)
  {
    return 0;
  }

  identifier2 = [(FPItemID *)self identifier];
  pathComponents2 = [identifier2 pathComponents];
  v8 = [pathComponents2 objectAtIndexedSubscript:0];
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
  fp_fpIdentifier = [(NSString *)self->_providerID fp_fpIdentifier];
  v8 = fp_fpIdentifier;
  if (v4)
  {
    fp_obfuscatedFilename = [(NSString *)v4 fp_obfuscatedFilename];
    v10 = [v6 stringWithFormat:@"%@/%@/%@", v8, fp_obfuscatedFilename, v5];
  }

  else
  {
    v10 = [v6 stringWithFormat:@"%@/%@", fp_fpIdentifier, v5];
  }

  return v10;
}

- (FPItemID)initWithProviderID:(id)d domainIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier
{
  dCopy = d;
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  v17.receiver = self;
  v17.super_class = FPItemID;
  v13 = [(FPItemID *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_providerID, d);
    objc_storeStrong(&v14->_identifier, itemIdentifier);
    objc_storeStrong(&v14->_domainIdentifier, identifier);
    if (!v14->_domainIdentifier)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"FPItem.m" lineNumber:122 description:@"domainIdentifier must not be nil"];
    }
  }

  return v14;
}

- (FPItemID)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];

  v10 = [(FPItemID *)self initWithProviderID:fp_toProviderID domainIdentifier:fp_toDomainIdentifier itemIdentifier:identifierCopy];
  return v10;
}

+ (id)rootItemIDWithProviderIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier
{
  domainIdentifierCopy = domainIdentifier;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithProviderID:identifierCopy domainIdentifier:domainIdentifierCopy itemIdentifier:@"NSFileProviderRootContainerItemIdentifier"];

  return v8;
}

+ (id)rootItemIDWithProviderDomainID:(id)d
{
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];

  v7 = [self rootItemIDWithProviderIdentifier:fp_toProviderID domainIdentifier:fp_toDomainIdentifier];

  return v7;
}

- (void)setProviderDomainID:(id)d
{
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  providerID = self->_providerID;
  self->_providerID = fp_toProviderID;

  fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];

  domainIdentifier = self->_domainIdentifier;
  self->_domainIdentifier = fp_toDomainIdentifier;
}

- (BOOL)isEqualToItemID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (self != dCopy)
  {
    providerID = self->_providerID;
    providerID = [(FPItemID *)dCopy providerID];
    if (providerID != providerID)
    {
      v10 = self->_providerID;
      providerID2 = [(FPItemID *)v7 providerID];
      if (![(NSString *)v10 isEqualToString:providerID2])
      {
        v11 = 0;
        goto LABEL_17;
      }
    }

    identifier = self->_identifier;
    identifier = [(FPItemID *)v7 identifier];
    if (identifier == identifier || (v14 = self->_identifier, [(FPItemID *)v7 identifier], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v14 isEqualToString:v3]))
    {
      domainIdentifier = self->_domainIdentifier;
      domainIdentifier = [(FPItemID *)v7 domainIdentifier];
      v17 = domainIdentifier;
      if (domainIdentifier == domainIdentifier)
      {

        v11 = 1;
      }

      else
      {
        domainIdentifier2 = [(FPItemID *)v7 domainIdentifier];
        if (domainIdentifier2)
        {
          v19 = domainIdentifier2;
          v20 = self->_domainIdentifier;
          [(FPItemID *)v7 domainIdentifier];
          v21 = v23 = providerID2;
          v11 = [(NSString *)v20 isEqualToString:v21];

          providerID2 = v23;
        }

        else
        {

          v11 = 0;
        }
      }

      if (identifier == identifier)
      {
LABEL_16:

        if (providerID == providerID)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
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

- (void)encodeWithCoder:(id)coder
{
  providerID = self->_providerID;
  coderCopy = coder;
  [coderCopy encodeObject:providerID forKey:@"_providerIdentifier"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_domainIdentifier forKey:@"_domainIdentifier"];
}

- (FPItemID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = FPItemID;
  v5 = [(FPItemID *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_providerIdentifier"];
    providerID = v5->_providerID;
    v5->_providerID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v8;

    if (!v5->_domainIdentifier)
    {
      objc_storeStrong(&v5->_domainIdentifier, @"NSFileProviderDomainDefaultIdentifier");
      v10 = v5->_domainIdentifier;
    }

    v11 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:v5->_providerID domainIdentifier:?];
    v12 = [coderCopy fp_checkProviderIdentifier:v11];

    if (!v12)
    {
      v15 = 0;
      goto LABEL_8;
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;
  }

  v15 = v5;
LABEL_8:

  return v15;
}

- (id)transformForMigratedCloudDocsProviderDomainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSString *)self->_providerID isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProvider"]& 1) == 0 && ![(NSString *)self->_providerID isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"])
  {
    goto LABEL_9;
  }

  fp_toProviderID = [identifierCopy fp_toProviderID];
  fp_isiCloudDriveOrCloudDocsIdentifier = [fp_toProviderID fp_isiCloudDriveOrCloudDocsIdentifier];

  if ((fp_isiCloudDriveOrCloudDocsIdentifier & 1) == 0)
  {
    fp_toProviderID2 = [identifierCopy fp_toProviderID];
    fp_isiCloudDriveOrCloudDocsIdentifier2 = [fp_toProviderID2 fp_isiCloudDriveOrCloudDocsIdentifier];

    if ((fp_isiCloudDriveOrCloudDocsIdentifier2 & 1) == 0)
    {
      [(FPItemID(FPFS) *)a2 transformForMigratedCloudDocsProviderDomainIdentifier:identifierCopy];
    }
  }

  uTF8String = [(NSString *)self->_identifier UTF8String];
  v11 = *uTF8String;
  if (v11 == 100)
  {
    v15 = strtoul(uTF8String + 1, 0, 16);
    v13 = [FPItemID alloc];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"__fp/fs/docID(%u)", v15];
    goto LABEL_11;
  }

  if (v11 != 105)
  {
LABEL_9:
    selfCopy = self;
    goto LABEL_12;
  }

  v12 = strtoull(uTF8String + 1, 0, 16);
  v13 = [FPItemID alloc];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"__fp/fs/fileID(%llu)", v12];
  v16 = LABEL_11:;
  selfCopy = [(FPItemID *)v13 initWithProviderDomainID:identifierCopy itemIdentifier:v16];

LABEL_12:

  return selfCopy;
}

- (FPItemID)initWithSearchableItem:(id)item
{
  itemCopy = item;
  attributeSet = [itemCopy attributeSet];
  fileProviderID = [attributeSet fileProviderID];
  attributeSet2 = [itemCopy attributeSet];
  fileProviderDomainIdentifier = [attributeSet2 fileProviderDomainIdentifier];
  uniqueIdentifier = [itemCopy uniqueIdentifier];

  v10 = [(FPItemID *)self initWithProviderID:fileProviderID domainIdentifier:fileProviderDomainIdentifier coreSpotlightIdentifier:uniqueIdentifier];
  return v10;
}

- (FPItemID)initWithProviderID:(id)d domainIdentifier:(id)identifier coreSpotlightIdentifier:(id)spotlightIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  spotlightIdentifierCopy = spotlightIdentifier;
  v17 = 0;
  v18 = 0;
  dCopy = d;
  [FPItemID getDomainIdentifier:&v18 andIdentifier:&v17 fromCoreSpotlightIdentifier:spotlightIdentifierCopy];
  v11 = v18;
  v12 = v17;
  if (([v11 isEqual:identifierCopy] & 1) == 0)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v20 = "[FPItemID(CSSearchableItem) initWithProviderID:domainIdentifier:coreSpotlightIdentifier:]";
      v21 = 2112;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = spotlightIdentifierCopy;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] %{public}s called with a domain identifier %@ that does not match the corresponding csIdentifier %@ (inferred %@)", buf, 0x2Au);
    }
  }

  v14 = [[FPItemID alloc] initWithProviderID:dCopy domainIdentifier:v11 itemIdentifier:v12];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)coreSpotlightIdentifier
{
  identifier = [(FPItemID *)self identifier];
  domainIdentifier = [(FPItemID *)self domainIdentifier];
  v5 = [FPItemID csIdentifierFromFPIdentifier:identifier domainIdentifier:domainIdentifier];

  return v5;
}

+ (id)coreSpotlightEncodedDomainIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = @"NSFileProviderDomainDefaultIdentifier";
  }

  v4 = identifierCopy;
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

+ (void)getDomainIdentifier:(id *)identifier andIdentifier:(id *)andIdentifier fromCoreSpotlightIdentifier:(id)spotlightIdentifier
{
  spotlightIdentifierCopy = spotlightIdentifier;
  v20 = spotlightIdentifierCopy;
  if (identifier)
  {
    *identifier = @"NSFileProviderDomainDefaultIdentifier";
    spotlightIdentifierCopy = v20;
  }

  if (andIdentifier)
  {
    v8 = v20;
    spotlightIdentifierCopy = v20;
    *andIdentifier = v20;
  }

  pathComponents = [spotlightIdentifierCopy pathComponents];
  firstObject = [pathComponents firstObject];
  v11 = firstObject;
  if (firstObject)
  {
    if ([firstObject isEqualToString:defaultDomainPrefix])
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

      v14 = [pathComponents objectAtIndexedSubscript:1];
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

    if ([pathComponents count] >= v13 && v12)
    {
      if (identifier)
      {
        v16 = v12;
        *identifier = v12;
      }

      v17 = [pathComponents subarrayWithRange:{v13, objc_msgSend(pathComponents, "count") - v13}];
      v18 = [v17 componentsJoinedByString:@"/"];

      if (andIdentifier)
      {
        v19 = v18;
        *andIdentifier = v18;
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

+ (id)getFPIdentifierFromCoreSpotlightIdentifier:(id)identifier
{
  v5 = 0;
  [FPItemID getDomainIdentifier:0 andIdentifier:&v5 fromCoreSpotlightIdentifier:identifier];
  v3 = v5;

  return v3;
}

+ (id)csIdentifierFromFPIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier
{
  identifierCopy = identifier;
  v7 = [self coreSpotlightEncodedDomainIdentifier:domainIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  return v10;
}

+ (id)stringByRemovingPrefix:(id)prefix fromIdentifier:(id)identifier
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (!prefixCopy || ![identifierCopy hasPrefix:prefixCopy])
  {
    v9 = v7;
    goto LABEL_6;
  }

  v8 = [v7 length];
  if (v8 > [prefixCopy length] + 1)
  {
    v9 = [v7 substringFromIndex:{objc_msgSend(prefixCopy, "length") + 1}];
LABEL_6:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)fpIdentifierFromCoreSpotlightIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier
{
  identifierCopy = identifier;
  v7 = [self coreSpotlightEncodedDomainIdentifier:domainIdentifier];
  v8 = [self stringByRemovingPrefix:v7 fromIdentifier:identifierCopy];

  return v8;
}

@end