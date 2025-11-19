@interface UNNotificationAttachment
+ (UNNotificationAttachment)attachmentWithIdentifier:(id)a3 URL:(id)a4 options:(id)a5 userInfo:(id)a6 error:(id *)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UNNotificationAttachment)init;
- (UNNotificationAttachment)initWithCoder:(id)a3;
- (UNNotificationAttachment)initWithIdentifier:(id)a3 URL:(id)a4 type:(id)a5 options:(id)a6;
- (UNNotificationAttachment)initWithIdentifier:(id)a3 URL:(id)a4 type:(id)a5 options:(id)a6 userInfo:(id)a7;
- (id)_encodableURL;
- (unint64_t)family;
- (unint64_t)hash;
- (void)_withSecurityScopeLock:(id)a3;
- (void)addSecurityScope:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enterSecurityScope;
- (void)leaveSecurityScope;
- (void)removeSecurityScope;
@end

@implementation UNNotificationAttachment

+ (UNNotificationAttachment)attachmentWithIdentifier:(id)a3 URL:(id)a4 options:(id)a5 userInfo:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 bs_safeStringForKey:@"typeHint"];
  if (!v16)
  {
    v17 = [v13 pathExtension];
    if (!v17 || ([MEMORY[0x1E6982C40] typeWithFilenameExtension:v17], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v18, !v16))
    {
      v16 = [*MEMORY[0x1E6982E48] identifier];
    }
  }

  v19 = UNNotificationAttachmentFamilyFromTypeIdentifier(v16);
  if (v19)
  {
    v20 = v19;
    v21 = [v15 objectForKey:@"data"];

    if (v21)
    {
      v22 = [[a1 alloc] initWithIdentifier:v12 URL:v13 type:v16 options:0 userInfo:v15];
      goto LABEL_26;
    }

    v43 = a1;
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [v13 path];
    v25 = [v23 attributesOfItemAtPath:v24 error:0];

    v44 = v25;
    v26 = [v25 objectForKey:*MEMORY[0x1E696A3B8]];
    v27 = UNNotificationAttachmentFamilyMaximumSize(v20);
    if ([v26 unsignedLongValue] > v27)
    {
      if (a7)
      {
        [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:102 userInfo:0];
        *a7 = v22 = 0;
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
    v29 = [v14 bs_safeNumberForKey:@"hidden"];
    v30 = [v29 BOOLValue];

    if (v30)
    {
      v31 = 1;
      v32 = v43;
    }

    else
    {
      v33 = [v14 bs_safeNumberForKey:@"thumbnailHidden"];
      v34 = [v33 BOOLValue];

      v32 = v43;
      if (!v34)
      {
LABEL_20:
        v35 = [v14 bs_safeDictionaryForKey:@"thumbnailClippingRect"];
        v36 = [v14 bs_safeDictionaryForKey:@"thumbnailTime"];
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = [v14 bs_safeNumberForKey:@"thumbnailTime"];
        }

        v39 = v38;

        v40 = [MEMORY[0x1E695DF90] dictionary];
        [v40 bs_setSafeObject:v35 forKey:@"thumbnailClippingRect"];
        [v40 bs_setSafeObject:v39 forKey:@"thumbnailTime"];
        [(UNMutableNotificationAttachmentOptions *)v28 setThumbnailGeneratorUserInfo:v40];
        v22 = [[v32 alloc] initWithIdentifier:v12 URL:v13 type:v16 options:v28 userInfo:v15];

        v26 = v42;
        goto LABEL_25;
      }

      v31 = 2;
    }

    [(UNMutableNotificationAttachmentOptions *)v28 setDisplayLocation:v31];
    goto LABEL_20;
  }

  if (a7)
  {
    [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:101 userInfo:0];
    *a7 = v22 = 0;
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

- (UNNotificationAttachment)initWithIdentifier:(id)a3 URL:(id)a4 type:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = UNNotificationAttachment;
  v14 = [(UNNotificationAttachment *)&v32 init];
  if (v14)
  {
    v15 = [v10 copy];
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
      v19 = [identifier UUIDString];
      v20 = v14->_identifier;
      v14->_identifier = v19;
    }

    v21 = [v11 copy];
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

    v25 = [v12 copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [*MEMORY[0x1E6982E48] identifier];
    }

    type = v14->_type;
    v14->_type = v27;

    v29 = [v13 copy];
    options = v14->_options;
    v14->_options = v29;
  }

  return v14;
}

- (UNNotificationAttachment)initWithIdentifier:(id)a3 URL:(id)a4 type:(id)a5 options:(id)a6 userInfo:(id)a7
{
  v12 = a7;
  v13 = [(UNNotificationAttachment *)self initWithIdentifier:a3 URL:a4 type:a5 options:a6];
  if (v13)
  {
    v14 = [v12 copy];
    userInfo = v13->_userInfo;
    v13->_userInfo = v14;
  }

  return v13;
}

- (unint64_t)family
{
  v2 = [(UNNotificationAttachment *)self type];
  v3 = UNNotificationAttachmentFamilyFromTypeIdentifier(v2);

  return v3;
}

- (void)_withSecurityScopeLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_securityScopeLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_securityScopeLock);
}

- (void)addSecurityScope:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationAttachment *)self URL];
  v6 = [v5 path];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__UNNotificationAttachment_addSecurityScope___block_invoke;
    v7[3] = &unk_1E7CFF870;
    v7[4] = self;
    v8 = v6;
    v9 = v4;
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
  v5 = [(UNNotificationAttachment *)self identifier];
  v6 = [(UNNotificationAttachment *)self URL];
  v7 = [(UNNotificationAttachment *)self type];
  v8 = [(UNNotificationAttachment *)self options];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@, URL: %@, type: %@, options: %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (unint64_t)hash
{
  v3 = [(UNNotificationAttachment *)self identifier];
  v4 = [v3 hash];
  v5 = [(UNNotificationAttachment *)self URL];
  v6 = [v5 hash] ^ v4;
  v7 = [(UNNotificationAttachment *)self type];
  v8 = [v7 hash];
  v9 = [(UNNotificationAttachment *)self options];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(UNNotificationAttachment *)self userInfo];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = UNSafeCast(v5, v4);

  if (v6)
  {
    v7 = [(UNNotificationAttachment *)self URL];
    v8 = [v6 URL];
    if (UNEqualObjects(v7, v8))
    {
      v9 = [(UNNotificationAttachment *)self identifier];
      v10 = [v6 identifier];
      if (UNEqualObjects(v9, v10))
      {
        v11 = [(UNNotificationAttachment *)self type];
        v12 = [v6 type];
        if (UNEqualObjects(v11, v12))
        {
          v13 = [(UNNotificationAttachment *)self options];
          v14 = [v6 options];
          if (UNEqualObjects(v13, v14))
          {
            v18 = [(UNNotificationAttachment *)self userInfo];
            [v6 userInfo];
            v15 = v19 = v13;
            v16 = UNEqualObjects(v18, v15);

            v13 = v19;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationAttachment *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(UNNotificationAttachment *)self _encodableURL];
  [v4 encodeObject:v6 forKey:@"URL"];

  v7 = [(UNNotificationAttachment *)self type];
  [v4 encodeObject:v7 forKey:@"type"];

  v8 = [(UNNotificationAttachment *)self options];
  [v4 encodeObject:v8 forKey:@"options"];

  v9 = [(UNNotificationAttachment *)self userInfo];
  [v4 encodeObject:v9 forKey:@"userInfo"];
}

- (UNNotificationAttachment)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"URL"];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  v16 = [v3 decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v15 forKey:@"userInfo"];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v16 objectForKey:@"data"];
    [v17 bs_setSafeObject:v18 forKey:@"data"];

    v19 = [v16 objectForKey:@"purpose"];
    [v17 bs_setSafeObject:v19 forKey:@"purpose"];

    v20 = [v16 objectForKey:@"relocationUUID"];
    [v17 bs_setSafeObject:v20 forKey:@"relocationUUID"];

    v21 = [v16 objectForKey:@"identityImageStyle"];
    [v17 bs_setSafeObject:v21 forKey:@"identityImageStyle"];

    v22 = [v17 copy];
  }

  else
  {
    v22 = 0;
  }

  v23 = [(UNNotificationAttachment *)self initWithIdentifier:v4 URL:v8 type:v9 options:v10 userInfo:v22];

  return v23;
}

@end