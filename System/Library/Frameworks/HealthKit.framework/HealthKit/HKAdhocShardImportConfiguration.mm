@interface HKAdhocShardImportConfiguration
- (BOOL)isEqual:(id)a3;
- (HKAdhocShardImportConfiguration)init;
- (HKAdhocShardImportConfiguration)initWithCoder:(id)a3;
- (HKAdhocShardImportConfiguration)initWithIdentifier:(id)a3 url:(id)a4 version:(int64_t)a5 shouldPruneOldShard:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
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

- (HKAdhocShardImportConfiguration)initWithIdentifier:(id)a3 url:(id)a4 version:(int64_t)a5 shouldPruneOldShard:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = HKAdhocShardImportConfiguration;
  v12 = [(HKAdhocShardImportConfiguration *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v11 copy];
    url = v12->_url;
    v12->_url = v15;

    v12->_version = a5;
    v12->_shouldPruneOldShard = a6;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v7 = [(HKAdhocShardImportConfiguration *)v5 identifier];
      v8 = v7;
      if (identifier == v7)
      {
      }

      else
      {
        v9 = [(HKAdhocShardImportConfiguration *)v5 identifier];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = self->_identifier;
        v12 = [(HKAdhocShardImportConfiguration *)v5 identifier];
        LODWORD(v11) = [(NSString *)v11 isEqual:v12];

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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_HKAdhocShardImportConfigurationKeyIdentifier"];
  [v5 encodeObject:self->_url forKey:@"_HKAdhocShardImportConfigurationKeyURL"];
  [v5 encodeInteger:self->_version forKey:@"_HKAdhocShardImportConfigurationKeyVersion"];
  [v5 encodeBool:self->_shouldPruneOldShard forKey:@"_HKAdhocShardImportConfigurationKeyShouldPruneOldShard"];
}

- (HKAdhocShardImportConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_HKAdhocShardImportConfigurationKeyIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_HKAdhocShardImportConfigurationKeyURL"];
  v7 = [v4 decodeIntegerForKey:@"_HKAdhocShardImportConfigurationKeyVersion"];
  v8 = [v4 decodeBoolForKey:@"_HKAdhocShardImportConfigurationKeyShouldPruneOldShard"];

  v9 = [(HKAdhocShardImportConfiguration *)self initWithIdentifier:v5 url:v6 version:v7 shouldPruneOldShard:v8];
  return v9;
}

@end