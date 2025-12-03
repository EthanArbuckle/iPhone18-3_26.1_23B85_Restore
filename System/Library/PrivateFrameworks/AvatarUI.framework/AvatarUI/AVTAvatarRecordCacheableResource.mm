@interface AVTAvatarRecordCacheableResource
- (AVTAvatarRecordCacheableResource)initWithAvatarRecord:(id)record includeAvatarData:(BOOL)data environment:(id)environment;
- (BOOL)requiresEncryption;
- (NSString)description;
- (id)identifierForScope:(id)scope;
- (id)persistentDataHashForScope:(id)scope;
- (id)tokenForObservingChangesWithHandler:(id)handler;
@end

@implementation AVTAvatarRecordCacheableResource

- (AVTAvatarRecordCacheableResource)initWithAvatarRecord:(id)record includeAvatarData:(BOOL)data environment:(id)environment
{
  dataCopy = data;
  recordCopy = record;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTAvatarRecordCacheableResource;
  v11 = [(AVTAvatarRecordCacheableResource *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, record);
    if (dataCopy)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    v12->_includeAvatarData = isKindOfClass & 1;
    objc_storeStrong(&v12->_environment, environment);
  }

  return v12;
}

- (id)persistentDataHashForScope:(id)scope
{
  record = [(AVTAvatarRecordCacheableResource *)self record];
  isEditable = [record isEditable];

  if (isEditable)
  {
    v6 = objc_opt_class();
    record2 = [(AVTAvatarRecordCacheableResource *)self record];
    avatarData = [record2 avatarData];
    v9 = [v6 persistentIdentifierForRecordData:avatarData];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)identifierForScope:(id)scope
{
  scopeCopy = scope;
  string = [MEMORY[0x1E696AD60] string];
  v6 = objc_opt_class();
  record = [(AVTAvatarRecordCacheableResource *)self record];
  identifier = [record identifier];
  v9 = [v6 persistentIdentifierPrefixForRecordWithIdentifier:identifier];
  [string appendString:v9];

  [string appendFormat:@"_AK%lu", AVTAvatarKitSnapshotVersionNumber()];
  if ([(AVTAvatarRecordCacheableResource *)self includeAvatarData])
  {
    v10 = objc_opt_class();
    record2 = [(AVTAvatarRecordCacheableResource *)self record];
    avatarData = [record2 avatarData];
    v13 = [v10 persistentIdentifierForRecordData:avatarData];
    [string appendFormat:@"_%@", v13];
  }

  if (scopeCopy)
  {
    cacheableResourceAssociatedIdentifier = [scopeCopy cacheableResourceAssociatedIdentifier];
    [string appendString:cacheableResourceAssociatedIdentifier];
  }

  v15 = [string copy];

  return v15;
}

- (BOOL)requiresEncryption
{
  record = [(AVTAvatarRecordCacheableResource *)self record];
  isEditable = [record isEditable];

  return isEditable;
}

- (id)tokenForObservingChangesWithHandler:(id)handler
{
  handlerCopy = handler;
  record = [(AVTAvatarRecordCacheableResource *)self record];
  isEditable = [record isEditable];

  if (isEditable)
  {
    v7 = [AVTAvatarRecordCacheableResourceChangeToken alloc];
    environment = [(AVTAvatarRecordCacheableResource *)self environment];
    record2 = [(AVTAvatarRecordCacheableResource *)self record];
    identifier = [record2 identifier];
    v11 = [(AVTAvatarRecordCacheableResourceChangeToken *)v7 initWithEnvironment:environment recordIdentifier:identifier changeHandler:handlerCopy];

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
  record = [(AVTAvatarRecordCacheableResource *)self record];
  identifier = [record identifier];
  v8 = [v5 persistentIdentifierPrefixForRecordWithIdentifier:identifier];
  [v4 appendFormat:@" persistentIDPrefix: %@", v8];

  v9 = [v4 copy];

  return v9;
}

@end