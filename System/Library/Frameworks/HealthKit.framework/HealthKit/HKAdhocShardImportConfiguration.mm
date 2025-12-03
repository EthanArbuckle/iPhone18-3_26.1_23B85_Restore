@interface HKAdhocShardImportConfiguration
- (BOOL)isEqual:(id)equal;
- (HKAdhocShardImportConfiguration)init;
- (HKAdhocShardImportConfiguration)initWithCoder:(id)coder;
- (HKAdhocShardImportConfiguration)initWithIdentifier:(id)identifier url:(id)url version:(int64_t)version shouldPruneOldShard:(BOOL)shard;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAdhocShardImportConfiguration

- (HKAdhocShardImportConfiguration)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKAdhocShardImportConfiguration)initWithIdentifier:(id)identifier url:(id)url version:(int64_t)version shouldPruneOldShard:(BOOL)shard
{
  identifierCopy = identifier;
  urlCopy = url;
  v18.receiver = self;
  v18.super_class = HKAdhocShardImportConfiguration;
  v12 = [(HKAdhocShardImportConfiguration *)&v18 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [urlCopy copy];
    url = v12->_url;
    v12->_url = v15;

    v12->_version = version;
    v12->_shouldPruneOldShard = shard;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(HKAdhocShardImportConfiguration *)v5 identifier];
      v8 = identifier;
      if (identifier == identifier)
      {
      }

      else
      {
        identifier2 = [(HKAdhocShardImportConfiguration *)v5 identifier];
        if (!identifier2)
        {
          goto LABEL_14;
        }

        v10 = identifier2;
        v11 = self->_identifier;
        identifier3 = [(HKAdhocShardImportConfiguration *)v5 identifier];
        LODWORD(v11) = [(NSString *)v11 isEqual:identifier3];

        if (!v11)
        {
          goto LABEL_18;
        }
      }

      url = self->_url;
      v15 = [(HKAdhocShardImportConfiguration *)v5 url];
      v8 = v15;
      if (url == v15)
      {

LABEL_16:
        version = self->_version;
        if (version == [(HKAdhocShardImportConfiguration *)v5 version])
        {
          shouldPruneOldShard = self->_shouldPruneOldShard;
          v13 = shouldPruneOldShard == [(HKAdhocShardImportConfiguration *)v5 shouldPruneOldShard];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v13 = 0;
        goto LABEL_19;
      }

      v16 = [(HKAdhocShardImportConfiguration *)v5 url];
      if (v16)
      {
        v17 = v16;
        v18 = self->_url;
        v19 = [(HKAdhocShardImportConfiguration *)v5 url];
        LODWORD(v18) = [(NSURL *)v18 isEqual:v19];

        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

LABEL_14:

      goto LABEL_18;
    }

    v13 = 0;
  }

LABEL_20:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_HKAdhocShardImportConfigurationKeyIdentifier"];
  [coderCopy encodeObject:self->_url forKey:@"_HKAdhocShardImportConfigurationKeyURL"];
  [coderCopy encodeInteger:self->_version forKey:@"_HKAdhocShardImportConfigurationKeyVersion"];
  [coderCopy encodeBool:self->_shouldPruneOldShard forKey:@"_HKAdhocShardImportConfigurationKeyShouldPruneOldShard"];
}

- (HKAdhocShardImportConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_HKAdhocShardImportConfigurationKeyIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_HKAdhocShardImportConfigurationKeyURL"];
  v7 = [coderCopy decodeIntegerForKey:@"_HKAdhocShardImportConfigurationKeyVersion"];
  v8 = [coderCopy decodeBoolForKey:@"_HKAdhocShardImportConfigurationKeyShouldPruneOldShard"];

  v9 = [(HKAdhocShardImportConfiguration *)self initWithIdentifier:v5 url:v6 version:v7 shouldPruneOldShard:v8];
  return v9;
}

@end