@interface LSSystemBundleIdentity
- (BOOL)isEqual:(id)a3;
- (LSSystemBundleIdentity)initWithBundleIdentifier:(id)a3;
- (LSSystemBundleIdentity)initWithCoder:(id)a3;
- (LSSystemBundleIdentity)initWithIdentityString:(id)a3 parsedIdentityStringDictionary:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSSystemBundleIdentity

- (LSSystemBundleIdentity)initWithIdentityString:(id)a3 parsedIdentityStringDictionary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 objectForKey:@"b"];
  v13.receiver = self;
  v13.super_class = LSSystemBundleIdentity;
  v9 = [(LSBundleIdentity *)&v13 initWithIdentityString:v7 personaUniqueString:0 personaType:4];

  if (v9)
  {
    v10 = [v8 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;
  }

  return v9;
}

- (LSSystemBundleIdentity)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:4 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  else
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      computeIdentityString(v6, v8);
    }

    v7 = @"<ERROR>";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{v:2, b:%@, it:%lu}", v7, 1];

  v14.receiver = self;
  v14.super_class = LSSystemBundleIdentity;
  v10 = [(LSBundleIdentity *)&v14 initWithIdentityString:v9 personaUniqueString:0 personaType:4];

  if (v10)
  {
    v11 = [v4 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LSSystemBundleIdentity;
  v4 = a3;
  [(LSBundleIdentity *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
}

- (LSSystemBundleIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LSSystemBundleIdentity;
  v5 = [(LSBundleIdentity *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = LSSystemBundleIdentity;
  return [(NSString *)self->_bundleIdentifier hash]^ __ROR8__([(LSBundleIdentity *)&v3 hash], 56);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = self->_bundleIdentifier;
    if (bundleIdentifier == v4[4])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)bundleIdentifier isEqualToString:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end