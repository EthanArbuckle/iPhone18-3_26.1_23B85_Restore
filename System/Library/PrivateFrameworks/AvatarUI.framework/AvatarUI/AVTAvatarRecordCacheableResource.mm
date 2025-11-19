@interface AVTAvatarRecordCacheableResource
- (AVTAvatarRecordCacheableResource)initWithAvatarRecord:(id)a3 includeAvatarData:(BOOL)a4 environment:(id)a5;
- (BOOL)requiresEncryption;
- (NSString)description;
- (id)identifierForScope:(id)a3;
- (id)persistentDataHashForScope:(id)a3;
- (id)tokenForObservingChangesWithHandler:(id)a3;
@end

@implementation AVTAvatarRecordCacheableResource

- (AVTAvatarRecordCacheableResource)initWithAvatarRecord:(id)a3 includeAvatarData:(BOOL)a4 environment:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AVTAvatarRecordCacheableResource;
  v11 = [(AVTAvatarRecordCacheableResource *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, a3);
    if (v6)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    v12->_includeAvatarData = isKindOfClass & 1;
    objc_storeStrong(&v12->_environment, a5);
  }

  return v12;
}

- (id)persistentDataHashForScope:(id)a3
{
  v4 = [(AVTAvatarRecordCacheableResource *)self record];
  v5 = [v4 isEditable];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(AVTAvatarRecordCacheableResource *)self record];
    v8 = [v7 avatarData];
    v9 = [v6 persistentIdentifierForRecordData:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)identifierForScope:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = objc_opt_class();
  v7 = [(AVTAvatarRecordCacheableResource *)self record];
  v8 = [v7 identifier];
  v9 = [v6 persistentIdentifierPrefixForRecordWithIdentifier:v8];
  [v5 appendString:v9];

  [v5 appendFormat:@"_AK%lu", AVTAvatarKitSnapshotVersionNumber()];
  if ([(AVTAvatarRecordCacheableResource *)self includeAvatarData])
  {
    v10 = objc_opt_class();
    v11 = [(AVTAvatarRecordCacheableResource *)self record];
    v12 = [v11 avatarData];
    v13 = [v10 persistentIdentifierForRecordData:v12];
    [v5 appendFormat:@"_%@", v13];
  }

  if (v4)
  {
    v14 = [v4 cacheableResourceAssociatedIdentifier];
    [v5 appendString:v14];
  }

  v15 = [v5 copy];

  return v15;
}

- (BOOL)requiresEncryption
{
  v2 = [(AVTAvatarRecordCacheableResource *)self record];
  v3 = [v2 isEditable];

  return v3;
}

- (id)tokenForObservingChangesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarRecordCacheableResource *)self record];
  v6 = [v5 isEditable];

  if (v6)
  {
    v7 = [AVTAvatarRecordCacheableResourceChangeToken alloc];
    v8 = [(AVTAvatarRecordCacheableResource *)self environment];
    v9 = [(AVTAvatarRecordCacheableResource *)self record];
    v10 = [v9 identifier];
    v11 = [(AVTAvatarRecordCacheableResourceChangeToken *)v7 initWithEnvironment:v8 recordIdentifier:v10 changeHandler:v4];

    [(AVTAvatarRecordCacheableResourceChangeToken *)v11 startObservingChanges];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = AVTAvatarRecordCacheableResource;
  v3 = [(AVTAvatarRecordCacheableResource *)&v11 description];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = [(AVTAvatarRecordCacheableResource *)self record];
  v7 = [v6 identifier];
  v8 = [v5 persistentIdentifierPrefixForRecordWithIdentifier:v7];
  [v4 appendFormat:@" persistentIDPrefix: %@", v8];

  v9 = [v4 copy];

  return v9;
}

@end