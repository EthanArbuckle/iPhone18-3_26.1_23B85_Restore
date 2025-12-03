@interface UNNotificationAttachment
+ (UNNotificationAttachment)attachmentWithIdentifier:(id)identifier URL:(id)l options:(id)options userInfo:(id)info error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UNNotificationAttachment)init;
- (UNNotificationAttachment)initWithCoder:(id)coder;
- (UNNotificationAttachment)initWithIdentifier:(id)identifier URL:(id)l type:(id)type options:(id)options;
- (UNNotificationAttachment)initWithIdentifier:(id)identifier URL:(id)l type:(id)type options:(id)options userInfo:(id)info;
- (id)_encodableURL;
- (unint64_t)family;
- (unint64_t)hash;
- (void)_withSecurityScopeLock:(id)lock;
- (void)addSecurityScope:(id)scope;
- (void)encodeWithCoder:(id)coder;
- (void)enterSecurityScope;
- (void)leaveSecurityScope;
- (void)removeSecurityScope;
@end

@implementation UNNotificationAttachment

+ (UNNotificationAttachment)attachmentWithIdentifier:(id)identifier URL:(id)l options:(id)options userInfo:(id)info error:(id *)error
{
  identifierCopy = identifier;
  lCopy = l;
  optionsCopy = options;
  infoCopy = info;
  identifier = [optionsCopy bs_safeStringForKey:@"typeHint"];
  if (!identifier)
  {
    pathExtension = [lCopy pathExtension];
    if (!pathExtension || ([MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "identifier"), identifier = objc_claimAutoreleasedReturnValue(), v18, !identifier))
    {
      identifier = [*MEMORY[0x1E6982E48] identifier];
    }
  }

  v19 = UNNotificationAttachmentFamilyFromTypeIdentifier(identifier);
  if (v19)
  {
    v20 = v19;
    v21 = [infoCopy objectForKey:@"data"];

    if (v21)
    {
      v22 = [[self alloc] initWithIdentifier:identifierCopy URL:lCopy type:identifier options:0 userInfo:infoCopy];
      goto LABEL_26;
    }

    selfCopy = self;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v25 = [defaultManager attributesOfItemAtPath:path error:0];

    v44 = v25;
    v26 = [v25 objectForKey:*MEMORY[0x1E696A3B8]];
    v27 = UNNotificationAttachmentFamilyMaximumSize(v20);
    if ([v26 unsignedLongValue] > v27)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:102 userInfo:0];
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

LABEL_25:

      goto LABEL_26;
    }

    v42 = v26;
    v28 = objc_alloc_init(UNMutableNotificationAttachmentOptions);
    v29 = [optionsCopy bs_safeNumberForKey:@"hidden"];
    bOOLValue = [v29 BOOLValue];

    if (bOOLValue)
    {
      v31 = 1;
      v32 = selfCopy;
    }

    else
    {
      v33 = [optionsCopy bs_safeNumberForKey:@"thumbnailHidden"];
      bOOLValue2 = [v33 BOOLValue];

      v32 = selfCopy;
      if (!bOOLValue2)
      {
LABEL_20:
        v35 = [optionsCopy bs_safeDictionaryForKey:@"thumbnailClippingRect"];
        v36 = [optionsCopy bs_safeDictionaryForKey:@"thumbnailTime"];
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = [optionsCopy bs_safeNumberForKey:@"thumbnailTime"];
        }

        v39 = v38;

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary bs_setSafeObject:v35 forKey:@"thumbnailClippingRect"];
        [dictionary bs_setSafeObject:v39 forKey:@"thumbnailTime"];
        [(UNMutableNotificationAttachmentOptions *)v28 setThumbnailGeneratorUserInfo:dictionary];
        v22 = [[v32 alloc] initWithIdentifier:identifierCopy URL:lCopy type:identifier options:v28 userInfo:infoCopy];

        v26 = v42;
        goto LABEL_25;
      }

      v31 = 2;
    }

    [(UNMutableNotificationAttachmentOptions *)v28 setDisplayLocation:v31];
    goto LABEL_20;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:101 userInfo:0];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_26:

  return v22;
}

- (UNNotificationAttachment)init
{
  [(UNNotificationAttachment *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UNNotificationAttachment)initWithIdentifier:(id)identifier URL:(id)l type:(id)type options:(id)options
{
  identifierCopy = identifier;
  lCopy = l;
  typeCopy = type;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = UNNotificationAttachment;
  v14 = [(UNNotificationAttachment *)&v32 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      identifier = v14->_identifier;
      v14->_identifier = v17;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [identifier UUIDString];
      v20 = v14->_identifier;
      v14->_identifier = uUIDString;
    }

    v21 = [lCopy copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DFF8]);
    }

    URL = v14->_URL;
    v14->_URL = v23;

    v25 = [typeCopy copy];
    v26 = v25;
    if (v25)
    {
      identifier = v25;
    }

    else
    {
      identifier = [*MEMORY[0x1E6982E48] identifier];
    }

    type = v14->_type;
    v14->_type = identifier;

    v29 = [optionsCopy copy];
    options = v14->_options;
    v14->_options = v29;
  }

  return v14;
}

- (UNNotificationAttachment)initWithIdentifier:(id)identifier URL:(id)l type:(id)type options:(id)options userInfo:(id)info
{
  infoCopy = info;
  v13 = [(UNNotificationAttachment *)self initWithIdentifier:identifier URL:l type:type options:options];
  if (v13)
  {
    v14 = [infoCopy copy];
    userInfo = v13->_userInfo;
    v13->_userInfo = v14;
  }

  return v13;
}

- (unint64_t)family
{
  type = [(UNNotificationAttachment *)self type];
  v3 = UNNotificationAttachmentFamilyFromTypeIdentifier(type);

  return v3;
}

- (void)_withSecurityScopeLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_securityScopeLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_securityScopeLock);
}

- (void)addSecurityScope:(id)scope
{
  scopeCopy = scope;
  v5 = [(UNNotificationAttachment *)self URL];
  path = [v5 path];

  if (path)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__UNNotificationAttachment_addSecurityScope___block_invoke;
    v7[3] = &unk_1E7CFF870;
    v7[4] = self;
    v8 = path;
    v9 = scopeCopy;
    [(UNNotificationAttachment *)self _withSecurityScopeLock:v7];
  }
}

uint64_t __45__UNNotificationAttachment_addSecurityScope___block_invoke(void *a1)
{
  v2 = [[UNSecurityScopedURL alloc] initFileURLWithPath:a1[5] sandboxExtensionClass:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_encodableURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = [(UNNotificationAttachment *)self URL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__UNNotificationAttachment__encodableURL__block_invoke;
  v5[3] = &unk_1E7CFFBF0;
  v5[4] = self;
  v5[5] = &v6;
  [(UNNotificationAttachment *)self _withSecurityScopeLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__UNNotificationAttachment__encodableURL__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v1);
  }
}

- (void)removeSecurityScope
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__UNNotificationAttachment_removeSecurityScope__block_invoke;
  v2[3] = &unk_1E7CFF9F0;
  v2[4] = self;
  [(UNNotificationAttachment *)self _withSecurityScopeLock:v2];
}

void __47__UNNotificationAttachment_removeSecurityScope__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)enterSecurityScope
{
  v2 = [(UNNotificationAttachment *)self URL];
  [v2 startAccessingSecurityScopedResource];
}

- (void)leaveSecurityScope
{
  v2 = [(UNNotificationAttachment *)self URL];
  [v2 stopAccessingSecurityScopedResource];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(UNNotificationAttachment *)self identifier];
  v6 = [(UNNotificationAttachment *)self URL];
  type = [(UNNotificationAttachment *)self type];
  options = [(UNNotificationAttachment *)self options];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@, URL: %@, type: %@, options: %@>", v4, self, identifier, v6, type, options];;

  return v9;
}

- (unint64_t)hash
{
  identifier = [(UNNotificationAttachment *)self identifier];
  v4 = [identifier hash];
  v5 = [(UNNotificationAttachment *)self URL];
  v6 = [v5 hash] ^ v4;
  type = [(UNNotificationAttachment *)self type];
  v8 = [type hash];
  options = [(UNNotificationAttachment *)self options];
  v10 = v6 ^ v8 ^ [options hash];
  userInfo = [(UNNotificationAttachment *)self userInfo];
  v12 = [userInfo hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = UNSafeCast(v5, equalCopy);

  if (v6)
  {
    v7 = [(UNNotificationAttachment *)self URL];
    v8 = [v6 URL];
    if (UNEqualObjects(v7, v8))
    {
      identifier = [(UNNotificationAttachment *)self identifier];
      identifier2 = [v6 identifier];
      if (UNEqualObjects(identifier, identifier2))
      {
        type = [(UNNotificationAttachment *)self type];
        type2 = [v6 type];
        if (UNEqualObjects(type, type2))
        {
          options = [(UNNotificationAttachment *)self options];
          options2 = [v6 options];
          if (UNEqualObjects(options, options2))
          {
            userInfo = [(UNNotificationAttachment *)self userInfo];
            [v6 userInfo];
            v15 = v19 = options;
            v16 = UNEqualObjects(userInfo, v15);

            options = v19;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(UNNotificationAttachment *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  _encodableURL = [(UNNotificationAttachment *)self _encodableURL];
  [coderCopy encodeObject:_encodableURL forKey:@"URL"];

  type = [(UNNotificationAttachment *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  options = [(UNNotificationAttachment *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  userInfo = [(UNNotificationAttachment *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];
}

- (UNNotificationAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"URL"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v15 forKey:@"userInfo"];

  if (v16)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v16 objectForKey:@"data"];
    [dictionary bs_setSafeObject:v18 forKey:@"data"];

    v19 = [v16 objectForKey:@"purpose"];
    [dictionary bs_setSafeObject:v19 forKey:@"purpose"];

    v20 = [v16 objectForKey:@"relocationUUID"];
    [dictionary bs_setSafeObject:v20 forKey:@"relocationUUID"];

    v21 = [v16 objectForKey:@"identityImageStyle"];
    [dictionary bs_setSafeObject:v21 forKey:@"identityImageStyle"];

    v22 = [dictionary copy];
  }

  else
  {
    v22 = 0;
  }

  v23 = [(UNNotificationAttachment *)self initWithIdentifier:v4 URL:v8 type:v9 options:v10 userInfo:v22];

  return v23;
}

@end